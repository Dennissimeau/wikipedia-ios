
import Foundation

final class DiffListChangeItemViewModel {
    let text: String
    let highlightedRanges: [DiffHighlightRange]
    let type: DiffListChangeType
    let diffItemType: DiffItemType
    let textAlignment: NSTextAlignment
    private(set) var backgroundColor: UIColor
    let moveInfo: TransformMoveInfo?
    private(set) var textPadding: NSDirectionalEdgeInsets

    var theme: Theme {
        didSet {
            backgroundColor = DiffListChangeItemViewModel.calculateBackgroundColor(diffItemType: diffItemType, theme: theme)
            textAttributedString = DiffListChangeItemViewModel.calculateAttributedString(with: text, highlightedRanges: highlightedRanges, traitCollection: traitCollection, theme: theme, type: type, diffItemType: diffItemType, moveInfo: moveInfo)
        }
    }
    
    var traitCollection: UITraitCollection {
        didSet {
            textAttributedString = DiffListChangeItemViewModel.calculateAttributedString(with: text, highlightedRanges: highlightedRanges, traitCollection: traitCollection, theme: theme, type: type, diffItemType: diffItemType, moveInfo: moveInfo)
        }
    }
    
    private(set) var textAttributedString: NSAttributedString?
    
    init(item: TransformDiffItem, traitCollection: UITraitCollection, theme: Theme, type: DiffListChangeType, diffItemType: DiffItemType, nextMiddleItem: TransformDiffItem?) {
        self.text = item.diffItem.text
        self.traitCollection = traitCollection
        self.theme = theme
        self.type = type
        self.diffItemType = diffItemType
        self.moveInfo = item.transformMoveInfo
        
        //account for utf8 offsets in highlighted ranges
        var convertedHighlightedRanges: [DiffHighlightRange] = []
        if let diffHighlightedRanges = item.diffItem.highlightRanges {
            for diffHighlightedRange in diffHighlightedRanges {
                let start = diffHighlightedRange.start
                let length = diffHighlightedRange.length
                let type = diffHighlightedRange.type
                
                let fromIdx = text.utf8.index(text.utf8.startIndex, offsetBy: start)
                let toIdx = text.utf8.index(fromIdx, offsetBy: length)
                let nsRange = NSRange(fromIdx..<toIdx, in: text)
                
                let highlightedRange = DiffHighlightRange(start: nsRange.location, length: nsRange.length, type: type)
                convertedHighlightedRanges.append(highlightedRange)
            }
        }
        
        self.highlightedRanges = convertedHighlightedRanges

        textAlignment = diffItemType == .moveSource ? .center : .natural
        backgroundColor = DiffListChangeItemViewModel.calculateBackgroundColor(diffItemType: diffItemType, theme: theme)
        
        self.textPadding = DiffListChangeItemViewModel.calculateTextPadding(type: type, diffItemType: diffItemType, nextMiddleItem: nextMiddleItem)
        self.textAttributedString = DiffListChangeItemViewModel.calculateAttributedString(with: text, highlightedRanges: highlightedRanges, traitCollection: traitCollection, theme: theme, type: type, diffItemType: diffItemType, moveInfo: item.transformMoveInfo)
    }
    
    private static func calculateBackgroundColor(diffItemType: DiffItemType, theme: Theme) -> UIColor {
        (diffItemType == .moveSource || diffItemType == .moveDestination) ? theme.colors.diffMoveParagraphBackground : theme.colors.paperBackground
    }
    
    private static func calculateTextPadding(type: DiffListChangeType, diffItemType: DiffItemType, nextMiddleItem: TransformDiffItem?) -> NSDirectionalEdgeInsets {
        
        var top: CGFloat = 0
        var bottom: CGFloat = 0
        if diffItemType == .moveSource || diffItemType == .moveDestination {
            top = 10
            if let middleItem = nextMiddleItem?.diffItem,
            middleItem.type == .moveSource || middleItem.type == .moveDestination {
                bottom = 0
            } else {
                bottom = 15
            }
        } else {
            if let middleItem = nextMiddleItem?.diffItem,
            middleItem.type == .moveSource || middleItem.type == .moveDestination {
                bottom = 10
            }
        }
        
        switch type {
        case .singleRevison:
            let leading: CGFloat = (diffItemType == .moveSource || diffItemType == .moveDestination) ? 10 : 0
            let trailing: CGFloat = (diffItemType == .moveSource || diffItemType == .moveDestination) ? 10 : 0
            return NSDirectionalEdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing)
        case .compareRevision:
            return NSDirectionalEdgeInsets(top: top, leading: 10, bottom: bottom, trailing: 10)
        }
    }
    
    private static func moveAttributedString(with text: String, diffItemType: DiffItemType, moveInfo: TransformMoveInfo, highlightedRanges: inout [DiffHighlightRange], traitCollection: UITraitCollection, theme: Theme) -> NSAttributedString? {
        
        guard !text.isEmpty,
            (diffItemType == .moveSource || diffItemType == .moveDestination) else {
            return nil
        }

        var modifiedText = text
        
        //additional move changes that are specific to the client
        if let moveIndex = moveInfo.groupedIndex {
            
            let moveIndexString = "  \(moveIndex + 1)  "
            let imageAttachment = NSTextAttachment()
            let imageName = moveInfo.moveInfo.linkDirection == .down ? "moveArrowDown" : "moveArrowUp"
            imageAttachment.image = UIImage(named: imageName)
            let imageString = NSAttributedString(attachment: imageAttachment)
            
            switch diffItemType {
            case .moveSource:
                
                if let moveDistance = moveInfo.moveDistance {
                    var moveDistanceString: String
                    switch moveDistance {
                    case .section(let amount):
                        let moveDistanceSectionsFormat = WMFLocalizedString("diff-paragraph-moved-distance-section", value:"{{PLURAL:%1$d|%1$d section|%1$d sections}}", comment:"Diff view distance moved in sections when a paragraph has moved across sections - %1$@ is replaced with the number of sections a paragraph has moved across.")
                        moveDistanceString = String.localizedStringWithFormat(moveDistanceSectionsFormat, amount)
                    case .line(let amount):
                        let moveDistanceLinesFormat = WMFLocalizedString("diff-paragraph-moved-distance-line", value:"{{PLURAL:%1$d|%1$d line|%1$d lines}}", comment:"Diff view distance moved in line numbers when a paragraph has moved lines but remained in the same section - %1$@ is replaced with the number of lines a paragraph has moved across.")
                        moveDistanceString = String.localizedStringWithFormat(moveDistanceLinesFormat, amount)
                    }
                    
                    let paragraphMovedFormat = WMFLocalizedString("diff-paragraph-moved-format", value: "Paragraph moved %1$@ %2$@", comment: "Label in moved paragraph source location on diff view for indicating how far and what direction a pargraph has moved. %1$@ is replaced by the move direction (e.g. 'up' or 'down') and %2$@ is replaced by the move type and move distance (e.g. '2 lines', '4 sections')")
                    let upOrDownString: String
                    switch moveInfo.moveInfo.linkDirection {
                    case .down: upOrDownString = WMFLocalizedString("diff-paragraph-moved-direction-down", value: "down", comment: "Label in moved pararaph source location on diff view for indicating that a paragraph was moved down in the document.")
                    case .up: upOrDownString = WMFLocalizedString("diff-paragraph-moved-direction-up", value: "up", comment: "Label in moved pararaph source location on diff view for indicating that a paragraph was moved up in the document.")
                    }
                    
                    modifiedText = String.localizedStringWithFormat(paragraphMovedFormat, upOrDownString, moveDistanceString)
                } else {
                    modifiedText = WMFLocalizedString("diff-paragraph-moved", value:"Paragraph moved", comment:"Label in diff to indicate that a paragraph has been moved. This label is in the location of where the paragraph was moved from.")
                }
            case .moveDestination:
                
                let originalHighlightedRanges = highlightedRanges
                highlightedRanges.removeAll(keepingCapacity: true)
                for range in originalHighlightedRanges {
                    let amountToOffset = imageString.string.count + moveIndexString.count
                    let newRange = DiffHighlightRange(start: range.start + amountToOffset, length: range.length, type: range.type)
                    highlightedRanges.append(newRange)
                }
            default:
                assertionFailure("Cannot handle non-move diff item type here")
                return nil
            }
            
            let mutableAttributedString = NSMutableAttributedString(string: modifiedText)

            //insert move index number
            let indexAttributes = [NSAttributedString.Key.foregroundColor: theme.colors.diffCompareAccent]
            let indexAttributedString = NSAttributedString(string: moveIndexString, attributes: indexAttributes)
            mutableAttributedString.insert(indexAttributedString, at: 0)
            
            //insert move arrow
            mutableAttributedString.insert(imageString, at:0)
            mutableAttributedString.addAttributes([NSAttributedString.Key.baselineOffset: -2], range: NSRange(location: 0, length: 1))
            
            return mutableAttributedString.copy() as? NSAttributedString
        }
        
        return nil
    }
    
    private static func updateParamsForAddDeleteLine(text: inout String, diffItemType: DiffItemType, highlightedRanges: inout [DiffHighlightRange]) {
        
        guard diffItemType == .addLine || diffItemType == .deleteLine else {
            return
        }
        
        if text.isEmpty {
            text = " "
        }
        
        var highlightRange: DiffHighlightRangeType? = nil
        switch diffItemType {
        case .addLine:
            highlightRange = .add
        case .deleteLine:
            highlightRange = .delete
        default:
            break
        }
        
        if let highlightRange = highlightRange {
            let newAddRange = DiffHighlightRange(start: 0, length: text.count, type: highlightRange)
            highlightedRanges.append(newAddRange)
        }
    }
    
    private static func calculateAttributedString(with text: String, highlightedRanges: [DiffHighlightRange], traitCollection: UITraitCollection, theme: Theme, type: DiffListChangeType, diffItemType: DiffItemType, moveInfo: TransformMoveInfo?) -> NSAttributedString? {
        
        var modifiedText = text
        var modifiedHighlightedRanges = highlightedRanges
        
        let regularFontStyle = DynamicTextStyle.footnote
        let boldFontStyle = DynamicTextStyle.boldFootnote

        let font = diffItemType == .moveSource || diffItemType == .moveDestination ? UIFont.wmf_font(regularFontStyle, compatibleWithTraitCollection: traitCollection) : UIFont.wmf_font(boldFontStyle, compatibleWithTraitCollection: traitCollection)

        var moveItemAttributedString: NSAttributedString?
        switch diffItemType {
        case .moveSource, .moveDestination:
            if let moveInfo = moveInfo {
                moveItemAttributedString = moveAttributedString(with: text, diffItemType: diffItemType, moveInfo: moveInfo, highlightedRanges: &modifiedHighlightedRanges, traitCollection: traitCollection, theme: theme)
            }
        case .addLine, .deleteLine:
            updateParamsForAddDeleteLine(text: &modifiedText, diffItemType: diffItemType, highlightedRanges: &modifiedHighlightedRanges)
        default:
            break
        }
        
        let paragraphStyle = NSMutableParagraphStyle()
        let lineSpacing: CGFloat = 4
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = font.lineHeightMultipleToMatch(lineSpacing: lineSpacing)
        if diffItemType == .moveSource {
            paragraphStyle.alignment = .center
        }
        let attributes = [NSAttributedString.Key.font: font,
                          NSAttributedString.Key.foregroundColor: theme.colors.primaryText,
                          NSAttributedString.Key.paragraphStyle: paragraphStyle.copy()]
        
        let finalAttributedStringToHighlight: NSMutableAttributedString
        
        if let moveItemAttributedString = moveItemAttributedString {
            finalAttributedStringToHighlight = NSMutableAttributedString(attributedString: moveItemAttributedString)
        } else {
            finalAttributedStringToHighlight = NSMutableAttributedString(string: modifiedText, attributes: attributes)
        }
        
        for range in modifiedHighlightedRanges {

            let nsRange = NSRange(location: range.start, length: range.length)
            var highlightColor: UIColor?
            let textColor: UIColor?

            let isNotLightAndEmpty = theme != Theme.light && (diffItemType == .addLine || diffItemType == .deleteLine) &&
            text.isEmpty
            
            switch range.type {
            case .add:
                highlightColor = isNotLightAndEmpty ? theme.colors.diffTextAdd : theme.colors.diffHighlightAdd
                textColor = theme.colors.diffTextAdd

            case .delete:
                highlightColor = isNotLightAndEmpty ? theme.colors.diffTextDelete : theme.colors.diffHighlightDelete
                textColor = theme.colors.diffTextDelete
                let deletedAttributes: [NSAttributedString.Key: Any]  = [
                    NSAttributedString.Key.strikethroughStyle:NSUnderlineStyle.single.rawValue,
                    NSAttributedString.Key.strikethroughColor:theme.colors.diffStrikethroughColor as Any
                ]
                finalAttributedStringToHighlight.addAttributes(deletedAttributes, range: nsRange)
            }

            let font = UIFont.wmf_font(boldFontStyle, compatibleWithTraitCollection: traitCollection)
            finalAttributedStringToHighlight.addAttribute(NSAttributedString.Key.font, value: font, range: nsRange)
            
            if let highlightColor = highlightColor {
                finalAttributedStringToHighlight.addAttribute(NSAttributedString.Key.backgroundColor, value: highlightColor, range: nsRange)
            }
            
            if let textColor = textColor {
                finalAttributedStringToHighlight.addAttribute(NSAttributedString.Key.foregroundColor, value: textColor, range: nsRange)
            }
        }
        
        return finalAttributedStringToHighlight.copy() as? NSAttributedString
    }
}

extension DiffListChangeItemViewModel: Equatable {
    static func == (lhs: DiffListChangeItemViewModel, rhs: DiffListChangeItemViewModel) -> Bool {
        return lhs.highlightedRanges == rhs.highlightedRanges &&
            lhs.text == rhs.text
    }
}

fileprivate extension UIFont
{
    func lineSpacingToMatch(lineHeightMultiple: CGFloat) -> CGFloat {
        return self.lineHeight * (lineHeightMultiple - 1)
    }

    func lineHeightMultipleToMatch(lineSpacing: CGFloat) -> CGFloat {
        return 1 + lineSpacing / self.lineHeight
    }
}
