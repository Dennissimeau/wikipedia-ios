
import Foundation
@testable import Wikipedia
@testable import WMF

class TalkPageTestHelpers {
    
    enum TalkPageJSONType {
        case original
        case updated
        case largeForPerformance
        case largeUpdatedForPerformance
        
        var json: Data {
            switch self {
            case .original:
                return """
                {"topics": [
                {
                    "id": 0,
                    "html": "Would you please help me expand the Puppy cat article?",
                    "replies": [
                    {
                    "html": "Hi Pixiu! Glad we were able to meet at the Bay Area Puppercat Edit-a-thon last week. I noticed that the <a href='https://en.wikipedia.org/wiki/Puppy_cat'>Puppy cat</a> could use some more information about ragdolls, do you think that this might be something you'd be interested in contributing to? <a href='https://en.wikipedia.org/wiki/User:Fruzia'>Fruzia</a> (<a href='https://en.wikipedia.org/wiki/User_talk:Fruzia'>talk</a>) 23:08. 20 March 2019 (UTC)",
                    "depth": 0,
                    "sha": "ad47492",
                    "sort": 0
                    }, {
                    "html": "Hi Fruzia, thanks for reaching out! I'll go and take a look at the article and see what I can contribute with the resources I have at paw <a href='https://en.wikipedia.org/wiki/User:Pixiu'>Pixiu</a> (<a href='https://en.wikipedia.org/wiki/User_talk:Pixiu'>talk</a>) 08:09. 21 March 2019 (UTC)",
                    "depth": 1,
                    "sha": "3602ec3",
                    "sort": 1
                    }
                    ],
                    "shas": {
                        "html": "5a5bd8e",
                        "indicator": "asdfgjl"
                    },
                    "sort": 0
                }
                ]}
                """.data(using: .utf8)!
                
            case .updated:
                return """
                    {"topics": [
                        {
                            "id": 0,
                            "html": "Would you please help me expand the Puppy cat article?",
                            "replies": [
                                {
                                    "html": "Hi Pixiu! Glad we were able to meet at the Bay Area Puppercat Edit-a-thon last week. I noticed that the <a href='https://en.wikipedia.org/wiki/Puppy_cat'>Puppy cat</a> could use some more information about ragdolls, do you think that this might be something you'd be interested in contributing to? <a href='https://en.wikipedia.org/wiki/User:Fruzia'>Fruzia</a> (<a href='https://en.wikipedia.org/wiki/User_talk:Fruzia'>talk</a>) 23:08. 20 March 2019 (UTC)",
                                    "depth": 0,
                                    "sha": "ad47492",
                                    "sort": 0
                                }, {
                                    "html": "Hi Fruzia, thanks for reaching out! I'll go and take a look at the article and see what I can contribute with the resources I have at paw <a href='https://en.wikipedia.org/wiki/User:Pixiu'>Pixiu</a> (<a href='https://en.wikipedia.org/wiki/User_talk:Pixiu'>talk</a>) 08:09. 21 March 2019 (UTC)",
                                    "depth": 1,
                                    "sha": "3602ec3",
                                    "sort": 1
                                }, {
                                    "html": "Great! I'm looking forward to seeing your edits. I think that the 'Cool cat's guide to cats' might potentially be a good reference, I think your library has it if I remember correctly. <a href='https://en.wikipedia.org/wiki/User:Fruzia'>Fruzia</a> (<a href='https://en.wikipedia.org/wiki/User_talk:Fruzia'>talk</a>) 14:32. 22 March 2019 (UTC)",
                                    "depth": 2,
                                    "sha": "438bfc2",
                                    "sort": 2
                                }
                            ],
                            "shas": {
                                "html": "5a5bd8e",
                                "indicator": "not_asdfgjl"
                            },
                            "sort": 0
                        }
                    ]}
                """.data(using: .utf8)!
            case .largeUpdatedForPerformance:
                return """
                    {
                        "topics": [{
                            "id": 1,
                            "replies": [{
                                "sha": "1457f0d74356d02d6142d3e98d5142406298df9c409d9e880c3eb3810771d3f8",
                                "depth": 0,
                                "html": "Yo! Sorry to distract from your GA review, but if you have a minute, could you check out <a href='./Talk:All_I_Need_(Radiohead_song)' title='Talk:All I Need (Radiohead song)'>Talk:All_I_Need_(Radiohead_song)</a>? I'd like your opinion on whether the article should be deleted; I'm unsure how to proceed. <a href='./User:Popcornduff' title='User:Popcornduff'>Popcornduff</a> (<a href='./User_talk:Popcornduff' title='User talk:Popcornduff'>talk</a>) 01:55, 26 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./All_I_Need_(Radiohead_song)' title='All I Need (Radiohead song)'>All I Need (Radiohead song)</a>",
                            "shas": {
                                "html": "c1c8f267942acb90f0bc6e0e2fe5e027e3bc5da4e9324a3e4e0c161716062570",
                                "indicator": "1815545ea45084cd97ad1dbd1504757cea30bb5e8ce7b02eb86b04bd6e41bd92"
                            }
                        }, {
                            "id": 2,
                            "replies": [{
                                "sha": "2f0bc8f08733249a18a25eaadccc2adf0de23d593947aef1a4050df2353cfeed",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-07-23' title='Wikipedia:Wikipedia Signpost/2014-07-23'>Wikipedia:Wikipedia Signpost/2014-07-23</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 02:31, 26 July 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 23 July 2014",
                            "shas": {
                                "html": "294381daa77181c8fcb03978e48e095b84439b213f46e454027b4e4a5d11736f",
                                "indicator": "398963b1556dc3133a8c1635cb8afdc4df7bc40b47ff0cff9b77b347f05a27ea"
                            }
                        }, {
                            "id": 3,
                            "replies": [{
                                "sha": "9e0aed581f710280cb1338b05bfb319c6520fd8c138e9f01781147081935c72a",
                                "depth": 0,
                                "html": "I just requested speedy deletion, and 5 seconds later, you did it! Wow! Thanks! <a href='./User:Jwoodward48wiki' title='User:Jwoodward48wiki'>Jwood</a> <a href='./User_talk:Jwoodward48wiki' title='User talk:Jwoodward48wiki'>(leave me a message)</a> [<a href='https://en.wikipedia.org/wiki/Special:Contributions/Jwoodward48wiki%7CSee'>what I'm up to</a>] 20:30, 28 July 2014 (UTC)"
                            }, {
                                "sha": "bf24d8fc6bc46b5e82eaf41a59863b34c520c80297510742cb9afe79cb77beaf",
                                "depth": 1,
                                "html": "Thank you for patrolling! :) — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 20:32, 28 July 2014 (UTC)"
                            }, {
                                "sha": "76100e1ed0d1861962a757341224f91c5384e31ac54c82edf964f2e610ea9cee",
                                "depth": 2,
                                "html": "Test new reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:42, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "That was fast!",
                            "shas": {
                                "html": "5f012bd5177aa25ab1b8151e84c224e964cb60b7b617426570320589f142646b",
                                "indicator": "2941c1f3eefe04a3bed831d0ba80034f7aea71ea5a77517fadf0841c0ff058ac"
                            }
                        }, {
                            "id": 4,
                            "replies": [{
                                "sha": "a3b980c9dcad2bab1301a54aeefb923bb28921ec401f05a376f13febcdc42917",
                                "depth": 0,
                                "html": "Hello MusikAnimal, you recently deleted <a href='./Steve_Schuster' title='Steve Schuster'>Steve Schuster</a> article per CSD G7. It was already nominated for deletion discussion when you deleted. I think you might haven't checked the history of the article or maybe forgot to close the discussion. This message is to let you know that I have closed the <a href='./Wikipedia:Articles_for_deletion/Steve_Schuster' title='Wikipedia:Articles for deletion/Steve Schuster'>discussion</a> (<a href='./Wikipedia:NACD' title='Wikipedia:NACD'>WP:NACD</a>). Be careful when deleting pages. Always check older revisions before deleting it. Thanks,  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 12:26, 29 July 2014 (UTC)"
                            }, {
                                "sha": "c5991e4b66c42418d4661ae84c98b5681082152da7ce3a89f6a589a61cf8de1e",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Thanks for closing it. I of course checked the history to ensure G7 applied (someone else had requested speedy per A3), and simply overlooked the AfD. My mistake. For future reference, by linking to me in the closing statement, I am notified and thus this message is not necessary. — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 14:47, 29 July 2014 (UTC)"
                            }, {
                                "sha": "f68f2ff3a6fe0f95db63204ffe0d7e08314cd9b2ca6887b2ab635db973690194",
                                "depth": 2,
                                "html": "No problem, it happens.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 19:15, 29 July 2014 (UTC)"
                            }, {
                                "sha": "ed5f723d4995b63d59b2b15da1901230be6ffb04790c68a932f79189d3086d4a",
                                "depth": 0,
                                "html": "P.S. You are not the <a href='./Wikipedia:Articles_for_deletion/Poetry_trend_in_new_india' title='Wikipedia:Articles for deletion/Poetry trend in new india'>only one</a>. <a href='https://www.wikidata.org/wiki/Property:P:)#top' title='d:Property:P:)'>Template:Label (P:))</a>  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 20:49, 29 July 2014 (UTC)"
                            }, {
                                "sha": "1696e40d8a57c098d4269e186dfe078ea2f2f1824ceda2ea1171379118f0f3d7",
                                "depth": 1,
                                "html": "I don't think it's fair to accuse the admin of not checking the page history. I don't think any admin would just blindly delete pages like that. I know you mean no harm but a more friendly message might be appropriate. If you just want to notify them pinging in the closing statement at AfD will suffice. — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 21:16, 29 July 2014 (UTC)"
                            }, {
                                "sha": "69f3ee0b9146fa0453500b416411ce6013fabda579804ae1b723affc967c1cbf",
                                "depth": 2,
                                "html": "No my friend, I assumed good faith when posting that message. I'm really sorry if you're hurt. As I said, people often make mistakes. Don't take it personally. I will try to make it much friendlier. Actually I have seen many such examples when admin forgot and I (or someone else) have to do it. I'm not accusing my friend, and I'm sorry again if you're hurt. I noticed a many times that even after pinging someone 3 times, that user haven't responed, later I have to add a talkback and at last he responeded. That is the reason why I leave them messages, so that they don't miss it. Anyway, I'm sorry.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 21:38, 29 July 2014 (UTC)"
                            }, {
                                "sha": "da68f392125b7f3b9f58d85c05c2ac6b5b4b15adb84830e01857af86d811455b",
                                "depth": 3,
                                "html": "No worries, not hurt! I just think it's safe to assume they do check the page history. So a more appropriate message would be 'if you could, please remember to close the AfD if you notice one is active'. That tis all. Didn't mean to make it seem like it's a big deal... it's not :) — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 21:46, 29 July 2014 (UTC)"
                            }, {
                                "sha": "164319d9f8c735f3233eaf6fcb8aa85c7b7b1ca369a777f7a7d67cc237b893bf",
                                "depth": 4,
                                "html": "Ok. Btw just noticed your signature. You are using out dated codes. To update, you can use this:<br><br>    '''''[[User:MusikAnimal|&lt;span style='color:black'&gt;MusikAnimal&lt;/span&gt;]]'' &lt;sup&gt;[[User talk:MusikAnimal|&lt;span style='color:green'&gt;talk&lt;/span&gt;]]&lt;/sup&gt;'''<br><br>    it results: <i><b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a></b></i> <b><sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b>. You can use it if you wish. :)   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 09:21, 30 July 2014 (UTC)"
                            }, {
                                "sha": "346680ed8fef5b06b44cce1d17c00f3fde1b5661e79eeae4c535700d53c9027c",
                                "depth": 5,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You are correct, it is not HTML5 compliant. This is coming from a professional web developer... so a bit depressing that I haven't caught on to that yet. I have updated it. Thanks. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:58, 30 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Unclosed AfD",
                            "shas": {
                                "html": "5f1752588f330d96ff89d7cae7a66ccff9a0b5e8beaad7069af9c8e9d71ead93",
                                "indicator": "22e0a5874638ff44269178aff90944b71724c0ee7a0ecb32133ea9ac31e0d540"
                            }
                        }, {
                            "id": 5,
                            "replies": [{
                                "sha": "86f3a6bf81f95be7017db3e17c6a023a140a7f8b7cdd877a46f210c38a43b29d",
                                "depth": 0,
                                "html": "Hi, I see that we've had a minor misunderstanding. I didn't mean to vandalize Wikipedia nor did I make a mistake. It is only my concern that the page of a fraternity in the University of the Philippines was defaced of its good, provable and proven traits and then replaced by the unproven allegations leveled against it.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Stinths' title='User:Stinths'>Stinths</a> (<a href='./User_talk:Stinths' title='User talk:Stinths'>talk</a> • <a href='./Special:Contributions/Stinths' title='Special:Contributions/Stinths'>contribs</a>) 16:03, 30 July 2014 (UTC)"
                            }, {
                                "sha": "1c258dd9d82654261afc271009ba05f6c63e1b44485c56c5d4ff63038acf3723",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Your original changes were reverted because you removed a large portion of sourced material without explaining why. Your changes may not be vandalism, but you are replacing sourced content with unsourced content. Wikipedia aims to be <a href='./Wikipedia:V' title='Wikipedia:V'>verifiable</a>, so it's important to accompany your work with references. Removing sourced content counteracts this effort, and conflicts with our objectives as an encyclopedia. See <a href='./Wikipedia:REFBEGIN' title='Wikipedia:REFBEGIN'>WP:REFBEGIN</a> on how to add references. Let me know if you need help, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:20, 30 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Stinths",
                            "shas": {
                                "html": "231a1885da42a4051ea28be214393b9c9e6488a6a14dffa08658935717fbd634",
                                "indicator": "50295692385dd9517c0c800ceda2c9297f718b73c878131be5aad1c47add55a9"
                            }
                        }, {
                            "id": 6,
                            "replies": [{
                                "sha": "8f60a8dd48788663bfee6cb6805a54eabc1a3c60028f55fc4f6099f5876f0e8d",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-07-30' title='Wikipedia:Wikipedia Signpost/2014-07-30'>Wikipedia:Wikipedia Signpost/2014-07-30</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:06, 2 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 30 July 2014",
                            "shas": {
                                "html": "27811b0e81be5337c1e41adfad84095dc1f2861987c14cbb521279a7b4945fde",
                                "indicator": "a451832e754e0915ee1c1c1f0a1b3a22376fd94a3c8f9db55e0a0b8e85a04a15"
                            }
                        }, {
                            "id": 7,
                            "replies": [{
                                "sha": "67bde043d14475e6b6658bf42f9cf37fb4f510d52fc57b1b9006402d38675b01",
                                "depth": 0,
                                "html": "Hi Dear, Thank You <a href='./Template:=)' title='Template:=)'>Template:=)</a> for the <a href='https://en.wikipedia.org/wiki/%22New_Russia_Today%22'>G7: Speedy Deletion</a>. I apologize to You and other Dear fellows (Wikipedia:Article titles). If You are still online, may You kindly take out the time for the Speedy Deletion of this WP Page's Talk Page <a href='https://en.wikipedia.org/wiki/Talk:%22New_Russia_Today%22'>[Talk:%22New_Russia_Today%22]</a>. Sincerely, ← <a href='./User:Abstruce' title='User:Abstruce'><b>Abstruce</b></a> 18:18, 31 July 2014 (UTC)"
                            }, {
                                "sha": "2ff37e6bacba29cbb93b0a5973acd6da18458ae6a217706c693726842671176f",
                                "depth": 1,
                                "html": "<b>Done</b> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:22, 4 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Thank You !!",
                            "shas": {
                                "html": "fd6c5b1b92003ac53da423170e24356f84460a87bcc33e36a69c34966d93b0ab",
                                "indicator": "aee8359b71ebbffa017b9a97a4d3a307dc9db7158f63279dccae3fef321e9643"
                            }
                        }, {
                            "id": 8,
                            "replies": [{
                                "sha": "37c024e9f1e18dbc5041cde3185e3032dec581249db08b576feef3ea9d8cbfd0",
                                "depth": 0,
                                "html": "Can you do me a favor? I've had <a href='./User:Lucas_Thoms/EditCounterOptIn.js' title='User:Lucas Thoms/EditCounterOptIn.js'>User:Lucas Thoms/EditCounterOptIn.js</a> tagged for deletion for a while, but apparently CSD tags don't do anything on js pages (what a surprise). Can you please delete it? Thanks!—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 17:57, 31 July 2014 (UTC)"
                            }, {
                                "sha": "f397c147dba558f5195b0077931e168b898b94052b252ef85b629ca0fc45646f",
                                "depth": 1,
                                "html": "<b>Done</b> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:01, 31 July 2014 (UTC)"
                            }, {
                                "sha": "aa31becc7bcc0d394398ec810fa1e5a16a8cbe49d69303996d5e2a06e92bbc2f",
                                "depth": 2,
                                "html": "While you're at it, can you maybe get <a href='./User:Lucas_Thoms/vada.js' title='User:Lucas Thoms/vada.js'>User:Lucas Thoms/vada.js</a> too? I don't need it anymore either. Thank you!—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 18:02, 31 July 2014 (UTC)"
                            }, {
                                "sha": "4046fa2237c7871c71d31b4120d92b54bf051ed0858c7cfbf7f3b8fd6a57ed9b",
                                "depth": 3,
                                "html": "Anytime — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:04, 31 July 2014 (UTC)"
                            }, {
                                "sha": "05929faeb767dba74251fb60b228ec50c3c7c730aa36e25f5332fe2cf8907ce0",
                                "depth": 4,
                                "html": "Thank you very much for the quick work! —<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 18:05, 31 July 2014 (UTC)"
                            }, {
                                "sha": "d43d8b7d941eb0c99794862dce1f3de207185fb18840eee3ebd3be263ed4fb22",
                                "depth": 5,
                                "html": "<a href='./Template:Tps' title='Template:Tps'>Template:Tps</a> <a href='./User:Cyde/List_of_candidates_for_speedy_deletion' title='User:Cyde/List of candidates for speedy deletion'>This</a> seems to me a backlog. I have tagged 4 articles with CSD and guess what they are still there. About 9 hours ago I tagged them and they are not vanished yet. It looks like more admins needed to clear this backlog. Even, Afd also have some backlog. Now I wonder, it is better to make a request on an admins talkpage rather than using those templates, requesting an admin directly is faster.  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 20:00, 31 July 2014 (UTC)"
                            }, {
                                "sha": "6bcad9a619418524564675e10a1924f228076a8824b830222df34aee93e75652",
                                "depth": 6,
                                "html": "From what I've seen, articles nominated for things like <a href='./Wikipedia:G3' title='Wikipedia:G3'>G3</a>, <a href='./Wikipedia:G10' title='Wikipedia:G10'>G10</a>, and <a href='./Wikipedia:G12' title='Wikipedia:G12'>G12</a> tend to get deleted much faster than, for example <a href='./Wikipedia:A7' title='Wikipedia:A7'>A7</a>, because their deletions are more urgent. Copyright violations and attack pages are legally and morally wrong, whereas (hopefully) no one's going to be offended by the fact that so-and-so's garage band page stands for several hours.—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 20:23, 31 July 2014 (UTC)"
                            }, {
                                "sha": "7a26e579ca2f51710f3080eb5cf313b4f5288028f9b5c6e2804099e6f3b0445c",
                                "depth": 7,
                                "html": "Hmm. I know, but 'speedy' means rapid. But here 9hrs late is not a good speed. This maybe called as 'speedy-slow deletion'. hehehe <a href='https://www.wikidata.org/wiki/Property:P:D#top' title='d:Property:P:D'>Template:Label (P:D)</a>   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 20:56, 31 July 2014 (UTC)"
                            }, {
                                "sha": "79079fa5946a3f8f8bff0e9a97854107f21702e41cf57de3b1868515cf4387f8",
                                "depth": 0,
                                "html": "<a href='./Template:Od' title='Template:Od'>Template:Od</a> <a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas Thoms</a> is correct, anything with legal concerns should be addressed immediately. At least for vandalism, attack pages and copyright violations, it's fortunately very easy to tell if the page in fact falls under such criteria, whereas <a href='./Wikipedia:ACSD' title='Wikipedia:ACSD'>WP:ACSD</a> articles often require a more thorough assessment. I'm not sure if this practice is documented in the WP-space, but the {{<a href='./Template:Admin_dashboard' title='Template:Admin dashboard'>admin dashboard</a>}} makes it's clear which speedy's are of priority. It's true <a href='./CAT:CSD' title='CAT:CSD'>CAT:CSD</a> can acquire quite a backlog, but I like to think the not-so-immediate requests are taken care of within at least 12 hours. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:51, 4 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "CSD",
                            "shas": {
                                "html": "d1a09ff0ea9e207c0f5a4a7c08b8c55f5b9329c7e73f26250768e28578346db7",
                                "indicator": "4c017b3eee2ebb4e34dfee99d72c9a2326fedf2735c5d05b5f9c01ba935ca424"
                            }
                        }, {
                            "id": 9,
                            "replies": [{
                                "sha": "502442058b5d9d142498caa996804ffd4f3e9e1bb891bc2c771cebe5cd167d9c",
                                "depth": 0,
                                "html": "Sunday August 17: <a href='./Wikipedia:Meetup/NYC/Wiknic' title='Wikipedia:Meetup/NYC/Wiknic'>NYC Wiki-Salon and Skill Share</a><br><br><a href='./File:Statue-of-liberty_tysto.jpg'>[File:Statue-of-liberty_tysto.jpg]</a><br><br>You are invited to join the the <a href='https://meta.wikimedia.org/wiki/Wikimedia%20New%20York%20City' title='meta:Wikimedia New York City'>Wikimedia NYC</a> community for our upcoming <a href='./Salon_(gathering)' title='Salon (gathering)'>wiki-salon</a> and knowledge-sharing workshop on the <a href='./Upper_West_Side' title='Upper West Side'>Upper West Side</a> of Manhattan.<br><br> Sunday August 17 <b><a href='./Wikipedia:Meetup/NYC' title='Wikipedia:Meetup/NYC'>NYC Wiki-Salon and Skill Share</a> (<a href='./Wikipedia:Meetup/NYC#Sign_up' title='Wikipedia:Meetup/NYC'>RSVP</a>)</b>.<br><br>  <i>2pm–5pm at <a href='http://www.yeoryiastudios.com/location.html'>Yeoryia Studios</a> at Epic Security Building, 2067 Broadway (5th floor).</i><br><br>Afterwards at 5pm, we'll walk to a social wiki-dinner together at a neighborhood restaurant (<a href='./Wikipedia_talk:Meetup/NYC#Sunday_August_17_Wiki-Salon_and_Skill_Share' title='Wikipedia talk:Meetup/NYC'>to be decided</a>).<br><br>We hope to see you there!--<a href='./User:Pharos' title='User:Pharos'>Pharos</a> (<a href='./User_talk:Pharos' title='User talk:Pharos'>talk</a>) 15:57, 4 August 2014 (UTC)"
                            }, {
                                "sha": "a4bafc949e904dea0fb6d075ece3122a72f1abf270f52c6434fdcc95e095280c",
                                "depth": 0,
                                "html": "(You can unsubscribe from future notifications for NYC-area events by removing your name from <a href='./Wikipedia:Meetup/NYC/Invite_list' title='Wikipedia:Meetup/NYC/Invite list'>this list</a>.)"
                            }],
                            "depth": 2,
                            "html": "Sunday August 17: NYC Wiki-Salon and Skill Share",
                            "shas": {
                                "html": "028d55c8b29bffd38b91b7a4a2d3bc00a0a0e25022f4ea31619db85b8362bdf3",
                                "indicator": "1118b3438d8a810ad8c1ccb7f7e1755eda1c42446e8c4d3865074792dc292e71"
                            }
                        }, {
                            "id": 10,
                            "replies": [{
                                "sha": "8e9414b40d2dad88381fb03350b60b1b30bdf45497900c8642953230467a1292",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:La_Roux#rfc_64A80ED' title='Talk:La Roux'>Talk:La Roux</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 5 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:La_Roux#rfc_64A80ED' title='Talk:La Roux'>Talk:La Roux</a>",
                            "shas": {
                                "html": "da2d31bfaa922223f1f3782e80f90e56d302dae72f15af927459abd6dafaef7b",
                                "indicator": "700935f78aeaad6bd048b25ad9f76f20b9e93f0dbfb58b6c2e7d97bd3d1ef6db"
                            }
                        }, {
                            "id": 11,
                            "replies": [{
                                "sha": "980b860f1866ba4e62c9941de6e383271d78184ba59e9ee9f4737319245b99fb",
                                "depth": 0,
                                "html": "Hello MusikAnimal,<br><br>I am having trouble logging on, perhaps because the Navy networks ban certain functions for security reasons, but my IP address should show that I am coming from the U.S. Naval Observatory (this should partially confirm my self-identification in the comment and here).  I wish to discuss the 'good faith table' that I had deleted yesterday and you restored, as well as the statement that the 'on-the-minute' announcement will not happen '1 in 3 times'.   I have just called the AMC voice announcer 12 times, spacing my calls over the 60-second between minutes, and always heard the 'on-the-minute'.  (I did this before the original posting as well, along with checking with the equipment setup specialist, just to be sure.)  As I indicated in my comment yesterday, we changed our system several years ago - specifically to fix this issue and others.   If you don't believe this posting, let me suggest you try telephoning the time announcer a few times. I can give you my telephone number but I sense that is not how things are done.  If you find the time announcer is not as I described it, I'd like to know that - so we can fix it!<br><br>Thank you,<br><br>usnochiefscientist (my wiki account) — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:199.211.133.254' title='User:199.211.133.254'>199.211.133.254</a> (<a href='./User_talk:199.211.133.254' title='User talk:199.211.133.254'>talk</a> • <a href='./Special:Contributions/199.211.133.254' title='Special:Contributions/199.211.133.254'>contribs</a>)<br><br> Hello there! Sorry for the late reply. I was <a href='./Wikipedia:RCP' title='Wikipedia:RCP'>patrolling recent changes</a> when I saw <a href='https://en.wikipedia.org/w/index.php?title=United_States_Naval_Observatory&amp;diff=619150593&amp;oldid=619149642'>this edit</a>, where you capitalized the S in 'Time service', which was a heading. Per <a href='./MOS:SECTION' title='MOS:SECTION'>MOS:SECTION</a>, we only capitalize the first letter of the first word, unless it is a proper noun, which I gather 'time service' is not. That is all I meant to revert, but unfortunately the software I use reverted your previous edits without me knowing. Sorry about that!<br><br> Regarding your issues with logging in... is <a href='./User:Usnochiefscientist' title='User:Usnochiefscientist'>Usnochiefscientist</a> your account? I see that it was registered 29 July 2014, but no edits have been made, and the account is not blocked. What happens when you try to login? Since you are able to edit with your IP, there should be no reason you can't edit with your registered account. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:17, 5 August 2014 (UTC)"
                            }, {
                                "sha": "72686512847b286607b516f27446af88c15d46c8432af077f85d396ea462e1bb",
                                "depth": 1,
                                "html": "Hello MusikAnimal,<br><br>I was able to log in with my account from home, and I hope this is the right way to 'talk'.  From work, efforts to log in would just produce a blank web page.  There are many strange things the Navy does blocking ports and protocols that I don't understand - and that's good because it means maybe the hackers don't understand them either.   Thanks for the concern.   As for capitalizing the 's' in 'Time Service' - in this case it is a compound word (like 'United States').  USNO has a 'Time Service' department.  To my way of thinking, 'Time service' would be a service that gives you the time, like the voice announcer or GPS.  I would capitalize s because it refers to a department, with a department head, etc.<br><br>thanks,<br>usnochiefscientist<br><a href='./User:Usnochiefscientist' title='User:Usnochiefscientist'>Usnochiefscientist</a> (<a href='./User_talk:Usnochiefscientist' title='User talk:Usnochiefscientist'>talk</a>) 01:56, 5 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "US Naval Observatory",
                            "shas": {
                                "html": "673bc7a019250c8e6520cfc6f426e8d8847b56becd569d81ee1bd00e4a3114a3",
                                "indicator": "bea80859a746ee7a58855fba0b57c76ec7f634b933b15562b257eab88195d4e9"
                            }
                        }, {
                            "id": 12,
                            "replies": [{
                                "sha": "ff8d764a4a5db70c79e79fa92209b2526a657c61019936f70ceb19acabb84bde",
                                "depth": 0,
                                "html": "<a href='./File:Barnstar_of_Reversion_Hires.png'>[File:Barnstar_of_Reversion_Hires.png]</a><br><br><b>The Anti-Vandalism Barnstar</b><br><br>I am awarding you this Barnstar for your vigilance in removing vandalism from the pages of Wikipedia, as you did in the article, <a href='./Robert_Craddock' title='Robert Craddock'>Robert Craddock</a>. Keep up the good work! <a href='./User:Ormr2014' title='User:Ormr2014'>Ormr2014</a> (<a href='./User_talk:Ormr2014' title='User talk:Ormr2014'>talk</a>) 22:03, 5 August 2014 (UTC)"
                            }, {
                                "sha": "d09d129db1501178e5348b3c484bae49db3172ad47db1c16ce6103fb6fb3d724",
                                "depth": 1,
                                "html": "Many thanks! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:06, 5 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "A barnstar for you!",
                            "shas": {
                                "html": "a7799f969709803441ba0f9f09ab3f0f7676f6485fa4644c611bef145af3764a",
                                "indicator": "818013988b70e41200231fbdaf5605bfc5327e979f049425ce35b7b478d2225a"
                            }
                        }, {
                            "id": 13,
                            "replies": [{
                                "sha": "4915ec489273635c9a33525b068612fd36b4266590c2258b9c42a6ac1e13487d",
                                "depth": 0,
                                "html": "Hey, can you remove/restore this <a href='./Kedi_(2006_film)' title='Kedi (2006 film)'>article</a> to its older version?? Check the history and you will see someone removed most of the content and replaced it with hoax. I have undid one edit when I was editing from laptop, but now from mobile I can't do that nor Twinkle works on mobile version and I don't have rollback in this account as well. So, I thought if you can do this. Thanks,   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 12:58, 6 August 2014 (UTC)"
                            }, {
                                "sha": "c4d69ecb2a3d2ad899bce41b131badfc5cdcd2f9adee8f11390f2d2840c4e7a9",
                                "depth": 0,
                                "html": "P. S. It is too hard to do this manually from phone because Wikipedia vs Small screen.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 13:02, 6 August 2014 (UTC)"
                            }, {
                                "sha": "6a855445b255ab1668375ca8e17d3b7c773b0fd0f25117c5c930b7e678207916",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> By habit I wrote 'sourced' content in my edit summary, but there's nothing sourced here. In my opinion, it's difficult to justify reverting unsourced changes when nothing was sourced to begin with. I think the reversion is still warranted however as they removed/changed a lot of content without explaining why. Overall, though, this article definitely needs some work. The second infobox is unnecessary, I believe, or can be merged into the first one.<br><br> If you would like rollback on your public account I can grant that for you. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:18, 6 August 2014 (UTC)"
                            }, {
                                "sha": "17429fc7958db7b20dc56e6647b07beeb1bba1398d63a22a5c03e4174383cd33",
                                "depth": 2,
                                "html": "Actually it was a bad faith edit. Hobby band made this changes after his page <a href='./Satish_Naidu' title='Satish Naidu'>Satish Naidu</a>  was speedy deleted (I've nominated) as A7, G11. Hobby band included fake informations about Satish Naidu in this article when his article got deleted. Anyway, in this condition, I think this film article doesn't pass <a href='./Wikipedia:NFILM' title='Wikipedia:NFILM'>WP:NFILM</a>. I will take it for Afd if I can't find <a href='./Wikipedia:RS' title='Wikipedia:RS'>WP:RS</a> <a href='./Wikipedia:Third_party' title='Wikipedia:Third party'>WP:Third party</a> sources in the next few days.<br><br>  You can add that flag. Nowadays most of my edits are by this account only. Thanks,  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 14:57, 6 August 2014 (UTC)"
                            }, {
                                "sha": "a07221cfe763957ae9f1f20ca86f3a8f1b54f5704fbddc93cd1f0da861ec935a",
                                "depth": 3,
                                "html": "Thank you.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 15:31, 6 August 2014 (UTC)"
                            }, {
                                "sha": "f007993282775d43074e5e9895a13f04c9100c053c2a0a5b4d60feb15f107166",
                                "depth": 4,
                                "html": "No problem! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:33, 6 August 2014 (UTC)"
                            }, {
                                "sha": "91e9460c086ac57fa124562c467718bdb3d6a5abc3bb319cf9a79f1e6f9ec327",
                                "depth": 0,
                                "html": "New reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:44, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Kedi (2006 film)",
                            "shas": {
                                "html": "abda6f81cc71bf6ff4d919ed717df8399a9602ba1f06af98c8ef6140d048e23a",
                                "indicator": "440fafec988ceda8fae52ac1a5246577d2931894d2c4d6f178cdd3d684ed46ac"
                            }
                        }, {
                            "id": 14,
                            "replies": [{
                                "sha": "82ed435806d356c163e68020c8523c6453d2fa897825d785f18395623827f0ff",
                                "depth": 0,
                                "html": "REPLACE THIS TEXT WITH YOUR MESSAGE <a href='./User:Lord_Gramont' title='User:Lord Gramont'>Lord Gramont</a> (<a href='./User_talk:Lord_Gramont' title='User talk:Lord Gramont'>talk</a>) 18:42, 7 August 2014 (UTC)<br>Thank you<br>Sir Merrick Cockell has been the subject of considerable press comment in the UK concerning his high level of expenses and allowances.<br>He has been the subject of substantial media criticism over his expenses in New York and Boston and the high level of allowances.<br>However, if you don't feel it relevant to question an elected councillor's record in this respect there is little I can do.<br>In the UK there is strong negative feeling about elected council members ripping off the system.Best wishes<br>Lord Gramont<br>7th August 2014"
                            }],
                            "depth": 2,
                            "html": "Hello from Lord Gramont",
                            "shas": {
                                "html": "3ca957a7744d39fe3cde2795b47729312006109c0fbf78883fb18f52f3cdc381",
                                "indicator": "861463ad54b3eca95b5a45b5dac8e02a9f348ea85305a19999979f8ad79afb8a"
                            }
                        }, {
                            "id": 15,
                            "replies": [{
                                "sha": "5ba9c81522c3d171020c713a864b5d55cdedf619bd0895005c0bf4e7058c6a73",
                                "depth": 0,
                                "html": "Hi. I'd just like to let you know that the section I removed from the page '<a href='./Non-English_versions_of_The_Simpsons' title='Non-English versions of The Simpsons'>Non-English versions of The Simpsons</a>' was spam and false information. In Ireland, The Simpsons is always shown in English with no Irish dub or subtitles. They don't show the German dub either. The episodes are always shown unaltered and none of them are skipped. The source linked is an article about an <i>Arabic</i> version of The Simpsons, not an Irish one, Proof that it's vandalism. I have never even heard of an Irish article until I saw the article. There's no need for one because everyone in Ireland speaks English and would therefor get the jokes. All this is coming from a person living in Ireland who's a fan of the show. The show is actually quite popular here despite what the page says. Please revert my edit. If you don't, I will. --<a href='./Special:Contributions/109.79.55.74' title='Special:Contributions/109.79.55.74'>109.79.55.74</a> (<a href='./User_talk:109.79.55.74' title='User talk:109.79.55.74'>talk</a>) 20:57, 7 August 2014 (UTC)"
                            }, {
                                "sha": "872c169359ee85469fbcafc9583068a0e4bd8a69f54cf07f64128fd6f2bd08d6",
                                "depth": 1,
                                "html": "Indeed, this appears to be some strange hoax, and <a href='https://en.wikipedia.org/w/index.php?title=Non-English_versions_of_The_Simpsons&amp;diff=568667999&amp;oldid=568341102'>not the first time</a> it has happened. Some of the quotes are in the linked source, but with the Middle Eastern networks replaced with (presumably) Irish ones. Very peculiar... at any rate, I've removed it. Thank you for noticing this and taking action. However I ask that next time you please use an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> so that others are aware of your intentions, and we don't think you are just blanking an entire section of the article without reason :) Thanks again! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:22, 7 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Simpsons vandalism",
                            "shas": {
                                "html": "b3d47082f90ab4137be69594a02e64ddee39fca26ccb3f66e95ac2c823473f86",
                                "indicator": "d2a3003772efa37f84e73fff880a1d346a5b95a978bec2afd0cbc8c70aa03e4b"
                            }
                        }, {
                            "id": 16,
                            "replies": [{
                                "sha": "2d4351a9b4d3caaf65578ee09cdce007e6e0a328a3196137a39d872b2fd3a2f9",
                                "depth": 0,
                                "html": "First reply 2 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:05, 20 June 2019 (UTC)"
                            }, {
                                "sha": "dda544ab2423d61f9d62b43623b5cb34358a234a5e590bb4c1dd9746d70a6422",
                                "depth": 1,
                                "html": "Second reply nested 2 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:05, 20 June 2019 (UTC)"
                            }, {
                                "sha": "dc0338ddb103ed19f4810e62d1b59bbdac122dd03271c9216e6129457871e055",
                                "depth": 2,
                                "html": "Third reply nested 2 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:05, 20 June 2019 (UTC)"
                            }, {
                                "sha": "2a173ac82ad3325e1823573e0b8915abd78ab1061e2ad968c41ed3cf60ae42bb",
                                "depth": 3,
                                "html": "Fourth reply nested 2 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:05, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "New test topic with replies 2",
                            "shas": {
                                "html": "947f70058e7c25927f0b9f6679778b6d0526ab2d8f16e9ee242ac3d9233b8217",
                                "indicator": "924ff6f92e3bb1a8e40588a884730ed7aefb961c5ee4b5893c46602aeefef792"
                            }
                        }, {
                            "id": 17,
                            "replies": [{
                                "sha": "6b4201fc5cd5f7d5208664dad835dfaf1813b732dfad18c8264c5b339dbeeeac",
                                "depth": 0,
                                "html": "Hi there. I think user <a href='./Lollheysn' title='Lollheysn'>Lollheysn</a> is vandalising the wikipedia article for Bhagavan Sri Ramana Maharshi. Twice this user has now edited his name, which was once undone by yourself and previously by me. The two edits of vandalism were :<br><br>Bhagavan Sri Ramana Maharshi PLOPS<br><br>and<br><br>Bhagavan Sri SHITEE Ramana Maharshi (the phonetics of this being pretty obvious)<br><br>I noted that you contribute a lot with regards to wikipedia vandalism and just thought I would let you know that it wasn't the first time this user had edited this page incorrectly.<br><br>Best, <a href='./User:Bodhadeepika' title='User:Bodhadeepika'>Bodhadeepika</a> (<a href='./User_talk:Bodhadeepika' title='User talk:Bodhadeepika'>talk</a>) 23:19, 7 August 2014 (UTC)"
                            }, {
                                "sha": "d82129ba50d801a28b932fef954888c6bcb1d5e5b53a7b291df02eaafd774262",
                                "depth": 1,
                                "html": "New reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:44, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Bhagavan Sri Ramana Maharshi",
                            "shas": {
                                "html": "8e89e945f76630c4d3eaf3608fc77738b74db05ca085494cec373e9f64d22799",
                                "indicator": "b841f3e8abaded4c04eaac040abfd076ed2dfc78dbcbd4a67a438afe57c23e68"
                            }
                        }, {
                            "id": 18,
                            "replies": [{
                                "sha": "9d109f7cbd231850917332726ab5c8e8b01d655d762181f5b36c8d70c76362aa",
                                "depth": 0,
                                "html": "<a href='./File:VisualEditor-logo.svg'>[File:VisualEditor-logo.svg]</a><br><a href='./File:VisualEditor_-_Link_editing_inline_box.png'>[File:VisualEditor_-_Link_editing_inline_box.png]</a>Dialog boxes in VisualEditor have been re-designed to use action words instead of icons.  This has increased the number of <a href='https://www.mediawiki.org/wiki/VisualEditor/TranslationCentral#Translate_the_VisualEditor_interface' title='mw:VisualEditor/TranslationCentral'>items that need to be translated</a>.<br><a href='https://www.mediawiki.org/wiki/VisualEditor/User%20guide' title='mw:VisualEditor/User guide'>The user guide</a> is also being updated.<br><br><i>The <a href='https://www.mediawiki.org/wiki/VisualEditor' title='mw:VisualEditor'>VisualEditor</a> team is currently working mostly to fix bugs, improve performance, reduce technical debt, and other infrastructure needs. You can find <a href='https://www.mediawiki.org/wiki/VisualEditor/status' title='mw:VisualEditor/status'>on Mediawiki.org</a> weekly updates detailing recent work.</i><br><br>The biggest visible change since the last newsletter was to the dialog boxes.  <b>The design for each dialog box and window was simplified.</b>  The most commonly needed buttons are now at the top.  Based on user feedback, the buttons are now labeled with simple words (like 'Cancel' or 'Done') instead of potentially confusing icons (like '&lt;' or 'X').  Many of the buttons to edit links, images, and other items now also show the linked page, image name, or other useful information when you click on them.<ul><li><b>Hidden HTML comments</b> (notes visible to editors, but not to readers) can now be read, edited, inserted, and removed.  A small icon (a white exclamation mark on a dot) marks the location of each comments.  You can click on the icon to see the comment.</li><li>You can now <b>drag and drop text</b> and templates as well as images.  A new placement line makes it much easier to see where you are dropping the item.  Images can no longer be dropped into the middle of paragraphs.</li><li><b>All references and footnotes (</b><b>&lt;ref&gt;</b><b> tags) are now made through the '⧼visualeditor-toolbar-cite-label⧽' menu</b>, including the '⧼visualeditor-dialogbutton-reference-tooltip⧽' (manual formatting) footnotes and the ability to re-use an existing citation, both of which were previously accessible only through the 'Insert' menu.  The '⧼visualeditor-dialogbutton-referencelist-tooltip⧽' is still added via the 'Insert' menu.</li><li>When you add an image or other media file, you are now prompted to add an <b>image caption</b> immediately. You can also replace an image whilst keeping the original caption and other settings.</li><li>All tablet users visiting the <b>mobile web</b> version of Wikipedias will be able to opt-in to a version of VisualEditor from 14 August.  You can test the new tool by choosing the beta version of the mobile view in the Settings menu.</li><li>The <b>link tool</b> has a new 'Open' button that will open a linked page in another tab so you can make sure a link is the right one.</li><li>The <b>'Cancel' button</b> in the toolbar has been removed based on user testing.  To cancel any edit, you can leave the page by clicking the Read tab, the back button in your browser, or closing the browser window without saving your changes.</li></ul>"
                            }],
                            "depth": 2,
                            "html": "VisualEditor newsletter—July and August 2014",
                            "shas": {
                                "html": "e9eb4240e7343a06c9ba4d321507d95ffd8fb849f8ce4c4a5227e1340bd5f1dc",
                                "indicator": "6f2cfbdbaff4aaa23ebf4f60752da022fe139d919cad7c4b810f356f6f987c64"
                            }
                        }, {
                            "id": 19,
                            "replies": [{
                                "sha": "d32cfecef4ab91baccb64fbf0305d6aa9ed970e853a09791ffa56889ef3ec8a5",
                                "depth": 0,
                                "html": "The Editing team will be making two presentations this weekend at <b>Wikimania</b> in London.  The first is with product manager James Forrester and developer Trevor Parscal on <a href='https://wikimania2014.wikimedia.org/wiki/Submissions/VisualEditor_—_helping_users_edit_more_easily' title='wm2014:Submissions/VisualEditor — helping users edit more easily'>Saturday at 16:30</a>.  The second is with developers Roan Kattouw and Trevor Parscal on <a href='https://wikimania2014.wikimedia.org/wiki/Submissions/VisualEditor_—_engineering_against_the_odds' title='wm2014:Submissions/VisualEditor — engineering against the odds'>Sunday at 12:30</a>.<br><br>Please share your questions, suggestions, or problems by posting a note at the <a href='https://www.mediawiki.org/wiki/VisualEditor/Feedback' title='mw:VisualEditor/Feedback'><b>VisualEditor feedback page</b></a> or by joining the <a href='https://meta.wikimedia.org/wiki/IRC%20office%20hours' title='m:IRC office hours'><b>office hours discussion</b></a> on Thursday, 14 August 2014 at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?hour=9&amp;min=00&amp;sec=0&amp;day=14&amp;month=08&amp;year=2014'>09:00 UTC</a> (daytime for Europe, Middle East and Asia) or on Thursday, 18 September 2014 at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?hour=9&amp;min=00&amp;sec=0&amp;day=14&amp;month=08&amp;year=2014http://www.timeanddate.com/worldclock/fixedtime.html?hour=16&amp;min=00&amp;sec=0&amp;day=18&amp;month=09&amp;year=2014'>16:00 UTC</a> (daytime for the Americas; evening for Europe).<br><br>If you'd like to get this newsletter on your own page (about once a month), please subscribe at <a href='https://en.wikipedia.org/wiki/en:Wikipedia:VisualEditor/Newsletter' title='w:en:Wikipedia:VisualEditor/Newsletter'>w:en:Wikipedia:VisualEditor/Newsletter</a> for English Wikipedia only or at <a href='https://meta.wikimedia.org/wiki/VisualEditor/Newsletter' title='m:VisualEditor/Newsletter'>Meta</a> for any project. Thank you! <a href='./User:Whatamidoing_(WMF)' title='User:Whatamidoing (WMF)'>Whatamidoing (WMF)</a> (<a href='./User_talk:Whatamidoing_(WMF)' title='User talk:Whatamidoing (WMF)'>talk</a>) 18:14, 8 August 2014 (UTC)"
                            }],
                            "depth": 3,
                            "html": "Feedback opportunities",
                            "shas": {
                                "html": "ff62eab99c479f8ac690adde0e60f77ca7392b8de00b9e32a24625cef21c27e3",
                                "indicator": "e7af7399874df78a1447ccd0caa8da081be54128d2a1013394a984c66caa2f66"
                            }
                        }, {
                            "id": 20,
                            "replies": [{
                                "sha": "3c9f97e83bd17a1d286b377542a71efc8e00414fdd51fb4c8f17f2291213ac58",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-06' title='Wikipedia:Wikipedia Signpost/2014-08-06'>Wikipedia:Wikipedia Signpost/2014-08-06</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 12:51, 9 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 06 August 2014",
                            "shas": {
                                "html": "6b88421ac71f00cecb83f5c4beaa5eae2985be1a85500d1dbce9c8923cf40106",
                                "indicator": "cbbdb07b055b9c56f895a5d47dad932dfdddaef17cdf8619d1a9ac09af981fb4"
                            }
                        }, {
                            "id": 21,
                            "replies": [{
                                "sha": "8a16db4a792dfad786144c21fbc02422d2837a9abae23851c75ec060f55be1d5",
                                "depth": 0,
                                "html": "I wrote an article on Dorcas Makgato-Malesu but it was deleted because of promotion. I asked many times what was the promotion on but there wasn't any response. I made some changes but the article was still deleted. Please advise and if I can retrieve the article?  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Anissa_ducere' title='User:Anissa ducere'>Anissa ducere</a> (<a href='./User_talk:Anissa_ducere' title='User talk:Anissa ducere'>talk</a> • <a href='./Special:Contributions/Anissa_ducere' title='Special:Contributions/Anissa ducere'>contribs</a>) 03:54, 12 August 2014 (UTC)"
                            }, {
                                "sha": "0b3c960ec2f415aa93412c2c6a30035a50cb50a98ee9579e7807bdbc143b551f",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Sorry for the delayed response. The current article looks much better, whereas the older one appeared to read more like an advertisement. Details like her general hobbies and interests also didn't really offer any encyclopedic value. Try to be impartial in your authoring, careful to disregard opinions and stay focused on the facts. You can learn more about our policy on neutrality at <a href='./Wikipedia:NPOV' title='Wikipedia:NPOV'>WP:NPOV</a> and our conflict of interest guideline at <a href='./Wikipedia:COI' title='Wikipedia:COI'>WP:COI</a>. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:44, 13 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Anissa ducere",
                            "shas": {
                                "html": "07ce70f47b4a4c5a022c2ac20282ca10685e2a2a547ec7d4e097cd0101354b46",
                                "indicator": "52f0645c1d02402adb0370ad4c3d6b534a5a6fc5522a6c4ad80dfe0b1083cf6d"
                            }
                        }, {
                            "id": 22,
                            "replies": [{
                                "sha": "6e85637257df5ac7cecf3f9262e3f04c8058fc45693b95269e4c6828881f3fd4",
                                "depth": 0,
                                "html": "Musik, you blocked <a href='./User:Bíblia_Questionário_Liga' title='User:Bíblia Questionário Liga'>user:Bíblia Questionário Liga</a> as a promotional user name. There was also promotional material on the user page, but it was added by a different user, <a href='./User:Khalil289' title='User:Khalil289'>User:Khalil289</a>. You may wish to block this account. <a href='./User:Oiyarbepsy' title='User:Oiyarbepsy'>Oiyarbepsy</a> (<a href='./User_talk:Oiyarbepsy' title='User talk:Oiyarbepsy'>talk</a>) 04:56, 13 August 2014 (UTC)"
                            }, {
                                "sha": "ee631ea8cc5eb445c25ce61039d8da34aeaee41cab773d0baaf30dc368cd3f65",
                                "depth": 1,
                                "html": "<a href='./User:Bíblia_Questionário_Liga' title='User:Bíblia Questionário Liga'>User:Bíblia Questionário Liga</a> was blocked per our <a href='./Wikipedia:U' title='Wikipedia:U'>username policy</a>, nothing beyond that. While it's possible the accounts are related, I do not immediately see a reason to block <a href='./User:Khalil289' title='User:Khalil289'>User:Khalil289</a>, especially since they blanked their only contributions. Thanks for the notice — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:49, 13 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Bíblia Questionário Liga",
                            "shas": {
                                "html": "133a535855ecfb2f078ff2a8cc03cfd065708109dc2a1d5f0e68707de9922a37",
                                "indicator": "1c83feaa7b1c85709aae216d987b329f0db62a06c8f7c694caa291a4d0660304"
                            }
                        }, {
                            "id": 23,
                            "replies": [{
                                "sha": "7c5ef5070c3adfdc03b3fe0871a32aa8bc9af34eebefb7a593b85c44d56d5fa6",
                                "depth": 0,
                                "html": "Hi MusikAnimal,<br><br>I got your message re: the Josh Howard page changes that I made.  I am sorry for not explaining why I made the changes, I am still learning the editing process and didn't realize the importance of that.<br><br>I made the changes because 1) there was information about his NBA career listed under his college career section, 2) because his NBA career section began with a grammatically incorrect and poorly worded sentence that contained dead links and 3) because the information on his NBA page was incomplete and not ordered correctly.<br><br>I realize I could go back and make the changes again and learn to correctly log my changes, but if you could help and point me in the direction of how to do that without starting over at the beginning it would be much appreciated!<br><br>Thanks,<br><a href='./User:Liaobuqi' title='User:Liaobuqi'>Liaobuqi</a> (<a href='./User_talk:Liaobuqi' title='User talk:Liaobuqi'>talk</a>) 01:06, 14 August 2014 (UTC)liaobuqi 7:05pm MST, 8/13/2014<br><br>I have gone back and restored my changes and provided my reasons in the edit summary.  Please do contact me if you have any more questions or if I did this in an incorrect manner.<br><br>Thanks,<br><a href='./User:Liaobuqi' title='User:Liaobuqi'>Liaobuqi</a> (<a href='./User_talk:Liaobuqi' title='User talk:Liaobuqi'>talk</a>) 01:43, 14 August 2014 (UTC)liaobuqi, 7:42pm MST, 8/13/2014<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! First off, I'd like to formally <a href='./Wikipedia:WELCOME' title='Wikipedia:WELCOME'>welcome you to Wikipedia</a>. I've left some useful links on your <a href='./User_talk:Liaobuqi' title='User talk:Liaobuqi'>talk page</a> that may assist you in getting more familiar with our environment. Wikipedia is a rewarding collaborative community and I'm happy to see you here.<br><br> Looks like you've already figured out how to supply an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> with your changes. While we prefer to always use an edit summary, it is really only pertinent when making what may appear to be controversial changes. In your case, removal a large of amount of <a href='./Wikipedia:CITE' title='Wikipedia:CITE'>sourced material</a>. That being said, I think your rationale for removal is perfectly valid and thank you for taking the time to explain it.<br><br> You asked how to apply your changes without having to redo them from scratch. Perhaps you are not familiar with the concept of a <a href='./Help:Diff' title='Help:Diff'>diff</a>, which is the record of a change made to a page. Every change made can be restored in part or full. If you check the <a href='https://en.wikipedia.org/w/index.php?title=Josh_Howard&amp;action=history'>page history</a>, you'll see your work. The diff you were referring to is probably <a href='https://en.wikipedia.org/w/index.php?title=Josh_Howard&amp;diff=620814386&amp;oldid=620330290'>this one</a>, by viewing it you could simply copy and paste your work to the current version of the article. There is also the concept of <a href='./Help:Undo' title='Help:Undo'>undoing changes</a>. Here I reverted your work in a <a href='https://en.wikipedia.org/w/index.php?title=Josh_Howard&amp;diff=620814832&amp;oldid=620814451'>single edit</a>, so you could have also undone my edit and supplied the edit summary that way. Careful of not misusing it, the undo function can be quite handy.<br><br> Thanks again for helping improve Wikipedia. If you need any help moving forward don't hesitate to ask. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:34, 14 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Changes re: Josh Howard Page",
                            "shas": {
                                "html": "ed5631f780f15bca6f70800829b53a305f12d0fd3e0be584995b43ea920bf2e7",
                                "indicator": "87a23334585f7d70e566244e3bd0d842dccc860f8e08fa0195fbd91e77e69556"
                            }
                        }, {
                            "id": 24,
                            "replies": [{
                                "sha": "333a2759d221f2d780c9e6f398bbb0006bbc5b600235e14b75d3f87f7cc48d44",
                                "depth": 0,
                                "html": "Hello MusikAnimal-<br>I noticed that you deleted my entry on 'Quentin Stoltzfus' on 8-13-14 due to copyright violation: <a href='http://en.wikipedia.org/wiki/Quentin_Stoltzfus'>http://en.wikipedia.org/wiki/Quentin_Stoltzfus</a><br><br>I do have explicit permission from the writer to republish the article cited on the page. His contact info is matthewfritch@comcast.net if you would like to verify that.<br><br>Please let me know if I should there are further steps I should take to reinstate the entry.<br><br>orignal article here:<br><br><a href='http://www.wonderingsound.com/interview/who-is/who-are-light-heat/'>http://www.wonderingsound.com/interview/who-is/who-are-light-heat/</a>)<br><br>--<a href='./Special:Contributions/2607:F470:A:2:21F:5BFF:FE30:A9B5' title='Special:Contributions/2607:F470:A:2:21F:5BFF:FE30:A9B5'>2607:F470:A:2:21F:5BFF:FE30:A9B5</a> (<a href='./User_talk:2607:F470:A:2:21F:5BFF:FE30:A9B5' title='User talk:2607:F470:A:2:21F:5BFF:FE30:A9B5'>talk</a>) 17:21, 13 August 2014 (UTC)"
                            }, {
                                "sha": "17f9c94973fc77aa37baa0a0537cec613330a7e11063aa13691f455cfbd08bb1",
                                "depth": 1,
                                "html": "Hi! For legal reason we cannot accept copyrighted material without proper licensing in place. There are several ways to do this. See <a href='./Wikipedia:DONATETEXT' title='Wikipedia:DONATETEXT'>WP:DONATETEXT</a> for the full instructions. Let me know if you need any help, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:41, 14 August 2014 (UTC)"
                            }, {
                                "sha": "a3c5bc9bf78f5572aa9aac295d750432dba2aebf4c37aa9bd3594e8da53c54e7",
                                "depth": 1,
                                "html": "New reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:45, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 2607:F470:A:2:21F:5BFF:FE30:A9B5",
                            "shas": {
                                "html": "72c71ca589096a8c94ee27010aada7cd659e2532619757dfe1713635c13c6305",
                                "indicator": "73a809f4a7e1ccc00990517c4a84b39f00e5b11d34ab6e19de7810cb3b68779c"
                            }
                        }, {
                            "id": 25,
                            "replies": [{
                                "sha": "e8b5ef46c4aad1c5bcd10b22aa6f10f3ae243884217e7359c6a6e1d5afb4b200",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Pectinidae#rfc_66EC1AC' title='Talk:Pectinidae'>Talk:Pectinidae</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 16 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Pectinidae#rfc_66EC1AC' title='Talk:Pectinidae'>Talk:Pectinidae</a>",
                            "shas": {
                                "html": "23c04f10be5a4b1f8dfecde770353d74d48fd6e1a85280f8879e26b9f2c19a49",
                                "indicator": "b55ba28ea6d5a33fc87788d5d2f712ed317dff7a423579c25192e7c525431dd6"
                            }
                        }, {
                            "id": 26,
                            "replies": [{
                                "sha": "c9a1888878f8e0efc4ef769bcbec689a52e02a8a48e043629bd1dafb8833dc22",
                                "depth": 0,
                                "html": "Now socking with <a href='./User:81.170.127.161' title='User:81.170.127.161'>User:81.170.127.161</a>. Pretty obviously <a href='https://en.wikipedia.org/w/index.php?title=Song_2&amp;diff=621463158&amp;oldid=621366040'>here</a> and <a href='https://en.wikipedia.org/w/index.php?title=She%27s_So_High_%28Blur_song%29&amp;diff=621463259&amp;oldid=621337558'>here</a> and <a href='https://en.wikipedia.org/w/index.php?title=Underdog_%28Kasabian_song%29&amp;diff=621464276&amp;oldid=621367152'>here</a> and <a href='https://en.wikipedia.org/w/index.php?title=All_Star_%28song%29&amp;diff=621464465&amp;oldid=621365825'>here</a> and pretty much with every one of sock's edits. I would report to that useless SPI page except that it is a pain in the ass to deal with and WP admins as a group are incredible wusses about range-blocking, so what's the point? --<a href='./User:Hobbes_Goodyear' title='User:Hobbes Goodyear'>Hobbes Goodyear</a> (<a href='./User_talk:Hobbes_Goodyear' title='User talk:Hobbes Goodyear'>talk</a>) 11:05, 16 August 2014 (UTC)"
                            }, {
                                "sha": "fa7904518da6467729a2d24e5f7af3cdad004314ef74f4deee43771db129c537",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Blocked for <a href='./Wikipedia:BE' title='Wikipedia:BE'>block evasion</a>. I believe you may be confusing being a 'wuss' with exerting <i>caution</i>. Range blocks should be an absolute <a href='./Wikipedia:RANGE' title='Wikipedia:RANGE'>last resort</a>. Here as far as I can tell we're only dealing with two IPs, hardly enough disruption to warrant a range block. Only a few pages seem to be at focus, so <a href='./Wikipedia:SEMI' title='Wikipedia:SEMI'>semi-protection</a> may be an option moving forward. Thanks for the notice — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:43, 16 August 2014 (UTC)"
                            }, {
                                "sha": "158614f4e1a4bb4fd28b5c2e8d3b1baf71bd6eda288591c18e419cc43b44007c",
                                "depth": 2,
                                "html": "Agree range block not needed here--yet--but still find that too many admins are wu..., um, excessively cautious on the matter. By the way, sock is back, now using <a href='./User:89.168.17.86' title='User:89.168.17.86'>User:89.168.17.86</a>, e.g., <a href='https://en.wikipedia.org/w/index.php?title=Burn_Burn_%28song%29&amp;diff=621641917&amp;oldid=621465189'>here</a>, <a href='https://en.wikipedia.org/w/index.php?title=She%27s_So_High_%28Blur_song%29&amp;diff=621641781&amp;oldid=621463259'>here</a>, and <a href='https://en.wikipedia.org/w/index.php?title=Song_2&amp;diff=621641702&amp;oldid=621463158'>here</a>. --<a href='./User:Hobbes_Goodyear' title='User:Hobbes Goodyear'>Hobbes Goodyear</a> (<a href='./User_talk:Hobbes_Goodyear' title='User talk:Hobbes Goodyear'>talk</a>) 16:42, 17 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FYI, your block of 81.170.124.90 is being evaded",
                            "shas": {
                                "html": "af8a83bcfd56921fe2ae11ff63adf37c3756b69f2338a74c428433148e3aca87",
                                "indicator": "b3669a6887cac9a995e8b4a52e548c1e305c4fda2a32053eb61569c28df9dd02"
                            }
                        }, {
                            "id": 27,
                            "replies": [{
                                "sha": "d4d9547262c664dd892f0c871b91604559087292d55ab8feb6d478712f8f59be",
                                "depth": 0,
                                "html": "Thanks for the protection log. --<a href='./User:Ssven2' title='User:Ssven2'>Ssven2</a> (<a href='./User_talk:Ssven2' title='User talk:Ssven2'>talk</a>) 02:50, 17 August 2014 (UTC)"
                            }, {
                                "sha": "39e469b2ec96cf4accc3c7118ed68bc7bb67b5cb907ad5d5f9c0582ae253ccca",
                                "depth": 1,
                                "html": "No problem — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:53, 17 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Anjaan",
                            "shas": {
                                "html": "6c7ce26fca11808a8cdecdc4af0a8d37b627f649abbac3bdbab717ba607a0c9b",
                                "indicator": "c94fc829aead8d3b9f5d10baa4eca7b9bc99b3cdcddbfccba5c0482baaddf1cb"
                            }
                        }, {
                            "id": 28,
                            "replies": [{
                                "sha": "85807a1dbbe550e6240c01d406c316379ec161d11ed76cb6a1e896131faba5ae",
                                "depth": 0,
                                "html": "Thank you for the quick response to my AIV report and here to build an encyclopedia. :) <a href='./User:Angelo_Michael' title='User:Angelo Michael'>Angelo Michael</a> (<a href='./User_talk:Angelo_Michael' title='User talk:Angelo Michael'>talk</a>) 23:49, 17 August 2014 (UTC)"
                            }, {
                                "sha": "f6d7e7e1f1232b24c5f81db84a55d09e81194f58ef6e32d56c7d07a9fb57be7d",
                                "depth": 1,
                                "html": "<a href='./File:Symbol_thumbs_up.svg'>[File:Symbol_thumbs_up.svg]</a> You bet — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:53, 17 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Thank you from Angelo Michael",
                            "shas": {
                                "html": "f37eae72eadd09dc98f76d9e9006c745233541cd00807b4b876985f2ce0023b8",
                                "indicator": "e8946b8037dcdfdd54f1a228a5f5da6c07580534ec2ca964379865f5e91aee67"
                            }
                        }, {
                            "id": 29,
                            "replies": [{
                                "sha": "5d2bebfae4b42587e6262ffaf679f4a13aa1116c373d6adb8fbcc388e9229075",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-13' title='Wikipedia:Wikipedia Signpost/2014-08-13'>Wikipedia:Wikipedia Signpost/2014-08-13</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 01:56, 18 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 13 August 2014",
                            "shas": {
                                "html": "7cab51ae20f0d4e445255b041a3e866f99f56c38e9a2452a383e25cfc32f161e",
                                "indicator": "16256cfe4ef73448f952dc507d4651e3d81970bd1093ed5cd2c1a55e9a44c962"
                            }
                        }, {
                            "id": 30,
                            "replies": [{
                                "sha": "d8999c0e502c4a2551e87010cce62b1f02aec7e1e4a45f2b91011aa8acb00907",
                                "depth": 0,
                                "html": "Howdy MusikAnimal, I have a question, let there be two editors, X editor and Y editor. Both of them were editing and improving an article, X editor thought to change its citation style from {{<a href='./Template:Cite' title='Template:Cite'>cite</a>}} to {{<a href='./Template:Sfn' title='Template:Sfn'>Sfn</a>}}. And X editor started changing it being WP:Bold. Suddenly Y editor reverted the change with an edit summary <i>WP:CITEVAR and WP:CONSENSUS</i>. X editor started a thread for consensus at it's talk page. Y editor was having a disagreement with X editor. Although the article looks like a mess and have heavy citation clutter with {{<a href='./Template:Cite' title='Template:Cite'>Cite</a>}} but still Y editor supported using {{<a href='./Template:Cite' title='Template:Cite'>Cite</a>}} with reasons like, Newbies will not understand how {{<a href='./Template:Sfn' title='Template:Sfn'>Sfn</a>}} works. Suddenly another newbie came in and supported editor X. Y editor almost confused and can't handle the situation, he left messages at two admins talk page (Both the admins were good friends of Y editor) and started calling them at the articles talk page for discussion although both the admins have no relation with the article (never have edited that page). Y editor explained one of the admin at the admins talk page that X editor is an inexperienced newbie (X editor helped 1 article to meet GA, 1 article to meet FL and have started 3 DYKs). One of the admin came and took the side of Y editor and accused X editor for WP:BATTLE. I have tried my best to explain the case, now the question arises who is correct, X editor or Y editor?? Didn't Y editor actually canvassed when he called those unrelated admins (admin interven was not required)?? Is it correct to call X editor inexperienced newbie when he have done some good works like DYK, FL, GA?? Did X editor used common sense??  Thanks,  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 12:34, 18 August 2014 (UTC)"
                            }, {
                                "sha": "55b507ebc2c8c91aa98f60333f03f3df81ceb253cc91653cf4d0f2a3cbbc139d",
                                "depth": 2,
                                "html": "Actually this was a question I thought of asking you since I was not present during your RfA. Good answers!  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 03:13, 19 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Just a question",
                            "shas": {
                                "html": "055625d715e88274b384574bdb90f3e64d187d8ee0e30ea08778adf9ce088ce1",
                                "indicator": "22e2dfc8141f12188f5908d5a6255ce293ba3cd041b884811fedbc4c381c32f2"
                            }
                        }, {
                            "id": 31,
                            "replies": [{
                                "sha": "8313a8f5aab2d9469354271fb745f19b6f901335c0e3d2c55cd591136f77f4d9",
                                "depth": 0,
                                "html": "Hi MusikAnimal I just wanted to say that I'm sorry about what I changed I just thought to change the last name because she got married and I thought she got married and when women get married they change there last name so I thought to do that.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:GAwes' title='User:GAwes'>GAwes</a> (<a href='./User_talk:GAwes' title='User talk:GAwes'>talk</a> • <a href='./Special:Contributions/GAwes' title='Special:Contributions/GAwes'>contribs</a>) 17:13, 19 August 2014 (UTC)"
                            }, {
                                "sha": "8630c831c34cce415bb464c2b47683e89054fcaeda7225aab13674c2af106965",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> No problem. I apologize for misinterpreting your edit as being unconstructive. The lead explains that her name changed as of the series finale, I assume Zbornak was still retained as the page name as it is the more well known. You can start a discussion on the <a href='./Talk:Dorothy_Zbornak' title='Talk:Dorothy Zbornak'>talk page</a> if you feel the page should be renamed. Moving forward, if you wish to rename pages you will need to do so by <a href='./Wikipedia:MOVE' title='Wikipedia:MOVE'>moving the page</a>. This requires your account be <a href='./Wikipedia:AUTOCONFIRMED' title='Wikipedia:AUTOCONFIRMED'>autoconfirmed</a>. Hope this helps, cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:20, 19 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from GAwes",
                            "shas": {
                                "html": "5fbd5299e34e3d3c6e353a1f3fa17c73b8e3fd6bc6ceaba365bbd9231ea5b0ce",
                                "indicator": "e612aa0c49d794882d4d3b7928caf707a826411ef0d1080b9173db814145bf56"
                            }
                        }, {
                            "id": 32,
                            "replies": [{
                                "sha": "8c931ce90160fe0d844d67ac4884b6e395fe8947fdbc6788cad72a6e3f6b2cef",
                                "depth": 0,
                                "html": "Did you notify the WMF? I thought about blocking but didn't, but I did click on the block button and saw the instructions to notify. It's at <a href='./Wikipedia:SIP' title='Wikipedia:SIP'>WP:SIP</a>. I don't know what happens in practice. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 20:34, 19 August 2014 (UTC)"
                            }, {
                                "sha": "b581ea11b35605c92b16169def2e750cd94f9d31525a4a7428ffffaf06d53ae9",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I did not, nor did I know it was sensitive! Where did you see the notice? I admittedly did not think about it given the extensive block log. 138.* is also not listed at the top-right of <a href='./Special:Block' title='Special:Block'>Special:Block</a> as sensitive. I'll get on IRC and ask somebody about it. That IP range has caused massive amounts of damage, at least to <a href='./Kevin_Kelly_(politician)' title='Kevin Kelly (politician)'>Kevin Kelly (politician)</a>, where I just finally revdel'd all the BLP violations. Thanks for the notice! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:40, 19 August 2014 (UTC)"
                            }, {
                                "sha": "b7a84884270b58e0160254c4df2a3258c2e99d0412c6ba75977d4ca5e7d1dae2",
                                "depth": 2,
                                "html": "138.162.0.0 - 138.162.255.255 (138.162.0.0/16) is listed at <a href='./Wikipedia:SIP' title='Wikipedia:SIP'>WP:SIP</a>. Not everything shows up on the block page, which is a serious pain. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 20:42, 19 August 2014 (UTC)"
                            }, {
                                "sha": "21a0fcb4aeec3531d719bc579bbaf5b77160a018963b17024ab96f633830a82a",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> <a href='https://meta.wikimedia.org/wiki/Communications_committee/Notifications#Blocked_138.162.0.41' title='meta:Communications committee/Notifications'>Notified on meta</a>. I think I'm safe... many of the other IPs in that range are blocked, and apparently the department of defense IPs aren't as critical as other sensitive ranges. Thanks again for bringing this to my attention! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:55, 19 August 2014 (UTC)"
                            }, {
                                "sha": "f24f9fef7c9af690abc3f2a266fbc48bce93c63f3eab3ffa14b33c0d62e04ba5",
                                "depth": 4,
                                "html": "I'm sure you're safe, just wondered if you did it because the IP isn't mentioned on the blocking page, and I thought you might not have noticed - I didn't realise for a long time there was another page with more IP ranges. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 05:24, 20 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Block of <a href='./User:138.162.0.41' title='User:138.162.0.41'>User:138.162.0.41</a>",
                            "shas": {
                                "html": "1c96bd60fcf79f78d69194831095aa628b0daaf752623a3e8d69b19e51f47dd0",
                                "indicator": "1175ab3e5a4fe62d17083d9183a1889ed2515890d2c259a7b98318eab91a8af0"
                            }
                        }, {
                            "id": 33,
                            "replies": [{
                                "sha": "9183bbdbfbc2d97cdb82c64bd306773f2d76d7d6817815fd5b30fe4ebbc6097d",
                                "depth": 0,
                                "html": "Look, will you remove this rubbish which is disallowing scores of good edits and actively harming the project. <a href='./Special:Contributions/90.199.67.62' title='Special:Contributions/90.199.67.62'>90.199.67.62</a> (<a href='./User_talk:90.199.67.62' title='User talk:90.199.67.62'>talk</a>) 20:22, 20 August 2014 (UTC)"
                            }, {
                                "sha": "d72b4c779e67d18af71d70c9d9290bb52839e47cf7224c1c8c58c2e3cd2dde54",
                                "depth": 1,
                                "html": "The filter I wrote does not disallow edits, it warns and then tags them. However, I see no error with the filter, as the edit you are trying to make to <a href='./Yulia_Bessolova' title='Yulia Bessolova'>Yulia Bessolova</a> would incorrectly add your signature into the article. Is there a reason why you are trying to do that? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:26, 20 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your E61 filter blocking good edits",
                            "shas": {
                                "html": "9dc37cf458cf6cad1e5f4f2bb56f73089a59c9e9bb65d4f34523dcd244061a0b",
                                "indicator": "aaf51f766e4f22d502eb23712a203ade04e1cba608175c5125e6ae63843016bf"
                            }
                        }, {
                            "id": 34,
                            "replies": [{
                                "sha": "1b790e77b3f0b6c381077ac392b586711f954f5399b0a902e471b9b0d2614a48",
                                "depth": 0,
                                "html": "Hello, I am the person who has been editing the page on Morisco. Yes, you have made a mistake. I have been reading the supposed sources, and  what the sources say is not reflected in the wikipedia article at all. There is no such thing as Sub-Saharan connection mentioned in the study. The other mention on studies that I deleted I specifically said it was not specified in the text. I was also adding to one of the studies explaining the origin of genetic markers. I am not vandalizing I am actually writing what has the sources say.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/31.205.91.168' title='Special:Contributions/31.205.91.168'>31.205.91.168</a> (<a href='./User_talk:31.205.91.168' title='User talk:31.205.91.168'>talk</a>) 21:23, 20 August 2014 (UTC)"
                            }, {
                                "sha": "39e13e5e1e8a1b79d80b082ca80cdf1171c30b316e7510a05ed68012e8999e89",
                                "depth": 7,
                                "html": "New reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:46, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 31.205.91.168",
                            "shas": {
                                "html": "e51ec8593fab69f458b397446f478963ab8f979123fd0e767753791dc154bfbb",
                                "indicator": "5b25fad67a3f32fd625b61dc83d9443d372f08037c1c43717fc5079b08845536"
                            }
                        }, {
                            "id": 35,
                            "replies": [{
                                "sha": "4e64aa23f8a15a2b5a6e95baaa8a0908cbb2774b6dbab99b882b1a2183760071",
                                "depth": 0,
                                "html": "Hello, I was just wondering why I got Rollback and then had it revoked? I know I don't have many edits and would understand you denying me, but I am just curious so I can improve it in the future. Thanks. <a href='./User:VeNeMousKAT' title='User:VeNeMousKAT'><b>VeNeMous</b><b>KAT</b></a> (<a href='./User_talk:VeNeMousKAT#top' title='User talk:VeNeMousKAT'>talk</a>|<a href='./Special:Contributions/VeNeMousKAT' title='Special:Contributions/VeNeMousKAT'>contribs</a>) 02:30, 21 August 2014 (UTC)"
                            }, {
                                "sha": "7d2face1cd7140aae72ce035836f9a83da7a0452b111acb81c691b81f2c67e24",
                                "depth": 1,
                                "html": "Nevermind just read the reassesment. <a href='./User:VeNeMousKAT' title='User:VeNeMousKAT'><b>VeNeMous</b><b>KAT</b></a> (<a href='./User_talk:VeNeMousKAT#top' title='User talk:VeNeMousKAT'>talk</a>|<a href='./Special:Contributions/VeNeMousKAT' title='Special:Contributions/VeNeMousKAT'>contribs</a>) 02:32, 21 August 2014 (UTC)"
                            }, {
                                "sha": "6fa5b58ac76b4147d757fe0f80ede72f15ec6a79c1d90b1bca13c3a2cdeb72e4",
                                "depth": 2,
                                "html": "Yes sorry about that. I've provided further clarification on your talk page. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 02:38, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Rollback",
                            "shas": {
                                "html": "75f8107e968f6a9e120abffe726b215865922ad28320bf146eea29ca501f073f",
                                "indicator": "2271f18243aa1f8d3a6a9c6ee9527b7f5b68a2ceeb706bfb0381f7a57a91118b"
                            }
                        }, {
                            "id": 36,
                            "replies": [{
                                "sha": "8ca610e8626299c291f898eef68fe2bd72e5688fc906c448d34e766c89e78ecd",
                                "depth": 0,
                                "html": "yes i thin you made a mistake when you removed this external link<br>Following his debut EP ‘The Florida Files,’ B. Smyth is taking time for the ladies with his new Bigg D &amp; Lamb produced track, “Twerkoholic.” The young R&amp;B star on the rise pays homage to the old school with the sexy jam that samples “Love You Down” by Ready For The World.<br><br>The reason being is because Twerkoholic is the name of one of his latest songs that nobody knows about. This song is a very nice slow jam, it's just the title that's misleading. <a href='./User:Jayp316' title='User:Jayp316'>Jayp316</a> (<a href='./User_talk:Jayp316' title='User talk:Jayp316'>talk</a>) 16:52, 20 August 2014 (UTC)"
                            }, {
                                "sha": "b9a8641321de78bf75da9937441dc5289780f5b853cd63fe64db0b7f2a4f4757",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I understand you are trying to add new information about the subject, but your edits sound more like social commentary and lack an encyclopedic tone. crooner B. Smyth is doing it for the ladies in his new video is not appropriate for Wikipedia. We want to simply state the facts and disregard opinions, something like In 2014 Smyth released a new music video entitled 'Twerkaholic'. Also, instead of writing Read more at [this website] you could simply use that website as a reference. I recommend reviewing the <a href='./Wikipedia:5' title='Wikipedia:5'>five pillars of Wikipedia</a>, which explains what we're all about. You can learn how to add references at <a href='./Help:Referencing_for_beginners' title='Help:Referencing for beginners'>Help:Referencing for beginners</a>. Let me know if you need help, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:06, 21 August 2014 (UTC)"
                            }, {
                                "sha": "d93c63a46fece69b89c063224d6a3b846fdbb2e7f202b0438a38863127b006d2",
                                "depth": 2,
                                "html": "Test reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:50, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from jayp316",
                            "shas": {
                                "html": "157c8ad6b38e1fd5122ef30ea8a2aaa107c0365bfbe41f2fc5cdd4df1d99df81",
                                "indicator": "50e421838984e7d348321e3d40f866948285c9439a0c8b64250c230efc18e249"
                            }
                        }, {
                            "id": 37,
                            "replies": [{
                                "sha": "cdaaa93b50d6b17acaa637fa8544a16c92deb2fcdf6a1e8b266b43170e2ac585",
                                "depth": 0,
                                "html": "I was just bored to so I did that hoping someone would see it before it was edited back! xDxDxDxD<br>Yeah you probably think I'm stupid.......  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Orangetack' title='User:Orangetack'>Orangetack</a> (<a href='./User_talk:Orangetack' title='User talk:Orangetack'>talk</a> • <a href='./Special:Contributions/Orangetack' title='Special:Contributions/Orangetack'>contribs</a>) 09:57, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Orangetack",
                            "shas": {
                                "html": "38e04d9398e15e3c41bbedeaf8aa543b84ef9a29772b363ea535c23d75a37fbe",
                                "indicator": "e904fdbfeac9fef8e30a614c81cf1610bc436773357ef9b3de891aee8492118a"
                            }
                        }, {
                            "id": 38,
                            "replies": [{
                                "sha": "49ecc4021c69e6dcdbd6bbbd435a5f7715428d801e474b9b654bd68bc2d07aec",
                                "depth": 0,
                                "html": "Hey MusikAnimal. I was wondering whether you could help me create a guestbook page. If you could that would be great. Thanks,<br><a href='./User:MirrorFreak' title='User:MirrorFreak'>Mirror</a> <a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'>Freak</a> 13:16, 21 August 2014 (UTC)"
                            }, {
                                "sha": "a3e308861bd9910a8c35e7f9c8fe34bbf6ea3ef15436b03595d5bb23ea06c4ee",
                                "depth": 1,
                                "html": "Nevermind dude. I made it <a href='./User:MirrorFreak/Guestbook' title='User:MirrorFreak/Guestbook'>here</a>. You should sign it! <a href='./User:MirrorFreak' title='User:MirrorFreak'>Mirror</a> <a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'>Freak</a> 14:27, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from MirrorFreak",
                            "shas": {
                                "html": "384f9a2f3095d652294608f30e5cdf6e2e42b2e675fe8a37bd1cb1075ae92688",
                                "indicator": "d90367656f4a0dae014bf92099741ef1ddb83390a6c7bc7ec0a3dcadb713abbe"
                            }
                        }, {
                            "id": 39,
                            "replies": [{
                                "sha": "e14fd8e841dbf423729db10fa63a674daee01a74973881d01b111edf4a2ff506",
                                "depth": 0,
                                "html": "I spent a lot of time adding language to the Celebrate Recovery section of Wikipedia.  <br>I also spent time formatting the information.  <br>I do understand your concerns about not citing items properly and possibly quoting more than I should have.<br>I have created a complete bibliography to add to the page,and I will rewrite some sections per your advice.<br>However, I would prefer to not have to reenter and reformat everything I submitted before.  <br>Is there a way I can access what I added and you removed so that I can edit the article, instead of trying to recreate it?  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Vactryl' title='User:Vactryl'>Vactryl</a> (<a href='./User_talk:Vactryl' title='User talk:Vactryl'>talk</a> • <a href='./Special:Contributions/Vactryl' title='Special:Contributions/Vactryl'>contribs</a>) 00:44, 22 August 2014 (UTC)"
                            }, {
                                "sha": "595a9381df54d2deb2a4b56a5cfb2ea7e2109c7384420abd7540851338ae7ace",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! Yes, it is important that you <a href='./Wikipedia:COPYPASTE' title='Wikipedia:COPYPASTE'>do not copy and paste</a> text from other sources, everything should be in your own words. I see your change also contained no references. Wikipedia aims to have all content <a href='./Wikipedia:V' title='Wikipedia:V'>verifiable</a>, which means it should be accompanied by <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. See <a href='./Wikipedia:REFBEGIN' title='Wikipedia:REFBEGIN'>WP:REFBEGIN</a> on how to add references. Finding your previous contributions is easy, just look for the 'Contributions' link at the top-right. From there you can click on the 'prev' links to get what's called a <a href='./Help:Diff' title='Help:Diff'>diff</a>, which is the difference of that revision and the one before it. Your change can be found <a href='https://en.wikipedia.org/w/index.php?title=Celebrate_Recovery&amp;diff=prev&amp;oldid=622249687'>here</a>. Let me know if you need anymore help! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:56, 22 August 2014 (UTC)"
                            }, {
                                "sha": "69d0d90a038394cc4fc7e31cb7afe3672cd91c48830d570b1950651d5c7f54fa",
                                "depth": 0,
                                "html": "Thanks, I revised the page considerably.  I added citations the best I could, but I am not sure they are in the format that is normal for Wikipedia.  I am a little unfamiliar with citations formats here.  Thanks.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Vactryl' title='User:Vactryl'>Vactryl</a> (<a href='./User_talk:Vactryl' title='User talk:Vactryl'>talk</a> • <a href='./Special:Contributions/Vactryl' title='Special:Contributions/Vactryl'>contribs</a>) 03:07, 22 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Vactryl - Celebrate Recovery Section Updates 08-21-14",
                            "shas": {
                                "html": "f61fef8f20513829b8286c7c5c90beb04c7200ce322cfa29e3bbbaf9859e0e2b",
                                "indicator": "d1cf90720e00221a777e4206193fdde2b0af53b21067628a69363610bf69db77"
                            }
                        }, {
                            "id": 40,
                            "replies": [{
                                "sha": "397424afa25f04622434728cb2bf123467e71dfc0c56e894fa988192dd9cbea5",
                                "depth": 0,
                                "html": "But it was ironic...<a href='./User:Pictureframedude' title='User:Pictureframedude'>Pictureframedude</a> (<a href='./User_talk:Pictureframedude' title='User talk:Pictureframedude'>talk</a>) 16:32, 22 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Oh the irony.",
                            "shas": {
                                "html": "dd93829db5ee95ab050608282141933842fe157eb4dcba94381932aa16deb94d",
                                "indicator": "21a8cf09405eac0a29b3cf0de794357f2f5c8f0f5bb65d09f9bdcbc19b19527c"
                            }
                        }, {
                            "id": 41,
                            "replies": [{
                                "sha": "60bed15ea2c3b69647407f44c98256526b7becb689711e7591ef080791207356",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-20' title='Wikipedia:Wikipedia Signpost/2014-08-20'>Wikipedia:Wikipedia Signpost/2014-08-20</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 20:10, 23 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 20 August 2014",
                            "shas": {
                                "html": "f361395fb2bb27ae39e23932745449d7ce7a7fa82656fd6239d6b02855fc5d6e",
                                "indicator": "27bbd647d80bca68c5f7e64a07342adde4eb5cb1fd04c1c66d3e5cdd06e42b03"
                            }
                        }, {
                            "id": 42,
                            "replies": [{
                                "sha": "abff3302a997d4963a17a093990a23b45d31692de1c97c211231799c146e7e25",
                                "depth": 0,
                                "html": "Background : <a href='./Special:Diff/622347676#In_the_Arms_of_an_Angel' title='Special:Diff/622347676'>Special:Diff/622347676#In the Arms of an Angel</a><br><br><a href='./The_X_Factor_(UK_series_10)' title='The X Factor (UK series 10)'>The X Factor (UK series 10)</a> - Another page that has been targeted for a few weeks now. If you look at the contributions from  the 95.83.253.* range (<a href='https://en.wikipedia.org/w/index.php?limit=500&amp;tagfilter=&amp;title=Special%3AContributions&amp;contribs=user&amp;target=95.83.253.*&amp;namespace=&amp;tagfilter=&amp;year=2014&amp;month=-1'>link</a>)- Almost all edits are addition of contentious BLP material. <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 14:38, 23 August 2014 (UTC)"
                            }, {
                                "sha": "e2e6f37f44648571fbe01334b1fe58c5973f6092e24baf9259fa27cd811864b8",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I've semi-protected the page for two weeks. Looks like this will be an ongoing issues from this IP range, and not just with subject of McDonald. Fortunately there are other measures we can take beyond page protection that I will look into. Thanks for letting me know! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:35, 23 August 2014 (UTC)"
                            }, {
                                "sha": "7901ef0d07dd02c1bb6add89e32b8d8dcba2a43d9aae8072f35745ffc17706c6",
                                "depth": 2,
                                "html": "Thankyou! <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 18:14, 24 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Nicholas McDonald",
                            "shas": {
                                "html": "dedbdb4eb75ad497b3ec875f94bc2130adb0489615f2b645b4ad244c40647082",
                                "indicator": "b4b9ec6cc453f09faed3bf1833ea0bf5490bdfec8920da3fe7f4827287dddeb9"
                            }
                        }, {
                            "id": 43,
                            "replies": [{
                                "sha": "5db13c8318093794c60c8832d4d4c648ef1a041ab2b81048298147883f68e0b2",
                                "depth": 0,
                                "html": "Thanks for blocking <a href='./User:Kblfan' title='User:Kblfan'>User:Kblfan</a> and his IP, 71.233.191.90. He's trying to evade the block yet again with a new IP (see <a href='https://en.wikipedia.org/w/index.php?title=Joshua_Vescovi&amp;curid=43631609&amp;action=history'>Joshua Vescovi edit history</a>). The new IP is <a href='./Special:Contributions/174.236.36.17' title='Special:Contributions/174.236.36.17'>174.236.36.17</a>. Can you block this other one too? <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 01:16, 25 August 2014 (UTC)"
                            }, {
                                "sha": "c9ae819bd5ca3f379b7175ee64ed22ea38e56bad0d76bab8c20545d62e22ddc6",
                                "depth": 2,
                                "html": "Thanks for the quick action! <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 03:38, 25 August 2014 (UTC)"
                            }, {
                                "sha": "4239580f2b2a88bd17ab3838a58ee5aa7bbf24bfeb9ef5ac6cb12238c32db12b",
                                "depth": 3,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:51, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "A block evader",
                            "shas": {
                                "html": "035c358bb91d620cc72b528a3793488599348019ce26ce64fcc0cad26146ff40",
                                "indicator": "8d72e1571eaef4e6aebd6443b115e4328bd6e5c2395dd6c7469bcc3d43987177"
                            }
                        }, {
                            "id": 44,
                            "replies": [{
                                "sha": "ac390d2bfb8ccca6ff48f051a42d0e2fd59d53e3b81ab7917f22ed4feaa0b922",
                                "depth": 0,
                                "html": "Hello there, we have the right to change those allegations against us as they are not true.<br><br>If there is a better way to change them then please advice otherwise we will have to remove the content.<br><br>Thank you <a href='./User:Middle_East_Eye' title='User:Middle East Eye'>Middle East Eye</a> (<a href='./User_talk:Middle_East_Eye' title='User talk:Middle East Eye'>talk</a>) 14:49, 25 August 2014 (UTC)"
                            }, {
                                "sha": "a3d3f5ca1cf8424153ac13fcff0030122f6f01b192ef2b1177644f5d8867ffd8",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Two problems right off the bat. First off, it is against policy to have an account that represents multiple persons. For this reason I have blocked your account, but feel free to create a new one representing only yourself. Secondly, as noted on your talk page, you should use an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> when making changes, in this case removing a large amount of sourced material. You are also inadvertently removing references that you apparently wish to keep, and the article's categories. Don't worry about that, I can fix that. For now, instead of removing the content again, let's discuss on the article's <a href='./Middle_East_Eye' title='Middle East Eye'>talk page</a>, where we can find a <a href='./Wikipedia:CONSENSUS' title='Wikipedia:CONSENSUS'>consensus</a> as to whether or not we should retain the content in whole or part. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:54, 25 August 2014 (UTC)"
                            }, {
                                "sha": "2a16ac7e133a6a3089c7a93fd5d0a1a54fbd526f1e984ad489392742179de43a",
                                "depth": 2,
                                "html": "Test Reply 1 <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "ea79a233a64d6fa5423ba8e3b44065476b48523c733751ebcee5d85ab0b4a9be",
                                "depth": 3,
                                "html": "Test Reply 2 <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "981b33a83622d0f88ed6c0e62f02e9cb1f36a8cb8e8c81258850c86c14017bea",
                                "depth": 4,
                                "html": "Test Reply 3 <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "46e133320c823108e61f4d1cd1ae7c7d2241998357f9a32d23ccb33995af4326",
                                "depth": 5,
                                "html": "Test Reply 4 <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "820d6676c258a303b8a4ab8911fd7d2aac9e5fa0c2455a030d7d53fc6ba3750a",
                                "depth": 6,
                                "html": "Test Reply 5 <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:55, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Middle East Eye",
                            "shas": {
                                "html": "278fbd3b78223a6d4e08e4da4b2d5916af456e991b987af83e84a25159cba47b",
                                "indicator": "0865d394d1690b0b2cdf09d7b8055f04de2b505b12c6ea1b8db0fa93a7e2b8d6"
                            }
                        }, {
                            "id": 45,
                            "replies": [{
                                "sha": "166c15a92b59ce28553e848169c28dfb7fa2e1431cf7da6bb7eae8d590230df6",
                                "depth": 0,
                                "html": "Hi MusicAnimal,<br><br>This is a member of the Middle East Eye. It was I who created previously the username Middle East Eye but I was blocked.<br><br>We want to remove the content written about us as we believe it is inaccurate and therefore is deceiving the public.<br>We can prove that we are the actual Middle East Eye company but please do let us know what we need to send you or how do we come about it to prove that we are the official MEE and we will be happy to do that.<br><br>We would like to change most of the content written about us as soon as possible.<br><br>Thank you and hope to hear from you<br><br> <a href='./Template:Tps' title='Template:Tps'>Template:Tps</a> Hi @<a href='./User:John768' title='User:John768'>John768</a>: and I'm one of MusikAnimal's friendly talk page stalkers. The case you are referring to is a conflict of interest. You may want to read <a href='./Wikipedia:COI' title='Wikipedia:COI'>WP:COI</a> if you are going to continue to edit about your company. Also, the information you removed or <a href='./Wikipedia:Verifiability' title='Wikipedia:Verifiability'>verifiable</a> which were supported by reliable sources. <a href='./User:TheQ_Editor' title='User:TheQ Editor'><b>&nbsp;ΤheQ Editor&nbsp;</b></a> <a href='./User_talk:TheQ_Editor' title='User talk:TheQ Editor'><sup><b><i>Talk</i>?</b></sup></a> 17:17, 25 August 2014 (UTC)"
                            }, {
                                "sha": "e5170e806f3e366d2c8b1c872e7fc8d2fc979fbe532bfa08245b49e1227143df",
                                "depth": 2,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey, sure I can help you. For right now I don't think it is necessary that you prove your identity. The content that makes up Wikipedia is based on previously published information, supported by <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. So if you have good sources backing what you're saying, there's no need to prove who you are, the sources prove everything. Similarly, you cannot remove well-sourced material just because you don't agree with it. I think this may be the problem you are having with <a href='./Middle_East_Eye' title='Middle East Eye'>Middle East Eye</a>. The content you tried to remove appears to be well-sourced, yet you say it is inaccurate. May I ask what you think is inaccurate? Note that it says <i>Allegations</i> of ties to the Muslim Brotherhood, I don't think it is specifically stating that was true. True or not, the allegations may still be considered encyclopedic, as it was reported in the national media. I agree with <a href='./User:TheQ_Editor' title='User:TheQ Editor'>TheQ Editor</a> that you should be careful not to exert a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a> when editing Wikipedia. We want to take into account all viewpoints, positive and negative, in a healthy balance that gives the reader unbiased, factual information. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:31, 25 August 2014 (UTC)"
                            }, {
                                "sha": "bc08180445365fa0cdbb0cd4514ee580eedfe387b2da60d3fab3c9185a8ddc17",
                                "depth": 3,
                                "html": "We have no issues to state balanced information. However, the content doesn't state facts and that is our issue. It will be hard to refute 'allegations' as this is an opinion and we have to prove a negative. The person that wrote this content wasn't obviously neutral nor balanced and spoke on behalf of the national. Maybe it is the national themselves. Is it possible to change the content along with its sources? We could refer to different sources. Thanks — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:John768' title='User:John768'>John768</a> (<a href='./User_talk:John768' title='User talk:John768'>talk</a> • <a href='./Special:Contributions/John768' title='Special:Contributions/John768'>contribs</a>)<br><br>    <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I've moved this discussion to the article's <a href='./Talk:Middle_East_Eye' title='Talk:Middle East Eye'>talk page</a>. Let's continue our discussion there. Please also remember to <a href='./Help:Signature' title='Help:Signature'>sign your posts</a> by putting four tildes at the end (~~~~). Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 19:40, 25 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from John768",
                            "shas": {
                                "html": "6ab71013898271d5c9786e08bcbd582d8de975b6a1089a4f0facf772f55b3168",
                                "indicator": "25c51dce3bce46fdba6475cf98ba15ca5d0f93c0d2c3e5cca92a18b26914518b"
                            }
                        }, {
                            "id": 46,
                            "replies": [{
                                "sha": "fedacb2a16ef23a435b067e05a0575e9f0681955b3d76b862613aa783c6a4406",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:List_of_nearest_exoplanets#rfc_E9D47A1' title='Talk:List of nearest exoplanets'>Talk:List of nearest exoplanets</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:List_of_nearest_exoplanets#rfc_E9D47A1' title='Talk:List of nearest exoplanets'>Talk:List of nearest exoplanets</a>",
                            "shas": {
                                "html": "869fb3e358f610e46c33dce5151a92368c1aae04286e2a2285b297e80dc0d70f",
                                "indicator": "9db87b1c97cad3b668d79b67e9544678514e470259583ce7d42143ee533730fc"
                            }
                        }, {
                            "id": 47,
                            "replies": [{
                                "sha": "bcf80f99c28baec3c4e7e508b9628080d5e58981172a0ce743595696e8a29a99",
                                "depth": 0,
                                "html": "Hello. You have messages at <a href='./User_talk:Gourami_Watcher' title='User talk:Gourami Watcher'>Gourami Watcher</a>'s talk page.<br><br>--<a href='./User:Gourami_Watcher' title='User:Gourami Watcher'><i><b>GouramiWatcher</b></i></a><a href='./User_talk:Gourami_Watcher' title='User talk:Gourami Watcher'><sup><i><b>(?)</b></i></sup></a> 02:45, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Talkback",
                            "shas": {
                                "html": "85162eedb66f18d155a6a0e170907f9c0a2e1d6204531749ce0a33b17681a0e3",
                                "indicator": "9c0fa590b803426b648fb69c36a3fabb07695b1f3a55be3a0bc14305b3c2e23f"
                            }
                        }, {
                            "id": 48,
                            "replies": [{
                                "sha": "5dad614fcdbb202f0a0cd708730175a560fc56dc232115e2dd40ad85567dd953",
                                "depth": 0,
                                "html": "<a href='./User:84.211.129.189' title='User:84.211.129.189'>84.211.129.189</a> (<a href='./User_talk:84.211.129.189' title='User talk:84.211.129.189'>talk</a> • <a href='./Special:Contributions/84.211.129.189' title='Special:Contributions/84.211.129.189'>contribs</a>) ignored the warning, so I've blocked. And for a month. The idea is to stop this and I don't think anything will but a block. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 10:32, 26 August 2014 (UTC)"
                            }, {
                                "sha": "44da0586ffb00e80225f19687476d1dfd23550281e447c5e3dbd4b641b61a03a",
                                "depth": 1,
                                "html": "No problemo. My instinct was to do the same, but I hadn't noticed that another admin had already declined the AIV report, hence why I unblocked. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:46, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "The IP you blocked and then unblocked",
                            "shas": {
                                "html": "3e9cb597c92fb0ff040c0df1099975bf61bca3bfcd64d06b2c72c93d30af2026",
                                "indicator": "6d9ead7557fff54b6f0e57c2f3fbbcff963d2c1b1963ee08574a3348ca6d25fa"
                            }
                        }, {
                            "id": 49,
                            "replies": [{
                                "sha": "a6a97a06789df4dc561775c40448015ecfe1571a272ab3ac37bce619fbe7d13a",
                                "depth": 0,
                                "html": "Can you please indefinitely page-protect <a href='./Joshua_Vescovi' title='Joshua Vescovi'>Joshua Vescovi</a> until the inevitable deletion at <a href='./Wikipedia:Articles_for_deletion/Joshua_Vescovi' title='Wikipedia:Articles for deletion/Joshua Vescovi'>the article's AfD</a>? Literally minutes after the protection was removed another IP sock of <a href='./User:Kblfan' title='User:Kblfan'>User:Kblfan</a> removed the AfD tag.<br><br>Or, as an admin, can you close the AfD per SNOW, delete the article, then salt it? There's no chance in hell it's going to survive the AfD at this point and by having the article still exist is only prolonging the annoyance and disruptive editing that Kblfan/his IP socks are causing. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 13:19, 26 August 2014 (UTC)"
                            }, {
                                "sha": "52c407cb8a1cf4a829af149679e9d5d2f9fcc22d225beac9e7bbabeaf74d9f43",
                                "depth": 1,
                                "html": "<a href='./Wikipedia:INVOLVED' title='Wikipedia:INVOLVED'>WP:INVOLVED</a> wouldn't apply here, so I've closed, deleted, and salted. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:28, 26 August 2014 (UTC)"
                            }, {
                                "sha": "1bf826d7c78e42414de2780d4350681c03d50a4c44df0d00b271c5b1bad35d29",
                                "depth": 2,
                                "html": "Thanks for the quick work of this. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 14:37, 26 August 2014 (UTC)"
                            }, {
                                "sha": "bc6eff8d589bcd1befa4c8ded1a47227f5d9d1f4d96d0ade94dedc996b63c727",
                                "depth": 3,
                                "html": "Actually, any chance you could SALT <a href='./Josh_Vescovi' title='Josh Vescovi'>Josh Vescovi</a> too? I could see Kblfan recreating the article under an abbreviated name. If you don't think that'd be necessary I'll go with your judgment, but this user has been particularly disruptive and insistent on the article's existence. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 14:40, 26 August 2014 (UTC)"
                            }, {
                                "sha": "103ef50aad38617482b9d600ca8fdbbfa7711275b9a4b2c75791d40f8157a123",
                                "depth": 4,
                                "html": "In theory it would make perfect sense, but procedurally I'd say we should wait until we have concrete reason to protect as that's generally not done preemptively. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:44, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Joshua Vescovi / User:Kblfan and his IP socks",
                            "shas": {
                                "html": "186c109558f921f4d501429687fa63ea1d64d75012e23fc694927bd1d7c08a6b",
                                "indicator": "a76032e77dbc2dc16a74b1c12c7a13ec1324a0ae40db60b11f2de51b242ef6ac"
                            }
                        }, {
                            "id": 50,
                            "replies": [{
                                "sha": "2e3c74f6e9ed9ccd51b4f128a9fc4dc6040e3273f47e8379831c2dffabfc348e",
                                "depth": 0,
                                "html": "All I am trying to do is update the incorrect information currently written on Sieve Analysis.  The current statements on Digital Processing are incorrect. <a href='./Special:Contributions/68.14.229.131' title='Special:Contributions/68.14.229.131'>68.14.229.131</a> (<a href='./User_talk:68.14.229.131' title='User talk:68.14.229.131'>talk</a>) 15:24, 26 August 2014 (UTC)"
                            }, {
                                "sha": "8945131eae6473bc83947ff6a1d83c057eab541d9ff2635e2361fa6e9805261f",
                                "depth": 1,
                                "html": "Hey there, I realize your edits were made in <a href='./Wikipedia:AGF' title='Wikipedia:AGF'>good-faith</a>, however they removed valid use of <a href='./Wikipedia:LINK' title='Wikipedia:LINK'>links</a> and questionably capitalized non-proper nouns. See <a href='./MOS:CAPS' title='MOS:CAPS'>MOS:CAPS</a> for more information, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:36, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 68.14.229.131",
                            "shas": {
                                "html": "6606d14d772865dd73ca01e8e9a332d1042e9074ae8e727bd7e672d2ca41d9fd",
                                "indicator": "c4367cad91516424f84fc9a2d366aee1f591eaac05412cb9e7c03da0023b9e74"
                            }
                        }, {
                            "id": 51,
                            "replies": [{
                                "sha": "0cf2a4972fd97e9d742c7547181c6ee454eaa9ae5324e617f927c08ae7e02e5b",
                                "depth": 0,
                                "html": "Hello, I wrote about Landscape Architect Gil Har-Gil, but it was deleted because it appears to have no references. I would like to try again, can I use the firm website (<a href='http://english.landscape.org.il/'>http://english.landscape.org.il/</a>) as a reference? Thank you, Tsufit<a href='./User:צופית_תור' title='User:צופית תור'>צופית תור</a> (<a href='./User_talk:צופית_תור' title='User talk:צופית תור'>talk</a>) 05:46, 17 August 2014 (UTC)"
                            }, {
                                "sha": "2d07dd218200d72b8d41bee6336883e2154d54b08613a70640caa66195ad3256",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> So sorry for taking so long to get back to you! Yes, <a href='./Gil_Har-Gil' title='Gil Har-Gil'>Gil Har-Gil</a> was deleted because it was a <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>biography on a living person</a> without any <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. Per <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>policy</a>, these types of articles have to have at least one source. This policy was a result lawsuits that happened way back when. Anyways, to answer your question, articles should be based on <a href='./Secondary_sources' title='Secondary sources'>secondary sources</a> and not <a href='./Primary_sources' title='Primary sources'>primary sources</a>. I might also add there's a <a href='./Wikipedia:PEOPLE' title='Wikipedia:PEOPLE'>notability guideline on people</a>. If you feel the subject does meet this guideline, feel free to make another attempt at the article. You could alternatively submit a draft of the article for review before it gets published. If the review passes, you can be fairly assured the article won't get deleted again. You can use the <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> to create the draft. Let me know if you need any help! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:01, 20 August 2014 (UTC)"
                            }, {
                                "sha": "85833864f03bcb79f908f194e1d28c64aad1af9c1d760ddcc6c3da32b816f31e",
                                "depth": 2,
                                "html": "Thank you, I will try again, as i think i've got this 2 subjects: The person has received a well-known and significant award or honor, or has been nominated for one several times. And the person has made a widely recognized contribution that is part of the enduring historical record in his or her specific field.<br><br>How can I be sure that it wont be deleted again? <a href='./User:צופית_תור' title='User:צופית תור'>צופית תור</a> (<a href='./User_talk:צופית_תור' title='User talk:צופית תור'>talk</a>) 05:16, 24 August 2014 (UTC)"
                            }, {
                                "sha": "0c70a1e111b4f3cd7ee42dafb9b4ddb8562d4d8c1994f6c958c17e727882c7c1",
                                "depth": 3,
                                "html": "Hey MusikAnimal, I added secondary sources to some of Gil Har-Gil projects, and some of the awards that he won, please note that all the links are in Hebrew. Moreover, I linked all the words that I found necessary to be linked. Please let me know if there any thing else I can improve. Thank you, Tsufit<a href='./User:צופית_תור' title='User:צופית תור'>צופית תור</a> (<a href='./User_talk:צופית_תור' title='User talk:צופית תור'>talk</a>) 16:28, 27 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Tsufit",
                            "shas": {
                                "html": "8c00983232d629e4ceaad9483bcc3a9f8a1f7f60a011a90314e69295d6680446",
                                "indicator": "95774c5048c06c148475e465ae1f52407bac71f5f5521013ad0028516a8fbb37"
                            }
                        }, {
                            "id": 52,
                            "replies": [{
                                "sha": "2040ac117746fc61425ecd935060a364efde5d514ab0b2ae6a286b2a9645c920",
                                "depth": 0,
                                "html": "Hey, I noticed you deleted <a href='./Ivan_Plachkov' title='Ivan Plachkov'>Ivan Plachkov</a> as A3, but in fact there was an article with content, it had just been blanked.  It's not a huge deal (I've made the same mistake before), but you should restore the article and try to remember to be a bit more careful in the future, eh? Cheers, <a href='./User:WilyD' title='User:WilyD'>Wily</a><a href='./User_talk:WilyD' title='User talk:WilyD'>D</a> 09:03, 28 August 2014 (UTC)"
                            }, {
                                "sha": "b84bff2b3a0089091ec7bcaddd22fe20616afa6dad55f7bac80c1ca50547a909",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Wowzas! That was way back in May. I was a rookie then. It would take a single look at the page history to see A3 was not appropriate... which is strange as even then I thought I always checked. Clearly I didn't that time :-/ I've restored it, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:42, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Ivan_Plachkov' title='Ivan Plachkov'>Ivan Plachkov</a>",
                            "shas": {
                                "html": "0fd210506f2e4a532462d26f9096a6d78b8020b5490c98419c681dba2e2b36cf",
                                "indicator": "1fc963c35a32717795546c292c25020bd0ba008167db917140542c48a21626dc"
                            }
                        }, {
                            "id": 53,
                            "replies": [{
                                "sha": "f41fd783ab8e74b8f8fff28f58385ab17c098e3c925c924f25c44880ec98a235",
                                "depth": 0,
                                "html": "Hi MusikAnimal. I am glad to see you are a real editor for Wikipedia and not some rogue person who is updating Union County College's page. I work for the College and have been asked to update the content which is at least three years old. I am totally new to this and was deleting all the information that was outdated, but haven't begun to populate it yet with the current information from our Academic Catalog and Annual Report. I will reach out to you if I have questions. If you see edits from me, they are legitimate. 8-27-14 Penguin05 <a href='./User:Penguin05' title='User:Penguin05'>Penguin05</a> (<a href='./User_talk:Penguin05' title='User talk:Penguin05'>talk</a>) 19:26, 27 August 2014 (UTC)"
                            }, {
                                "sha": "042609b2ae35ba45bbc2d70b1dd5f11589fd23d4f969108266f8586e63ab2d00",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! No problem, let me know if you need help. All I ask is that you try to use an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> to describe your changes, particularly when removing large amounts of sourced content. I've left a welcome template containing some useful links on your <a href='./User_talk:Penguin05' title='User talk:Penguin05'>talk page</a>. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:48, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Penguin05",
                            "shas": {
                                "html": "e7b48643703978753409103b9b57260a486b839cddd8150f64598190569d1f2a",
                                "indicator": "177a803d6334444ef5fe8f30d8c6e8db80b505ded00fc1df890e26e0f77c16dd"
                            }
                        }, {
                            "id": 54,
                            "replies": [{
                                "sha": "110d38d8b5e4fa9b7da3020febcfb23758cd7baf1da6e92f5a8e4fc8baba8541",
                                "depth": 0,
                                "html": "What should I do? <a href='https://en.wikipedia.org/wiki/User_talk:85.210.185.45'>https://en.wikipedia.org/wiki/User_talk:85.210.185.45</a> <a href='./User:Bobherry' title='User:Bobherry'>Bobherry</a> <a href='./User_talk:Bobherry' title='User talk:Bobherry'>talk</a> 15:37, 28 August 2014 (UTC)"
                            }, {
                                "sha": "d3b2af91bccdcd1bba3b890c3693fbcace6f5bae5aa12e6fa964231984fc46ba",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You've correctly warned them. If they make another <a href='./Wikipedia:PA' title='Wikipedia:PA'>personal attack</a> issue a more stern warning, then report to <a href='./Wikipedia:AIV' title='Wikipedia:AIV'>WP:AIV</a> if disruption continues. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:51, 28 August 2014 (UTC)"
                            }, {
                                "sha": "a11241fe17f760330aafb58b5d94d39420fb381ac20a55dc40a59bc265858007",
                                "depth": 2,
                                "html": "Thanks <a href='./User:Bobherry' title='User:Bobherry'>Bobherry</a> <a href='./User_talk:Bobherry' title='User talk:Bobherry'>talk</a> 16:01, 28 August 2014 (UTC)"
                            }, {
                                "sha": "2c0ecaf50749ebc926c9edbe2b1d505b982c86f588e6d98e3b629f4f47abb813",
                                "depth": 3,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:51, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Help",
                            "shas": {
                                "html": "d84e2b38f81bd296bbdacefe4fdd2316654d98efbeb5793e56e9658805a2335a",
                                "indicator": "a623a12dc89525822e2cf463f2aa248ea65668d67ae5cb971799dcf83cc20f36"
                            }
                        }, {
                            "id": 55,
                            "replies": [{
                                "sha": "27bd8339fe537a3350dbad6072e10e9de3102b109de42c00cf9d61fb4dc87e52",
                                "depth": 0,
                                "html": "Hi MusikAnimal!<br>I believe you inadvertently deleted the talk page to this article rather than the corresponding one on my userpage, <a href='./User_talk:Doug_butler/Abraham_Scott' title='User talk:Doug butler/Abraham Scott'>User talk:Doug butler/Abraham Scott</a>. Thanks heaps. <a href='./User:Doug_butler' title='User:Doug butler'>Doug butler</a> (<a href='./User_talk:Doug_butler' title='User talk:Doug butler'>talk</a>) 22:55, 28 August 2014 (UTC)"
                            }, {
                                "sha": "5c24175e56f621421e7f523d40bd1d34a9198cfc59b2190190a0fbf3c8034d1b",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Sure did, sorry about that! Restored. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:58, 28 August 2014 (UTC)"
                            }, {
                                "sha": "1d80f7855cf3dc4302b9fe61b5b9eca19dfe2cf32fc85f4dfe391f55c8a08626",
                                "depth": 2,
                                "html": "Wow! Thanks; that was quick. Don't you admins ever sleep? <a href='./User:Doug_butler' title='User:Doug butler'>Doug butler</a> (<a href='./User_talk:Doug_butler' title='User talk:Doug butler'>talk</a>) 23:06, 28 August 2014 (UTC)"
                            }, {
                                "sha": "205314b68a6e15904344150adf71662228fdfae300c18be5e133d46fdb56959c",
                                "depth": 3,
                                "html": "Well it's only around 7 PM here in New York, but I've been known to stay up well into the AM :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:17, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Abraham_Scott' title='Abraham Scott'>Abraham Scott</a>",
                            "shas": {
                                "html": "f94b4f0c8207174138b4da0b6c03121eb17e29aa1a3ecf4f4e064be94e55669a",
                                "indicator": "09a2e3a4fa27842ef5a54070be2b3453818f634279743cd717bee9873ed071a4"
                            }
                        }, {
                            "id": 56,
                            "replies": [{
                                "sha": "5ca771d129bae99824a6e697225e9cb2d538c8acd0c955c3add4950ac69b23a4",
                                "depth": 0,
                                "html": "Check the name of the Countries - <a href='http://en.wikipedia.org/wiki/National_Sports_Day'>http://en.wikipedia.org/wiki/National_Sports_Day</a> ; Where is Citation for India? In Google search it is coming on top of SERP. Search with National Sports Day India,  I came for other reason. Why I will fight with you!  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/115.253.32.174' title='Special:Contributions/115.253.32.174'>115.253.32.174</a> (<a href='./User_talk:115.253.32.174' title='User talk:115.253.32.174'>talk</a>) 17:39, 29 August 2014 (UTC)"
                            }, {
                                "sha": "43cb59d2e77e08c6a19baabd01bba1cc26c19c034c970f4f51e8597f441a18d6",
                                "depth": 1,
                                "html": "I'm confused. You are correct that currently there is no source for National Sports Day in India. Why, then, are you removing the sourced content and leaving the unsourced part about India? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:43, 29 August 2014 (UTC)"
                            }, {
                                "sha": "ec21037c7461530d4efe762ebde962276f9c2b1fc456c5eee3c2454efca5991a",
                                "depth": 1,
                                "html": "Added cites <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 17:51, 29 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Check Name of the Countries",
                            "shas": {
                                "html": "8d948ed3d181d073af1649cdbace7fb2b9d9e7eb1282d64026f1f0306bb04661",
                                "indicator": "7c968ddd1605fb28bf18de47450cc68bf938120dd9f611fb131fbb191fb223ec"
                            }
                        }, {
                            "id": 57,
                            "replies": [{
                                "sha": "850b6265836e37e8f0558e4d361b273701d65044484014bb15cf827da867c195",
                                "depth": 0,
                                "html": "Hey I'm kbro123, you removed my contributions to the ghana national team page saying their results in the 2014 World Cup, I'm pretty sure that counts as relative <a href='./User:Kbro123' title='User:Kbro123'>Kbro123</a> (<a href='./User_talk:Kbro123' title='User talk:Kbro123'>talk</a>) 18:54, 29 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Kbro123",
                            "shas": {
                                "html": "98b37c33770beda69501adacc446847fa47c6772db9822fdc0cb766f5564ae15",
                                "indicator": "286269426321d73b7edcb3587d39e2e31a6903b17949d76763450cad83711f56"
                            }
                        }, {
                            "id": 58,
                            "replies": [{
                                "sha": "6c128e9a97fe2afd8cddb018f47a46d1defbf01f016fea1b1114194c42337a95",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-27' title='Wikipedia:Wikipedia Signpost/2014-08-27'>Wikipedia:Wikipedia Signpost/2014-08-27</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 10:37, 31 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 27 August 2014",
                            "shas": {
                                "html": "d2e9d4e0cf435eecfce04b997530b5bf7047f48534662fd4046deb69165c44ec",
                                "indicator": "b49becc4331d4eec098d2dfa73275aaa349c13e9d9233fc270b95bbb767c6289"
                            }
                        }, {
                            "id": 59,
                            "replies": [{
                                "sha": "009d5c094c4799010e9f0bf90c86334533e21c98e62185b82871766fd2cbaff3",
                                "depth": 0,
                                "html": "Hi mate, sorry to be a pain, but there are a few things that need to be addressed before your article can be passed. Personally, I'd be satisfied if you could address the orphan tag, but DYK are more interested in their vast array of rules, and they don't quite grasp concepts like the spirit of the law... Hopefully you should be able to resolve the issues; just let me know when you want me to take another look. Best, <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'><b>HJ&nbsp;Mitchell</b></a> | <a href='./User_talk:HJ_Mitchell' title='User talk:HJ Mitchell'>Penny for your thoughts? </a> 20:38, 30 August 2014 (UTC)"
                            }, {
                                "sha": "4f0e4abdd4d8dea9225660a2959b3a9ab1d89a7de93020e939cd80ddde80344a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> No worries, the DYK criteria did seem fairly strict, and I had a feeling I was missing something. I wish I had known that GA promotion is also an eligible scenario, or else I'd have a few more credits. Anyways, I think I've addressed all the concerns if you'd like to take another look :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:12, 31 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Template:Did_you_know_nominations/32_Old_Slip' title='Template:Did you know nominations/32 Old Slip'>Template:Did you know nominations/32 Old Slip</a>",
                            "shas": {
                                "html": "fbf71d576fc556d1b295cc639fd1d5d52de6228ebcbe4a3a044d8bb847f2f843",
                                "indicator": "52ed7c16e1b71bf161079e485ba8f9a7d2e23f4bc872c025aba7224993252757"
                            }
                        }, {
                            "id": 60,
                            "replies": [{
                                "sha": "13213e8fa29d3b3c4ab0a6f36e025d4464c514e0d3f05ab58758c5d8cffa8b63",
                                "depth": 0,
                                "html": "Hello, I just wanted to  know that whether in case of Good-Faith edits i can use the Rollback AGF feature or not?.Thanks.--<a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a> (<a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk</a>) 03:58, 1 September 2014 (UTC)"
                            }, {
                                "sha": "4b7c12c24d338e1ff78c7983b1cb30b0853b205377855fd53d58f5311d295785",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I assume you are referring to the <a href='./Wikipedia:TW' title='Wikipedia:TW'>Twinkle</a> 'Rollback (AGF)' link? If so, yes this is what you should use for reverting good faith edits manually. The term 'rollback' simply means reverting all subsequent changes by that user, as opposed to <a href='./Help:Undo' title='Help:Undo'>undoing</a> an edit which would revert only a single edit. Twinkle's 'Rollback (vandal)' would be the equivalent to system rollback. System rollback is the 'rollback' link you should now see next to edits in page histories and on your watchlist. Huggle and STiki have good-faith revert features of their own, for your convenience. Let me know if you need anymore help — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 04:18, 1 September 2014 (UTC)"
                            }, {
                                "sha": "992e7616fad6b7236faedc9382542d0b819669d6662924128f0e1ae75d1c4abc",
                                "depth": 0,
                                "html": "Yes, i was referring to the <a href='./Wikipedia:TW' title='Wikipedia:TW'>Twinkle</a> Rollback link only.Thank you very much for the help.I have got the answer to my question.--<a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a> (<a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk</a>) 11:31, 1 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Regarding Rollback Rights",
                            "shas": {
                                "html": "22a60399d27abd05777a7261946ed066154528850e092aeb41f5ef134a9bb29b",
                                "indicator": "765a66c1039b4749e866f9d7d9ff0d55c058ab5ca5f43208193da3b2d3a349aa"
                            }
                        }, {
                            "id": 61,
                            "replies": [{
                                "sha": "463fe28e2cbb1aee10bd0dd8dffe306269fd7fe8cc640e8e5d70d3f8d3b15f65",
                                "depth": 0,
                                "html": "Hello. May I ask for a review on <a href='./...And_Justice_for_All_(album)' title='...And Justice for All (album)'>...And Justice for All </a>, an FA nominee of mine? The review page is <a href='./Wikipedia:Featured_article_candidates/...And_Justice_for_All_(album)/archive1' title='Wikipedia:Featured article candidates/...And Justice for All (album)/archive1'>here</a>, where you can post your comments/vote regarding the article's quality. I would appreciate a swift response whether you're available to conduct the review. Thanks in advance.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 10:38, 27 August 2014 (UTC)"
                            }, {
                                "sha": "7bce8c27374eed8474ae810e09f2fbaa1cce8af7ed6dfdd7b6d5fc076ba9bc46",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> At least you're getting some feedback! Mine (<a href='./Wikipedia:Featured_article_candidates/Hasil_Adkins/archive1' title='Wikipedia:Featured article candidates/Hasil Adkins/archive1'>Hasil Adkins</a>) lay idling for the past 21 days. I'm not really the best to ask for a FA review, and I don't really know how acceptable this sort of 'canvassing for reviews' is, but any feedback is good. I can't imagine there's harm in that. How about you brief over mine and I will do the same for yours? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:29, 27 August 2014 (UTC)"
                            }, {
                                "sha": "ce3fb5936adb5db5b242c1b076cacac40978195e5267037d0da9c8cf2d86d033",
                                "depth": 2,
                                "html": "Haven't noticed you've got a nominee of your own; of course I can comment there. By the way, I 'learned' this trick from Dan56. I agree there's nothing harmful in that, at least to the point you demand a suggestion, not a direct support.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 20:20, 27 August 2014 (UTC)"
                            }, {
                                "sha": "cc90fab8abc698942f88a139315f15dd927adfd6a829502d7e6bf15933ad63b2",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Just wanted to let you know I still plan on looking over your FAC and you will hear from me very soon :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:04, 1 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FAC review",
                            "shas": {
                                "html": "07ed20b580353c532f345cd4645884f2af6ffca4043df5ba26250556b2ee7a04",
                                "indicator": "4124c9837b34ce1c717acb6bb4df465bbe70b01ad06cb48fa5e312b3c4548e01"
                            }
                        }, {
                            "id": 62,
                            "replies": [{
                                "sha": "2c3b1e7e3cc43caac8645a8bf6d7b0341fa15a5fb162edfc6085968293fc89d9",
                                "depth": 0,
                                "html": "Hello. Forgot to ask the last time whether you know to update music files from YouTube? If the response is yes, I'll specify what needs to be uploaded.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 09:49, 1 September 2014 (UTC)"
                            }, {
                                "sha": "08747d32ead97c9e8c628d041e1daa5ab38516b19651fe5f89df2a4df154bfaa",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm not sure if I follow...? What music files? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:38, 1 September 2014 (UTC)"
                            }, {
                                "sha": "b057b7ad5c93c7e9643e4ff979fc0228e305991e71a0dc075045fff36a8a3ad9",
                                "depth": 2,
                                "html": "Meant to create <a href='./File:Megadeth_-_Set_the_World_Afire.ogg' title='File:Megadeth - Set the World Afire.ogg'>File:Megadeth - Set the World Afire.ogg</a> from an extract on YouTube→<a href='http://www.youtube.com/watch?v=wB6tJD5-z3o'>[watch?v=wB6tJD5-z3o]</a>. Timing 2:48–3:18. Can you handle that?--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 19:27, 1 September 2014 (UTC)"
                            }, {
                                "sha": "ee52164937d0f6243731e0ad67c2b7f4769e26eb9e973e454e4ff988ebef6368",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm a computer savvy guy but not so much beyond the terminal and my web browser, sorry. Looks like there's some YouTube to MP3 converters out there. You could then cut whatever part of the MP3 you want and <a href='./Wikipedia:FUC' title='Wikipedia:FUC'>lower the quality</a> to 60 kbps using Audacity. More info at <a href='./Wikipedia:CMF' title='Wikipedia:CMF'>WP:CMF</a>. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:23, 2 September 2014 (UTC)"
                            }, {
                                "sha": "fe1c9189b784b694865d464e05807cfec5f390bde0c0bb92686035d610d0ccae",
                                "depth": 4,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:52, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Query",
                            "shas": {
                                "html": "9462ae3b600f49b82507760e92f9ae1d8077d7ae6f1400cda78feb72df7f148d",
                                "indicator": "57e019c7c76c69150bf542d7a77d023c9f8393a41a3972a3eabf5d16579bbbf1"
                            }
                        }, {
                            "id": 63,
                            "replies": [{
                                "sha": "12ed56693307634803d41b14be20eeae3730fdbdda5e42878cf22cc3a1eec273",
                                "depth": 0,
                                "html": "<a href='./File:Updated_DYK_query.svg'>[File:Updated_DYK_query.svg]</a><br><br>On <a href='./Wikipedia:Recent_additions#4_September_2014' title='Wikipedia:Recent additions'>4 September 2014</a>, <b><a href='./Template:Did_you_know' title='Template:Did you know'>Did you know</a></b> was updated with a fact from the article <i><b><a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a></b></i>, which you recently created or substantially expanded. The fact was <i>... that the <a href='./United_States_Mint' title='United States Mint'>United States Mint</a> sold the <b><a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a></b> site in <a href='./Manhattan' title='Manhattan'>Manhattan</a> for US$27&nbsp;million, making it the most valuable US Government property sold at public auction?</i>  You are welcome to check how many page hits the article got while on the front page (<a href='./User:Rjanag/Pageview_stats' title='User:Rjanag/Pageview stats'>here's how</a>, <a href='https://tools.wmflabs.org/wikiviewstats/index.php?page=32_Old_Slip&amp;datefrom=2014-09-01&amp;dateto=2014-09-31'>live views</a>, <a href='http://stats.grok.se/en/201409/32_Old_Slip'>daily totals</a>), and it may be added to <a href='./Wikipedia:Did_you_know/Statistics' title='Wikipedia:Did you know/Statistics'>the statistics page</a> if the total is over 5,000. Finally, if you know of an interesting fact from another recently created article, then please feel free to suggest it on the <a href='./Template_talk:Did_you_know' title='Template talk:Did you know'>Did you know talk page</a>.<br><br><a href='./User:Casliber' title='User:Casliber'>Cas Liber</a> (<a href='./User_talk:Casliber' title='User talk:Casliber'>talk</a> <b>·</b> <a href='./Special:Contributions/Casliber' title='Special:Contributions/Casliber'>contribs</a>) 00:05, 4 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "DYK for 32 Old Slip",
                            "shas": {
                                "html": "f7a5ce44a740497bc2008e56ce4e37f10e9349e4ae8e76a8aa415f6cba5c496b",
                                "indicator": "1e7408bf25b5b13fb0252ac50e571e03e8488d4c7f1b14f9605a8e95f27d791a"
                            }
                        }, {
                            "id": 64,
                            "replies": [{
                                "sha": "0f8c9764dc852ec603e41d6a60a77147e6659ee5ba75812e8d1b1f8883e9cda0",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Latrodectus#rfc_F44AE78' title='Talk:Latrodectus'>Talk:Latrodectus</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:01, 6 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Latrodectus#rfc_F44AE78' title='Talk:Latrodectus'>Talk:Latrodectus</a>",
                            "shas": {
                                "html": "ae9a52db4ecca4b0076c46a017748aff6d1873458c9840b630d6b3c02e247cdb",
                                "indicator": "e2e04ff3c0cc0f47980de6f502df3674b9ed1463e55a3e6a9eea90839d1d758c"
                            }
                        }, {
                            "id": 65,
                            "replies": [{
                                "sha": "1bd7fd47417cbf576de79459d0eab2b4f5aced9c29e497a4bfc3729a98e965df",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-03' title='Wikipedia:Wikipedia Signpost/2014-09-03'>Wikipedia:Wikipedia Signpost/2014-09-03</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 08:03, 6 September 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 03 September 2014",
                            "shas": {
                                "html": "0743c315cc6fecbae06a47193791cefd262416a58b09a90caba2b6d05cb31c17",
                                "indicator": "a471a0d67d2e5defaad6d1e995835b88fc2b77dfed97d508006daf8a2d412a6a"
                            }
                        }, {
                            "id": 66,
                            "replies": [{
                                "sha": "97afe84025c20719ec326d8d54bcf0403eb3b12e410233733cd216364b758166",
                                "depth": 0,
                                "html": "Hello <a href='https://en.wikipedia.org/wiki/User_talk:VeNeMousKAT#Your_request_for_rollback'>again</a> (Just to let people know I'm asking on your talk page because you said I should), MusikAnimal! I am requesting reevaluation for rollback rights, as you might suspect from the title. Even though you told me to wait a month or two, I simply couldn't wait that long not knowing if I could have gotten rollback sooner. I now have more than <a href='https://tools.wmflabs.org/supercount/index.php?user=VeNeMousKAT&amp;project=en.wikipedia.org&amp;toplimit=10'>200 edits to mainspace</a> (article) and have <a href='https://en.wikipedia.org/wiki/User:VeNeMousKAT/CVUA'>completed my CVUA</a>! I will explain my reasons on why I think I should get rollback or not.<br><br><b>My block log</b><br><br>First, I want to get <a href='https://en.wikipedia.org/wiki/User_talk:VeNeMousKAT/Archive_1'>this</a> out of the way. When I first joined Wikipedia, I didn't realize the beauty of Wikipedia. I didn't realize how fun it is to revert and interact with people on Wikipedia. I have long since changed my ways, I no longer think to harm Wikipedia as I did when I first joined it. In fact, I want to help Wikipedia. I have found Wikipedia to be a very fun place ever since I've been unblocked and I never intend to hurt/disrupt Wikipedia again. Although I can't give you evidence that I won't do it again, I can give you my word and let my recent edits speak for themselves.<br><br><b>Counter vandalism unit academy</b><br><br>I have <a href='https://en.wikipedia.org/wiki/User:VeNeMousKAT/CVUA'>completed</a> the CVUA and on the final test, I believe I would have gotten a 98% or 99%, but he forgot to put the grade in the box, but I believe I got 100% on the last part. The CVUA taught me a lot about counter vandalism and how to deal with other issues involving edit waring to dealing with users.<br><br><b>Why I want, and what I intend to do with rollback</b><br><br>I want rollback for the simple reason being that rollback is more effective, faster, and more efficient way to stop, and neutralize vandalism. I intend to use rollback rights so I can revert vandalism (and only that with rollback) with Stiki and/or Huggle, two very effective anti-vandalism programs.<br><br><b>Why you, and the community should trust me</b><br><br>I believe you, and the community, should trust me because I now work hard to revert and/or remove vandalism and help improve Wikipedia. I have 200 mainspace edits now, compared to the <a href='https://en.wikipedia.org/w/index.php?&amp;oldid=622436794#User:VeNeMousKAT'>75</a> I had when I requested it before. I believe I have much more experience and knowledge by completing the CVUA than I had before I did.<br><br><b>Thank you</b><br><br>Thank you for taking your time to read this, and I look forward to hearing from you. Once again, Thanks. <a href='./User:VeNeMousKAT' title='User:VeNeMousKAT'><b>VeNeMouš</b><b>KAT</b></a> <sup><a href='./User_talk:VeNeMousKAT' title='User talk:VeNeMousKAT'><b>(talk:会話)</b></a></sup> 01:34, 9 September 2014 (UTC)"
                            }, {
                                "sha": "24663228b8f97dde99a49ae16444b0b41437ad9f946fd4088134f48b84f0229a",
                                "depth": 1,
                                "html": "Again, anti-vandal work looks great. You've indicated you are dedicated to helping the project, and I sense sincerity. I'm torn, however. It's only been 20 days since your last request was declined. Meanwhile the fact you were a vandal yourself a mere month ago is difficult to see past. I'd like a second opinion. I'm going to ping my colleague <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'>HJ Mitchell</a> who is active at <a href='./Wikipedia:PERM' title='Wikipedia:PERM'>WP:PERM</a>. HJ, might I inquire your take on this scenario? Feel free to review <a href='https://en.wikipedia.org/w/index.php?title=Special:Undelete&amp;target=User%3AVeNeMousKAT&amp;timestamp=20140802045159'>deleted contributions</a>. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:21, 9 September 2014 (UTC)"
                            }, {
                                "sha": "66ffd970c8a352281d887fdcb05472b5edc37076c5d4e43a8689b9086b2aff44",
                                "depth": 2,
                                "html": "I'd be a lot more comfortable if they'd done something other than revert vandalism, like write an article or something else that shows that they get what the project is about (cf. <a href='./Wikipedia:MMORPG' title='Wikipedia:MMORPG'>WP:MMORPG</a>). But then it's minimal effort to revoke rollback if it's misused. I'm not inclined to grant it, at least not at the moment, but I won't lose sleep if you want to. Best, <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'><b>HJ&nbsp;Mitchell</b></a> | <a href='./User_talk:HJ_Mitchell' title='User talk:HJ Mitchell'>Penny for your thoughts? </a> 15:47, 9 September 2014 (UTC)"
                            }, {
                                "sha": "ef7b90b4dc5f6828d50164652e450678d473a893405ab98bab27ec2af934f578",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I think we need more vandal fighters, but I agree with HJ. Having some content work under your belt would further corroborate your newfound good intent and help exemplify an understanding of <a href='./Template:Wikipedia_policies_and_guidelines' title='Template:Wikipedia policies and guidelines'>basic policy and guidelines</a>. Are there any topics you are particularly interested in? <a href='./Wikipedia:WikiProject_Music' title='Wikipedia:WikiProject Music'>Music</a>? <a href='./Wikipedia:FILM' title='Wikipedia:FILM'>Movies</a>? <a href='./Wikipedia:VIDEOGAMES' title='Wikipedia:VIDEOGAMES'>Video games</a>? Take a look at the <a href='./Wikipedia:PROJDIR' title='Wikipedia:PROJDIR'>various WikiProjects</a> and you'll find ample amounts of fun things to work on. Look up the article on your favourite band and try to expand on it a little. If you're not good with prose, consider adding references where needed, or helping lessen any of the <a href='./Wikipedia:BACKLOG' title='Wikipedia:BACKLOG'>content backlogs</a>. Anything you have to offer. 200+ mainspace edits is good, but let's try to get another 200 or so (400 is the new accepted standard for rollback). You're doing great with Twinkle right now, let's not rush to get rollback. Thanks for your understanding and look forward to seeing you grow as a Wikipedian. If you need help along the way don't hesitate to ask — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:23, 9 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Requesting for rollback",
                            "shas": {
                                "html": "e61e0592e317e8b6908b7988abf7d6aa2eb0b1f3fab5a6cb743c844cc77afa9e",
                                "indicator": "7df73120ed437e0cc0cf239728533b7b43c9198e0205785c50cc964154e46119"
                            }
                        }, {
                            "id": 67,
                            "replies": [{
                                "sha": "2bb20c908549af16bfcfd8b4b6572f20416e5e86f72d5d2c5d589f1498406ed5",
                                "depth": 0,
                                "html": "Hi MusikAnimal,<br><br>Saw your message, I see you have rolled back all my changes. Did not know about the edit summary, I will do that in the future. However, I was in the middle of rearranging the content into different sections, not removing them. Please restore the changes I have made.<br><br>Thanks <a href='./User:VasuEPA' title='User:VasuEPA'>VasuEPA</a> (<a href='./User_talk:VasuEPA' title='User talk:VasuEPA'>talk</a>) 21:20, 10 September 2014 (UTC)"
                            }, {
                                "sha": "76be12e3245028e45d198aad4a627ad0c5223db6459d65b308e73e1ed52dbefe",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Done. But yes, please do remember to supply an edit summary with your changes, especially when removing large amounts of sourced content. Thanks for your understanding. I've also left some useful links on your <a href='./User_talk:VasuEPA' title='User talk:VasuEPA'>talk page</a> to help you get started. If you ever need help don't hesitate to ask, and welcome to Wikipedia :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:26, 10 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from VasuEPA",
                            "shas": {
                                "html": "3111d1d9123424d200a03e551ae5de524633a0581bf38ac1d344f120cf8ce0e4",
                                "indicator": "6034f705a7c9ebe295186a93a279578e1b1667d46aa4aeade970a85e7e970e3e"
                            }
                        }, {
                            "id": 68,
                            "replies": [{
                                "sha": "b2e457cda9526c6bea1ef16753f0f95b0362d6702e97ea1149ea2ed08b45fb5c",
                                "depth": 0,
                                "html": "Hello MuzikAnimal,<br><br>I would like to contribute to an article which you have deleted, about <a href='https://en.wikipedia.org/w/index.php?title=Northern_Lights_Direct&amp;action=edit&amp;redlink=1'>Northern Lights Direct</a> .<br><br>To be clear it is currently the place where I work however I strongly believe the company should have a Wikipedia page due to it's accomplishments and client base in the Direct Response Advertising Industry.<br><br>I am aware the previous article written by my colleague did not meet Wikipedia's guidelines and was rather promotional in it's nature however, I would like to have a chance to address this issue by changing the content substantially from what it used to be. I'll make sure the article is a neutral summary of what reliable, independent sources have reported about the company.<br><br>I kindly ask that I be given a chance to edit the page and look forward to becoming a contributor to Wikipedia in not only this topic but others alike as well. <a href='./User:Responsecan88' title='User:Responsecan88'>Responsecan88</a> (<a href='./User_talk:Responsecan88' title='User talk:Responsecan88'>talk</a>) 20:38, 11 September 2014 (UTC)"
                            }, {
                                "sha": "052d30224750928c2670fba53b1f193ebc3b002055e1871a8d2b1191a4d16827",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hello! While it's best not to write about subjects you're directly involved with, you absolutely can give it another try. If you are asking to receive a copy of the deleted article, I could provide it in part, but it needed a fundamental rewrite anyway, so maybe you're better off starting from scratch. I recommend composing a draft article and then once complete, you can submit it for review. That way more experienced editors can help you refine it and ensure it doesn't get deleted again. You can use the <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> to expedite this process. Things to keep in mind... make sure your organization meets our <a href='./Wikipedia:NORG' title='Wikipedia:NORG'>notability guideline</a>, and that just as you say, be careful not to exert a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a>. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:07, 11 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Responsecan88",
                            "shas": {
                                "html": "321d9c1d7882be6ac10115f299d31e1eb02ee0fb7fe0bb47a39c14080a1974ef",
                                "indicator": "0f635441c097517494b44fccc907db34fbc063b1d009581a5ddd0166678ea30e"
                            }
                        }, {
                            "id": 69,
                            "replies": [{
                                "sha": "04b73f9363672374b29a2759f6fb980877bba72aeb64a974965bf72f496e9085",
                                "depth": 0,
                                "html": "I blocked the idiot, and the idiot what you reverted to also. I hate it when I revert a vandal to another vandal, but it's easily done. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 15:57, 12 September 2014 (UTC)"
                            }, {
                                "sha": "ebc8a5951f14bbedf6fcbf6c8da0bf335f72cb175f2d7a3ae68899cfc187d9ff",
                                "depth": 1,
                                "html": "Ridiculous... unfortunately half the time I'm not aware what I'm reverting to. I usually issue a final warning before blocking, but edits like that are an obvious exception. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:05, 12 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your revert at Inca Empire",
                            "shas": {
                                "html": "e2db7a1a5780d63767a8cb237a13b1459eed581eb95e9862024134d4ea8a1aad",
                                "indicator": "c067841804284e674a782d62fd805edf7178198d867f428c50cf3e724d0fcf3e"
                            }
                        }, {
                            "id": 70,
                            "replies": [{
                                "sha": "64658a5e41f254625fd7be096c832600ea3ce7a2f6b28262a6ac033c4e914471",
                                "depth": 0,
                                "html": "He/she disruptive editing on <a href='./Daydream_(Mariah_Carey_album)' title='Daydream (Mariah Carey album)'>Daydream (Mariah Carey album)</a> again. Can you block him/her again. <a href='./Special:Contributions/183.171.168.28' title='Special:Contributions/183.171.168.28'>183.171.168.28</a> (<a href='./User_talk:183.171.168.28' title='User talk:183.171.168.28'>talk</a>) 17:48, 12 September 2014 (UTC)"
                            }, {
                                "sha": "d0c116c118917314ae0a66c1b4dbd0f9e507437824198e98bdced84b1737829a",
                                "depth": 1,
                                "html": "Not comfortable blocking just yet. This time around things look more constructive, with at least an attempt to add a source (it was a dead link). I've issued a level two warning. If disruption continues a block may be warranted. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:00, 12 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Special:Contributions/5.81.224.153' title='Special:Contributions/5.81.224.153'>Special:Contributions/5.81.224.153</a> again...",
                            "shas": {
                                "html": "4b006965289b019bfa17d9bbc95acb483efabc80c2513878d8c957f402134eed",
                                "indicator": "4328136ef9f776117ca63745ccf2bd5e89e67658d90ec88a9d0e1214adafda99"
                            }
                        }, {
                            "id": 71,
                            "replies": [{
                                "sha": "ce0835aef6257529bf431d126c8943f37d80b707ede29fdb4392f685238a35ad",
                                "depth": 0,
                                "html": "...on <a href='./Nimrod_Kamer' title='Nimrod Kamer'>Nimrod Kamer</a> and <a href='./Rowan_Blanchard' title='Rowan Blanchard'>Rowan Blanchard</a>? --<a href='./User:George_Ho' title='User:George Ho'>George Ho</a> (<a href='./User_talk:George_Ho' title='User talk:George Ho'>talk</a>) 16:57, 13 September 2014 (UTC)"
                            }, {
                                "sha": "ec4b58931d2499ed234283dd65d0304cc98ec2c945d8cf7cec086111e0904f30",
                                "depth": 1,
                                "html": "@<a href='./User:George_Ho' title='User:George Ho'>George Ho</a>: Extended <a href='./Nimrod_Kamer' title='Nimrod Kamer'>Nimrod Kamer</a> for another month. <a href='./Rowan_Blanchard' title='Rowan Blanchard'>Rowan Blanchard</a> history looks quite bad... pending changes protection isn't doing much, so I've bumped it to semi-protection. Thanks for keeping an eye on these articles! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:07, 13 September 2014 (UTC)"
                            }, {
                                "sha": "d9c745a379e0d995f8153f8b3d073cb7d0aee5cefaa17cb0e32690044aa14360",
                                "depth": 2,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:53, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Extend PC time...",
                            "shas": {
                                "html": "a8fee5dff10ef6e14e499ac68c76ff9d26725c34ac4ef0de15635b70cbd149d3",
                                "indicator": "2ee81c61d8502659c556b4abd246ab7560a484afb450b74c778e233a6c608390"
                            }
                        }, {
                            "id": 72,
                            "replies": [{
                                "sha": "8a212295e8e5db0c6dbddc08939f811ac829f5bbee016417b13863ae29fbbc35",
                                "depth": 0,
                                "html": "<a href='./User:1_chisper_(Pelicula)_2015' title='User:1 chisper (Pelicula) 2015'>User:1 chisper (Pelicula) 2015</a>, a page you substantially contributed to, has been nominated for <a href='./Wikipedia:MfD' title='Wikipedia:MfD'>deletion</a>. Your opinions on the matter are welcome; please participate in the discussion by adding your comments at <a href='./Wikipedia:Miscellany_for_deletion/User:1_chisper_(Pelicula)_2015' title='Wikipedia:Miscellany for deletion/User:1 chisper (Pelicula) 2015'>Wikipedia:Miscellany for deletion/User:1 chisper (Pelicula) 2015 </a> and please be sure to <a href='./Wikipedia:SIG' title='Wikipedia:SIG'>sign your comments</a> with four tildes (~~~~).  You are free to edit the content of <a href='./User:1_chisper_(Pelicula)_2015' title='User:1 chisper (Pelicula) 2015'>User:1 chisper (Pelicula) 2015</a> during the discussion but should not remove the miscellany for deletion template from the top of the page; such a removal will not end the deletion discussion.  Thank you. <a href='./User:Bovineboy2008' title='User:Bovineboy2008'>BOVINEBOY</a><a href='./User_talk:Bovineboy2008' title='User talk:Bovineboy2008'>2008</a> 23:38, 13 September 2014 (UTC)"
                            }, {
                                "sha": "6ff62430d737b06481d3ed87842a27c459f8951142d8d584cd4e184927309b35",
                                "depth": 1,
                                "html": "Deleted, more at <a href='./Wikipedia:Sockpuppet_investigations/1_chisper' title='Wikipedia:Sockpuppet investigations/1 chisper'>Wikipedia:Sockpuppet investigations/1 chisper</a> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:15, 14 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "MfD nomination of <a href='./User:1_chisper_(Pelicula)_2015' title='User:1 chisper (Pelicula) 2015'>User:1 chisper (Pelicula) 2015</a>",
                            "shas": {
                                "html": "415879979af6dc88361d4d0c48a300f57f32bab0a22ed7d98c9af2a5782bd456",
                                "indicator": "ee8e6801b7bb2c343ae7f793c8281a6bc16fbc636835650029eefe74f283aa3c"
                            }
                        }, {
                            "id": 73,
                            "replies": [{
                                "sha": "81255966b01886a1cae0900b788d1ceb6b1243a29d61841288c2d3ddb78d884e",
                                "depth": 0,
                                "html": "Hi, help here please. 31 hours wasn't enough.  — <a href='./User:Calvin999' title='User:Calvin999'>₳aron</a> 21:20, 13 September 2014 (UTC)"
                            }, {
                                "sha": "1344bc8ac0c410ad83f59557ff1c6921530b6fa3c8434a7203320f3410eada7a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> OK, I've reluctantly blocked again. User clearly means well, just continually adds unsourced content and refuses to talk. By the way, there's a discussion currently going on about the use of genre names in infoboxes at <a href='./Wikipedia_talk:WikiProject_Albums#Genre_path_in_template' title='Wikipedia talk:WikiProject Albums'>Wikipedia talk:WikiProject Albums#Genre path in template</a>. Your input is welcomed. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 05:06, 14 September 2014 (UTC)"
                            }, {
                                "sha": "cfa37d0a6a53be14a642678e89f40436996586050101933734c0877c461876f6",
                                "depth": 1,
                                "html": "Means well a few times. But to keep on meaning well after being repeatedly warned and told by several people to stop isn't meaning well.  — <a href='./User:Calvin999' title='User:Calvin999'>₳aron</a> 15:26, 14 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./User_talk:5.81.224.153' title='User talk:5.81.224.153'>User talk:5.81.224.153</a>",
                            "shas": {
                                "html": "737c5a64ef91ecec777fdd441396367bcebe8d77b2ec5e83d1b7cfbf54e6264a",
                                "indicator": "da0af0c2c41ad8eba30e59e90da6cac8364e062348ee4bc7136f20b613799450"
                            }
                        }, {
                            "id": 74,
                            "replies": [{
                                "sha": "562b686f1ba62366b72c26428feb010562c9d86622d574276d0fd21698112c88",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-10' title='Wikipedia:Wikipedia Signpost/2014-09-10'>Wikipedia:Wikipedia Signpost/2014-09-10</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 21:56, 14 September 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 10 September 2014",
                            "shas": {
                                "html": "e4494afd9459ffa2ba456de5d3bb334013704266473d3e4035e9c63674e07ca7",
                                "indicator": "6dccaad7a0e1c065e9cb35500b6b97ebc4d57c32e85ad8022e28b63ee4db5852"
                            }
                        }, {
                            "id": 75,
                            "replies": [{
                                "sha": "849d3a073285fc1f2f215b372400d2d8e04c08519fdd27be6cf13f86872278b5",
                                "depth": 0,
                                "html": "Hi, i just wanted your help on disruptive editing by <a href='./User_talk:Alastair_winch' title='User talk:Alastair winch'>User talk:Alastair winch</a> on my talk page.Another problem with this user is that he has created his user page in his talk page and there is a possibility that <a href='./User:Indu_roy' title='User:Indu roy'>User: Indu roy</a> is the same as this user.Please guide me through this situation.Thanks.--<i><a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a>  <sup>  <a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk?</a></sup></i> 17:40, 14 September 2014 (UTC)<br>Thank you very much for the help.--<i><a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a>  <sup>  <a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk?</a></sup></i> 04:09, 15 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Help",
                            "shas": {
                                "html": "59e91f6bfbec4d44c299a51725f2336444d91d3458abb047177513a0022cba8b",
                                "indicator": "f78bd9464ae7930b8d62e4a0d4e8731cd3d2ec1ccdd3e4817199f6d64be5197f"
                            }
                        }, {
                            "id": 76,
                            "replies": [{
                                "sha": "6ba206d2d8f4b6c7b5f9a0a369c378da2d890b27450e58f3dbdd63c3bd90d2d2",
                                "depth": 0,
                                "html": "It was not a mistake. The removal was a statement promoted by the company leading to the company's actual website. It was a link to information on the company's own website which is already debunked by the sources already there. Please have a look at all the citations. The company is trying to deflect legitimate criticism of itself.<a href='./Special:Contributions/69.165.246.175' title='Special:Contributions/69.165.246.175'>69.165.246.175</a> (<a href='./User_talk:69.165.246.175' title='User talk:69.165.246.175'>talk</a>) 21:35, 15 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Reply",
                            "shas": {
                                "html": "596808e5e3c5eb5643773a4df35f3f5d8d3776a67b454af65f06fc247d52d505",
                                "indicator": "2c7b678ed1ee61f527e1dfc1af60e639b871fb3d0f6a232ad4aa0794c137fbcf"
                            }
                        }, {
                            "id": 77,
                            "replies": [{
                                "sha": "8473a54b79bff63272781ead7db956e8dbc90ccc7fa7346232d09604c7639090",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Shooting_of_Michael_Brown#rfc_583E919' title='Talk:Shooting of Michael Brown'>Talk:Shooting of Michael Brown</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Shooting_of_Michael_Brown#rfc_583E919' title='Talk:Shooting of Michael Brown'>Talk:Shooting of Michael Brown</a>",
                            "shas": {
                                "html": "ad1ecc6f90e382edaeaa3dcb00e2410fcebe4cacf32112cf4497082bd8fb3f52",
                                "indicator": "3cc31f7ac2d056842857ae2733e48acdf63ffd7171189b5fc1a33cb329963e46"
                            }
                        }, {
                            "id": 78,
                            "replies": [{
                                "sha": "818c1e88005683a416c0790df2de7e218d4d3600620819c74a0beb9ead7e13a1",
                                "depth": 0,
                                "html": "Hello MusikAnimal. Sorry I forget to write the reason for changing the page. I just added Jay Park new Studio album <i>EVOLUTION</i> in his <a href='./Jay_Park_discography' title='Jay Park discography'>Studio albums discography</a>, the album already been released in September 1, and couple of new singles but still nobody update his discography. Thank you. — CesarLeto 20:00, 16 September 2014  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:CesarLeto' title='User:CesarLeto'>CesarLeto</a> (<a href='./User_talk:CesarLeto' title='User talk:CesarLeto'>talk</a> • <a href='./Special:Contributions/CesarLeto' title='Special:Contributions/CesarLeto'>contribs</a>)"
                            }],
                            "depth": 2,
                            "html": "Hello from CesarLeto",
                            "shas": {
                                "html": "c9613221d95f3149eb5e1d4a74b42110e06df35f1bb8288799fce55fa0ab074b",
                                "indicator": "b3f5bbd67b4761e9c808f3b732164392d842cb3fe178580e88d712546d0f6c0f"
                            }
                        }, {
                            "id": 79,
                            "replies": [{
                                "sha": "a98f4e27e78d4caa4a23e2c32cec7a7fed13f4c8c82f44cb516ac8031cf84199",
                                "depth": 0,
                                "html": "Review <a href='./Special:Contributions/69.117.1.13' title='Special:Contributions/69.117.1.13'>this IP's edits</a>. Some more RevDelete might be in order. — <b><a href='./User:Confession0791' title='User:Confession0791'>Confession0791</a></b> <b><a href='./User_talk:Confession0791' title='User talk:Confession0791'><sup>talk</sup></a></b> 04:17, 16 September 2014 (UTC)"
                            }, {
                                "sha": "139e54a549e45d6b6b7c4bcb680bf9b97208614e6098e8fa9f9d409c2ce38d9e",
                                "depth": 1,
                                "html": "<b>Done</b> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:42, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Rowan Blanchard",
                            "shas": {
                                "html": "ee66592cfcf2df6dbde5ca02ef22a327e13de2c5a8bfbc6c351ed57afad0bb47",
                                "indicator": "ec952ed0365a3823ba916ebe764822e5190336c6492e94e03b6a471ff43b5147"
                            }
                        }, {
                            "id": 80,
                            "replies": [{
                                "sha": "8335252c5974899d05fa732efb871d19d12f889de93782e04f0000da7be64551",
                                "depth": 0,
                                "html": "Previous semi expired and the IP-hopping editor is back again adding contentious material. Needs rev-del too. <a href='https://en.wikipedia.org/wiki/User_talk:MusikAnimal/Archive_8#Nicholas_McDonald'>Previous discussion</a> <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 15:12, 16 September 2014 (UTC)"
                            }, {
                                "sha": "b26cf580c03893350442200205c1157fddb93b049f9704008a8cc0ce1c581e6e",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> This is really getting out of hand. How many articles are we talking about here? I have yet to look into these <a href='./Wikipedia:EDITFILTER' title='Wikipedia:EDITFILTER'>other measures</a> we could take, but problem is we need a narrow set of criteria in order for it to be effective. I'll brainstorm a solution, but for now I think semi-protecting the articles is the best route. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:23, 16 September 2014 (UTC)"
                            }, {
                                "sha": "58ed52939306656e421d99474479e18ebe77f247ceb875cfb57455910272a312",
                                "depth": 3,
                                "html": "I'm not sure there is much that can be done here. The new set of edits are from a University IP block and different from the previous range. Like you said, semi is probably the best way to tackle it as of now. Thanks for taking care of it. <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 16:59, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./List_of_The_X_Factor_finalists_(UK_series_10)' title='List of The X Factor finalists (UK series 10)'>List of The X Factor finalists (UK series 10)</a>",
                            "shas": {
                                "html": "dad2a5fc166702865df36a1532de55014d137f5055621089abfe9c1896c82e74",
                                "indicator": "85cf2b28ec8cb2f5924e9e9b573dbd6320d5c0de59b0407b20899bc6ff6b6d15"
                            }
                        }, {
                            "id": 81,
                            "replies": [{
                                "sha": "728352a4221120b298b42b45dd00deb22853756fb037a96aed26703442b25c47",
                                "depth": 0,
                                "html": "Are you a bot? <a href='./Special:Contributions/216.155.131.68' title='Special:Contributions/216.155.131.68'>216.155.131.68</a> (<a href='./User_talk:216.155.131.68' title='User talk:216.155.131.68'>talk</a>) 17:36, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 216.155.131.68",
                            "shas": {
                                "html": "7c9680ca6f603e559baeea6b6b616d55338428ce480fae39a694a8d9271ca4c0",
                                "indicator": "e8c6015cab08483bdd18e26a7ca0cf3142dbcc23093af87e8a31126d5a297746"
                            }
                        }, {
                            "id": 82,
                            "replies": [{
                                "sha": "a593426a67d027c7b4c89c1015a6a2d29e0afaa877f57312e3a6ff2cb343e33a",
                                "depth": 0,
                                "html": "I would like to make an edit request on the Ahmed Hassan Imran page based on <a href='https://en.wikipedia.org/wiki/Wikipedia:Biographies_of_living_persons#BLPCRIM'>Biographies_of_living_persons#BLPCRIM</a> and based on unproven allegations by a politician which was published on a single newspaper recently while there are counter evidences against the allegations. Please, guide me sir on how I can do this. Thank you in advance.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a> • <a href='./Special:Contributions/MehulWB' title='Special:Contributions/MehulWB'>contribs</a>) 15:26, 16 September 2014 (UTC)"
                            }, {
                                "sha": "34a6ab03304319ff2481bea013b13f9100c5d8626a4e030ae4031fbf320bebab",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> View the source of the page (<a href='https://en.wikipedia.org/w/index.php?title=Ahmed_Hassan_Imran&amp;action=edit'>here</a>) then click on the blue button to submit an edit request. State only what you wish to change and why. Please also remember to sign your comments on talk pages by placing four tildes (~~~~) at the end. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:32, 16 September 2014 (UTC)"
                            }, {
                                "sha": "da06b7c0d1d4fd68bd6ea72effd5735a33857f8b9567f866255a309c9c4b3363",
                                "depth": 0,
                                "html": "Thank you very much for helping out. <br><a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a>) 15:40, 16 September 2014 (UTC)"
                            }, {
                                "sha": "b531b730df1a91e74106bed0cad0ab4ab9c25823e29feb083893bb51880be45c",
                                "depth": 0,
                                "html": "Sir, I thing I made the edit request properly but I am not sure if I did it correctly. Can you please, check it and tell me if I forgot anything? Thank you again.<br><a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a>) 17:06, 16 September 2014 (UTC)"
                            }, {
                                "sha": "87a644257d94788badf12a656b086bcf0ab15b3efd0db5b3592b75bc5199f7a6",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You should only make an edit request for content that is <i>uncontroversial</i> or is backed by <a href='./Wikipedia:CONSENSUS' title='Wikipedia:CONSENSUS'>consensus</a>. At first glance that doesn't appear to be the case, but either way I unfortunately do not have time right now to carefully review the proposed content and the layers of potential BLP issues. The edit request is logged and any patrolling admin can come by and answer it. The page protection will also be expiring soon anyway. When it does, be careful not to jump back into an <a href='./Wikipedia:EW' title='Wikipedia:EW'>edit war</a>. Remember, we work together to agree on content and how it is presented. More importantly, be very mindful of our <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>policy on biographies of living persons</a>. Violations could lead to blocks. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:11, 16 September 2014 (UTC)"
                            }, {
                                "sha": "3d4f544389f1590f224ff57f1ad55d6d37ee7cfdd639c49bc6832e3ba8d41aa8",
                                "depth": 0,
                                "html": "I greatly appreciate your suggestion. Thank you.<a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a>) 18:00, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Edit request",
                            "shas": {
                                "html": "2ff7385b80f30b7fa3245bc610f344ceb6727b7623be8e95cf579d43af50feba",
                                "indicator": "41d140197b86da82b7390792d1ff0fa9b9c99e64d3a02c2f44eb96a6dbf63643"
                            }
                        }, {
                            "id": 83,
                            "replies": [{
                                "sha": "1eb8ce2b259ca322250f3babb59a3cf356d64914a1649445fda55d9fd51f25d1",
                                "depth": 0,
                                "html": "Dear MusikAnimal,<br>You have deleted a company article called Alliance Global Group before 2 months ago due to mareketing tone.<br>The same deleted article has been recreated by a wikpedia editor.<br>i wanted to notify that<ul><li>the company is not notable one</li><li>they dont have enough sources for citation.</li><li>no newspapers have been mentioned about alliance global group. — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Baxzius' title='User:Baxzius'>Baxzius</a> (<a href='./User_talk:Baxzius' title='User talk:Baxzius'>talk</a> • <a href='./Special:Contributions/Baxzius' title='Special:Contributions/Baxzius'>contribs</a>)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<a href='./Alliance_Global_Group' title='Alliance Global Group'>Alliance Global Group</a>",
                            "shas": {
                                "html": "ee171119190f3d70fba3f61acaa1509afd2bda027fc4111a22df96a4657fe0ee",
                                "indicator": "94741c15a17eeccfb1038ac88ab1be55bc2be9b8ab95d74a970c08f8f6508237"
                            }
                        }, {
                            "id": 84,
                            "replies": [{
                                "sha": "29b147fdd3cda700431c317bd193c9b85e1c25fa74d7236e78fd309165767af3",
                                "depth": 0,
                                "html": "May i pleas have the code for the Dead Spirit page you deleted for improvement. thank you <a href='./User:Greatblade12' title='User:Greatblade12'>Greatblade12</a> (<a href='./User_talk:Greatblade12' title='User talk:Greatblade12'>talk</a>) 23:19, 17 September 2014 (UTC)greatblade13<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! Your article can now be found at <a href='./User:Greatblade12/Dead_Spirit' title='User:Greatblade12/Dead Spirit'>User:Greatblade12/Dead Spirit</a>. I have set it up so that when you finish the article, you can submit it for review. Simply hit the 'Submit your draft for review!' button. This way others can help you refine it before it gets published to the mainspace. However, before you go any further, I'd make sure the band meets the <a href='./Wikipedia:BAND' title='Wikipedia:BAND'>notability guideline</a>, as even a well-sourced may still get deleted if the subject is not notable. The fact is, unfortunately, <a href='./Wikipedia:NOTEVERYTHING' title='Wikipedia:NOTEVERYTHING'>not everything can be on Wikipedia</a>. Just please bear that in mind. Let me know if you need help. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:05, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Greatblade12 code please",
                            "shas": {
                                "html": "d1e77166e1eff13198fa1a20c86100a0fe18198d5922396cf2bd31a78982865c",
                                "indicator": "51774d3d2728e600a4f65f53274961f8e75c2600b2a240249c9e08141318a848"
                            }
                        }, {
                            "id": 85,
                            "replies": [{
                                "sha": "3a6ae6a14c1874c0281dbf8a189ce706563de041fa019c53784c3a8844c08718",
                                "depth": 0,
                                "html": "You deleted the article I posted for Richie Shakin' Nagan for copyright infringement based on it as being taken from the Grateful Garcia Gathering website.  I gave them that bio to use.  It is the bio from my facebook page.<br><br><a href='https://www.facebook.com/Richie.Shakin.Nagan/info?collection_token=853694445%3A2327158227%3A8'>https://www.facebook.com/Richie.Shakin.Nagan/info?collection_token=853694445%3A2327158227%3A8</a>  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:ShakinNagan' title='User:ShakinNagan'>ShakinNagan</a> (<a href='./User_talk:ShakinNagan' title='User talk:ShakinNagan'>talk</a> • <a href='./Special:Contributions/ShakinNagan' title='Special:Contributions/ShakinNagan'>contribs</a>) 01:09, 18 September 2014 (UTC)"
                            }, {
                                "sha": "a794cd46fd0e04f7b8f9045adc542178eee5ae0aa31477b443849e3755344c44",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Please see the notice I left on your talk page. Even if you are the copyright owner, you need to license the content for use on Wikipedia. There are steps that must be taken to verify the licensing, see <a href='./Wikipedia:DONATETEXT' title='Wikipedia:DONATETEXT'>WP:DONATETEXT</a>. In many cases it may be easier to simply reword the content altogether. Sorry for the inconvenience. Copyright is taken very seriously on Wikipedia as there are obvious legal concerns involved. Let me know if you need help. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:21, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please undelete article on Richie Shakin' Nagan",
                            "shas": {
                                "html": "9cf1d05c03afa4666c2c5a8f479b7a4ba5367f90ff9c80b2209627c49e6b1b8a",
                                "indicator": "0a11330b677901827663c45a5b212ba5deadebcdb126d288d5f323e6ec863227"
                            }
                        }, {
                            "id": 86,
                            "replies": [{
                                "sha": "ff26ef33e315ca9913d4b6caf0e8b451d20815b159aa0b079f6560a94c19bae4",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-17' title='Wikipedia:Wikipedia Signpost/2014-09-17'>Wikipedia:Wikipedia Signpost/2014-09-17</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:37, 18 September 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 17 September 2014",
                            "shas": {
                                "html": "0e4f9f04e2759432359fbffdf8c4e2c874beb2f396c95d880c3fa4caae5958b8",
                                "indicator": "40500d91fd19a9f653424f5f14e5d3ca7a2a2f65414b1fca09247cfc83a374d5"
                            }
                        }, {
                            "id": 87,
                            "replies": [{
                                "sha": "30665f7c10829745fb7331812e285cfc9bd38a742806ff77cbdd89f6f5f58b10",
                                "depth": 0,
                                "html": "Hi :), I made an edit on the Halo series page that you just got rid of, it was constructive information explaining that Bungie formally developed the franchise, but now 343 industries develop it, which is true. Please keep that minor change I made, thanks :D<br><br>18/09/2014 Cuno1234<a href='./User:Cuno1234' title='User:Cuno1234'>Cuno1234</a> (<a href='./User_talk:Cuno1234' title='User talk:Cuno1234'>talk</a>) 15:46, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Cuno1234",
                            "shas": {
                                "html": "73c411197bf37b2474e35505f0fc9703efd34d4f1d6661284b8c2268946f3888",
                                "indicator": "2be2231ae4a149eb0a9e6ffec3432ca1bafb5d2f5e830e0bc0a8b0f614ba30fd"
                            }
                        }, {
                            "id": 88,
                            "replies": [{
                                "sha": "76ff58da3a357ff8dd680a2e1785413be58d5450faea122b55f774d47c21c432",
                                "depth": 0,
                                "html": "Hi, I saw your comment on the AIV and I do have links to pages that support the idea that the person was evading a block. I've never reported such a thing like evasion/sockpuppetry, so I suppose I didn't know exactly what to do. Here are some revisions: <a href='https://en.wikipedia.org/w/index.php?title=Roum_Man&amp;diff=624423928&amp;oldid=624361928'>from IP address</a> <a href='https://en.wikipedia.org/w/index.php?title=Bunsoh_Man&amp;diff=prev&amp;oldid=626118217'>from suspected sockpuppet</a>. The pages that the person keeps editing and edit warring on are on the same topic (<a href='./Bog_bodies' title='Bog bodies'>bog bodies</a>) and they are formatted the same, which strongly indicates block evasion. They've also claimed other user's reverts are vandalism and even gave a <a href='https://en.wikipedia.org/w/index.php?title=Rendsw%C3%BChren_Man&amp;diff=624427836&amp;oldid=624427579'>personal attack</a> in one instance. --<a href='./User:Gourami_Watcher' title='User:Gourami Watcher'><b>Gourami</b><b>Watcher</b></a><a href='./User_talk:Gourami_Watcher' title='User talk:Gourami Watcher'><sup><i><b>pride</b></i></sup></a> 21:59, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "RE",
                            "shas": {
                                "html": "a168f0ed5f8a1382fc67d0c573f0b2b1980480e2b32e95d3a96c19a2f2a6e5bb",
                                "indicator": "5bae5917b50fd09c75252c6549af9335a8e2add25f43635815e5cf69c22715af"
                            }
                        }, {
                            "id": 89,
                            "replies": [{
                                "sha": "d4b21ad78effa33e6532047eac1ea356f6dffb3588932d576634a55a28ee10b6",
                                "depth": 0,
                                "html": "First reply <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "e6615f5d82b57d8ba325e7a6bc794dfbc1e2db104c1f84c3a665868d41f6f766",
                                "depth": 1,
                                "html": "Second reply nested 1 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "6a5f02bcb6377f2ba55ec30d70fdd73036c40525d901a2139c193d3a875de27e",
                                "depth": 2,
                                "html": "Third reply nested 1 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:55, 20 June 2019 (UTC)"
                            }, {
                                "sha": "6549c51d26215793e18a597425a62bb188f5e999e22851425fa11a2a31f21d2a",
                                "depth": 3,
                                "html": "Fourth reply nested 1 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:55, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "New test topic with replies 1",
                            "shas": {
                                "html": "923cf48ed254be4ef36461f84a1b933addac6d642602f88e5f2610c7f5024cdc",
                                "indicator": "b62847c1bc113a37933cab1fab216660791c1fb45c2214e941ebad1ccf6d5108"
                            }
                        }, {
                            "id": 90,
                            "replies": [{
                                "sha": "a3628d09dfe2ddb2e53cd606445b5f65c7d1820c51a62dec2226bc0494b77557",
                                "depth": 0,
                                "html": "Hello, requesting guidance for a proposed edit to the Kevin Mitnick page. I noticed that you mentioned that 'Kevin Mitnick is an American convicted felon' normally wouldn't be noted in the first line of the article, UNLESS this is what the subject is known for. The rationale for this edit came from using the Frank Abagnale article as a model (Abagnale even wrote a promotional blurb for Mitnick's published autobiography), and from the fact that this is indeed what Mitnick is most famous for. See a simple Google image search resulting in his wanted posters, as well as the fact that he promotes his 'most wanted' status himself to position himself in his current field. Given this information, would it be inappropriate to make such an edit in the opening line of the article? — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Boorsours' title='User:Boorsours'>Boorsours</a> (<a href='./User_talk:Boorsours' title='User talk:Boorsours'>talk</a> • <a href='./Special:Contributions/Boorsours' title='Special:Contributions/Boorsours'>contribs</a>)<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> The <a href='./MOS:BLPLEAD' title='MOS:BLPLEAD'>first sentence</a> generally states the name and occupation, or why they are notable. This may be because of criminal matter, but I don't see the point in making a big fuss over it when the second sentence details the convictions. Not having it be the very first thing in the article makes it more neutral, and in my opinion feels more consistent with other BLPs. If I were you I'd bring my concerns to the <a href='./Talk:Kevin_Mitnick' title='Talk:Kevin Mitnick'>talk page</a> to gain input from other involved editors, and be careful no to start another edit war. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:43, 18 September 2014 (UTC)"
                            }, {
                                "sha": "4388884747aa38c32fa133ad3e2b2649d9dd6a3e8bacb68ebb080b0a8129e68e",
                                "depth": 0,
                                "html": "Okay thank you for the advice. I will take the issue to the talk page of the article as well.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Boorsours' title='User:Boorsours'>Boorsours</a> (<a href='./User_talk:Boorsours' title='User talk:Boorsours'>talk</a> • <a href='./Special:Contributions/Boorsours' title='Special:Contributions/Boorsours'>contribs</a>) 01:39, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Kevin Mitnick",
                            "shas": {
                                "html": "311186a3b7ed66bd7d0a82d639cb961487f445139b99447011226adac97f1e97",
                                "indicator": "c1bcdd6956aa1c31be014490e81bceffa5d12cc84c6c317aa039a96d1b67335b"
                            }
                        }, {
                            "id": 91,
                            "replies": [{
                                "sha": "59f01932414c36e6fb9e3cc57767771a0e2432ec7ef511783c37ed2b67d3fd8c",
                                "depth": 0,
                                "html": "You just deleted my 'article': <a href='https://en.wikipedia.org/wiki/Kissmetrics'>https://en.wikipedia.org/wiki/Kissmetrics</a>.<br>Sorry, it was actually an empty page - a plug for a future article stub on the subject. I am a very new editor and this is my first try at my own article. I thought I created it in my Sandbox. I was actually working on another article stub in parallel. I would have unpublished it if I would have realized it went into the public space not my sandbox. Thank you for deleting it. Once again - it was not intentional.<a href='./User:NancyJeanGF' title='User:NancyJeanGF'>NancyJeanGF</a> (<a href='./User_talk:NancyJeanGF' title='User talk:NancyJeanGF'>talk</a>) 02:47, 19 September 2014 (UTC)"
                            }, {
                                "sha": "fddf9688c6ce479eab6a649c755bd9f8c6a321aa149b29009c30f9a646e1ffa4",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Welcome! Don't worry about the mistake. You can find your sandbox <a href='https://en.wikipedia.org/wiki/Special:MyPage/sandbox?action=edit&amp;redlink=1&amp;editintro=Template%3AUser_sandbox&amp;preload=Template%3AUser_sandbox%2Fpreload'>here</a>, or if you'd like you can use the <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> to create new articles. That will set it up so that it can be <a href='./Wikipedia:AfC' title='Wikipedia:AfC'>submitted for review</a> before being published to the mainspace. Let me know if you need any help! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:02, 19 September 2014 (UTC)"
                            }, {
                                "sha": "b52c43cdeaa7e90aa887bee148bffb04cca14792dfb307ae508a0d3382b86dd6",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Thank you! I just did submit an article stub for review: <a href='https://en.wikipedia.org/wiki/User:NancyJeanGF/Mixpanel'>https://en.wikipedia.org/wiki/User:NancyJeanGF/Mixpanel</a>. I do not feel like I can do a whole article by myself yet, plus I hope others will help expanding/formatting it. <a href='./User:NancyJeanGF' title='User:NancyJeanGF'>NancyJeanGF</a> (<a href='./User_talk:NancyJeanGF' title='User talk:NancyJeanGF'>talk</a>) 03:48, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from NancyJeanGF",
                            "shas": {
                                "html": "6f97935bd641543925c363d201c34bc0cc8081120f2d7e1d58634f22d507b139",
                                "indicator": "ae18581494aef374cb3f7911c737774686fd9061ebb31f40b98372da09068cd1"
                            }
                        }, {
                            "id": 92,
                            "replies": [{
                                "sha": "0ea5355e26fe5717bb4687dbfcade31e19ff0b1be23e80270f17e86889aefc91",
                                "depth": 0,
                                "html": "Hi MusikAnimal - many thanks for granting <i>Rollback</i> and I promise not to abuse it<a href='./User:Eugene-elgato' title='User:Eugene-elgato'>Eugene-elgato</a> (<a href='./User_talk:Eugene-elgato' title='User talk:Eugene-elgato'>talk</a>) 06:11, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Rollback",
                            "shas": {
                                "html": "02052f88cb63a109ddbd7bbdabdda0612a6d5c0058666934c755778440190dc0",
                                "indicator": "83d8c70574e0f40133053bc6d9224726c986fdb64d67058bd5bc6fa704e56b8c"
                            }
                        }, {
                            "id": 93,
                            "replies": [{
                                "sha": "cdbfcd9e1380ea1099ba08d4ffdf2fa194e2723e31640242cfb834a5a935aa7f",
                                "depth": 0,
                                "html": "Hello MusikAnimal,<br><br>I contact you, because you are trusted admin and I know you'll help me. I company page was created in violation of Wikipedia laws by Indian agency and they made sure it bypass the Wikipedia standards with some tricks, like fake references. <br>The is the page: <a href='https://en.wikipedia.org/wiki/Alliance_Global_Group'>https://en.wikipedia.org/wiki/Alliance_Global_Group</a><br><br>Please delete this page and ban if possible the following users: 94.200.109.2 ans GB Fan. <br>This users are commercial creators and don't have place in free content community.<br><br>If you need proofs that this people get money for creation of this page, please contact me.<br><br>Regards<br><br>Dennis  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:PapaDoc88' title='User:PapaDoc88'>PapaDoc88</a> (<a href='./User_talk:PapaDoc88' title='User talk:PapaDoc88'>talk</a> • <a href='./Special:Contributions/PapaDoc88' title='Special:Contributions/PapaDoc88'>contribs</a>) 07:41, 19 September 2014 (UTC)"
                            }, {
                                "sha": "9d0cd689eee48ee26fafb50df289b05bc1d7a6a248c4b96dc9e50c6182d4dbae",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi, what you are referring to is called <a href='./Wikipedia:PE' title='Wikipedia:PE'>paid editing</a>, and while strongly discouraged, it is not a violation of policy. Any issues you have with neutrality or unreliable sources can be expressed on article's <a href='./Talk:Alliance_Global_Group' title='Talk:Alliance Global Group'>talk page</a>, or you could add any relevant <a href='./Wikipedia:TMAIN' title='Wikipedia:TMAIN'>maintenance templates</a> to the article. Any users that persistently have issues maintaining a <a href='./Wikipedia:NPOV' title='Wikipedia:NPOV'>neutral point of view</a> or exert a problematic <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a> may be subject to preventive measures. Based on their history and user group, I have serious doubts <a href='./User:GB_fan' title='User:GB fan'>GB fan</a> is affiliated with this organization. Hope this clears things up, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:55, 19 September 2014 (UTC)"
                            }, {
                                "sha": "ba63cdbd70268b1d101c3354efbde352fe00ba2f944c14b900b337aaa4bb5404",
                                "depth": 3,
                                "html": "@MusicANimal, I submitted the article for deletion, on request of the owner of the company. Hope it will not take long this article to be removed<br><br>Thanks — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:PapaDoc88' title='User:PapaDoc88'>PapaDoc88</a> (<a href='./User_talk:PapaDoc88' title='User talk:PapaDoc88'>talk</a> • <a href='./Special:Contributions/PapaDoc88' title='Special:Contributions/PapaDoc88'>contribs</a>)"
                            }],
                            "depth": 2,
                            "html": "Hello from PapaDoc88",
                            "shas": {
                                "html": "d1efdcc4e81351d4f1f09e3f828fc5c8e276319c59aae7d65af9cbc917cc9901",
                                "indicator": "1a9bc806919ca03cb123c67af6d43dbf3f44d597b64c3a79ab11baa57d0120fa"
                            }
                        }, {
                            "id": 94,
                            "replies": [{
                                "sha": "0c086beb36a364e99262ecac458e62ad8f1360cb9395d3299cf0587d3e5f72ec",
                                "depth": 0,
                                "html": "I did not make any personal attack on Winkelvi. Whatever I said was to explain why I didn't put forward that idea earlier. You do not have any right to remove my comment especially if it's non-disruptive. But still I do not want to start to conflict over  comment. So I'll just modify it instead of adding it back outright. <a href='./User:KahnJohn27' title='User:KahnJohn27'>KahnJohn27</a> (<a href='./User_talk:KahnJohn27' title='User talk:KahnJohn27'>talk</a>) 07:56, 19 September 2014 (UTC)"
                            }, {
                                "sha": "8fca8abde3d81ce6d92adb952e990d79d30de7289c3abeef3115e07856daa42a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Manipulating other's comments on talk pages is most certainly not acceptable, but here I was trying to cool things down from what appeared to be a heated behavioural dispute. The portion of the comment that I removed did not seem to serve any purpose other than to disparage another editor. All I ask is to stay on topic, and don't comment on other contributors' actions. I do apologize for removing your words, and thank you for your understanding of my rationale. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:02, 19 September 2014 (UTC)"
                            }, {
                                "sha": "d9c745a379e0d995f8153f8b3d073cb7d0aee5cefaa17cb0e32690044aa14360",
                                "depth": 2,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:53, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "No attack",
                            "shas": {
                                "html": "fb9c2d8ad384a7596a48121048b9a33a768a2a0959853744140293dedc476a1f",
                                "indicator": "fcd81df9a136162966ff012fe6433208793ed42a333ccb46c481a9731404a121"
                            }
                        }, {
                            "id": 95,
                            "replies": [{
                                "sha": "8e9fc753603133a101057a37336a55807be56bfde2530d5daaff8a48ddb02055",
                                "depth": 0,
                                "html": "Testing <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:06, 20 June 2019 (UTC)"
                            }, {
                                "sha": "411cf85b7f67e094fe69f7ddfa4191498a6881198a27d9c637ecfecb0b8bc460",
                                "depth": 1,
                                "html": "Reply 1 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:06, 20 June 2019 (UTC)"
                            }, {
                                "sha": "8abb9e673066653c7856b1320f78fe9eab13e77267d07513b8acb8d1bb7726d5",
                                "depth": 2,
                                "html": "Reply 2 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:06, 20 June 2019 (UTC)"
                            }, {
                                "sha": "d8233bfcbdc177285d8041210d8b204fd9707b1e6e63b3fe216e9c1a377ceff7",
                                "depth": 3,
                                "html": "Reply 3 <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 22:06, 20 June 2019 (UTC)"
                            }],
                            "depth": 3,
                            "html": "Subtopic test",
                            "shas": {
                                "html": "cca2506afa0d02f7a96b4b363b312e82cfdfd0008785fd87ed66c341581e7021",
                                "indicator": "34ea2bf44e1773b0f6e73f9096483ea395f25f8e3eadc2ca801dc0d14eb58ec1"
                            }
                        }, {
                            "id": 96,
                            "replies": [{
                                "sha": "f2d3a67fc18f19c1a9525ec581f5aa4cd85441b6000d53a25ddbf3fe40bad44f",
                                "depth": 0,
                                "html": "Hi...is there anything you can do to help with <a href='./Middle_East_Eye' title='Middle East Eye'>Middle East Eye</a>?....just look at the history and you will see quickly what is happening with the same editor using multiple accounts to delete the same content many, many times and despite repeated warnings and reversions by Cluebot, Administrators, other users. He has said over and over again that he is an employee of the company which is the subject of the article who simply disagrees with the content and wants it removed yet has never once come to the Talk page. I already requested page protection once but it was declined and I got a warning about Edit Warring but I am a loss here as what to do. He apparently will not stop vandalizing the article unless something is done. <a href='./User:Susan_belt74' title='User:Susan belt74'>Susan belt74</a> (<a href='./User_talk:Susan_belt74' title='User talk:Susan belt74'>talk</a>) 08:20, 19 September 2014 (UTC)"
                            }, {
                                "sha": "54cdb2443e2a552cd4a1a74191b522777d540fd31b0273b79e132a1bccc4f137",
                                "depth": 1,
                                "html": "Users blocked by <a href='./User:Ks0stm' title='User:Ks0stm'>Ks0stm</a>. If disruption continues we may need to <a href='./Wikipedia:PROTECT' title='Wikipedia:PROTECT'>protect</a> the page. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:06, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Help With Middle East Eye Please",
                            "shas": {
                                "html": "7ba5a7a7dea3ca07448ae0200e92a02cfc0cafada6a41ff8ca836707c6972392",
                                "indicator": "2f8670d730b09d664b895e8d4a7964d172a3b9cb034afb467a3fb3b8a2144572"
                            }
                        }, {
                            "id": 97,
                            "replies": [{
                                "sha": "fb578b917bea1a90a3224d8f845461117feebbfd6b1a4636d8c9cd813dfe94f2",
                                "depth": 0,
                                "html": "I posted this already under the fakestu talk page, but I wanted to put it here under my real account. You posted on several of my students' talk pages. I want to apologize for the error. I am the professor <a href='./Drdemartino' title='Drdemartino'>Drdemartino</a>. Here is our <a href='./User:Drdemartino/PR_Sum_2013' title='User:Drdemartino/PR Sum 2013'>course page</a>. I want my students to learn how to edit Wikipedia for several reasons, noted in the project goals. Today was an attempt at practicing. I showed them, with the fakestu page, how to create userpages, and practice editing. I realize now I should have had them do that in their sandboxes (although last year a student was scolded for that, as well). Is there a more appropriate place for them to practice? I definitely don't want the students diving right into editing  <a href='./Social_judgment_theory' title='Social judgment theory'>the assignment page</a>.  Thank you for your feedback and advice; you clearly care about Wikipedia, as do I. <a href='./User:Drdemartino' title='User:Drdemartino'>Drdemartino</a> (<a href='./User_talk:Drdemartino' title='User talk:Drdemartino'>talk</a>) 17:32, 19 September 2014 (UTC)"
                            }, {
                                "sha": "3ae45a8216b4370ae1413a22c71506b439df3b4032ed942044916985c25562bd",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! First off no need to apologize, it was obvious what was going on and it's not like you were creating test pages in the mainspace. The only reason I was concerned was because some of the user pages they created read like social networking profiles, implying <a href='./Wikipedia:NOTWEBHOST' title='Wikipedia:NOTWEBHOST'>using Wikipedia as a web host</a>. Looks like they've blanked their user pages, so no harm done. I'm honestly not that familiar with our education program, but I can attest that <a href='./Special:MyPage/sandbox' title='Special:MyPage/sandbox'>the sandbox</a> is always a safe place to practice. The only things not welcome there (or anywhere) are <a href='./Wikipedia:BADSAND' title='Wikipedia:BADSAND'>copyrighted, offensive or libelous content</a>.<br><br> If you need more information, you could ask at the <a href='./Wikipedia:Education_noticeboard' title='Wikipedia:Education noticeboard'>education noticeboard</a>. They know all the ins and outs of the program. As far as I can tell your course looks great, and would yield substantive improvement to a live article – something I welcome with open arms. Hope this helps, and thanks for helping improve Wikipedia :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:13, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Drdemartino",
                            "shas": {
                                "html": "7ac60389beb9da9b5f7c15a9ad36dc302a5489e648760751e65b1f083df86011",
                                "indicator": "7c1287e6e9a334434f02ab4d689f6e434b4e77985d653aede50e66873dbb59df"
                            }
                        }, {
                            "id": 98,
                            "replies": [{
                                "sha": "e3a74f6cc395aaaedda9bbb4009c5f633e2a10792804f38a7e63d93734f1ef1a",
                                "depth": 0,
                                "html": "Hey, I had made those edits because the information seemed irrelevant at the point in the article in which it was.<br><br>Thanks  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Adostaler' title='User:Adostaler'>Adostaler</a> (<a href='./User_talk:Adostaler' title='User talk:Adostaler'>talk</a> • <a href='./Special:Contributions/Adostaler' title='Special:Contributions/Adostaler'>contribs</a>) 20:18, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Adostaler",
                            "shas": {
                                "html": "1a730382926ace084d52f8d181b8cd556ad8bb40da6b7eaf2beba415b50368d1",
                                "indicator": "8ce554acb21ef3a31692ad677c221e20e36173fde213b189af0669b34584b5c9"
                            }
                        }, {
                            "id": 99,
                            "replies": [{
                                "sha": "b9cb1a6088845461d9ba52deeebc61637e368b437673c85b70521cab6f9e3c1e",
                                "depth": 0,
                                "html": "Hi! Since you're an experienced editor in music-related articles and the alternative/rock WikiProjects, would you be interested reviewing or commenting on my <a href='./Wikipedia:Featured_article_candidates/Xx_(album)/archive1' title='Wikipedia:Featured article candidates/Xx (album)/archive1'>FA nomination</a> of the article <a href='./Xx_(album)' title='Xx (album)'>xx (album)</a>? The review page has been inactive for over a week, so another reviewer's input would be greatly appreciated. Cheers! <a href='./User:Dan56' title='User:Dan56'>Dan56</a> (<a href='./User_talk:Dan56' title='User talk:Dan56'>talk</a>) 07:46, 20 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FAC for xx (album)",
                            "shas": {
                                "html": "17a9abe8b67793c0ce58f81f5f1591b5d15eac75c9267329023aaad431aee1f0",
                                "indicator": "0419f7605ee7c87197f1b611019efada6c40a62894b8d44b0f85ce5828be9856"
                            }
                        }, {
                            "id": 100,
                            "replies": [{
                                "sha": "f57ac3733c688aa95f75b0a29eb16604a2e62201703680ec8838efd5f1a3b5bf",
                                "depth": 0,
                                "html": "Hello. MusikAnimal. Can you help? with the following articles; <a href='./Millfield_House' title='Millfield House'>Millfield House</a>, <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a> and <a href='./Millfield_Theatre,_Edmonton,_London' title='Millfield Theatre, Edmonton, London'>Millfield Theatre, Edmonton, London</a>. To cut a long story short the original article of Millfield House was redirected to Millfield Theatre without discussion with much of the original text being deleted. I have redirected the article back to its original location and rewrote the article. Can you try to repair the links to both articles? and remove the link to Millfield Theatre, Edmonton, London which I set up by mistake. Hope this is all clear. Thanks <a href='./User:Northmetpit' title='User:Northmetpit'>Northmetpit</a> (<a href='./User_talk:Northmetpit' title='User talk:Northmetpit'>talk</a>) 10:21, 19 September 2014 (UTC)"
                            }, {
                                "sha": "44a55fd1a094e97c3ed0d662d3ceaf3297702663fa8c499a60164aa6112cb2bc",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm not sure if I follow. <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a> now redirects to <a href='./Millfield_House' title='Millfield House'>Millfield House</a>, is that not what you wanted? Also, you would like <a href='./Millfield_Theatre,_Edmonton,_London' title='Millfield Theatre, Edmonton, London'>Millfield Theatre, Edmonton, London</a> to be deleted entirely? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:18, 19 September 2014 (UTC)"
                            }, {
                                "sha": "1038bdca599be590bf6d275c0f406175099df2b1d214ce097f52800a53a731a0",
                                "depth": 2,
                                "html": "Hi MusikAnimal. Thanks for swift reply. Sorry, I didn't explain myself correctly. I would like to see the redirect removed so there are separate links to the two articles and the Millfield Theatre, Edmonton, London removed. Thanks <a href='./User:Northmetpit' title='User:Northmetpit'>Northmetpit</a> (<a href='./User_talk:Northmetpit' title='User talk:Northmetpit'>talk</a>) 12:28, 20 September 2014 (UTC)"
                            }, {
                                "sha": "aa0a74b40557c22c98743f3a77daf97c1456a2b5b8dab6a75b550ba146d8c208",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Okay, I think I've done what you needed. I deleted Millfield Theatre and then moved Millfield Theatre, Edmonton, London there. So now you are left with <a href='./Millfield_House' title='Millfield House'>Millfield House</a> and <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a>. <a href='./Millfield_Theatre,_Edmonton,_London' title='Millfield Theatre, Edmonton, London'>Millfield Theatre, Edmonton, London</a> redirects to <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a>. Let me know if you need anything else! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:30, 21 September 2014 (UTC)"
                            }, {
                                "sha": "c47728ca96d02c81bd05790f690ecd789db78278df1c59be2ea6180bedc51351",
                                "depth": 4,
                                "html": "Hi MusikAnimal. Thanks for your help that's exactly what was needed. It's great to know there are really helpful people on here. Cheers <a href='./User:Northmetpit' title='User:Northmetpit'>Northmetpit</a> (<a href='./User_talk:Northmetpit' title='User talk:Northmetpit'>talk</a>) 09:39, 22 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Millfield House",
                            "shas": {
                                "html": "42ed81804d46088e82121c1a06cd4a83e4d839ad0e4ba08b4acb45b0dda40fe4",
                                "indicator": "6a163c002659988018ce119c32e0001b90a4ccab9dcb975b3e7683a94b2bf2fe"
                            }
                        }, {
                            "id": 101,
                            "replies": [{
                                "sha": "3fa2cf4689d9d89e08a41e8fc9f71d921345bcc70a83953822d3473bde07d171",
                                "depth": 0,
                                "html": "Hi, I was trying to update Dustz's band page since 1. KenT is no longer a member of the band 2. They have two new band members &amp; 3. they have had two new singles out this year. I see that you have removed the changes i made. Please reconsider so that readers have up to date facts about this band. Thanks.<br><sup><a href='./User_talk:TSevener_(WMF)#cite_note-1'>[1]</a></sup><a href='http://dustz.jp/#profile'>http://dustz.jp/#profile</a> <a href='./Special:Contributions/24.186.85.109' title='Special:Contributions/24.186.85.109'>24.186.85.109</a> (<a href='./User_talk:24.186.85.109' title='User talk:24.186.85.109'>talk</a>) 01:12, 23 September 2014 (UTC)"
                            }, {
                                "sha": "e2927d9b19565fd898aedfdde2c26c9d976da6871669127daadb1f08323eb0f6",
                                "depth": 1,
                                "html": "Hey! I saw that you add 'hello' as a band member. Arbitrarily added 'hello', 'hi', etc is a common form of vandalism. Through my own research I didn't find any correlation between Dustz and someone named hello, but nonetheless I've undone my revert. My apologies if I have incorrectly identified your edits as vandalism. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:29, 23 September 2014 (UTC)"
                            }, {
                                "sha": "7bd3fa5ca8be84d56e89668ac580b88ce99346c51c2fc14a8544d533124dd857",
                                "depth": 0,
                                "html": "Oh, i completely understand. but there is an actual person in the band named 'hello' now ( <a href='https://twitter.com/HSP_reader'>[HSP_reader]</a> )(I don't think there's any info on his actual name). But anyway, thank you so much.<a href='./Special:Contributions/24.186.85.109' title='Special:Contributions/24.186.85.109'>24.186.85.109</a> (<a href='./User_talk:24.186.85.109' title='User talk:24.186.85.109'>talk</a>) 01:55, 23 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Dustz page 24.186.85.109",
                            "shas": {
                                "html": "d447ca0b1fd869189ba184ed29a8f1794bb94850664cad627da93a54c17f7315",
                                "indicator": "f5a30923a76d2cd87449c55393ebfee0d2936155d0e180a904d8f11f3c3c8ce8"
                            }
                        }, {
                            "id": 102,
                            "replies": [{
                                "sha": "c5bc30520368653ef2d326889eb480612788b04f358c2cd0ac9173880e9446d0",
                                "depth": 0,
                                "html": "MMORPG for four years Taera why u delete? --<a href='./User:Goccie' title='User:Goccie'>Goccie</a> (<a href='./User_talk:Goccie' title='User talk:Goccie'>talk</a>) 15:27, 23 September 2014 (UTC)"
                            }, {
                                "sha": "b8e3b5bd671ce707787b2b05d5c04f0af70eae7894f32c927737b5cb36d31784",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> See your talk page. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:28, 23 September 2014 (UTC)"
                            }, {
                                "sha": "0491eb04e1e4bb85f84da2b4965fcaa5b6467970cc3645d092c63d701f645085",
                                "depth": 0,
                                "html": "Look at the article it deserves to stay! <a href='./User:Goccie' title='User:Goccie'>Goccie</a> (<a href='./User_talk:Goccie' title='User talk:Goccie'>talk</a>) 15:30, 23 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hey",
                            "shas": {
                                "html": "79b1e39cfa3148f7017ccccd5b9f6915f19fb26ac0e054269cf9fcd2e4e7ebc3",
                                "indicator": "7a11b00f83ab1ac2487cc03000c93424d91c04a9eeefcc046290e3df4dbe8f75"
                            }
                        }, {
                            "id": 103,
                            "replies": [{
                                "sha": "06ccf8a773e1db8dc873b5fd74773a4bbcee5349b3d4588f0dc991122eb4ed2c",
                                "depth": 0,
                                "html": "On <a href='./Talk:Robin_Williams' title='Talk:Robin Williams'>Talk: Robin Williams</a>, <a href='./User:Richard_Arthur_Norton_(1958-_)' title='User:Richard Arthur Norton (1958- )'>User:Richard Arthur Norton (1958- )</a> made this comment <i>Creating a new infobox parameter to satisfy one person complaining about one celebrity is silly</i>. Due to the nature of his comment I thought he was referring to me and I took objection to it. When I raised my objection others said Richard wasn't referring to me. However even though you said earlier not to comment on editors but to comment on content, <a href='./User:Winkelvi' title='User:Winkelvi'>User: Winkelvi</a> in a comment accused me of trying to make the whole Rfc about me. This comment of Winkelvi is clearly an accusation on me in which he accuses me of starting the Rfc for my own personal purposes which I've stated many times isn't true. Was it my fault that I thought Richard was referring to me? Even if it was what right does Winkelvi have to accuse me of trying to make the Rfc about me? This is clearly an accusation against me. I think that comment of his should be removed since the whole comment is about accusing me instead of commenting on the Rfc.  <a href='./User:KahnJohn27' title='User:KahnJohn27'>KahnJohn27</a> (<a href='./User_talk:KahnJohn27' title='User talk:KahnJohn27'>talk</a>) 06:13, 23 September 2014 (UTC)"
                            }, {
                                "sha": "c78ff0c2cf432190d9b8175d6a055ee3f04367c435138ec2af2dc73e26d57d29",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> My best advice? <a href='./Wikipedia:DROPIT' title='Wikipedia:DROPIT'>Drop it</a>. Ignore it. Return to constructive editing. I apologize for being blunt, but all of you are acting like children. All I ask is that you stay on topic. If someone says something negative about you, and you really let it get to you, bring it up on their talk page. Don't reply on the article talk page, you only <a href='./Wikipedia:NPANPA' title='Wikipedia:NPANPA'>escalate tension that leads to more off-topic drama</a>. If you're so inclined, bring it to AN/I. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:46, 23 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Deliberate accusation by <a href='./User:Winkelvi' title='User:Winkelvi'>User: Winkelvi</a>",
                            "shas": {
                                "html": "d6596b0362ade918a96ee1d2ec65fe050c49b432222da61229166cdd015d5cd1",
                                "indicator": "7cdc92387154abc98e2d5a199bc6cd5d6275db5ee69b9631ef2548a6efc9de19"
                            }
                        }, {
                            "id": 104,
                            "replies": [{
                                "sha": "17baf2ffe0ceca29f0cf1d51d43b0dfa9fbde7f0865fc4802a00671a6f165148",
                                "depth": 0,
                                "html": "Hi,<br>Sorry. Actually I forgot to add a short summary of my edit. I will definitely include it in my next edit. There were several issues with the page so only I removed the content which were poorly sourced. I hope all the issues related to that page has been addressed.<br><br>Can you please help me removing the 'ISSUES' sign from that page? Can you let me know how can I resolve the issues? It appears that there are issues associated with this article. I want that to be resolved. All your help would be greatly appreciated.<br><br>Moreover I am preparing for civil services exam. I read an article of the subject in a magazine. Since she also became a civil servant in her first attempt and has contributed a lot to the society so I was inspired by that and wanted to put her page in Wikipedia. Since this is my first page so kindly excuse my mistakes and help me to retain the page. This will further help me in contributing more to Wikipedia in a correct way.<br><br><a href='./User:Krarjunakr' title='User:Krarjunakr'>Krarjunakr</a> (<a href='./User_talk:Krarjunakr' title='User talk:Krarjunakr'>talk</a>) 17:19, 24 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Krarjunakr",
                            "shas": {
                                "html": "7c67a83ca0fbb5027ee7e8ca8be2a59048fb9ba447db475ba360105fff849ac5",
                                "indicator": "3b76d43be3669f27cfad27c436075dedd8cfa8fa3b3ef5ada87ef796577a6ad7"
                            }
                        }, {
                            "id": 105,
                            "replies": [{
                                "sha": "5875df2c379995bbc5d7347533cb486310f4141c7462b2c653b13b6c0810e3d9",
                                "depth": 0,
                                "html": "Hi, I just tried to remove an album title on a band page that has not been officially announced. It is not officially confirmed or cited and should be taken down. The page is Walk The Moon <a href='./Special:Contributions/108.29.161.91' title='Special:Contributions/108.29.161.91'>108.29.161.91</a> (<a href='./User_talk:108.29.161.91' title='User talk:108.29.161.91'>talk</a>) 20:07, 23 September 2014 (UTC)"
                            }, {
                                "sha": "7ef1a5842fa93c53fddbafdf5bc3116918b67e17d5c166b11d5c7b2782b024d3",
                                "depth": 1,
                                "html": "No problem. Thanks for letting others know. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:21, 25 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 108.29.161.91",
                            "shas": {
                                "html": "7b5bc73d3dab330e13aa08f86e22e1cb7ac1f57a52a0ca4eda482c2959ccd7d1",
                                "indicator": "d86ca661fd3af90d71f3bfd114d15fcc4666b556dd693d9b52289ebbf8948246"
                            }
                        }, {
                            "id": 106,
                            "replies": [{
                                "sha": "6f3ad27051caf34fde5efa8ac337e2c9bbf4c64302a91e17d63fa7c333287586",
                                "depth": 0,
                                "html": "Hi MusikAnimal,<br><br>Can you help me reverse the deletion of the following page so the copy can be changed and updated? Thanks! — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Froman_abe_chi' title='User:Froman abe chi'>Froman abe chi</a> (<a href='./User_talk:Froman_abe_chi' title='User talk:Froman abe chi'>talk</a> • <a href='./Special:Contributions/Froman_abe_chi' title='Special:Contributions/Froman abe chi'>contribs</a>)<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm sorry I cannot restore the page as it contains copyrighted material not licensed for Wikipedia. It will need to be rewritten from scratch. The copyrighted text that was used in the article can be found <a href='http://www.reuters.com/finance/stocks/companyProfile?rpc=66&amp;symbol=SSE'>here</a>. You may also wish to review our <a href='./Wikipedia:NCORP' title='Wikipedia:NCORP'>notability guideline on companies</a> to ensure this organization meets it. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:26, 25 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Seventy Seven Energy",
                            "shas": {
                                "html": "c01c5a24d73847554881e0e12a31df767eca64d779e92fdcaa0f755a9e020cf8",
                                "indicator": "f33034b8a4cd26cd092b42c91e0526cb2f0263964c52a317d6fd8c2e66e3abd4"
                            }
                        }, {
                            "id": 107,
                            "replies": [{
                                "sha": "54af1bfbc04c6e9f1f13fa514b87ad255b73dd4f1a50defa16ac6899cda1bcce",
                                "depth": 0,
                                "html": "Hi, i'm Rogers2098 and well I just want you to know that I change the information because the trailer of that specific movie has been release and the name 'A Many Splintered Thing' has been replaced. Also a tried to change the name of the article but I didn't know how. Im new in this by the way, but if you think that os better that way ok. <a href='./User:Rogers2098' title='User:Rogers2098'>Rogers2098</a> (<a href='./User_talk:Rogers2098' title='User talk:Rogers2098'>talk</a>) 05:35, 24 September 2014 (UTC)"
                            }, {
                                "sha": "aa30c9fa78c093ffedfb52e08af5ab13f8978330f83b58b4d7896a84dc4dccfb",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi! Thanks for getting in touch with me. Sorry about reverting your change... my mistake. I did not know the name of film had changed, and mistook your edit as vandalism. Anyhoo, looks like someone else has <a href='./Help:Move' title='Help:Move'>moved the page</a> to the new name. I see no one has officially welcomed you to Wikipedia... so welcome  I've left a few links on your <a href='./User_talk:Rogers2098' title='User talk:Rogers2098'>talk page</a> that you might find useful. Sorry again for my mistake. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:33, 25 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Rogers2098",
                            "shas": {
                                "html": "1cc05879b218322f69aada33f7b63804f25231c7282cf110bc124c73d5b503fa",
                                "indicator": "e19ae60db644d53bf57ce166a50682a0c1e85cf44f4e176a33fb8b509dad526f"
                            }
                        }, {
                            "id": 108,
                            "replies": [{
                                "sha": "803f844809fa90e072bc574d14d110c960fd2bcb1dd5994f8a22c60ff81b5e85",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Artificial_intelligence#rfc_12131C6' title='Talk:Artificial intelligence'>Talk:Artificial intelligence</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Artificial_intelligence#rfc_12131C6' title='Talk:Artificial intelligence'>Talk:Artificial intelligence</a>",
                            "shas": {
                                "html": "867316d2cabae576c5f010874fc62ee4c6eadbbc750de6125563553ac77aa228",
                                "indicator": "a998c75f9aba2836d35c3d85c66f71bad6c7548467754d755f03970c49319ff8"
                            }
                        }, {
                            "id": 109,
                            "replies": [{
                                "sha": "d04d1e0ddf0d3a1599e72c6104daa12a6e5d44fbde614c9b9929ccd762d25798",
                                "depth": 0,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a>  <b>Done</b> Available at <a href='./User:MirrorFreak/Bart_Baker' title='User:MirrorFreak/Bart Baker'>User:MirrorFreak/Bart Baker</a>. I did some quick research of my own, and as it stands right now I don't think the subject meets the <a href='./Wikipedia:NACTOR' title='Wikipedia:NACTOR'>notability guideline</a>, but perhaps with more research notability can be established. Bear in mind issues brought up at the <a href='./Wikipedia:Articles_for_deletion/Bart_Baker' title='Wikipedia:Articles for deletion/Bart Baker'>AfD discussion</a>. When you feel comfortable the article is ready for the mainspace, make sure to <i><a href='./Help:Move' title='Help:Move'>move</a></i> the article, and not copy-and-paste. The article history needs to remain intact. Let me know if you need help. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:42, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Userfy Comment",
                            "shas": {
                                "html": "bc20587a1b2b5f22e5454e75fa1f0070458ca55ea5368aa2be3761f6f6ecbdbe",
                                "indicator": "76f4f3cea94441f3f0c7c933a1ba1cb01b1d53a3720862ef5f3bfeee4de70def"
                            }
                        }, {
                            "id": 110,
                            "replies": [{
                                "sha": "f247af3d4eb83a673e8440f45185e96a5418ede32f231fcd0d2d1aed4a398c2a",
                                "depth": 0,
                                "html": "This article was too vandalized by the same IP addresses various times as <a href='./2004_French–Ivorian_clashes' title='2004 French–Ivorian clashes'>2004 French–Ivorian clashes</a>. Maybe you should consider blocking it for awhile just in case. Thank. ༆ (<a href='./User_talk:༆' title='User talk:༆'>talk</a>) 07:06, 26 September 2014 (UTC)"
                            }, {
                                "sha": "f823aaf5750ba874b0f5e8f61ea276a268dc75da1b70778a3ed9b6c86a092e47",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> User is an IP hopper, from at least two different IP ranges, so I don't think a block/range block will help. I've semi-protected the page for a month. If disruption continues we can extend protection. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:35, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Tonkin_Campaign' title='Tonkin Campaign'>Tonkin Campaign</a>",
                            "shas": {
                                "html": "2d9522622b230d8b3a9c2b03a3635927a2ad4f339df1129f5da27ae004ccb0e5",
                                "indicator": "7fb8d1ce878ae1ddf12418d9fab283add739fdfa9e2f344f029860283dcef000"
                            }
                        }, {
                            "id": 111,
                            "replies": [{
                                "sha": "9fea2b28287ca4fa0645cbfb67bb3ed01b009dd679301c4e0076ad909e1174bc",
                                "depth": 0,
                                "html": "Thanks for <a href='https://en.wikipedia.org/w/index.php?title=Talk:Robin_Williams&amp;diff=627186484&amp;oldid=627185010#Including_Zachary_and_Cody_in_the_infobox'>bracketing this discussion</a> that really belongs in a kindergarten playground, rather than on a project to improve an encyclopedia. I hope <a href='https://en.wikipedia.org/w/index.php?title=Talk:Robin_Williams&amp;diff=627091613&amp;oldid=627091216'>you don't get accused of censorhip</a>. <a href='./User:How_hot_is_the_sun%3F' title='User:How hot is the sun?'>How hot is the sun?</a> (<a href='./User_talk:How_hot_is_the_sun%3F' title='User talk:How hot is the sun?'>talk</a>) 19:47, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "thanks for bracketing",
                            "shas": {
                                "html": "289f41ad99d10bc2ba33e671fdd254ba82d0c32b31755d7e8fbada9f0212aa17",
                                "indicator": "3f6ecb558e21ccfc835f56e0994803e24bf140e5ee50c6f165e39cb8b379455b"
                            }
                        }, {
                            "id": 112,
                            "replies": [{
                                "sha": "29f8db3d3f453df8af204ea4b974aa9d3079f1f93af26b7f2215522ef0cc368c",
                                "depth": 0,
                                "html": "<b><a href='./Wikipedia:WPGA' title='Wikipedia:WPGA'>WikiProject Good Articles's</a> <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup' title='Wikipedia:WikiProject Good articles/GA Cup'>2014-15 GA Cup</a> - September 2014</b><br><br>Welcome to the <b>GA Cup</b>! In less than 72 hours, the competition will begin! Before you all start reviewing nominations we want to make sure you understand the following:<ul><li>This is a friendly competition so we don't want any cheating/breaking of the rules. However, if you do believe someone is going against the rules, notify the judges. All the rules are listed <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Scoring' title='Wikipedia:WikiProject Good articles/GA Cup/Scoring'>here</a>.</li><li>If you are a new editor or new to reviewing Good article nominations, it is imperative that you read the 4 essays/guides listed under <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/FAQ' title='Wikipedia:WikiProject Good articles/GA Cup/FAQ'>FAQ #4</a>. If you do not understand something, ask a judge for clarification ASAP!</li><li>The competition is not entirely about who can review the most nominations. Per the '<a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Scoring' title='Wikipedia:WikiProject Good articles/GA Cup/Scoring'>Scoring</a>' page, there is different criteria in which you can earn more points. Theoretically, you could review 10 nominations and have 80 points but another user could have reviewed 5 nominations and have 100 points. Yes, we want you to review as many nominations as you can as this will greatly increase the number of points you earn, but you must also keep in mind that <b>every single review</b> will be looked over by a judge. If we find that you are 'rubber-stamping' (in other words, the review is not complete but you still passed/failed the article) you may be disqualified without warning.</li></ul>Also, rather than creating a long list on what to remember, make sure you have read the 'Scoring', 'Submissions', and 'FAQ' pages.<br><br>Now for the one question that we guarantee you have: how on earth will the rounds work???<br><br>Yes, we never actually had a solid platform regarding how the rounds would work because we had no idea how many people would sign-up. Even though the competition is about to begin, because sign-ups are still open, it is impossible to say exactly how each round will work. As of now, we can confirm that Round 1 will have everyone compete in one big pool. Depending on the final number of participants after sign-ups close, a to-be-determined number of participants will move on (highest scorers will move on) to Round 2. We guarantee that the top 15 will move on, so make sure you aim for those top positions! Moving on to Round 2, participants will be split into pools of even numbers (for example, every pool will have 6 participants). The pools will be determined by a computer program that places participants by random. More details regarding Round 2 will be sent out at the end of Round 1.<br><br>It is important to note that the GA Cup will run on <a href='./UTC' title='UTC'>UTC</a> time, so make sure you know what time that is for where you live! On that note, the GA Cup will start on <b>October 1 at 0:00:01 UTC</b>; Round 1 will end on <b>October 29 at 23:59:59 UTC</b>; Round 2 will commence on <b>November 1 at 0:00:01 UTC</b>. All reviews must be started <i>after or on</i> the start time of the round. If you qualify for Round 2 but do not complete a review before the end of Round 1, the review can be carried over to Round 2; however that review will not count for Round 1. Prior to the start of the the second round, participants who qualify to move on will be notified.<br><br>Finally, if you know anyone else that might be interesting in participating, let them know! Sign-ups close on October 15 so there is still plenty of time to join in on the action!<br><br>If you have any further questions, contact one of the judges or leave a message <a href='./Wikipedia_talk:WikiProject_Good_articles/GA_Cup' title='Wikipedia talk:WikiProject Good articles/GA Cup'>here</a>.<br><br><i>On October 16 or 17, 2014, check the <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Pools/Round_1' title='Wikipedia:WikiProject Good articles/GA Cup/Pools/Round 1'>Pools</a> page as we will post the exact number of participants that will move on to the next round. Because this number will be determined past the halfway mark of Round 1, we encourage you to aim to be in the top 15 as the top 15 at the end of the round are guaranteed to move on.</i><br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>To subscribe or unsubscribe to future GA Cup newsletter, please add or remove your name to <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Send' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Send'>our mailing list</a>. If you are a participant, you will be on the mailing list no matter what as this is the easiest way to communicate between all participants.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 00:49, 28 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup - September 2014 Newsletter",
                            "shas": {
                                "html": "8153485638a0c94be618ee60fd71d9c888a9c506364c9a7869f79ef334329728",
                                "indicator": "1822743e0333b6e6df00b429517a498c08403e2b9e1816379c24b3d0567e51ad"
                            }
                        }, {
                            "id": 113,
                            "replies": [{
                                "sha": "e7e336d2d87d0133fb385338e617b64983a4dec4cf7413d41f219dab7a7baece",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-24' title='Wikipedia:Wikipedia Signpost/2014-09-24'>Wikipedia:Wikipedia Signpost/2014-09-24</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:50, 28 September 2014 (UTC)</li></ul>Leave me alone. I'm sick of you people bullying me. <a href='./User:Seston' title='User:Seston'>Seston</a> (<a href='./User_talk:Seston' title='User talk:Seston'>talk</a>) 02:17, 29 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 24 September 2014",
                            "shas": {
                                "html": "2e801428d1ef6df92fa85bff4caac32c2ab87d9877ef237e0e5219aa3fcc73c5",
                                "indicator": "1f1349a943aeb1a619cdd88ab56f25bea1f7eda208b7242575b82aca256db541"
                            }
                        }, {
                            "id": 114,
                            "replies": [{
                                "sha": "2c08b8878db7623fc048377530eec97ba5ebcfd2b310e83cec8a620fc1ef49f8",
                                "depth": 0,
                                "html": "First reply <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:54, 20 June 2019 (UTC)"
                            }, {
                                "sha": "a7469e23b75ba19732743a891e002aa4e77ac05a70c5b14acab7836700d61fa5",
                                "depth": 1,
                                "html": "Second reply nested <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:54, 20 June 2019 (UTC)"
                            }, {
                                "sha": "7457d307a80ceaafa5a90cec9d1fa3a065949a421639c2075d223fc7bd430eaa",
                                "depth": 2,
                                "html": "Third reply nested <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:54, 20 June 2019 (UTC)"
                            }, {
                                "sha": "6811c484811e10d79635566440a3d23f2993ef95c684f96e3223c0b319527877",
                                "depth": 3,
                                "html": "Fourth reply nested <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:54, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "New test topic with replies",
                            "shas": {
                                "html": "49050bb278239c57f1f2bb3cb4cf5f7bca5b77377d05e0e808aedc67f97ddfa1",
                                "indicator": "13db848e3ac2992dfec76aed8b943173db70fb0ef65080763e5f7df241c0e678"
                            }
                        }, {
                            "id": 115,
                            "replies": [{
                                "sha": "01958c8cd73ce4403c37b2141c98872531e3987d3890a761ece9270883ecc140",
                                "depth": 0,
                                "html": "This article had already been sent to AfD, blanked, G7'd, and promptly recreated under a new title, which is why I contested the second blanking so that future speedies could be under G4. Not sure if the previous subversion of the AfD process was intentional gaming or just had that effect. Please note per the AfD that the article is likely a hoax. <a href='./User:VQuakr' title='User:VQuakr'>VQuakr</a> (<a href='./User_talk:VQuakr' title='User talk:VQuakr'>talk</a>) 21:25, 30 September 2014 (UTC)"
                            }, {
                                "sha": "1563a495fd7c05c5396baf3cec3ede2f525f132806fba924cd53656311ee64e0",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Understood, I had not noticed the other deleted contributions. While I understand your reasoning, I still think the editor has the right to request deletion. AfD isn't necessary, in my opinion. If they were to continue to create the article then blank it, I'd consider that more of a behavioural disruption, with a block as a possible preventive measure. We could also salt <a href='./Claudia_Paola' title='Claudia Paola'>Claudia Paola</a>, which would seemingly be the more likely target for recreation. At any rate, thank you for your patrol work and initiative. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:23, 1 October 2014 (UTC)"
                            }, {
                                "sha": "58857bb4bb4edc082780b71490e75bd9e8a797b0de1415221706c1ea445970e6",
                                "depth": 2,
                                "html": "<a href='https://en.wikipedia.org/w/index.php?title=Claudia_Paola&amp;oldid=627779520'>Yup</a>. I am having trouble seeing how this is anything except a violation of <a href='./Wikipedia:GAME' title='Wikipedia:GAME'>WP:GAME</a>. <a href='./User:VQuakr' title='User:VQuakr'>VQuakr</a> (<a href='./User_talk:VQuakr' title='User talk:VQuakr'>talk</a>) 06:18, 1 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Claudia Paola",
                            "shas": {
                                "html": "203cdfd28d65476ee8185ebf974f3e78748bd5885dba73c0cae5dd44a2177c5e",
                                "indicator": "3ec187b1643459f182c93860d266693284b416a84463fb750c284159d86b5a01"
                            }
                        }, {
                            "id": 116,
                            "replies": [{
                                "sha": "211220c07cd6bd858537b99c2eb3efeb0d49f00b2ed7b2119bb7f01a0b77fb21",
                                "depth": 0,
                                "html": "What I removed was a mistake, I was just trying add. Thank you <a href='./User:RosnerPR' title='User:RosnerPR'>RosnerPR</a> (<a href='./User_talk:RosnerPR' title='User talk:RosnerPR'>talk</a>) 17:28, 1 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from RosnerPR",
                            "shas": {
                                "html": "6a97a0250bf629961f3b33ade51fc379e33532190ceb3a83888307c2fd8ff017",
                                "indicator": "d401868c6925e4ef8c0b85390f6760e2581bc7f7fb287099e277819406f709b5"
                            }
                        }, {
                            "id": 117,
                            "replies": [{
                                "sha": "0578c1fc708fe149f47538f57ba850797f1c08216a510296af9e5d39de442d96",
                                "depth": 0,
                                "html": "Hi there, I'm pleased to inform you that I've begun reviewing the article <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a> you nominated for <a href='./Wikipedia:GA' title='Wikipedia:GA'>GA</a>-status according to the <a href='./Wikipedia:WIAGA' title='Wikipedia:WIAGA'>criteria</a>. <a href='./File:Time2wait.svg'>[File:Time2wait.svg]</a> This process may take up to 7 days. Feel free to contact me with any questions or comments you might have during this period.   Message delivered by <a href='./User:Legobot' title='User:Legobot'>Legobot</a>, on behalf of <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> -- <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> (<a href='./User_talk:CaroleHenson' title='User talk:CaroleHenson'>talk</a>) 04:02, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your <a href='./Wikipedia:Good_articles' title='Wikipedia:Good articles'>GA</a> nomination of <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a>",
                            "shas": {
                                "html": "c084172daa2e7c279a6d237092688615fa67b861387107082b9c0ee50f19304a",
                                "indicator": "d9967f72345e874f789d324bd0743c0efe530493824de03f4c09142ed4df81d0"
                            }
                        }, {
                            "id": 118,
                            "replies": [{
                                "sha": "c487572df264d064a2dfe6c0b30840880e87dcda4f1253b5904aaa39524f4740",
                                "depth": 0,
                                "html": "When I made this page, I made sure I don't 'advertise'. Looking at all other private school pages, I started the page with similar content and it got deleted right away.  I wasn't even interested to make a wiki page but it is a requirement for an association of private schools we are joining. So could you please either let me know what should be removed so that you don't consider it promotion (which by the way most of my competitors completely advertise on their wiki pages anyway!) or allow me to remove the page and the tag all together.  Thank you. <a href='./User:Hbahador' title='User:Hbahador'>Hbahador</a> (<a href='./User_talk:Hbahador' title='User talk:Hbahador'>talk</a>) 13:33, 2 October 2014 (UTC)"
                            }, {
                                "sha": "10368a973c93a2a4f58e8b27789bff9ab6be7af79dd4863c2177a1644fae5d9a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You are correct that not every page on Wikipedia is in the best of shape, but we do try :) In short, you should try to stick to the facts and disregard your own opinions or otherwise irrelevant information. For instance, you wrote 'Passionate about education, they offer what they can to help students improve and excel', referring to the teachers. Is this really <i>encyclopedic</i>? What have I learned about the institution? It sounds more like you are trying to convince the reader of how good the teachers are and this a good place to go to school. A similar acceptable example would be, 'so and so news agency rated the teachers to be the best in the school system'. That would attribute the opinion to something <b>previously published</b>, so it's left to the reader how to interpret it, as we aren't implying it to be factual. Finally, your article contained no sources whatsoever. On Wikipedia everything needs to be <a href='./Wikipedia:V' title='Wikipedia:V'>verifiable</a>, attributed with <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. See <a href='./Wikipedia:REFBEGIN' title='Wikipedia:REFBEGIN'>WP:REFBEGIN</a> for the basics. I can help you with this later, but it may take a day or two. Thanks for your understanding! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:03, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Ontario Academy of Technology",
                            "shas": {
                                "html": "f345f83495b32f550e5d5be83e0c01a5d9d24df0736fc218ae130bada55897a3",
                                "indicator": "8eece1657a0303e645eb99515d64a7ead57b4d5ab2a900ee8fb19c28133495e7"
                            }
                        }, {
                            "id": 119,
                            "replies": [{
                                "sha": "d95709aedf600979dc68031cc6b7da9a89ddb675a46a991d238342139ece2b91",
                                "depth": 0,
                                "html": "The article <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a> you nominated as a <a href='./Wikipedia:Good_article_nominations' title='Wikipedia:Good article nominations'>good article</a> has passed <a href='./File:Symbol_support_vote.svg'>[File:Symbol_support_vote.svg]</a>; see <a href='./Talk:32_Old_Slip' title='Talk:32 Old Slip'>Talk:32 Old Slip</a> for comments about the article. Well done! If the article has not already been on the main page as an 'In the news' or 'Did you know' item, you can <a href='./Template_talk:Did_you_know#To_nominate_an_article' title='Template talk:Did you know'>nominate it</a> to appear in Did you know. Message delivered by <a href='./User:Legobot' title='User:Legobot'>Legobot</a>, on behalf of <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> -- <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> (<a href='./User_talk:CaroleHenson' title='User talk:CaroleHenson'>talk</a>) 17:15, 2 October 2014 (UTC)"
                            }, {
                                "sha": "88f840dc678763c91a3c5807381968d7d30f2c452200c3a46ffcba8072019469",
                                "depth": 1,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:54, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your <a href='./Wikipedia:Good_articles' title='Wikipedia:Good articles'>GA</a> nomination of <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a>",
                            "shas": {
                                "html": "10bbbec5e26dd1ff68165abce8e510955bd5b97cfb47b69f14d73bb44ebd8625",
                                "indicator": "b5ee49240ab0f5466fcd30fcf3c849a61ce9e837e6063f2d2a66b04492294289"
                            }
                        }, {
                            "id": 120,
                            "replies": [{
                                "sha": "63817d92a1141bf88cff40b503c5f308592f6dd4a556a7ce5355a9d0b905bc32",
                                "depth": 0,
                                "html": "hello i will to now why Odarion page was deleted because is a singer from portugal <br>thank you  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:DarioAbreu' title='User:DarioAbreu'>DarioAbreu</a> (<a href='./User_talk:DarioAbreu' title='User talk:DarioAbreu'>talk</a> • <a href='./Special:Contributions/DarioAbreu' title='Special:Contributions/DarioAbreu'>contribs</a>) 20:21, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from DarioAbreu",
                            "shas": {
                                "html": "6ec01de752f9cf17d5046f6b0542a4e10b6dd4a4cf571f65c0d27a6700befa0f",
                                "indicator": "fbd6f441e5da06c9001568e81df6d993ed0d474155fada3c3dc7568ccd2fb613"
                            }
                        }, {
                            "id": 121,
                            "replies": [{
                                "sha": "c9911adbcfa64f78bd30a47e0e5cc935e2a07922c6e1b24ecd58491982f04ee7",
                                "depth": 0,
                                "html": "Hey, hope you don't mind but I upped your block of 216.21.169.232 to a week. If they've come straight back after 31 hours, 72 isn't likely to put them off and once we've established that the IP is static, we shouldn't have any qualms about drastically increasing block durations imo. Glad to see your mop's getting dirty! ;) All the best, <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'><b>HJ&nbsp;Mitchell</b></a> | <a href='./User_talk:HJ_Mitchell' title='User talk:HJ Mitchell'>Penny for your thoughts? </a> 19:10, 3 October 2014 (UTC)"
                            }, {
                                "sha": "64a7a849bc765ea2233b30df421bd7082042e59edd4af3aa3ba5cff051db5144",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Don't mind at all, and fully agree with your logic. Kind of you to let me know! Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 19:29, 3 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "216.21.169.232",
                            "shas": {
                                "html": "98c65b47638528043afc609662207f3ed7f8e67360a12b2ede6235481b3ac803",
                                "indicator": "d80938f774d1cb7cc1d297199935b812f6684cc42205e0abbec02b5d8e27af3d"
                            }
                        }, {
                            "id": 122,
                            "replies": [{
                                "sha": "f8d87c8ef87df721085648d12da15a014e761e40804b7e760e280fe6f743c347",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-01' title='Wikipedia:Wikipedia Signpost/2014-10-01'>Wikipedia:Wikipedia Signpost/2014-10-01</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 19:26, 4 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 01 October 2014",
                            "shas": {
                                "html": "a575fc2e440dc90d2f8aeceaf926a0b7e8e74854c1e46cc98f32c63396ace4bc",
                                "indicator": "939c5a21b93e3e1c79c2294fc582a708489d36841d4743e8fd58dbaa34263ef7"
                            }
                        }, {
                            "id": 123,
                            "replies": [{
                                "sha": "5f531684cbc627339efde0eb03649692c35da53860e7e8eea1cc95f86a050ed6",
                                "depth": 0,
                                "html": "You are being notified because you have participated in previous discussions on the same topic. <a href='./User:Alsee' title='User:Alsee'>Alsee</a> (<a href='./User_talk:Alsee' title='User talk:Alsee'>talk</a>) 19:17, 5 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Wikipedia:Village_pump_(proposals)#rfc_5D8BCA2' title='Wikipedia:Village pump (proposals)'>Wikipedia:Village pump (proposals) Media Viewer RfC</a>",
                            "shas": {
                                "html": "542fbd5778fddf7d4fe83943bd31be89ada944c4959e0a1fb76c5a2b0bdcbcc8",
                                "indicator": "3296bc1b02ca51552d5d5272d170676ecc53dd44200086eee8ea03e1ba480927"
                            }
                        }, {
                            "id": 124,
                            "replies": [{
                                "sha": "6fb00a8ca569dacda9cce532ac557e97323e227a13844ad15fb7a4ec476ca309",
                                "depth": 0,
                                "html": "You have been randomly selected to receive an invitation to <a href='./Talk:Nofel_Izz#rfc_4115521' title='Talk:Nofel Izz'>participate in the request for comment</a> on <b>Talk:Nofel Izz</b>. Should you wish to respond, your contribution to this discussion will be appreciated.  For tips, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>WP:Requests for comment#Suggestions for responding</a>. If you wish to change the frequency or topics of these notices, or do not wish to receive them any longer, please adjust your entries at <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>WP:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:04, 7 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Nofel_Izz#rfc_4115521' title='Talk:Nofel Izz'>Talk:Nofel Izz</a>",
                            "shas": {
                                "html": "e5f38ff00c9ae8477cea45e3e823ba200c05e29f21d6d897e8ef098ffdf684c7",
                                "indicator": "533af7937aa9d10436078e907620d914d8f74225c0a2fc1186a686a622351a57"
                            }
                        }, {
                            "id": 125,
                            "replies": [{
                                "sha": "84deeef31af996805f878cec0465e9f0d04fd929edf60eac6dfcfc7e2f96f923",
                                "depth": 0,
                                "html": "Hello, I'm Gagliardi89. In March, you helpfully edited and patrolled the <a href='./SoCal_Coyotes' title='SoCal Coyotes'>SoCal Coyotes</a> article, which currently is under afd discussion. I have found your past input constructive and beneficial, and am seeking your recommendations to continue to improve the article. If you have the time to read the SoCal Coyotes afd talk page, you will see the steps that already have been administered. I appreciate any guidance you might render. My intention is to continue improving the quality of the article and the discussion by broadening participation, to more fully achieve consensus. Thank you! <a href='./User:Gagliardi89' title='User:Gagliardi89'>Gagliardi89</a> (<a href='./User_talk:Gagliardi89' title='User talk:Gagliardi89'>talk</a>) 04:44, 7 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello re: SoCal Coyotes",
                            "shas": {
                                "html": "654f97683ce19c159984c6396db12606da0d3568c2751de53f09f33062c88006",
                                "indicator": "65f31c8ed7d057bd2cfc075f117c4ea4b56e75612f38137b07a1761623aa0118"
                            }
                        }, {
                            "id": 126,
                            "replies": [{
                                "sha": "769d95f1140ab36ad280dd02f18b316b79c9bdb12de30b2d42975317ffcc9e5e",
                                "depth": 0,
                                "html": "<a href='./File:VisualEditor-logo.svg'>[File:VisualEditor-logo.svg]</a><a href='./File:TemplateData_GUI_editor_with_two_parameters.png'>[File:TemplateData_GUI_editor_with_two_parameters.png]</a><b>Did you know?</b><br><br>TemplateData is a separate program that organizes information about the parameters that can be used in a template.  VisualEditor reads that data, and uses it to populate its simplified template dialogs.<br><br>With the new TemplateData editor, it is easier to add information about parameters, because the ones you need to use are pre-loaded.<br><br>See <a href='https://www.mediawiki.org/wiki/Help:TemplateData' title='mediawikiwiki:Help:TemplateData'>the help page for TemplateData</a> for more information about adding TemplateData.  <a href='https://www.mediawiki.org/wiki/VisualEditor/User%20guide' title='mw:VisualEditor/User guide'>The user guide</a> has information about how to use VisualEditor.<br><br>Since the last newsletter, the <a href='https://www.mediawiki.org/wiki/VisualEditor' title='mediawikiwiki:VisualEditor'>Editing</a> team has reduced technical debt, simplified some workflows for template and citation editing, made major progress on Internet Explorer support, and fixed <a href='https://bugzilla.wikimedia.org/buglist.cgi?list_id=349619&amp;order=priority%252Cbug_severity&amp;product=VisualEditor&amp;query_format=advanced&amp;resolution=FIXED&amp;target_milestone=VE-deploy-2014-08-14&amp;target_milestone=VE-deploy-2014-08-21&amp;target_milestone=VE-deploy-2014-08-28&amp;target_milestone=VE-deploy-2014-09-04&amp;target_milestone=VE-deploy-2014-09-11&amp;target_milestone=VE-deploy-2014-09-18&amp;target_milestone=VE-deploy-2014-09-25&amp;target_milestone=VE-deploy-2014-10-02'>over 125 bugs and requests</a>. Several performance improvements were made, especially to the system around re-using references and reference lists.  Weekly updates are posted <a href='https://www.mediawiki.org/wiki/VisualEditor/status' title='mediawikiwiki:VisualEditor/status'>on Mediawiki.org</a>.<br><br>There were three issues that required urgent fixes: a deployment error that meant that many buttons didn't work correctly (bugs <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69856' title='bugzilla:69856'>69856</a> and <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69864' title='bugzilla:69864'>69864</a>), a problem with edit conflicts that left the editor with nowhere to go (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69150' title='bugzilla:69150'>bug 69150</a>), and a problem in Internet Explorer 11 that caused replaced some categories with a link to the system message, <a href='./MediaWiki:Badtitletext' title='MediaWiki:Badtitletext'>MediaWiki:Badtitletext</a> (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=70894' title='bugzilla:70894'>bug 70894</a>) when you saved. The developers apologize for the disruption, and thank the people who reported these problems quickly."
                            }],
                            "depth": 2,
                            "html": "VisualEditor newsletter—September and October 2014",
                            "shas": {
                                "html": "6459c512c7d53704fa9c1d955bea9e6acb7cebb02ed9853c0aea83be22c665bf",
                                "indicator": "90c0d553923bbdadb46a9474e8d183fedb3b59a5861b8acf1e868764a18ee764"
                            }
                        }, {
                            "id": 127,
                            "replies": [{
                                "sha": "2ffbc9cf6493f037f9900d5e28952e85185e419636856c330b54965dbb51f4ae",
                                "depth": 0,
                                "html": "<b>Internet Explorer 10 and 11 users now have access to VisualEditor</b>. This means that about 5% of Wikimedia's users will now get an 'Edit' tab alongside the existing 'Edit source' tab.  Support for Internet Explorer 9 is planned for the future.<br><br><b>Tablet users</b> browsing the site's mobile mode now have the option of using a mobile-specific form of VisualEditor. More editing tools, and availability of VisualEditor on smartphones, is planned for the future. The <b>mobile version of VisualEditor</b> was tweaked to show the context menu for citations instead of basic references (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=68897' title='bugzilla:68897'>bug 68897</a>).  A bug that broke the editor in iOS was corrected and released early (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=68949' title='bugzilla:68949'>bug 68949</a>). For mobile tablet users, three bugs related to scrolling were fixed (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=66697' title='bugzilla:66697'>bug 66697</a>, <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=68828' title='bugzilla:68828'>bug 68828</a>, <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69630' title='bugzilla:69630'>bug 69630</a>). You can use VisualEditor on the mobile version of Wikipedia from your tablet by clicking on the cog in the top-right when editing a page and choosing which editor to use."
                            }],
                            "depth": 3,
                            "html": "Increased support for devices and browsers",
                            "shas": {
                                "html": "8896a7628c309d0f39a6b99eb50d682daef7dca5e0d7fc33bb375b41237495d6",
                                "indicator": "fa4f1cae2914507a2b59faccf564950e30d6b42f32be32b2fb0fb228a511a9bc"
                            }
                        }, {
                            "id": 128,
                            "replies": [{
                                "sha": "264b4c06452a41f7d8fa4fa62ecf58d35eb59548dd76c60f584a4514b952968b",
                                "depth": 0,
                                "html": "<b>A tool for editing <a href='https://www.mediawiki.org/wiki/Extension:TemplateData' title='mediawikiwiki:Extension:TemplateData'>TemplateData</a> will be deployed to more Wikipedias soon.</b>  Other Wikipedias and some other projects may receive access next month.  This tool makes it easier to add TemplateData to the template's documentation.  When the tool is enabled, it will add a button above every editing window for a template (including documentation subpages).  To use it, edit the template or a subpage, and then click the 'Manage TemplateData' button at the top.  Read <a href='https://www.mediawiki.org/wiki/Help:TemplateData' title='mediawikiwiki:Help:TemplateData'>the help page for TemplateData</a>.  You can test the TemplateData editor <a href='https://www.mediawiki.org/wiki/Template:Sandbox/doc' title='mediawikiwiki:Template:Sandbox/doc'>in a sandbox at Mediawiki.org</a>.  Remember that TemplateData should be placed either on a documentation subpage <i><b>or</b></i> on the template page itself.  Only one block of TemplateData will be used per template."
                            }],
                            "depth": 3,
                            "html": "TemplateData editor",
                            "shas": {
                                "html": "96487f2dc23d5a150ed065391125f609d9a88d3ff4ad71cfc93a197609d7a8a5",
                                "indicator": "b174fa65329ebc91d880e9e2baa9a2f80e069ff38a7905d77654214f13e99c76"
                            }
                        }, {
                            "id": 129,
                            "replies": [{
                                "sha": "5a14a437619bc833d5f4b87f29d695cbb1fbda3a560954bf2d0bd125a2012404",
                                "depth": 0,
                                "html": "Several interface <b>messages and labels were changed</b> to be simpler, clearer, or shorter, based on feedback from translators and editors. The formatting of dialogs was changed, and more changes to the appearance will be coming soon, when VisualEditor implements the new MediaWiki theme from Design.  (A preview of the theme is <a href='https://tools.wmflabs.org/oojs-ui/oojs-ui/demos/index.html#widgets-mediawiki-vector-ltr' title='toollabs:oojs-ui/oojs-ui/demos/index.html'>available on Labs</a> for developers.)  The team also made some improvements for users of the <b>Monobook</b> skin that improved the size of text in toolbars and fixed selections that overlapped menus.<br><br>VisualEditor-MediaWiki now supplies the <b>mw-redirect</b> or <b>mw-disambig</b> class on <b>links to redirects and disambiguation pages</b>, so that user gadgets that colour in these in types of links can be created.<br><br><b>Templates' fields can be marked as 'required' </b>in TemplateData.  If a parameter is marked as required, then you cannot delete that field when you add a new template or edit an existing one (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=60358' title='bugzilla:60358'>bug 60358</a>).<br><br>Language support improved by making annotations use bi-directional isolation (so they display correctly with cursoring behaviour as expected) and by fixing a bug that crashed VisualEditor when trying to edit a page with a <b>dir</b> attribute but no <b>lang</b> set (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69955' title='bugzilla:69955'>bug 69955</a>)."
                            }],
                            "depth": 3,
                            "html": "Other changes",
                            "shas": {
                                "html": "2d61ceda7242a27e0f702cb51dcf6089b3e6436ae6252eb6af580b7293ed4fae",
                                "indicator": "772926e4a883159494ebcb4e33526297f92fa820a3e28283f016bbd66006e5cb"
                            }
                        }, {
                            "id": 130,
                            "replies": [{
                                "sha": "4f8819ea3ce9ae2f208980c786ed2fe206295a7daa913b007f12688bc70ce205",
                                "depth": 0,
                                "html": "The team posts details about planned work on the <a href='https://www.mediawiki.org/wiki/VisualEditor/Roadmap' title='mediawikiwiki:VisualEditor/Roadmap'>VisualEditor roadmap</a>.  The VisualEditor team <a href='https://www.mediawiki.org/wiki/Cite-from-id' title='mediawikiwiki:Cite-from-id'>plans to add&nbsp;<b>auto-fill features</b></a> <b>for citations</b> soon, perhaps in late October.<br><br>The team is also working on support for <b>adding rows and columns to tables</b>, and early work for this may appear within the month.  Please comment on the design <a href='https://www.mediawiki.org/wiki/VisualEditor/Design/Table_editor#Design_Workflow_for_comments' title='mw:VisualEditor/Design/Table editor'>at Mediawiki.org</a>.<br><br>In the future, real-time collaborative editing may be possible in VisualEditor.  Some early preparatory work for this was recently done."
                            }],
                            "depth": 3,
                            "html": "Looking ahead",
                            "shas": {
                                "html": "d1a913c0bf06a97b16a5324a79a7d9beae3fbb014bf577d5254d97cb602b5ffd",
                                "indicator": "7ced0a14ffa9772a1067cf29515594dde438acbcbd2865465691e79b73eff7e4"
                            }
                        }, {
                            "id": 131,
                            "replies": [{
                                "sha": "d603b47f7b90679cd517d0b97c1c270b460de6e15a58cde8b071d0292fe45642",
                                "depth": 0,
                                "html": "At Wikimania, several developers gave presentations about VisualEditor.  A translation sprint focused on improving access to VisualEditor was supported by many people.  <b>Deryck Chan</b> was the top translator.  Special honors also go to <b>संजीव कुमार (Sanjeev Kumar)</b>, <b>Robby</b>, <b>Takot</b>, <b>Bachounda</b>, <b>Bjankuloski06</b> and <b>Ата</b>.  A summary of the work achieved by the translation community has been <a href='https://www.mediawiki.org/wiki/VisualEditor/Translathon#Highlights_from_the_Translathon' title='mediawikiwiki:VisualEditor/Translathon'>posted here</a>.  Thank you all for your work.<br><br>VisualEditor can be made available to most non-Wikipedia projects.  If your community would like to test VisualEditor, please contact product manager <a href='https://meta.wikimedia.org/wiki/User%20talk:Jdforrester%20(WMF)' title='m:User talk:Jdforrester (WMF)'>James Forrester</a> or file an <a href='https://bugzilla.wikimedia.org/enter_bug.cgi?product=VisualEditor&amp;component=General'>enhancement request in Bugzilla</a>.<br><br>Please join the <a href='https://meta.wikimedia.org/wiki/IRC%20office%20hours' title='m:IRC office hours'>office hours</a> on Saturday, 18 October 2014 at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?hour=18&amp;min=00&amp;sec=0&amp;day=18&amp;month=10&amp;year=2014'>18:00 UTC</a> (daytime for the Americas; evening for Africa and Europe) and on Wednesday, 19 November at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?msg=VisualEditor+office+hour+for+November&amp;iso=20141119T16&amp;p1=1440'>16:00 UTC</a> on <a href='https://en.wikipedia.org/wiki/IRC' title='w:IRC'>IRC</a>.<br><br><i>Give feedback on VisualEditor at <a href='https://www.mediawiki.org/wiki/VisualEditor/Feedback' title='mediawikiwiki:VisualEditor/Feedback'>mw:VisualEditor/Feedback.</a>  Subscribe or unsubscribe at <a href='https://meta.wikimedia.org/wiki/VisualEditor/Newsletter' title='m:VisualEditor/Newsletter'>Meta</a>. To help with translations, please subscribe to the <a href='https://lists.wikimedia.org/mailman/listinfo/translators-l' title='mail:translators-l'>Translators mailing list</a> or contact <a href='https://meta.wikimedia.org/wiki/User%20talk:Elitre%20(WMF)' title='m:User talk:Elitre (WMF)'>Elitre at Meta</a>.  Thank you!</i><br><br>— <a href='./User:Whatamidoing_(WMF)' title='User:Whatamidoing (WMF)'>Whatamidoing (WMF)</a> (<a href='./User_talk:Whatamidoing_(WMF)#top' title='User talk:Whatamidoing (WMF)'>talk</a>) 00:11, 8 October 2014 (UTC)"
                            }, {
                                "sha": "4d975bc4f9aac103a9c9e58fa35fc30da1f16d9da0d9c99740facaef909ed3e0",
                                "depth": 0,
                                "html": "<a href='./Template:You've_got_mail' title='Template:You've got mail'>Template:You've got mail</a>"
                            }],
                            "depth": 3,
                            "html": "Supporting your wiki",
                            "shas": {
                                "html": "377da67206a0ce38b50853fd846123870aebb8dd0a34b1ae9bc715fd7b547fc0",
                                "indicator": "3437dee474590ca5a7f6c15a61b4b20a881ea9e307a8b49b2b644c3d3a1118cd"
                            }
                        }, {
                            "id": 132,
                            "replies": [{
                                "sha": "a18fcdf63cc14b3a5971f674479900b4407ca187d0c5f897dd4b52fed5af285e",
                                "depth": 0,
                                "html": "Why did you delete my article of fan art? Also is it possible for me to create a page about my story?  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Mr.JimblesNotronbo' title='User:Mr.JimblesNotronbo'>Mr.JimblesNotronbo</a> (<a href='./User_talk:Mr.JimblesNotronbo' title='User talk:Mr.JimblesNotronbo'>talk</a> • <a href='./Special:Contributions/Mr.JimblesNotronbo' title='Special:Contributions/Mr.JimblesNotronbo'>contribs</a>) 17:04, 10 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Mr.JimblesNotronbo",
                            "shas": {
                                "html": "e81e60c9639d03bc430cf4d2034e1d889af065df3eec14ec5fecbb2e4794de3b",
                                "indicator": "a88fdf7513bc9df835861da10acfa223c361f87f5c1c7c5437f726abde2cb3d2"
                            }
                        }, {
                            "id": 133,
                            "replies": [{
                                "sha": "976e2b744e5658eae840a3487722807ebebee66bb2293ebeae895c077b6ad259",
                                "depth": 0,
                                "html": "<a href='./Template:Diff2' title='Template:Diff2'>Template:Diff2</a> Yep, it's vandalism. It is easy to mistake these edits, but a quick check shows there's no mention of the first ancient dinosaurs in Brooklyn anywhere online. Not only that, but edits like that are typical puerile vandal behavior. – <a href='./User:Epicgenius' title='User:Epicgenius'>Epicgenius</a> (<a href='./User_talk:Epicgenius' title='User talk:Epicgenius'>talk</a>) 00:36, 11 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Brooklyn",
                            "shas": {
                                "html": "59878636f81619a924ded67eb75c375e7203563c3e083b2ba0acce9cd7b4d80f",
                                "indicator": "76003d8d4fd4da8f53263625e11750ffad351ab66421818fbd758687ba257d20"
                            }
                        }, {
                            "id": 134,
                            "replies": [{
                                "sha": "1d314c429701667726f58d8f229c924b725360a38ad19e890f4983ef52132620",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-08' title='Wikipedia:Wikipedia Signpost/2014-10-08'>Wikipedia:Wikipedia Signpost/2014-10-08</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 00:42, 11 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 08 October 2014",
                            "shas": {
                                "html": "5c7672a85169828f7764b4286c8ff6d9cd133670951fcc3d0fbdd622b9310dc3",
                                "indicator": "b30f27c720bb64854e003c68a6d53055382ced8bd2e37388743e2c8f2f4a434d"
                            }
                        }, {
                            "id": 135,
                            "replies": [{
                                "sha": "6836cefc24a833d1411c318d2069d132c71f5299baa50b970ba2de79273a55a6",
                                "depth": 0,
                                "html": "<b><a href='./Wikipedia:WPGA' title='Wikipedia:WPGA'>WikiProject Good Articles's</a> <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup' title='Wikipedia:WikiProject Good articles/GA Cup'>2014-15 GA Cup</a> - Round 1</b><br><br>As we move into the middle of Round 1, we wanted to report some of the lessons we've learned thus far, as well as announce a major rule change going into Round 2, which begins November 1.  Remember, sign-ups for this year's Cup ends on September 15.<br><br>Thus far, we're very happy with the results of the competition.  One of our major goals, reducing the long backlog at GAN, is well on the way to being accomplished, mostly due to the enthusiastic efforts of <a href='./User:Jonas_Vinther' title='User:Jonas Vinther'>Jonas Vinther</a>, who has earned over 250 points.  Over 80 reviews have been made thus far.  Thank you all for your efforts and for your part in making the GA Cup a success.<br><br>However, this is the inaugural year of the GA Cup, so there have been some unforeseen circumstances that have come up.  One has been a glaring inadequacy with the rules, which the judges feel makes the competition unfair.  As a result, there will be a major change in the rules, starting at the beginning of Round 2:<br><br> <b>Your review must provide feedback/suggestions for improvement, and then you must wait until the nominator has responded and all issues/suggestions have been resolved before you can pass the article. Failure to follow this rule will result in disqualification.</b><br><br>What this means is that you must provide some feedback to the article's nominator, and must wait for him or her to respond before passing the article.  If the nominator has not responded in the standard 7 days, you can fail the article.  We're instituting this rule change to prevent the possibility of competitors passing articles for the sake of passing articles (or failing them) and to gain more points.  We believe that the change will make it more fair to all competitors in the GA Cup.<br><br>Also, in case you haven't noticed, we increased the 'guarantee' for Round 2 to 25 participants. The exact number will be decided in the near future.<br><br>We thank your for your participation, and for your flexibility and understanding as we learn what works and what doesn't work in this competition.<br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>To subscribe or unsubscribe to future GA Cup newsletter, please add or remove your name to <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Send' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Send'>our mailing list</a>. If you are a participant, you will be on the mailing list no matter what as this is the easiest way to communicate between all participants.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 14:26, 12 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup -Round 1 Newsletter",
                            "shas": {
                                "html": "db53560a34d1f4db050b69ac3bf9de8b83773b4374f88d9cead42ccd52c86f94",
                                "indicator": "579bf4d6720d589982b50d9f2c2dc5c2067032dc0c8d565b5adbd66d32496e3f"
                            }
                        }, {
                            "id": 136,
                            "replies": [{
                                "sha": "c4fc6a0e6286a22814e7572c77758d9bf1cdf134bc14b766b878f726f103820a",
                                "depth": 0,
                                "html": "Hi everyone,<br><br>It was brought to the attention of the judges that there was an error in the newsletter sent out earlier today.<br><br>Sign-ups for the GA Cup will close on October 15, 2014, not September 15, 2014 (as mentioned in the newsletter).<br><br>Sorry for any confusion.<br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 00:03, 13 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup Newsletter Correction",
                            "shas": {
                                "html": "29cf4c501a7cd2d0501059143f1e3138f421e022f65471d500b71ca685307f44",
                                "indicator": "cf8210db62316a7b13a7a20e2daa935267d1318a064f8ed8ef33c5176af361a9"
                            }
                        }, {
                            "id": 137,
                            "replies": [{
                                "sha": "c8fc2f30d0c5612f67ba145fbcfe035c8e19e748b21d79f6a25cc2ec982ed8f8",
                                "depth": 0,
                                "html": "Not sure how that happened. I reported 'User:Obama=NoSalt'. <a href='./User:Origamite' title='User:Origamite'>Origamite</a><sup><a href='./User_talk:Origamite' title='User talk:Origamite'>ⓣ</a><a href='./Special:Contributions/Origamite' title='Special:Contributions/Origamite'>ⓒ</a></sup> 16:03, 13 October 2014 (UTC)"
                            }, {
                                "sha": "6bced18dfc0c88d46c14ce5871d53786eeb435551bf30dd503a25bf69c538beb",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I think the {{<a href='./Template:Vandal' title='Template:Vandal'>vandal</a>}} template thought 'User:Obama' was a parameter because of the equals sign. Anyway, I normally would not block as they only made two edits and received two warnings, but agreed there's little doubt they'd turn around and edit constructively. Not sure about the username, either. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:16, 13 October 2014 (UTC)"
                            }, {
                                "sha": "72a3b93c601104a8aacd6946a1a7c7451cb5bc062ceb1ab02865a9e69c7cfb38",
                                "depth": 2,
                                "html": "Thanks. <a href='./User:Origamite' title='User:Origamite'>Origamite</a><sup><a href='./User_talk:Origamite' title='User talk:Origamite'>ⓣ</a><a href='./Special:Contributions/Origamite' title='Special:Contributions/Origamite'>ⓒ</a></sup> 17:38, 13 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "My AIV report",
                            "shas": {
                                "html": "5e22a3b9fde4e6cd2442c30bec8e2183879e9babe0425a6773809f0f7cf3cf9f",
                                "indicator": "05465459b744e14d75e083a094d391b2468817acadf8ebd7c40b93bf92e5d0e1"
                            }
                        }, {
                            "id": 138,
                            "replies": [{
                                "sha": "487a37859d430ee5ec961fbb479d8ee4b6f1beb4f0e8dd918c95f4e1fa107b7a",
                                "depth": 0,
                                "html": "I did not create <a href='./Democratic_anarchism' title='Democratic anarchism'>democratic anarchism</a>. My little sister thought it would be funny to edit Wikipedia while I was in the bathroom.<a href='./User:Erik_L'Ensle' title='User:Erik L'Ensle'>Erik L'Ensle&nbsp;:)</a> (<a href='./User_talk:Erik_L'Ensle' title='User talk:Erik L'Ensle'>talk</a>) 17:36, 14 October 2014 (UTC)"
                            }, {
                                "sha": "7e06c7a734974b543f2e1209a36d36258ca33c15a523953cc08e868a619e8486",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I saw the note on your user page. No worries, but do be forewarned that if it becomes a problem we may have no choice to but to take preventive measures, such as blocking. I always log out when I leave my computer, perhaps you should do the same. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:11, 14 October 2014 (UTC)"
                            }, {
                                "sha": "c11a17b5775de4a9c9bba9e1dc17b6a10154859a45ef7a28d7f6ffb0b84e0038",
                                "depth": 2,
                                "html": "<a href='./Template:Talk_page_stalker' title='Template:Talk page stalker'>Template:Talk page stalker</a>@<a href='./User:Erik_L'Ensle' title='User:Erik L'Ensle'>Erik L'Ensle</a>: See <a href='./Wikipedia:BRO' title='Wikipedia:BRO'>WP:BRO</a><a href='./User:MirrorFreak' title='User:MirrorFreak'>Amanda</a><a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'> Smalls</a> 18:17, 14 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "I AM INNOCENT",
                            "shas": {
                                "html": "0df5674fab4490d72bdca6a0cdedc0b0c08e9bd11b09dcc07c3e77b82ce27976",
                                "indicator": "31483d4a180328cc3c268e97a7425416f52af9d6546b4a00db0edb2c7625f091"
                            }
                        }, {
                            "id": 139,
                            "replies": [{
                                "sha": "4323659f56275676224be1f8b500e0ec1798295d25e816ce66afe0a9e2a318f6",
                                "depth": 0,
                                "html": "Hello!<br>I have a question: why did you delete the 'Structure' part of the draft DP1/Yop1p? Thanks! <a href='./User:BQUB14-Oagharbi' title='User:BQUB14-Oagharbi'>BQUB14-Oagharbi</a> (<a href='./User_talk:BQUB14-Oagharbi' title='User talk:BQUB14-Oagharbi'>talk</a>) 17:04, 15 October 2014 (UTC)"
                            }, {
                                "sha": "710b9451243b03514e15d378945fa1f6f6f03185e7605a977357277c337421f8",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi! While I was <a href='./Wikipedia:RCP' title='Wikipedia:RCP'>patrolling recent changes</a> I reverted an <a href='https://en.wikipedia.org/w/index.php?title=Draft:DP1/Yop1p&amp;diff=629728293&amp;oldid=629721823'>edit</a> as there appeared to add foreign language content and a smiley emoticon :) which in general does not belong in articles. First off, I admittedly did not notice it was a draft article. Secondly, because I used <a href='./Wikipedia:ROLLBACK' title='Wikipedia:ROLLBACK'>rollback</a> it reverted <i>all</i> of your changes. Sorry about that. Anyway... perhaps the foreign language emoticon content was inserted by mistake? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:21, 15 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from BQUB14-Oagharbi",
                            "shas": {
                                "html": "c6bbdb027a33751fd04bc947d58ce76fa4bfaf8fa2e2e2b42b0f3c08687c9d13",
                                "indicator": "b0199dcde9a2ca983fb30f9dd021c7592fad105e45db65bbca9e5455d2e1c4de"
                            }
                        }, {
                            "id": 140,
                            "replies": [{
                                "sha": "5b98c43f58261524a7282b6daaf3ee39a17fa85541432317b965bd23cdec4a90",
                                "depth": 0,
                                "html": "Hello! <br>Well, I am working together with other people on this article and that message followed by a smily emoticon was addressed to a one of the collaborators. Thanks anyway! <a href='./User:BQUB14-Oagharbi' title='User:BQUB14-Oagharbi'>BQUB14-Oagharbi</a> (<a href='./User_talk:BQUB14-Oagharbi' title='User talk:BQUB14-Oagharbi'>talk</a>) 17:53, 15 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from BQUB14-Oagharbi",
                            "shas": {
                                "html": "add6d8c7e10717db7085ba3d5b5b92c78b5d4ca1baecf7b90a1a774b84b61f88",
                                "indicator": "aa8ed6143f91e6a85df1db11afca9c7dc8e5c6b4d6441784cec9d7f5d460d283"
                            }
                        }, {
                            "id": 141,
                            "replies": [{
                                "sha": "15349acec6efa90a0ba6ffac065ae6e100b5a75fd2f09a0e54c2441302ad0203",
                                "depth": 0,
                                "html": "<b><a href='./Wikipedia:WPGA' title='Wikipedia:WPGA'>WikiProject Good Articles's</a> <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup' title='Wikipedia:WikiProject Good articles/GA Cup'>2014-15 GA Cup</a> - Round 1</b><br><br>Hello GA Cup competitors!<br><br>The judges have learned a great deal in this first part of the competition, and we appreciate your patience with us as we've figured out what works and what doesn't work.  As we reported in our <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Round_1' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Round 1'>last newsletter</a>, an inadequacy in the scoring system has been illuminated in the past 15 days, which has resulted in a major change in the rules.  It has also resulted in one withdrawal.<br><br>To ensure fairness, we've decided to further increase the number of participants moving onto Round 2.  Everyone who has reviewed at least <b>one</b> article will automatically be moved forward, and will be placed in pools.  You have until October 29 to take advantage of this opportunity.  It is our hope that this will make up for the unforeseen glitch in our scoring system.<br><br>Best of wishes to all of you as you continue to help improve articles and make Wikipedia a better place.<br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>To subscribe or unsubscribe to future GA Cup newsletter, please add or remove your name to <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Send' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Send'>our mailing list</a>. If you are a participant, you will be on the mailing list no matter what as this is the easiest way to communicate between all participants.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 19:03, 15 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup - Round 1 Newsletter #2",
                            "shas": {
                                "html": "22c5267ddfcde008698cfa17b899dcdf420928eb40df536e01ef6500382b15cf",
                                "indicator": "3715e1957a56c21fc9b676303b0ea6453266624cb56d94c4c5b8b1bc84f04b02"
                            }
                        }, {
                            "id": 142,
                            "replies": [{
                                "sha": "56aeef9a1f7c01bd8c6683dd54464d6c0209654a0a83463b0d4c7206a29304b1",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-15' title='Wikipedia:Wikipedia Signpost/2014-10-15'>Wikipedia:Wikipedia Signpost/2014-10-15</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:48, 17 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 15 October 2014",
                            "shas": {
                                "html": "572c76678d0aac3a95ee4c308d6600f26717e32b863220e5becf1b09b4dd098d",
                                "indicator": "799cc2dcb477da9bffde7a9784bd33d5989598d6e8ab589f3d473f9f49aae937"
                            }
                        }, {
                            "id": 143,
                            "replies": [{
                                "sha": "f7feff84be4e191b8e3dcc1445c87fc49827930cb04af28e180283a9535242ad",
                                "depth": 0,
                                "html": "Please stop reversing changes on the Democratic Party of Hawaii article.  THAT is not an official page of the Party and is being used to discredit the Hawai‘i Democratic Party.  I am the Social Media and Communications Chair for the Party and I am asking you to pull down this article that is misrepresenting our Party.<br><br>I do have lawyers, I don't want to use them.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Teri_Heede' title='User:Teri Heede'>Teri Heede</a> (<a href='./User_talk:Teri_Heede' title='User talk:Teri Heede'>talk</a> • <a href='./Special:Contributions/Teri_Heede' title='Special:Contributions/Teri Heede'>contribs</a>) 17:07, 17 October 2014 (UTC)"
                            }, {
                                "sha": "c96c71d7cf0c8167da16daf5bc85a0a04a705fd07a47427f4f6b95fcd73233f7",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi, Wikipedia is a collaborative effort. No one owns any article. Furthermore, no one claims Wikipedia pages to be the official of any organization. Articles are never <i>authorized</i>, nor do they have to be. This is an encyclopedia. Do you think Encyclopedia Britannica contacted the US Government before publishing their article on them? If there is content you disagree with, you should simply challenge it in a constructive way, instead of writing 'THIS PAGE HAS NOT BEEN AUTHORIZED', which is considered disruptive. Use the <a href='./Talk:Democratic_Party_of_Hawaii' title='Talk:Democratic Party of Hawaii'>talk page</a> to discuss your concerns. Instead of trying to control the article, work with others to improve it. Together we can make it more accurate and unbiased, which is our goal as an encyclopedia. If others are writing information intentionally to discredit your political party, we can address those concerns. First let us know exactly what is wrong on the talk page, then we'll go from there. Sound good? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:21, 17 October 2014 (UTC)"
                            }, {
                                "sha": "8ab9da0329519b298668a352510cad843b6311e3665174a029ccc739f91f87d0",
                                "depth": 2,
                                "html": "Already blocked for <a href='./Wikipedia:NLT' title='Wikipedia:NLT'>legal threats</a> so unlikely you'll get a reply. <a href='./User:Amortias' title='User:Amortias'>Amortias</a> (<a href='./User_talk:Amortias' title='User talk:Amortias'>T</a>)(<a href='./Special:Contributions/Amortias' title='Special:Contributions/Amortias'>C</a>) 17:52, 17 October 2014 (UTC)"
                            }, {
                                "sha": "f2f6f7b93948562541723aada8d25a2423caa2e6a2ff2e5d1373883c947c43e6",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I noticed. I have a hunch they or other associates will be back. Hopefully at least one of them understands what Wikipedia is. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:56, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Teri Heede",
                            "shas": {
                                "html": "0e9ef18ae5a1c006f3e9e662ee11318bf83c2cc407628e69cf59858b562de618",
                                "indicator": "11ef3863e6dd6b7f9991dd51e689f3d5e75d103bc4979ea176c264d814a323fa"
                            }
                        }, {
                            "id": 144,
                            "replies": [{
                                "sha": "8d35a03ba6d6777027fef31b460be8f6cb6b0396111543fb61907a672092f1d4",
                                "depth": 0,
                                "html": "Please stop changing my edit to the St. Catharines mayor race. This is the correct information  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/130.113.109.253' title='Special:Contributions/130.113.109.253'>130.113.109.253</a> (<a href='./User_talk:130.113.109.253' title='User talk:130.113.109.253'>talk</a>) 18:07, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 130.113.109.253",
                            "shas": {
                                "html": "93075dd7deddd6fadd0ea5bd32840fbebca22befd5ecdd84e48f33073b616998",
                                "indicator": "c6e5572c551bb61533a80938ec96593cc705351f64dc7dc62e02b827d692c231"
                            }
                        }, {
                            "id": 145,
                            "replies": [{
                                "sha": "65be9d215c1fb124231210c926fc6d1520c3ad8744c9f9b3d2e3bd0e90de440b",
                                "depth": 0,
                                "html": "Do you know who is 'responsible' for this tool? For the last few days it hasn't been responding at all. It's always been erratic, but a few days is a bit longer than usual for it to stop working. Thanks.--<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 15:33, October 17, 2014 (UTC)"
                            }, {
                                "sha": "6d4147da9a6812613964686d8825ad4cd1209947c2b443b57850dad84d2dd9de",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Yeah I've noticed the same... the <a href='https://tools.wmflabs.org/xtools/pcount'>Xtools counter</a> as far as I know is maintained by <a href='./User:X!' title='User:X!'>X!</a>, <a href='./User:Cyberpower678' title='User:Cyberpower678'>Cyberpower678</a> and others. It doesn't seem to load at all. The Supercount tool is maintaing by Cyberpower678 (who is on wikibreak). It appears to work but you have to be very patient. Given both tools are running painfully slow, I'm going to guess there's an issue with wmflabs, although things look normal over on the <a href='https://tools.wmflabs.org/?status'>status page</a>. There's also <a href='http://en.wikichecker.com/'>Wikichecker</a> which doesn't run on wmflabs. It is <i>always</i> painfully slow, but currently is loading faster than the other two options.<br><br> If you just need edit count, as I'm sure you know with <a href='./Wikipedia:Tools/Navigation_popups' title='Wikipedia:Tools/Navigation popups'>navigation popups</a> you can just hover over their username to see the count. I've also installed <a href='./User:Anomie/useridentifier.js' title='User:Anomie/useridentifier.js'>useridentifier.js</a> which will show user edit count / user groups at the top of any given page in a userspace. Pretty nifty. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:07, October 17, 2014 (UTC)"
                            }, {
                                "sha": "8229c618627e14600e517f71d4a94bcd0eadac0a60a3768668e0280799571432",
                                "depth": 2,
                                "html": "I don't get into gadgets and scripts much, so I know very little. Didn't know about navigation popups, but just changed my preferences to use it. I'll try your script later. Thanks for the detailed explanation. It was very helpful.--<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 17:29, October 17, 2014 (UTC)"
                            }, {
                                "sha": "78e95f3ad50dc7fea6a42a14b0159e14020621d32dfbb54882c8ef11f576aa9e",
                                "depth": 3,
                                "html": "No problem! Since we're on the subject, other tools I cannot live without that you might be interested in: <a href='./User:Remember_the_dot/Syntax_highlighter' title='User:Remember the dot/Syntax highlighter'>Syntax highlighter</a> (bye bye bracket bot notices), <a href='./User:Anomie/ajaxpreview.js' title='User:Anomie/ajaxpreview.js'>ajaxpreview.js</a> (for some reason not part of MediaWiki core), <a href='./User:MusikAnimal/MoreMenu' title='User:MusikAnimal/MoreMenu'>MoreMenu.js</a> (written by yours truly). More where that came from, of course, but those are my favourites :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:41, October 17, 2014 (UTC)"
                            }, {
                                "sha": "297f3fa9f7cdc33355f00ce9b415c063a9ad23ce9a425929ed6100201ba73300",
                                "depth": 4,
                                "html": "I couldn't find any doc on the ajaxpreview script. What does it do? I already have something (don't ask me what because I don't remember) that adds things to the drop-downs on the menu bar. Will your script conflict with that? Unrelated curiosity question. You live in NYC and many of your userboxes are associated with New Yorker things, but your spelling is British-style. ? --<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 18:10, October 17, 2014 (UTC)"
                            }, {
                                "sha": "b0aac0355a605968bbf5e13cbf7859d7869e7114a34ad01828c31158384684ab",
                                "depth": 5,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> AjaxPreview is the same as normal preview except it is a million times faster and it <i>shows all the references</i> – a major fault of the native preview. Crucial when working on very large articles. E.g. go to a large article like <a href='./New_York_City' title='New York City'>New York City</a>, edit a particular section and compare previews (AjaxPreview has it's own button). You'll be sold!<br><br>     I assume you must have <a href='./User:Haza-w/Drop-down_menus' title='User:Haza-w/Drop-down menus'>drop-down menus</a>. If you don't use the Vector skin you should stick with that. <a href='./User:MusikAnimal/MoreMenu' title='User:MusikAnimal/MoreMenu'>MoreMenu.js</a> is a rewrite of that script to conform to vector styling, and I added a bunch more links and updated others. I wish <a href='./User:Haza-w' title='User:Haza-w'>Haza-w</a>, the original author, were still around for me to thank them for their work.<br><br>     I do live in New York City, and you are correct that I often use British English! I don't have a good explanation for that. I just prefer 24-hour time and having the u's in my colour's, favour's etc. Meanwhile I still use z's in realize, etc. Outside the mainspace it varies, but inside I of course try to conform to whatever is appropriate for that article. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 19:53, 17 October 2014 (UTC)"
                            }, {
                                "sha": "b7f4512a14317552be86ca20f7d4341dbd0c3f69fb054d1ddfe38bd508964d94",
                                "depth": 6,
                                "html": "I will probably try AjaxPreview and your script at some point. I implement new things slowly. It's the old computer professional in me. One change at a time. Your spelling preferences are amusing. Again, many thanks, and it's been a pleasure talking to you. That, of course, has its downside as I may be back with questions. I can be a bit of a pest. At least that's what my friends tell me.--<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 20:38, 17 October 2014 (UTC)"
                            }, {
                                "sha": "ea413a960d4823746346ad18234cb19c2aac94b17b047312d94c655b9afedcdb",
                                "depth": 7,
                                "html": "Haha! Pleasure is all mine :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:41, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Edit counts",
                            "shas": {
                                "html": "2c326281f9773f742564f1bdb5f9a44d04e345779be45534d1efdf033adeaca9",
                                "indicator": "7edc036289abcf8e53800d9b1210117b2d2e6a5bd8d55ddc2d9295cb29228a73"
                            }
                        }, {
                            "id": 146,
                            "replies": [{
                                "sha": "93b3a83805340cf5824949490732e47b70bf9abc697fff5390f7fc31bf774f82",
                                "depth": 0,
                                "html": "Testing a new topic <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:20, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "New test topic",
                            "shas": {
                                "html": "b53aae0692f79de2bfaa6b5cdb8e6136220e1eba5238ff72725784b3d93bfb1a",
                                "indicator": "2d819cdd03f9184162822ac1ee4afb41aea084247c142d9d71baca9b5718f9b0"
                            }
                        }, {
                            "id": 147,
                            "replies": [{
                                "sha": "6944404168767972bb00fc397e2a12b48909b3beecb2f680223cdeede17e43c3",
                                "depth": 0,
                                "html": "Hello, MusikAnimal! Last week you semi-protected the page <a href='./John_Ducas_(investor)' title='John Ducas (investor)'>John Ducas (investor)</a> for repeated vandalism including BLP issues. I would like to ask you to reapply the semi-protection and to extend it for a month. I am asking for two reasons. First, as soon as the protection expired, one of the original ISP vandals posted hoax information to the page again. (Claiming a 16 year old guy is married and has six kids - pretty much the definition of a hoax.) Second, I think I may be the only person watching this article, and I am going to be on wikibreak until mid November. Alternatively, if you don't feel protection is justified, could I ask you to watch the article? Thanks! --<a href='./User:MelanieN' title='User:MelanieN'>MelanieN</a> (<a href='./User_talk:MelanieN' title='User talk:MelanieN'>talk</a>) 21:48, 17 October 2014 (UTC)"
                            }, {
                                "sha": "7e0735411243621f46c0c1403688249124b585445fde4713e199671bced7c2d1",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Semi-protected for another two weeks. We don't ever protect preemptively, but I have added it to my watchlist :) Thanks for helping keep this article clean. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:55, 17 October 2014 (UTC)"
                            }, {
                                "sha": "a8e744984abb7cd4b23565f9e6dd5a3e93bd4f8109a5c0fd190b4a76d0d642c1",
                                "depth": 2,
                                "html": "Thank you! --<a href='./User:MelanieN' title='User:MelanieN'>MelanieN</a> (<a href='./User_talk:MelanieN' title='User talk:MelanieN'>talk</a>) 22:01, 17 October 2014 (UTC)"
                            }, {
                                "sha": "6a049c4b9b167c1c72430dd5099c0c6b3f724a231611be393dde15a50437b590",
                                "depth": 3,
                                "html": "Test Reply <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 20:54, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Page protection",
                            "shas": {
                                "html": "6a7eacc64826441b170accd1defcb6ed91c8332c3282315c3a37beaac8e4bcb9",
                                "indicator": "14717ba2f0f7cc44adb42fd307e85caf86b9148afc833611ee1e5ecb59abf581"
                            }
                        }, {
                            "id": 148,
                            "replies": [{
                                "sha": "3bf1f78b96a4b2a51c7f8539e43796e6c6207c9ee7f6362aabb9c98c5cb9b414",
                                "depth": 0,
                                "html": "thanks for rubbing it in<br>i think you should go and delete it on the french Etienne Chouard's page too as this was a direct translation from that uncontructive french page<br>cqfd!  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Jmvernay' title='User:Jmvernay'>Jmvernay</a> (<a href='./User_talk:Jmvernay' title='User talk:Jmvernay'>talk</a> • <a href='./Special:Contributions/Jmvernay' title='Special:Contributions/Jmvernay'>contribs</a>) 22:06, 17 October 2014 (UTC)"
                            }, {
                                "sha": "546d7ff779db300181e0b64e6a9c89ca559ffb2eedff914cf36fd0cfc5dbe023",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi. I don't know anything about Etienne Chouard but <a href='https://en.wikipedia.org/w/index.php?title=%C3%89tienne_Chouard&amp;diff=628522325&amp;oldid=628183841'>this</a> type of commentary never belongs in the article mainspace, so I removed it. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:25, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from mr not contructive",
                            "shas": {
                                "html": "4177345f913a2df6774917ea290006d89eaf2944e9aaab85574e84b6d8da60f7",
                                "indicator": "99e34bbba67406df19bfdc77c7a2e2b6c4713b9f7d2a8ad28258f8dc90a8bc46"
                            }
                        }, {
                            "id": 149,
                            "replies": [{
                                "sha": "1f072e21ddfa0f6a6890dc7a36447d7b99536fcebb24cced4431ee5486fa6379",
                                "depth": 0,
                                "html": "You have been randomly selected to receive an invitation to <a href='./Talk:Epilepsy#rfc_DAA668A' title='Talk:Epilepsy'>participate in the request for comment</a> on <b>Talk:Epilepsy</b>. Should you wish to respond, your contribution to this discussion will be appreciated.  For tips, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>WP:Requests for comment#Suggestions for responding</a>. If you wish to change the frequency or topics of these notices, or do not wish to receive them any longer, please adjust your entries at <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>WP:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:04, 18 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Epilepsy#rfc_DAA668A' title='Talk:Epilepsy'>Talk:Epilepsy</a>",
                            "shas": {
                                "html": "376236dea731a6eee26a0e6135a077367639551750f25b97dad2e6f1ccefae1d",
                                "indicator": "4b6ef98a5530504dc2182f8e71d09e7e4b4758109b28befb0c359bd441653c4b"
                            }
                        }, {
                            "id": 150,
                            "replies": [{
                                "sha": "441b905ce3e7ecd96df7d0d4cb3556a3bcf6048626f6cc5a7923e83f347308f6",
                                "depth": 0,
                                "html": "Achraf Baznani is a Moroccan artist, filmmaker and photographer. The page about this moroccan artist was deleted. He is the author of the first surrealist photobook in Morocco, called 'Through my lens' <a href='./International_Standard_Book_Number' title='International Standard Book Number'>ISBN</a> <a href='./Special:BookSources/9781502793386' title='Special:BookSources/9781502793386'>9781502793386</a>. Can you please recreate the page? Thank you. <a href='./User:Bestforone' title='User:Bestforone'>Bestforone</a> (<a href='./User_talk:Bestforone' title='User talk:Bestforone'>talk</a>) 18:00, 19 October 2014 (UTC)"
                            }, {
                                "sha": "cdf945b926f99aeb132670a75999bf193c7ee0f64363eeb16c2905ffa8ae179c",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> The most recent version of the article was deleted for unambiguous advertising. This was the third time the article was deleted, so the page was <a href='./Wikipedia:SALT' title='Wikipedia:SALT'>salted</a> to prevent recreation. First make sure the subject meets the <a href='./Wikipedia:NPERSON' title='Wikipedia:NPERSON'>notability guideline</a>, and if you feel they do, you can create a draft article that once approved can be published to the mainspace. That is my recommendation. The <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> can expedite this process. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:19, 19 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Achraf Baznani",
                            "shas": {
                                "html": "e3b9faf125556adf5189d9229bbfabc357312a6b40e4bbc4b1f47bb79bb9f406",
                                "indicator": "cdf00556cadbc8daf0080784dfdfb89b1bbcbd4053f08b7ae673402ddec8dd27"
                            }
                        }, {
                            "id": 151,
                            "replies": [{
                                "sha": "a3b7a510228c1cc2c73777369aa30c2a63bedd01c53fbd25d78b6eaa1949f3a1",
                                "depth": 0,
                                "html": "I think you should undelete <a href='./Ben_Perry' title='Ben Perry'>Ben Perry</a>, its a good and important topic and subject and should be undeleted as soon as possible <a href='./Special:Contributions/216.255.168.124' title='Special:Contributions/216.255.168.124'>216.255.168.124</a> (<a href='./User_talk:216.255.168.124' title='User talk:216.255.168.124'>talk</a>) 18:25, 19 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Ben Perry",
                            "shas": {
                                "html": "df2f5aa9f6a77943a5252eef8c43ee8bc4a89caf0861ad37cd2c0cc3f0432941",
                                "indicator": "79a73bd8655ff58e989b850fc78d4a065ffd41d2bcdc40133665f779d8568804"
                            }
                        }, {
                            "id": 152,
                            "replies": [{
                                "sha": "3d534a6cb24b99c2b4af3c24aefe8b85e01a6e4c13f463d31a2cdeb0432a9c9f",
                                "depth": 0,
                                "html": "Testing <a href='./User:TSevener_(WMF)' title='User:TSevener (WMF)'>TSevener (WMF)</a> (<a href='./User_talk:TSevener_(WMF)' title='User talk:TSevener (WMF)'>talk</a>) 21:25, 20 June 2019 (UTC)"
                            }],
                            "depth": 2,
                            "html": "New test topic 2",
                            "shas": {
                                "html": "c5c1544477765c50f9e878d8bc33bd26dfd2278e10d88055bc998ab01b7c26b2",
                                "indicator": "ebe5a8a4b4caebb250848de16d57a3ec23cd7c5f623a96543a37d620d4a006ad"
                            }
                        }, {
                            "id": 153,
                            "replies": [{
                                "sha": "48daf358c8da28d255f3533d3e1d30eeaf03c5d18de632687a27190b6089a7aa",
                                "depth": 0,
                                "html": "I found this site that could really help women with preeclampsia but it doesn't seem to be search optimized, therefore I wanted to use Wiki to bring more awareness. How should I change the content to make it acceptable to post on Wiki? Thanks!  prefix:User — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Rkapa96' title='User:Rkapa96'>Rkapa96</a> (<a href='./User_talk:Rkapa96' title='User talk:Rkapa96'>talk</a> • <a href='./Special:Contributions/Rkapa96' title='Special:Contributions/Rkapa96'>contribs</a>)<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> The fact that you want to use Wikipedia as a means to promote the subject is fundamentally wrong. That is simply <a href='./Wikipedia:NOTADVERTISING' title='Wikipedia:NOTADVERTISING'>not what Wikipedia is for</a>, and writing an article with that sort of mindset is not going to produce something acceptable for the mainspace. There are other platforms more suitable for what you are trying to do. A Google <a href='https://www.google.com/search?q=SEO&amp;oq=SEO&amp;aqs=chrome..69i57j0j69i60l3j0.2486j0j7&amp;sourceid=chrome&amp;es_sm=91&amp;ie=UTF-8'>search</a> of 'SEO' may yield some helpful resources. If you want to proceed with writing an article here, you first off need to ensure the subject meets the <a href='./Wikipedia:N' title='Wikipedia:N'>notability guideline</a>. I honestly am not familiar enough to critique medical-related subjects. Maybe ask at <a href='./Wikipedia_talk:MED' title='Wikipedia talk:MED'>Wikiproject Medicine</a> if they think your subject is suitable for Wikipedia. If does turn out to be notable enough for inclusion, you must be careful to not make the article sound promotional, and avoid exerting a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a>. If it is clear you are here only to promote this clinical trial you will surely run into more trouble. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:25, 20 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "PRESERVE-1 clinical trial",
                            "shas": {
                                "html": "c48db845e7aa33bb5949e2dca6a75e7bf078e34443e80a4d54e6f06032ffeb71",
                                "indicator": "11087bad1b7e8015b4ad848cd8c013700ce4ef3b7292fcfca7c1ce58fc7113ee"
                            }
                        }, {
                            "id": 154,
                            "replies": [{
                                "sha": "236c0e11c355a9569365854c2c100dc56b249f3049d0d70ae453a0b2a0a2dca0",
                                "depth": 0,
                                "html": "Hello I am Don J. Snyder. why are you deleting the text I wrote for the page today and why have you deleted former text that I composed for wikipedia? <a href='./User:Donjsnyder' title='User:Donjsnyder'>Donjsnyder</a> (<a href='./User_talk:Donjsnyder' title='User talk:Donjsnyder'>talk</a>) 20:17, 20 October 2014 (UTC)"
                            }, {
                                "sha": "1c06984078ec8ecebcb9c53e38dcda342fc8fca1fe3b3371cf9d36e0c3512c6d",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi, it's really confusing what you're trying to do. For starters, this is entirely too much information for a biography. It reads like a series of diary entries. Secondly, there are absolutely no sources whatsoever. <a href='./Wikipedia:V' title='Wikipedia:V'>Verifiability</a> is crucial, especially with <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>biographies of living persons</a>. You are also writing in the <a href='./First-person_narrative' title='First-person narrative'>first-person</a>, with a strong <a href='./Wikipedia:PROMO' title='Wikipedia:PROMO'>promotional tone</a>. Frankly all this combined made it seem like vandalism, which is why it keeps getting reverted. Finally, you are <a href='./Wikipedia:AUTOBIO' title='Wikipedia:AUTOBIO'>strongly discouraged</a> to contribute to articles about yourself, as it may be difficult to not exert a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a>. My advice is to refrain from adding the content, take a step back and try to first grasp what <a href='./Wikipedia:5' title='Wikipedia:5'>Wikipedia is all about</a>. Wikipedia is not a platform to write about and promote yourself. However, if there is something <i>wrong</i> with the article, such as incorrect information, we do want to fix that. Let us know on the <a href='./Talk:Don_J._Snyder' title='Talk:Don J. Snyder'>talk page</a> and we will help get things straight. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:40, 20 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Donjsnyder",
                            "shas": {
                                "html": "58c650b2ec31fa677a5acc26d34434fa4c857e657e7de9706a98f1b85174a755",
                                "indicator": "d6e0b6dc27febd4c2826fd00c1777448b331231a881e3ca0e0c43a0b8623690f"
                            }
                        }, {
                            "id": 155,
                            "replies": [{
                                "sha": "5ee8962397f830187eaee6fd27764a1e2f9f6a550b32c13fb717c71ee1a203c3",
                                "depth": 0,
                                "html": "Hello Dear, I deleted Page of Ahlam Hamed Younis , because there is mistake in her title name . Her name should be ( Ahlam Hamed Younes ) . I made new page with her name . And i would like to keep her name in one page in Wikipedia only not two . Greeting . Mahmoud Atef <a href='./User:Mahemodkballet' title='User:Mahemodkballet'>Mahmoud Atef</a> (<a href='./User_talk:Mahemodkballet' title='User talk:Mahemodkballet'>talk</a>) 16:24, 21 October 2014 (UTC)"
                            }, {
                                "sha": "28d3f72ba122a5b9e5d6082d847664ba5b9498a45bbed54d1837ecfda747667f",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> No problem, but instead of deleting one page and creating a new one, we can just <a href='./Wikipedia:MOVE' title='Wikipedia:MOVE'>move</a> the page to the correct name. Is <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a> the correct name? Why does that page differ so greatly from <a href='./Ahlam_Hamed_Younis' title='Ahlam Hamed Younis'>Ahlam Hamed Younis</a>? We cannot delete the original page and start a new page about the same subject. Let's keep the old page, rename it, and you can change what you need to. Okay? Please verify <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a> is the right page so that I can delete it and move <a href='./Ahlam_Hamed_Younis' title='Ahlam Hamed Younis'>Ahlam Hamed Younis</a> there. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:30, 21 October 2014 (UTC)"
                            }, {
                                "sha": "75671226987210d013fce69ce62a0679b3c7e9305b4b433a0ff06872da4c3070",
                                "depth": 2,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> OK I've taken upon myself to do what I believe is what you wanted. <a href='./Ahlam_Hamed_Younis' title='Ahlam Hamed Younis'>Ahlam Hamed Younis</a> now redirects to <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a>, with all the page history intact. You may continue your work at <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a>. Just remember in the future if you need to rename a page, you should <a href='./Help:Move' title='Help:Move'>move</a> the old page to the new name, rather than create a new page altogether. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:37, 21 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Mahemodkballet",
                            "shas": {
                                "html": "cfc70744285a83a9ab2d3bc3011e7ca7b66df1a5b8ae78550095e131612d4c83",
                                "indicator": "a7a4bb982ea1d36333fe394480cff5273b2a40fc1689ee9bfe7f04a2c248c813"
                            }
                        }, {
                            "id": 156,
                            "replies": [{
                                "sha": "b3bd34ac5c58c57356ab8cd91c39578af2896ab7289a06d866745007523f1432",
                                "depth": 0,
                                "html": "Hello. You have messages at <a href='./User_talk:David_Levy' title='User talk:David Levy'>David Levy</a>'s talk page.<br><br>—<a href='./User:David_Levy' title='User:David Levy'>David Levy</a> 22:15, 21 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Talkback",
                            "shas": {
                                "html": "b2144e5d4f9f447e8ce099882dca3063db1f3abf87a6d7efc110c784782961de",
                                "indicator": "ba135d77816f8ec87e14cc7bc93aba29fa15605d739b6852cc18950bba8241ca"
                            }
                        }, {
                            "id": 157,
                            "replies": [{
                                "sha": "a09fd8c4e44a34d54771807cfb3500fb10135d2687e6b8065850af61195ef37e",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-22' title='Wikipedia:Wikipedia Signpost/2014-10-22'>Wikipedia:Wikipedia Signpost/2014-10-22</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 08:22, 24 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 22 October 2014",
                            "shas": {
                                "html": "bdfb5169c7f5cc1fd1b3260fba136149da4befbc0e383d3e0038db4b6255a917",
                                "indicator": "71f059beda17d2113ed3a1ed5ca7f00de0b98b868f6a1be602c27159979dc519"
                            }
                        }, {
                            "id": 158,
                            "replies": [{
                                "sha": "aa6eed90d51ae13820a15f4e2894a13fe764b05177a9bbaf235a800294a1654b",
                                "depth": 0,
                                "html": "Just letting you know that I have replied over at <a href='./Talk:Animal_(Miike_Snow_song)/GA1' title='Talk:Animal (Miike Snow song)/GA1'>Talk:Animal (Miike Snow song)/GA1</a> :) <a href='./User:PancakeMistake' title='User:PancakeMistake'>Pancake</a> (<a href='./User_talk:PancakeMistake' title='User talk:PancakeMistake'>talk</a>) 14:24, 25 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "'Animal' GAN",
                            "shas": {
                                "html": "7aa282a8c823096c1a487dcc187b0e72b0a3220346e94544e86b479e7c1339eb",
                                "indicator": "b2199eb0cd27d661fbb82443af8b20184e0f5e557f225a769317724b60a7d536"
                            }
                        }, {
                            "id": 159,
                            "replies": [{
                                "sha": "db9357bdbdb88a351695a623111010a85735566b0374a6f8811570a074c6dd44",
                                "depth": 0,
                                "html": "<a href='https://en.wikipedia.org/w/index.php?title=User_talk:MusikAnimal&amp;diff=631096850&amp;oldid=631061958'>[index.php?title=User_talk:MusikAnimal&amp;diff=631096850&amp;oldid=631061958]</a> and <a href='https://en.wikipedia.org/w/index.php?title=Wikipedia:Administrator_review/MusikAnimal&amp;diff=631096447&amp;oldid=630702559'>[MusikAnimal&amp;diff=631096447&amp;oldid=630702559]</a> <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 20:28, 25 October 2014 (UTC)"
                            }, {
                                "sha": "1dfde32bb7839a2123612be3de9584fb3854f6cb023b1a3e2f3193e171d7f549",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Thank you for taking care of that! I've been offline for the past several days so obviously had no idea. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:59, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FYI",
                            "shas": {
                                "html": "4326caea3f41a70647042c0f374a7c5827ed5d1618f0baf762bfc418018d7ded",
                                "indicator": "69ac95df93dd3d9657974896a5fe00ccc8b4cd585fee9e4a80331a37b01d72d0"
                            }
                        }, {
                            "id": 160,
                            "replies": [{
                                "sha": "59cd95e812480b3fe4c4af1144edb7ad7b355cf2780c768b278dfd64d3c9089f",
                                "depth": 0,
                                "html": "<a href='./File:Wikipedia_Halloween's_Day.png'>[File:Wikipedia_Halloween's_Day.png]</a><a href='./File:Halloween_pumpkin_night_puzzle.jpg'>[File:Halloween_pumpkin_night_puzzle.jpg]</a><br><br><i><b>Happy <a href='./Halloween' title='Halloween'>Halloween</a>!</b></i><br><br><b>Hello MusikAnimal:Thanks for all of your contributions to improve Wikipedia, and have a happy and enjoyable <a href='./Halloween' title='Halloween'>Halloween</a>!</b><br><br>–  <a href='./User:Northamerica1000' title='User:Northamerica1000'>NorthAmerica</a><sup><a href='./User_talk:Northamerica1000' title='User talk:Northamerica1000'>1000</a></sup> 05:58, 27 October 2014 (UTC)"
                            }, {
                                "sha": "19326f13026e658afee1cbf0758b9737a2400d7d9dff7189f39e6c5c14662342",
                                "depth": 0,
                                "html": "Send Halloween cheer by adding {{subst:<a href='./Template:Happy_Halloween' title='Template:Happy Halloween'>Happy Halloween</a>}} to user talk pages with a friendly message.<br><br> Thanks! To you as well — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:04, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Halloween cheer!",
                            "shas": {
                                "html": "6c76a96d9634ac84abf23b177dc107548abc7f3ec534b1cf865a7dfc30a15381",
                                "indicator": "3f3d305c9ce604bdf6f9fad9d085fbee5394396c7adf71578b3b2f5e6740f80a"
                            }
                        }, {
                            "id": 161,
                            "replies": [{
                                "sha": "b9f27bbed3b539818d3fbc909989dd9e6d60ce6dcaf12c4f398dc545b81074fe",
                                "depth": 0,
                                "html": "What don't you understand? Stop removing my edits and sources.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/129.127.32.123' title='Special:Contributions/129.127.32.123'>129.127.32.123</a> (<a href='./User_talk:129.127.32.123' title='User talk:129.127.32.123'>talk</a>) 16:01, 27 October 2014 (UTC)"
                            }, {
                                "sha": "35a5ece487105ebc87693d3efaf77e527095391b93d436811949fee501201941",
                                "depth": 1,
                                "html": "Your addition is entirely subject to opinion. We don't call anything 'the worst' or 'the best'. More at <a href='./Wikipedia:POV' title='Wikipedia:POV'>WP:POV</a>. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:10, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Edits",
                            "shas": {
                                "html": "5cc675879a7737634a7c283211d73da69f18b788d3e8221f89ca627b5b8a756c",
                                "indicator": "44d39de04dcdbfc5d09b707a07cf4b50fd8f063d7fca4fc6597e025b113a4222"
                            }
                        }, {
                            "id": 162,
                            "replies": [{
                                "sha": "8aabb64b1f6d985febabbe821ac381a2a34dbbaa36fc448be41d106e521d8568",
                                "depth": 0,
                                "html": "FYI: You self reverted after reverting him and cluebot reverted his next edit to yours leaving his original removal live in the article. <a href='https://en.wikipedia.org/w/index.php?title=South_Asia&amp;diff=631351897&amp;oldid=631351858'>[index.php?title=South_Asia&amp;diff=631351897&amp;oldid=631351858]</a> --<a href='./User:TopGun' title='User:TopGun'><b>lTopGunl</b></a> (<a href='./User_talk:TopGun' title='User talk:TopGun'><b>talk</b></a>) 18:28, 27 October 2014 (UTC)"
                            }, {
                                "sha": "2516a065195ea259a31b13fb1576859fe8fefc3cdc00f9c36534bfc698ca25f3",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Mistake on my part. I accidentally reverted with Huggle, and after realizing it wasn't vandalism, undid my revert. I did not notice that it was a test edit that broke the citation, however. Thanks for cleaning that up! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:33, 27 October 2014 (UTC)"
                            }, {
                                "sha": "eed5a398eb18a74282c7d0234c1ae95424918a16a84447a496ff64815d32291f",
                                "depth": 2,
                                "html": "No problem. Just thought you'd like to know. Cheers. --<a href='./User:TopGun' title='User:TopGun'><b>lTopGunl</b></a> (<a href='./User_talk:TopGun' title='User talk:TopGun'><b>talk</b></a>) 18:35, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Test edits or vandalism..",
                            "shas": {
                                "html": "1741d12be0788c89aece379c464b269f80f5da8324c74f13a900750a6a939ea9",
                                "indicator": "fd139d35f92853cbfd8c6b2af135232a57bedbce7cc7d7fb1748246501283855"
                            }
                        }, {
                            "id": 163,
                            "replies": [{
                                "sha": "37cd2c4017dc01ac90ccc28d5c2f5c8e8566b594143e6938939434503a3e00c4",
                                "depth": 0,
                                "html": "Hi there. Can you check the multiple covers uploaded at <a href='./File:GunsnRosesAppetiteforDestructionalbumcover.jpg' title='File:GunsnRosesAppetiteforDestructionalbumcover.jpg'>File:GunsnRosesAppetiteforDestructionalbumcover.jpg</a>? I've nominated it for deletion because non-free work that is not used in any article should be deleted, but I haven't received feedback so far.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 21:15, 27 October 2014 (UTC)"
                            }, {
                                "sha": "794e05978a4b7ccb50decf8cbd9c3858642c613197d2daec2cb059773b11bab2",
                                "depth": 1,
                                "html": "<b>Done</b>. I don't think you can use specific versions of files but they are indeed non-free and not used, so I've deleted them. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:36, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Administrator's attention",
                            "shas": {
                                "html": "4cccd526d1ce505d5c3f1f00385b815a990af01b4301c9ca751eecd63dc2a140",
                                "indicator": "87773b8ccc9cfb12fcae98e9a4fb809bf6778e8857e4d1defa14dd67b10ad15a"
                            }
                        }, {
                            "id": 164,
                            "replies": [{
                                "sha": "38c2dba55a6899e1daa63100a2818f2066b4fcbcb23d6ec40d80759e1bebe31c",
                                "depth": 0,
                                "html": "<a href='./File:Wikipedia_Halloween's_Day.png'>[File:Wikipedia_Halloween's_Day.png]</a><a href='./File:Halloween_pumpkin_night_puzzle.jpg'>[File:Halloween_pumpkin_night_puzzle.jpg]</a><br><br><i><b>Happy <a href='./Halloween' title='Halloween'>Halloween</a>!</b></i><br><br><b>Hello MusikAnimal:Thanks for all of your contributions to improve Wikipedia, and have a happy and enjoyable <a href='./Halloween' title='Halloween'>Halloween</a>!</b><br><br>–  –<a href='./User:Davey2010' title='User:Davey2010'><b>Davey</b><b>2010</b></a> • <a href='./User_talk:Davey2010' title='User talk:Davey2010'><i>(talk)</i></a> 22:19, 27 October 2014 (UTC)"
                            }, {
                                "sha": "872e29485e285552e4a5953fd5a2ee6b06d65ec3ee517bf4ad760c1845b5c193",
                                "depth": 0,
                                "html": "Send Halloween cheer by adding {{subst:<a href='./Template:Happy_Halloween' title='Template:Happy Halloween'>Happy Halloween</a>}} to user talk pages with a friendly message."
                            }],
                            "depth": 2,
                            "html": "Halloween cheer!",
                            "shas": {
                                "html": "2cf7ec6bdf2fe9bbb8f90f1b87ea9146a74660f342098657f89c45bdfce46be3",
                                "indicator": "1b4b0bea1441b040bb46a8d4a4d4df69503518255b23c1d8c9c1ce6c39dc36b5"
                            }
                        }, {
                            "id": 165,
                            "replies": [{
                                "sha": "ca373ca4e9658ec51ccf10a0a2485efa2927918b80a47ba8e81f87026497ef51",
                                "depth": 0,
                                "html": "Hi, is there any chance of blocking <a href='./User:Kmvhmv' title='User:Kmvhmv'>User:Kmvhmv</a> indefinitely? This is a long-term, vandalism-only account (every edit had been reverted thus far). Examples include changing dates and adding false assembly locations for cars/trucks/buses, etc. Has been given multiple warnings. My request at <a href='https://en.wikipedia.org/w/index.php?title=Wikipedia:Administrator_intervention_against_vandalism&amp;diff=prev&amp;oldid=629927779'>WP:RVAN</a> on October 17 did not get processed. Regards, <a href='./User:OSX' title='User:OSX'>OSX</a> (<a href='./User_talk:OSX' title='User talk:OSX'>talk</a> • <a href='./Special:Contributions/OSX' title='Special:Contributions/OSX'>contributions</a>) 23:34, 27 October 2014 (UTC)"
                            }, {
                                "sha": "867e7ac7127316a7bd974079434b992fbf04a11009e9ebc6e9d10586ec03b562",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I looked into this quite thoroughly and can agree most edits are unconstructive. I would normally consider this stale, as they haven't edited since 18 October, but given the long-term disruption I think a block is warranted. I've gone with a month. Sometimes a temporary block is all that is needed to get their attention, and turn them around in to making useful contributions. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:31, 28 October 2014 (UTC)"
                            }, {
                                "sha": "be09b6de4f1edac065a1b701a07aee5e3e37c034bd40795f0844b42bd3a716a6",
                                "depth": 2,
                                "html": "Ok thanks for that. Hopefully they get the message. Cheers, <a href='./User:OSX' title='User:OSX'>OSX</a> (<a href='./User_talk:OSX' title='User talk:OSX'>talk</a> • <a href='./Special:Contributions/OSX' title='Special:Contributions/OSX'>contributions</a>) 00:39, 28 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Kmvhmv",
                            "shas": {
                                "html": "f9742ba135554b24a64bb3dabc593bca96792b2eb3c85b33081ad4a2e9db1009",
                                "indicator": "b2d5e79303b48c3f161234fce49a99f1a4f6fb698ff73288a3b2a905470be6ac"
                            }
                        }, {
                            "id": 166,
                            "replies": [{
                                "sha": "102bbbf3263df3671e8b52d27339f2e775f1c668809904c596c35afc7bec9f96",
                                "depth": 0,
                                "html": "The contents of the use page is like he/she is promoting his/her website. Can you look into this? Thanks. <a href='./User:Physicsmathftw' title='User:Physicsmathftw'>Physicsmathftw</a> (<a href='./User_talk:Physicsmathftw' title='User talk:Physicsmathftw'>talk</a>) 05:42, 28 October 2014 (UTC)"
                            }, {
                                "sha": "c63cf645a96f2aa594746196a8c88e2edc50c619b144025e1770e86f29970a52",
                                "depth": 1,
                                "html": "Looks likes, the page is already deleted and the user is blocked. <a href='./User:Physicsmathftw' title='User:Physicsmathftw'>Physicsmathftw</a> (<a href='./User_talk:Physicsmathftw' title='User talk:Physicsmathftw'>talk</a>) 05:45, 28 October 2014 (UTC)"
                            }, {
                                "sha": "5079caa0a2339d1a4f4ada5cdfdea1cde8abf6e2656639bc965cbf8976626da2",
                                "depth": 2,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> That would be me. All-too-common username/promotion-only account. Thanks for the report — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 05:47, 28 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "About <a href='./User_talk:Iicacademy' title='User talk:Iicacademy'>User talk:Iicacademy</a>",
                            "shas": {
                                "html": "8f66575427d8f6f2e8a85525cad231cad5de857c63273fc5ace31d94e5d6b87a",
                                "indicator": "15b2fc67624689897a717f536aa1d2d3fd8ddefe8e031415e52a37830a1e7cf5"
                            }
                        }, {
                            "id": 167,
                            "replies": [{
                                "sha": "86957a2ec17d498a54bdbba4148d8548cdb82abd096b51bfbb1f793799e3cd0f",
                                "depth": 0,
                                "html": "Testing <a href='./Special:Contributions/47.184.10.84' title='Special:Contributions/47.184.10.84'>47.184.10.84</a> 21:44, 20 June 2019 (UTC)"
                            }, {
                                "sha": "32bd75f1cba609d7b3fb17971114b980f0efeb5c0755cf7e04e18d63a2d530d1",
                                "depth": 1,
                                "html": "<a href='./User_talk:TSevener_(WMF)#cite_ref-1'>↑ </a>"
                            }],
                            "depth": 2,
                            "html": "Test new topic at end",
                            "shas": {
                                "html": "f728c067d62f96ecf42dbd9d0a7b2d5e53eb5b385b48ca645e8a5afc96ad5884",
                                "indicator": "baea4f743c51701ea683841071ea616a2502359008389beb14edcc077dbdf6a3"
                            }
                        }]
                    }
                """.data(using: .utf8)!
            case .largeForPerformance:
                return """
                    {
                        "topics": [{
                            "id": 1,
                            "replies": [{
                                "sha": "aa130f2b9dc70999aa878de1d29b6f796fff6c230da30cc0eb5123371dba9aae",
                                "depth": 0,
                                "html": "Yo! Sorry to distract from your GA review, but if you have a minute, could you check out <a href='./Talk:All_I_Need_(Radiohead_song)' title='Talk:All I Need (Radiohead song)'>Talk:All_I_Need_(Radiohead_song)</a>? I'd like your opinion on whether the article should be deleted; I'm unsure how to proceed. <a href='./User:Popcornduff' title='User:Popcornduff'>Popcornduff</a> (<a href='./User_talk:Popcornduff' title='User talk:Popcornduff'>talk</a>) 01:55, 26 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./All_I_Need_(Radiohead_song)' title='All I Need (Radiohead song)'>All I Need (Radiohead song)</a>",
                            "shas": {
                                "html": "c1c8f267942acb90f0bc6e0e2fe5e027e3bc5da4e9324a3e4e0c161716062570",
                                "indicator": "29e9059eabef175f48d44b81648a19c7c4e81d8f8c8b77378b3dbaa405480edc"
                            }
                        }, {
                            "id": 2,
                            "replies": [{
                                "sha": "2f0bc8f08733249a18a25eaadccc2adf0de23d593947aef1a4050df2353cfeed",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-07-23' title='Wikipedia:Wikipedia Signpost/2014-07-23'>Wikipedia:Wikipedia Signpost/2014-07-23</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 02:31, 26 July 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 23 July 2014",
                            "shas": {
                                "html": "294381daa77181c8fcb03978e48e095b84439b213f46e454027b4e4a5d11736f",
                                "indicator": "398963b1556dc3133a8c1635cb8afdc4df7bc40b47ff0cff9b77b347f05a27ea"
                            }
                        }, {
                            "id": 3,
                            "replies": [{
                                "sha": "9e0aed581f710280cb1338b05bfb319c6520fd8c138e9f01781147081935c72a",
                                "depth": 0,
                                "html": "I just requested speedy deletion, and 5 seconds later, you did it! Wow! Thanks! <a href='./User:Jwoodward48wiki' title='User:Jwoodward48wiki'>Jwood</a> <a href='./User_talk:Jwoodward48wiki' title='User talk:Jwoodward48wiki'>(leave me a message)</a> [<a href='https://en.wikipedia.org/wiki/Special:Contributions/Jwoodward48wiki%7CSee'>what I'm up to</a>] 20:30, 28 July 2014 (UTC)"
                            }, {
                                "sha": "bf24d8fc6bc46b5e82eaf41a59863b34c520c80297510742cb9afe79cb77beaf",
                                "depth": 1,
                                "html": "Thank you for patrolling! :) — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 20:32, 28 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "That was fast!",
                            "shas": {
                                "html": "5f012bd5177aa25ab1b8151e84c224e964cb60b7b617426570320589f142646b",
                                "indicator": "72ee60d105889a1cf47ec43089656a5ef1be18b04811bf1bdb9e13bb1580b1da"
                            }
                        }, {
                            "id": 4,
                            "replies": [{
                                "sha": "a3b980c9dcad2bab1301a54aeefb923bb28921ec401f05a376f13febcdc42917",
                                "depth": 0,
                                "html": "Hello MusikAnimal, you recently deleted <a href='./Steve_Schuster' title='Steve Schuster'>Steve Schuster</a> article per CSD G7. It was already nominated for deletion discussion when you deleted. I think you might haven't checked the history of the article or maybe forgot to close the discussion. This message is to let you know that I have closed the <a href='./Wikipedia:Articles_for_deletion/Steve_Schuster' title='Wikipedia:Articles for deletion/Steve Schuster'>discussion</a> (<a href='./Wikipedia:NACD' title='Wikipedia:NACD'>WP:NACD</a>). Be careful when deleting pages. Always check older revisions before deleting it. Thanks,  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 12:26, 29 July 2014 (UTC)"
                            }, {
                                "sha": "c5991e4b66c42418d4661ae84c98b5681082152da7ce3a89f6a589a61cf8de1e",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Thanks for closing it. I of course checked the history to ensure G7 applied (someone else had requested speedy per A3), and simply overlooked the AfD. My mistake. For future reference, by linking to me in the closing statement, I am notified and thus this message is not necessary. — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 14:47, 29 July 2014 (UTC)"
                            }, {
                                "sha": "f68f2ff3a6fe0f95db63204ffe0d7e08314cd9b2ca6887b2ab635db973690194",
                                "depth": 2,
                                "html": "No problem, it happens.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 19:15, 29 July 2014 (UTC)"
                            }, {
                                "sha": "ed5f723d4995b63d59b2b15da1901230be6ffb04790c68a932f79189d3086d4a",
                                "depth": 0,
                                "html": "P.S. You are not the <a href='./Wikipedia:Articles_for_deletion/Poetry_trend_in_new_india' title='Wikipedia:Articles for deletion/Poetry trend in new india'>only one</a>. <a href='https://www.wikidata.org/wiki/Property:P:)#top' title='d:Property:P:)'>Template:Label (P:))</a>  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 20:49, 29 July 2014 (UTC)"
                            }, {
                                "sha": "1696e40d8a57c098d4269e186dfe078ea2f2f1824ceda2ea1171379118f0f3d7",
                                "depth": 1,
                                "html": "I don't think it's fair to accuse the admin of not checking the page history. I don't think any admin would just blindly delete pages like that. I know you mean no harm but a more friendly message might be appropriate. If you just want to notify them pinging in the closing statement at AfD will suffice. — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 21:16, 29 July 2014 (UTC)"
                            }, {
                                "sha": "69f3ee0b9146fa0453500b416411ce6013fabda579804ae1b723affc967c1cbf",
                                "depth": 2,
                                "html": "No my friend, I assumed good faith when posting that message. I'm really sorry if you're hurt. As I said, people often make mistakes. Don't take it personally. I will try to make it much friendlier. Actually I have seen many such examples when admin forgot and I (or someone else) have to do it. I'm not accusing my friend, and I'm sorry again if you're hurt. I noticed a many times that even after pinging someone 3 times, that user haven't responed, later I have to add a talkback and at last he responeded. That is the reason why I leave them messages, so that they don't miss it. Anyway, I'm sorry.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 21:38, 29 July 2014 (UTC)"
                            }, {
                                "sha": "da68f392125b7f3b9f58d85c05c2ac6b5b4b15adb84830e01857af86d811455b",
                                "depth": 3,
                                "html": "No worries, not hurt! I just think it's safe to assume they do check the page history. So a more appropriate message would be 'if you could, please remember to close the AfD if you notice one is active'. That tis all. Didn't mean to make it seem like it's a big deal... it's not :) — <a href='./User:MusikAnimal' title='User:MusikAnimal'><b><i>MusikAnimal</i></b></a> <a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'><sup><b>talk</b></sup></a> 21:46, 29 July 2014 (UTC)"
                            }, {
                                "sha": "164319d9f8c735f3233eaf6fcb8aa85c7b7b1ca369a777f7a7d67cc237b893bf",
                                "depth": 4,
                                "html": "Ok. Btw just noticed your signature. You are using out dated codes. To update, you can use this:<br><br>    '''''[[User:MusikAnimal|&lt;span style='color:black'&gt;MusikAnimal&lt;/span&gt;]]'' &lt;sup&gt;[[User talk:MusikAnimal|&lt;span style='color:green'&gt;talk&lt;/span&gt;]]&lt;/sup&gt;'''<br><br>    it results: <i><b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a></b></i> <b><sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b>. You can use it if you wish. :)   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 09:21, 30 July 2014 (UTC)"
                            }, {
                                "sha": "346680ed8fef5b06b44cce1d17c00f3fde1b5661e79eeae4c535700d53c9027c",
                                "depth": 5,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You are correct, it is not HTML5 compliant. This is coming from a professional web developer... so a bit depressing that I haven't caught on to that yet. I have updated it. Thanks. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:58, 30 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Unclosed AfD",
                            "shas": {
                                "html": "5f1752588f330d96ff89d7cae7a66ccff9a0b5e8beaad7069af9c8e9d71ead93",
                                "indicator": "22e0a5874638ff44269178aff90944b71724c0ee7a0ecb32133ea9ac31e0d540"
                            }
                        }, {
                            "id": 5,
                            "replies": [{
                                "sha": "86f3a6bf81f95be7017db3e17c6a023a140a7f8b7cdd877a46f210c38a43b29d",
                                "depth": 0,
                                "html": "Hi, I see that we've had a minor misunderstanding. I didn't mean to vandalize Wikipedia nor did I make a mistake. It is only my concern that the page of a fraternity in the University of the Philippines was defaced of its good, provable and proven traits and then replaced by the unproven allegations leveled against it.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Stinths' title='User:Stinths'>Stinths</a> (<a href='./User_talk:Stinths' title='User talk:Stinths'>talk</a> • <a href='./Special:Contributions/Stinths' title='Special:Contributions/Stinths'>contribs</a>) 16:03, 30 July 2014 (UTC)"
                            }, {
                                "sha": "1c258dd9d82654261afc271009ba05f6c63e1b44485c56c5d4ff63038acf3723",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Your original changes were reverted because you removed a large portion of sourced material without explaining why. Your changes may not be vandalism, but you are replacing sourced content with unsourced content. Wikipedia aims to be <a href='./Wikipedia:V' title='Wikipedia:V'>verifiable</a>, so it's important to accompany your work with references. Removing sourced content counteracts this effort, and conflicts with our objectives as an encyclopedia. See <a href='./Wikipedia:REFBEGIN' title='Wikipedia:REFBEGIN'>WP:REFBEGIN</a> on how to add references. Let me know if you need help, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:20, 30 July 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Stinths",
                            "shas": {
                                "html": "231a1885da42a4051ea28be214393b9c9e6488a6a14dffa08658935717fbd634",
                                "indicator": "50295692385dd9517c0c800ceda2c9297f718b73c878131be5aad1c47add55a9"
                            }
                        }, {
                            "id": 6,
                            "replies": [{
                                "sha": "8f60a8dd48788663bfee6cb6805a54eabc1a3c60028f55fc4f6099f5876f0e8d",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-07-30' title='Wikipedia:Wikipedia Signpost/2014-07-30'>Wikipedia:Wikipedia Signpost/2014-07-30</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:06, 2 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 30 July 2014",
                            "shas": {
                                "html": "27811b0e81be5337c1e41adfad84095dc1f2861987c14cbb521279a7b4945fde",
                                "indicator": "a451832e754e0915ee1c1c1f0a1b3a22376fd94a3c8f9db55e0a0b8e85a04a15"
                            }
                        }, {
                            "id": 7,
                            "replies": [{
                                "sha": "67bde043d14475e6b6658bf42f9cf37fb4f510d52fc57b1b9006402d38675b01",
                                "depth": 0,
                                "html": "Hi Dear, Thank You <a href='./Template:=)' title='Template:=)'>Template:=)</a> for the <a href='https://en.wikipedia.org/wiki/%22New_Russia_Today%22'>G7: Speedy Deletion</a>. I apologize to You and other Dear fellows (Wikipedia:Article titles). If You are still online, may You kindly take out the time for the Speedy Deletion of this WP Page's Talk Page <a href='https://en.wikipedia.org/wiki/Talk:%22New_Russia_Today%22'>[Talk:%22New_Russia_Today%22]</a>. Sincerely, ← <a href='./User:Abstruce' title='User:Abstruce'><b>Abstruce</b></a> 18:18, 31 July 2014 (UTC)"
                            }, {
                                "sha": "2ff37e6bacba29cbb93b0a5973acd6da18458ae6a217706c693726842671176f",
                                "depth": 1,
                                "html": "<b>Done</b> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:22, 4 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Thank You !!",
                            "shas": {
                                "html": "fd6c5b1b92003ac53da423170e24356f84460a87bcc33e36a69c34966d93b0ab",
                                "indicator": "aee8359b71ebbffa017b9a97a4d3a307dc9db7158f63279dccae3fef321e9643"
                            }
                        }, {
                            "id": 8,
                            "replies": [{
                                "sha": "37c024e9f1e18dbc5041cde3185e3032dec581249db08b576feef3ea9d8cbfd0",
                                "depth": 0,
                                "html": "Can you do me a favor? I've had <a href='./User:Lucas_Thoms/EditCounterOptIn.js' title='User:Lucas Thoms/EditCounterOptIn.js'>User:Lucas Thoms/EditCounterOptIn.js</a> tagged for deletion for a while, but apparently CSD tags don't do anything on js pages (what a surprise). Can you please delete it? Thanks!—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 17:57, 31 July 2014 (UTC)"
                            }, {
                                "sha": "f397c147dba558f5195b0077931e168b898b94052b252ef85b629ca0fc45646f",
                                "depth": 1,
                                "html": "<b>Done</b> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:01, 31 July 2014 (UTC)"
                            }, {
                                "sha": "aa31becc7bcc0d394398ec810fa1e5a16a8cbe49d69303996d5e2a06e92bbc2f",
                                "depth": 2,
                                "html": "While you're at it, can you maybe get <a href='./User:Lucas_Thoms/vada.js' title='User:Lucas Thoms/vada.js'>User:Lucas Thoms/vada.js</a> too? I don't need it anymore either. Thank you!—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 18:02, 31 July 2014 (UTC)"
                            }, {
                                "sha": "4046fa2237c7871c71d31b4120d92b54bf051ed0858c7cfbf7f3b8fd6a57ed9b",
                                "depth": 3,
                                "html": "Anytime — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:04, 31 July 2014 (UTC)"
                            }, {
                                "sha": "05929faeb767dba74251fb60b228ec50c3c7c730aa36e25f5332fe2cf8907ce0",
                                "depth": 4,
                                "html": "Thank you very much for the quick work! —<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 18:05, 31 July 2014 (UTC)"
                            }, {
                                "sha": "d43d8b7d941eb0c99794862dce1f3de207185fb18840eee3ebd3be263ed4fb22",
                                "depth": 5,
                                "html": "<a href='./Template:Tps' title='Template:Tps'>Template:Tps</a> <a href='./User:Cyde/List_of_candidates_for_speedy_deletion' title='User:Cyde/List of candidates for speedy deletion'>This</a> seems to me a backlog. I have tagged 4 articles with CSD and guess what they are still there. About 9 hours ago I tagged them and they are not vanished yet. It looks like more admins needed to clear this backlog. Even, Afd also have some backlog. Now I wonder, it is better to make a request on an admins talkpage rather than using those templates, requesting an admin directly is faster.  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 20:00, 31 July 2014 (UTC)"
                            }, {
                                "sha": "6bcad9a619418524564675e10a1924f228076a8824b830222df34aee93e75652",
                                "depth": 6,
                                "html": "From what I've seen, articles nominated for things like <a href='./Wikipedia:G3' title='Wikipedia:G3'>G3</a>, <a href='./Wikipedia:G10' title='Wikipedia:G10'>G10</a>, and <a href='./Wikipedia:G12' title='Wikipedia:G12'>G12</a> tend to get deleted much faster than, for example <a href='./Wikipedia:A7' title='Wikipedia:A7'>A7</a>, because their deletions are more urgent. Copyright violations and attack pages are legally and morally wrong, whereas (hopefully) no one's going to be offended by the fact that so-and-so's garage band page stands for several hours.—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 20:23, 31 July 2014 (UTC)"
                            }, {
                                "sha": "7a26e579ca2f51710f3080eb5cf313b4f5288028f9b5c6e2804099e6f3b0445c",
                                "depth": 7,
                                "html": "Hmm. I know, but 'speedy' means rapid. But here 9hrs late is not a good speed. This maybe called as 'speedy-slow deletion'. hehehe <a href='https://www.wikidata.org/wiki/Property:P:D#top' title='d:Property:P:D'>Template:Label (P:D)</a>   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 20:56, 31 July 2014 (UTC)"
                            }, {
                                "sha": "cac14c0a8fe5f6a508d25c9e80e695804059271d2d6f0bca1255da590d965402",
                                "depth": 8,
                                "html": "If I'm not mistaken, it's <i>speedy</i> in the sense that any alternative takes <a href='./Wikipedia:PROD' title='Wikipedia:PROD'>seven</a> <a href='./Wikipedia:AFD' title='Wikipedia:AFD'>days</a>, which is about 19 times as long as your 9 hour CSDs take.—<a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas</a><a href='./User_talk:Lucas_Thoms' title='User talk:Lucas Thoms'>Thoms</a> 21:00, 31 July 2014 (UTC)"
                            }, {
                                "sha": "bae86f621cf0060405764b252a0ae57da97545948e0bb9b6cb62c4ef7e43cc9c",
                                "depth": 0,
                                "html": "<a href='./Template:Od' title='Template:Od'>Template:Od</a> <a href='./User:Lucas_Thoms' title='User:Lucas Thoms'>Lucas Thoms</a> is correct, anything with legal concerns should be addressed immediately. At least for vandalism, attack pages and copyright violations, it's fortunately very easy to tell if the page in fact falls under such criteria, whereas <a href='./Wikipedia:ACSD' title='Wikipedia:ACSD'>WP:ACSD</a> articles often require a more thorough assessment. I'm not sure if this practice is documented in the WP-space, but the {{<a href='./Template:Admin_dashboard' title='Template:Admin dashboard'>admin dashboard</a>}} makes it's clear which speedy's are of priority. It's true <a href='./CAT:CSD' title='CAT:CSD'>CAT:CSD</a> can acquire quite a backlog, but I like to think the not-so-immediate requests are taken care of within at least 12 hours. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:51, 4 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "CSD",
                            "shas": {
                                "html": "d1a09ff0ea9e207c0f5a4a7c08b8c55f5b9329c7e73f26250768e28578346db7",
                                "indicator": "5f165365b9bfa390c1f18fbe2609f118a141e15c57685219b74063e8cb4cdd77"
                            }
                        }, {
                            "id": 9,
                            "replies": [{
                                "sha": "502442058b5d9d142498caa996804ffd4f3e9e1bb891bc2c771cebe5cd167d9c",
                                "depth": 0,
                                "html": "Sunday August 17: <a href='./Wikipedia:Meetup/NYC/Wiknic' title='Wikipedia:Meetup/NYC/Wiknic'>NYC Wiki-Salon and Skill Share</a><br><br><a href='./File:Statue-of-liberty_tysto.jpg'>[File:Statue-of-liberty_tysto.jpg]</a><br><br>You are invited to join the the <a href='https://meta.wikimedia.org/wiki/Wikimedia%20New%20York%20City' title='meta:Wikimedia New York City'>Wikimedia NYC</a> community for our upcoming <a href='./Salon_(gathering)' title='Salon (gathering)'>wiki-salon</a> and knowledge-sharing workshop on the <a href='./Upper_West_Side' title='Upper West Side'>Upper West Side</a> of Manhattan.<br><br> Sunday August 17 <b><a href='./Wikipedia:Meetup/NYC' title='Wikipedia:Meetup/NYC'>NYC Wiki-Salon and Skill Share</a> (<a href='./Wikipedia:Meetup/NYC#Sign_up' title='Wikipedia:Meetup/NYC'>RSVP</a>)</b>.<br><br>  <i>2pm–5pm at <a href='http://www.yeoryiastudios.com/location.html'>Yeoryia Studios</a> at Epic Security Building, 2067 Broadway (5th floor).</i><br><br>Afterwards at 5pm, we'll walk to a social wiki-dinner together at a neighborhood restaurant (<a href='./Wikipedia_talk:Meetup/NYC#Sunday_August_17_Wiki-Salon_and_Skill_Share' title='Wikipedia talk:Meetup/NYC'>to be decided</a>).<br><br>We hope to see you there!--<a href='./User:Pharos' title='User:Pharos'>Pharos</a> (<a href='./User_talk:Pharos' title='User talk:Pharos'>talk</a>) 15:57, 4 August 2014 (UTC)"
                            }, {
                                "sha": "a4bafc949e904dea0fb6d075ece3122a72f1abf270f52c6434fdcc95e095280c",
                                "depth": 0,
                                "html": "(You can unsubscribe from future notifications for NYC-area events by removing your name from <a href='./Wikipedia:Meetup/NYC/Invite_list' title='Wikipedia:Meetup/NYC/Invite list'>this list</a>.)"
                            }],
                            "depth": 2,
                            "html": "Sunday August 17: NYC Wiki-Salon and Skill Share",
                            "shas": {
                                "html": "028d55c8b29bffd38b91b7a4a2d3bc00a0a0e25022f4ea31619db85b8362bdf3",
                                "indicator": "1118b3438d8a810ad8c1ccb7f7e1755eda1c42446e8c4d3865074792dc292e71"
                            }
                        }, {
                            "id": 10,
                            "replies": [{
                                "sha": "8e9414b40d2dad88381fb03350b60b1b30bdf45497900c8642953230467a1292",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:La_Roux#rfc_64A80ED' title='Talk:La Roux'>Talk:La Roux</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 5 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:La_Roux#rfc_64A80ED' title='Talk:La Roux'>Talk:La Roux</a>",
                            "shas": {
                                "html": "da2d31bfaa922223f1f3782e80f90e56d302dae72f15af927459abd6dafaef7b",
                                "indicator": "700935f78aeaad6bd048b25ad9f76f20b9e93f0dbfb58b6c2e7d97bd3d1ef6db"
                            }
                        }, {
                            "id": 11,
                            "replies": [{
                                "sha": "980b860f1866ba4e62c9941de6e383271d78184ba59e9ee9f4737319245b99fb",
                                "depth": 0,
                                "html": "Hello MusikAnimal,<br><br>I am having trouble logging on, perhaps because the Navy networks ban certain functions for security reasons, but my IP address should show that I am coming from the U.S. Naval Observatory (this should partially confirm my self-identification in the comment and here).  I wish to discuss the 'good faith table' that I had deleted yesterday and you restored, as well as the statement that the 'on-the-minute' announcement will not happen '1 in 3 times'.   I have just called the AMC voice announcer 12 times, spacing my calls over the 60-second between minutes, and always heard the 'on-the-minute'.  (I did this before the original posting as well, along with checking with the equipment setup specialist, just to be sure.)  As I indicated in my comment yesterday, we changed our system several years ago - specifically to fix this issue and others.   If you don't believe this posting, let me suggest you try telephoning the time announcer a few times. I can give you my telephone number but I sense that is not how things are done.  If you find the time announcer is not as I described it, I'd like to know that - so we can fix it!<br><br>Thank you,<br><br>usnochiefscientist (my wiki account) — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:199.211.133.254' title='User:199.211.133.254'>199.211.133.254</a> (<a href='./User_talk:199.211.133.254' title='User talk:199.211.133.254'>talk</a> • <a href='./Special:Contributions/199.211.133.254' title='Special:Contributions/199.211.133.254'>contribs</a>)<br><br> Hello there! Sorry for the late reply. I was <a href='./Wikipedia:RCP' title='Wikipedia:RCP'>patrolling recent changes</a> when I saw <a href='https://en.wikipedia.org/w/index.php?title=United_States_Naval_Observatory&amp;diff=619150593&amp;oldid=619149642'>this edit</a>, where you capitalized the S in 'Time service', which was a heading. Per <a href='./MOS:SECTION' title='MOS:SECTION'>MOS:SECTION</a>, we only capitalize the first letter of the first word, unless it is a proper noun, which I gather 'time service' is not. That is all I meant to revert, but unfortunately the software I use reverted your previous edits without me knowing. Sorry about that!<br><br> Regarding your issues with logging in... is <a href='./User:Usnochiefscientist' title='User:Usnochiefscientist'>Usnochiefscientist</a> your account? I see that it was registered 29 July 2014, but no edits have been made, and the account is not blocked. What happens when you try to login? Since you are able to edit with your IP, there should be no reason you can't edit with your registered account. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:17, 5 August 2014 (UTC)"
                            }, {
                                "sha": "72686512847b286607b516f27446af88c15d46c8432af077f85d396ea462e1bb",
                                "depth": 1,
                                "html": "Hello MusikAnimal,<br><br>I was able to log in with my account from home, and I hope this is the right way to 'talk'.  From work, efforts to log in would just produce a blank web page.  There are many strange things the Navy does blocking ports and protocols that I don't understand - and that's good because it means maybe the hackers don't understand them either.   Thanks for the concern.   As for capitalizing the 's' in 'Time Service' - in this case it is a compound word (like 'United States').  USNO has a 'Time Service' department.  To my way of thinking, 'Time service' would be a service that gives you the time, like the voice announcer or GPS.  I would capitalize s because it refers to a department, with a department head, etc.<br><br>thanks,<br>usnochiefscientist<br><a href='./User:Usnochiefscientist' title='User:Usnochiefscientist'>Usnochiefscientist</a> (<a href='./User_talk:Usnochiefscientist' title='User talk:Usnochiefscientist'>talk</a>) 01:56, 5 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "US Naval Observatory",
                            "shas": {
                                "html": "673bc7a019250c8e6520cfc6f426e8d8847b56becd569d81ee1bd00e4a3114a3",
                                "indicator": "bea80859a746ee7a58855fba0b57c76ec7f634b933b15562b257eab88195d4e9"
                            }
                        }, {
                            "id": 12,
                            "replies": [{
                                "sha": "ff8d764a4a5db70c79e79fa92209b2526a657c61019936f70ceb19acabb84bde",
                                "depth": 0,
                                "html": "<a href='./File:Barnstar_of_Reversion_Hires.png'>[File:Barnstar_of_Reversion_Hires.png]</a><br><br><b>The Anti-Vandalism Barnstar</b><br><br>I am awarding you this Barnstar for your vigilance in removing vandalism from the pages of Wikipedia, as you did in the article, <a href='./Robert_Craddock' title='Robert Craddock'>Robert Craddock</a>. Keep up the good work! <a href='./User:Ormr2014' title='User:Ormr2014'>Ormr2014</a> (<a href='./User_talk:Ormr2014' title='User talk:Ormr2014'>talk</a>) 22:03, 5 August 2014 (UTC)"
                            }, {
                                "sha": "d09d129db1501178e5348b3c484bae49db3172ad47db1c16ce6103fb6fb3d724",
                                "depth": 1,
                                "html": "Many thanks! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:06, 5 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "A barnstar for you!",
                            "shas": {
                                "html": "a7799f969709803441ba0f9f09ab3f0f7676f6485fa4644c611bef145af3764a",
                                "indicator": "818013988b70e41200231fbdaf5605bfc5327e979f049425ce35b7b478d2225a"
                            }
                        }, {
                            "id": 13,
                            "replies": [{
                                "sha": "4915ec489273635c9a33525b068612fd36b4266590c2258b9c42a6ac1e13487d",
                                "depth": 0,
                                "html": "Hey, can you remove/restore this <a href='./Kedi_(2006_film)' title='Kedi (2006 film)'>article</a> to its older version?? Check the history and you will see someone removed most of the content and replaced it with hoax. I have undid one edit when I was editing from laptop, but now from mobile I can't do that nor Twinkle works on mobile version and I don't have rollback in this account as well. So, I thought if you can do this. Thanks,   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 12:58, 6 August 2014 (UTC)"
                            }, {
                                "sha": "c4d69ecb2a3d2ad899bce41b131badfc5cdcd2f9adee8f11390f2d2840c4e7a9",
                                "depth": 0,
                                "html": "P. S. It is too hard to do this manually from phone because Wikipedia vs Small screen.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 13:02, 6 August 2014 (UTC)"
                            }, {
                                "sha": "6a855445b255ab1668375ca8e17d3b7c773b0fd0f25117c5c930b7e678207916",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> By habit I wrote 'sourced' content in my edit summary, but there's nothing sourced here. In my opinion, it's difficult to justify reverting unsourced changes when nothing was sourced to begin with. I think the reversion is still warranted however as they removed/changed a lot of content without explaining why. Overall, though, this article definitely needs some work. The second infobox is unnecessary, I believe, or can be merged into the first one.<br><br> If you would like rollback on your public account I can grant that for you. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:18, 6 August 2014 (UTC)"
                            }, {
                                "sha": "17429fc7958db7b20dc56e6647b07beeb1bba1398d63a22a5c03e4174383cd33",
                                "depth": 2,
                                "html": "Actually it was a bad faith edit. Hobby band made this changes after his page <a href='./Satish_Naidu' title='Satish Naidu'>Satish Naidu</a>  was speedy deleted (I've nominated) as A7, G11. Hobby band included fake informations about Satish Naidu in this article when his article got deleted. Anyway, in this condition, I think this film article doesn't pass <a href='./Wikipedia:NFILM' title='Wikipedia:NFILM'>WP:NFILM</a>. I will take it for Afd if I can't find <a href='./Wikipedia:RS' title='Wikipedia:RS'>WP:RS</a> <a href='./Wikipedia:Third_party' title='Wikipedia:Third party'>WP:Third party</a> sources in the next few days.<br><br>  You can add that flag. Nowadays most of my edits are by this account only. Thanks,  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 14:57, 6 August 2014 (UTC)"
                            }, {
                                "sha": "a07221cfe763957ae9f1f20ca86f3a8f1b54f5704fbddc93cd1f0da861ec935a",
                                "depth": 3,
                                "html": "Thank you.   <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 15:31, 6 August 2014 (UTC)"
                            }, {
                                "sha": "f007993282775d43074e5e9895a13f04c9100c053c2a0a5b4d60feb15f107166",
                                "depth": 4,
                                "html": "No problem! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:33, 6 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Kedi (2006 film)",
                            "shas": {
                                "html": "abda6f81cc71bf6ff4d919ed717df8399a9602ba1f06af98c8ef6140d048e23a",
                                "indicator": "e698d30cd6ea064694f86b3e14c6928a6b345cfab741ed8ae3b3bdfd56ba5e36"
                            }
                        }, {
                            "id": 14,
                            "replies": [{
                                "sha": "82ed435806d356c163e68020c8523c6453d2fa897825d785f18395623827f0ff",
                                "depth": 0,
                                "html": "REPLACE THIS TEXT WITH YOUR MESSAGE <a href='./User:Lord_Gramont' title='User:Lord Gramont'>Lord Gramont</a> (<a href='./User_talk:Lord_Gramont' title='User talk:Lord Gramont'>talk</a>) 18:42, 7 August 2014 (UTC)<br>Thank you<br>Sir Merrick Cockell has been the subject of considerable press comment in the UK concerning his high level of expenses and allowances.<br>He has been the subject of substantial media criticism over his expenses in New York and Boston and the high level of allowances.<br>However, if you don't feel it relevant to question an elected councillor's record in this respect there is little I can do.<br>In the UK there is strong negative feeling about elected council members ripping off the system.Best wishes<br>Lord Gramont<br>7th August 2014"
                            }],
                            "depth": 2,
                            "html": "Hello from Lord Gramont",
                            "shas": {
                                "html": "3ca957a7744d39fe3cde2795b47729312006109c0fbf78883fb18f52f3cdc381",
                                "indicator": "861463ad54b3eca95b5a45b5dac8e02a9f348ea85305a19999979f8ad79afb8a"
                            }
                        }, {
                            "id": 15,
                            "replies": [{
                                "sha": "5ba9c81522c3d171020c713a864b5d55cdedf619bd0895005c0bf4e7058c6a73",
                                "depth": 0,
                                "html": "Hi. I'd just like to let you know that the section I removed from the page '<a href='./Non-English_versions_of_The_Simpsons' title='Non-English versions of The Simpsons'>Non-English versions of The Simpsons</a>' was spam and false information. In Ireland, The Simpsons is always shown in English with no Irish dub or subtitles. They don't show the German dub either. The episodes are always shown unaltered and none of them are skipped. The source linked is an article about an <i>Arabic</i> version of The Simpsons, not an Irish one, Proof that it's vandalism. I have never even heard of an Irish article until I saw the article. There's no need for one because everyone in Ireland speaks English and would therefor get the jokes. All this is coming from a person living in Ireland who's a fan of the show. The show is actually quite popular here despite what the page says. Please revert my edit. If you don't, I will. --<a href='./Special:Contributions/109.79.55.74' title='Special:Contributions/109.79.55.74'>109.79.55.74</a> (<a href='./User_talk:109.79.55.74' title='User talk:109.79.55.74'>talk</a>) 20:57, 7 August 2014 (UTC)"
                            }, {
                                "sha": "872c169359ee85469fbcafc9583068a0e4bd8a69f54cf07f64128fd6f2bd08d6",
                                "depth": 1,
                                "html": "Indeed, this appears to be some strange hoax, and <a href='https://en.wikipedia.org/w/index.php?title=Non-English_versions_of_The_Simpsons&amp;diff=568667999&amp;oldid=568341102'>not the first time</a> it has happened. Some of the quotes are in the linked source, but with the Middle Eastern networks replaced with (presumably) Irish ones. Very peculiar... at any rate, I've removed it. Thank you for noticing this and taking action. However I ask that next time you please use an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> so that others are aware of your intentions, and we don't think you are just blanking an entire section of the article without reason :) Thanks again! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:22, 7 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Simpsons vandalism",
                            "shas": {
                                "html": "b3d47082f90ab4137be69594a02e64ddee39fca26ccb3f66e95ac2c823473f86",
                                "indicator": "d2a3003772efa37f84e73fff880a1d346a5b95a978bec2afd0cbc8c70aa03e4b"
                            }
                        }, {
                            "id": 16,
                            "replies": [{
                                "sha": "6b4201fc5cd5f7d5208664dad835dfaf1813b732dfad18c8264c5b339dbeeeac",
                                "depth": 0,
                                "html": "Hi there. I think user <a href='./Lollheysn' title='Lollheysn'>Lollheysn</a> is vandalising the wikipedia article for Bhagavan Sri Ramana Maharshi. Twice this user has now edited his name, which was once undone by yourself and previously by me. The two edits of vandalism were :<br><br>Bhagavan Sri Ramana Maharshi PLOPS<br><br>and<br><br>Bhagavan Sri SHITEE Ramana Maharshi (the phonetics of this being pretty obvious)<br><br>I noted that you contribute a lot with regards to wikipedia vandalism and just thought I would let you know that it wasn't the first time this user had edited this page incorrectly.<br><br>Best, <a href='./User:Bodhadeepika' title='User:Bodhadeepika'>Bodhadeepika</a> (<a href='./User_talk:Bodhadeepika' title='User talk:Bodhadeepika'>talk</a>) 23:19, 7 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Bhagavan Sri Ramana Maharshi",
                            "shas": {
                                "html": "089d94e108e7fa17755e6130e01274f1c668c79516d7132f5c79b700e499cef8",
                                "indicator": "51e78293c7d56e04a5c1dfb419ced05bff93395ab4742989409b18297ee5d4b3"
                            }
                        }, {
                            "id": 17,
                            "replies": [{
                                "sha": "9d109f7cbd231850917332726ab5c8e8b01d655d762181f5b36c8d70c76362aa",
                                "depth": 0,
                                "html": "<a href='./File:VisualEditor-logo.svg'>[File:VisualEditor-logo.svg]</a><br><a href='./File:VisualEditor_-_Link_editing_inline_box.png'>[File:VisualEditor_-_Link_editing_inline_box.png]</a>Dialog boxes in VisualEditor have been re-designed to use action words instead of icons.  This has increased the number of <a href='https://www.mediawiki.org/wiki/VisualEditor/TranslationCentral#Translate_the_VisualEditor_interface' title='mw:VisualEditor/TranslationCentral'>items that need to be translated</a>.<br><a href='https://www.mediawiki.org/wiki/VisualEditor/User%20guide' title='mw:VisualEditor/User guide'>The user guide</a> is also being updated.<br><br><i>The <a href='https://www.mediawiki.org/wiki/VisualEditor' title='mw:VisualEditor'>VisualEditor</a> team is currently working mostly to fix bugs, improve performance, reduce technical debt, and other infrastructure needs. You can find <a href='https://www.mediawiki.org/wiki/VisualEditor/status' title='mw:VisualEditor/status'>on Mediawiki.org</a> weekly updates detailing recent work.</i><br><br>The biggest visible change since the last newsletter was to the dialog boxes.  <b>The design for each dialog box and window was simplified.</b>  The most commonly needed buttons are now at the top.  Based on user feedback, the buttons are now labeled with simple words (like 'Cancel' or 'Done') instead of potentially confusing icons (like '&lt;' or 'X').  Many of the buttons to edit links, images, and other items now also show the linked page, image name, or other useful information when you click on them.<ul><li><b>Hidden HTML comments</b> (notes visible to editors, but not to readers) can now be read, edited, inserted, and removed.  A small icon (a white exclamation mark on a dot) marks the location of each comments.  You can click on the icon to see the comment.</li><li>You can now <b>drag and drop text</b> and templates as well as images.  A new placement line makes it much easier to see where you are dropping the item.  Images can no longer be dropped into the middle of paragraphs.</li><li><b>All references and footnotes (</b><b>&lt;ref&gt;</b><b> tags) are now made through the '⧼visualeditor-toolbar-cite-label⧽' menu</b>, including the '⧼visualeditor-dialogbutton-reference-tooltip⧽' (manual formatting) footnotes and the ability to re-use an existing citation, both of which were previously accessible only through the 'Insert' menu.  The '⧼visualeditor-dialogbutton-referencelist-tooltip⧽' is still added via the 'Insert' menu.</li><li>When you add an image or other media file, you are now prompted to add an <b>image caption</b> immediately. You can also replace an image whilst keeping the original caption and other settings.</li><li>All tablet users visiting the <b>mobile web</b> version of Wikipedias will be able to opt-in to a version of VisualEditor from 14 August.  You can test the new tool by choosing the beta version of the mobile view in the Settings menu.</li><li>The <b>link tool</b> has a new 'Open' button that will open a linked page in another tab so you can make sure a link is the right one.</li><li>The <b>'Cancel' button</b> in the toolbar has been removed based on user testing.  To cancel any edit, you can leave the page by clicking the Read tab, the back button in your browser, or closing the browser window without saving your changes.</li></ul>"
                            }],
                            "depth": 2,
                            "html": "VisualEditor newsletter—July and August 2014",
                            "shas": {
                                "html": "8d820e41381cf736e7c4a8787c1409d5b0872b76762a0ee8bf41776cd2fbe1d1",
                                "indicator": "6f2cfbdbaff4aaa23ebf4f60752da022fe139d919cad7c4b810f356f6f987c64"
                            }
                        }, {
                            "id": 18,
                            "replies": [{
                                "sha": "1c3db1588f04111d3c79c33ddefb097647fc83233d3d382b246d4652da6c7968",
                                "depth": 0,
                                "html": "The team posts details about planned work on the <a href='https://www.mediawiki.org/wiki/VisualEditor/Roadmap' title='mw:VisualEditor/Roadmap'>VisualEditor roadmap</a>.  The VisualEditor team <a href='https://www.mediawiki.org/wiki/Cite-from-id' title='mw:Cite-from-id'>plans to add <b>auto-fill features</b></a><b> for citations</b> soon.  Your <a href='https://www.mediawiki.org/wiki/VisualEditor/Design/Reference%20Dialog' title='mw:VisualEditor/Design/Reference Dialog'>ideas about making referencing quick and easy</a> are still wanted.  Support for <b>upright image sizes</b> is being developed.  The designers are also working on support for <b>adding rows and columns to tables</b>.  Work to support <b>Internet Explorer</b> is ongoing."
                            }],
                            "depth": 3,
                            "html": "Looking ahead",
                            "shas": {
                                "html": "babb24dc9baf280105ad63205987c22696022490a846a34e917f6cf692dacf85",
                                "indicator": "c8a8167ef97ef884a4ba0b73acd02cce5c5a066d3e7aea57cf228fddfda9883d"
                            }
                        }, {
                            "id": 19,
                            "replies": [{
                                "sha": "d32cfecef4ab91baccb64fbf0305d6aa9ed970e853a09791ffa56889ef3ec8a5",
                                "depth": 0,
                                "html": "The Editing team will be making two presentations this weekend at <b>Wikimania</b> in London.  The first is with product manager James Forrester and developer Trevor Parscal on <a href='https://wikimania2014.wikimedia.org/wiki/Submissions/VisualEditor_—_helping_users_edit_more_easily' title='wm2014:Submissions/VisualEditor — helping users edit more easily'>Saturday at 16:30</a>.  The second is with developers Roan Kattouw and Trevor Parscal on <a href='https://wikimania2014.wikimedia.org/wiki/Submissions/VisualEditor_—_engineering_against_the_odds' title='wm2014:Submissions/VisualEditor — engineering against the odds'>Sunday at 12:30</a>.<br><br>Please share your questions, suggestions, or problems by posting a note at the <a href='https://www.mediawiki.org/wiki/VisualEditor/Feedback' title='mw:VisualEditor/Feedback'><b>VisualEditor feedback page</b></a> or by joining the <a href='https://meta.wikimedia.org/wiki/IRC%20office%20hours' title='m:IRC office hours'><b>office hours discussion</b></a> on Thursday, 14 August 2014 at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?hour=9&amp;min=00&amp;sec=0&amp;day=14&amp;month=08&amp;year=2014'>09:00 UTC</a> (daytime for Europe, Middle East and Asia) or on Thursday, 18 September 2014 at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?hour=9&amp;min=00&amp;sec=0&amp;day=14&amp;month=08&amp;year=2014http://www.timeanddate.com/worldclock/fixedtime.html?hour=16&amp;min=00&amp;sec=0&amp;day=18&amp;month=09&amp;year=2014'>16:00 UTC</a> (daytime for the Americas; evening for Europe).<br><br>If you'd like to get this newsletter on your own page (about once a month), please subscribe at <a href='https://en.wikipedia.org/wiki/en:Wikipedia:VisualEditor/Newsletter' title='w:en:Wikipedia:VisualEditor/Newsletter'>w:en:Wikipedia:VisualEditor/Newsletter</a> for English Wikipedia only or at <a href='https://meta.wikimedia.org/wiki/VisualEditor/Newsletter' title='m:VisualEditor/Newsletter'>Meta</a> for any project. Thank you! <a href='./User:Whatamidoing_(WMF)' title='User:Whatamidoing (WMF)'>Whatamidoing (WMF)</a> (<a href='./User_talk:Whatamidoing_(WMF)' title='User talk:Whatamidoing (WMF)'>talk</a>) 18:14, 8 August 2014 (UTC)"
                            }],
                            "depth": 3,
                            "html": "Feedback opportunities",
                            "shas": {
                                "html": "ff62eab99c479f8ac690adde0e60f77ca7392b8de00b9e32a24625cef21c27e3",
                                "indicator": "e7af7399874df78a1447ccd0caa8da081be54128d2a1013394a984c66caa2f66"
                            }
                        }, {
                            "id": 20,
                            "replies": [{
                                "sha": "3c9f97e83bd17a1d286b377542a71efc8e00414fdd51fb4c8f17f2291213ac58",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-06' title='Wikipedia:Wikipedia Signpost/2014-08-06'>Wikipedia:Wikipedia Signpost/2014-08-06</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 12:51, 9 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 06 August 2014",
                            "shas": {
                                "html": "6b88421ac71f00cecb83f5c4beaa5eae2985be1a85500d1dbce9c8923cf40106",
                                "indicator": "cbbdb07b055b9c56f895a5d47dad932dfdddaef17cdf8619d1a9ac09af981fb4"
                            }
                        }, {
                            "id": 21,
                            "replies": [{
                                "sha": "8a16db4a792dfad786144c21fbc02422d2837a9abae23851c75ec060f55be1d5",
                                "depth": 0,
                                "html": "I wrote an article on Dorcas Makgato-Malesu but it was deleted because of promotion. I asked many times what was the promotion on but there wasn't any response. I made some changes but the article was still deleted. Please advise and if I can retrieve the article?  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Anissa_ducere' title='User:Anissa ducere'>Anissa ducere</a> (<a href='./User_talk:Anissa_ducere' title='User talk:Anissa ducere'>talk</a> • <a href='./Special:Contributions/Anissa_ducere' title='Special:Contributions/Anissa ducere'>contribs</a>) 03:54, 12 August 2014 (UTC)"
                            }, {
                                "sha": "0b3c960ec2f415aa93412c2c6a30035a50cb50a98ee9579e7807bdbc143b551f",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Sorry for the delayed response. The current article looks much better, whereas the older one appeared to read more like an advertisement. Details like her general hobbies and interests also didn't really offer any encyclopedic value. Try to be impartial in your authoring, careful to disregard opinions and stay focused on the facts. You can learn more about our policy on neutrality at <a href='./Wikipedia:NPOV' title='Wikipedia:NPOV'>WP:NPOV</a> and our conflict of interest guideline at <a href='./Wikipedia:COI' title='Wikipedia:COI'>WP:COI</a>. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:44, 13 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Anissa ducere",
                            "shas": {
                                "html": "07ce70f47b4a4c5a022c2ac20282ca10685e2a2a547ec7d4e097cd0101354b46",
                                "indicator": "52f0645c1d02402adb0370ad4c3d6b534a5a6fc5522a6c4ad80dfe0b1083cf6d"
                            }
                        }, {
                            "id": 22,
                            "replies": [{
                                "sha": "6e85637257df5ac7cecf3f9262e3f04c8058fc45693b95269e4c6828881f3fd4",
                                "depth": 0,
                                "html": "Musik, you blocked <a href='./User:Bíblia_Questionário_Liga' title='User:Bíblia Questionário Liga'>user:Bíblia Questionário Liga</a> as a promotional user name. There was also promotional material on the user page, but it was added by a different user, <a href='./User:Khalil289' title='User:Khalil289'>User:Khalil289</a>. You may wish to block this account. <a href='./User:Oiyarbepsy' title='User:Oiyarbepsy'>Oiyarbepsy</a> (<a href='./User_talk:Oiyarbepsy' title='User talk:Oiyarbepsy'>talk</a>) 04:56, 13 August 2014 (UTC)"
                            }, {
                                "sha": "ee631ea8cc5eb445c25ce61039d8da34aeaee41cab773d0baaf30dc368cd3f65",
                                "depth": 1,
                                "html": "<a href='./User:Bíblia_Questionário_Liga' title='User:Bíblia Questionário Liga'>User:Bíblia Questionário Liga</a> was blocked per our <a href='./Wikipedia:U' title='Wikipedia:U'>username policy</a>, nothing beyond that. While it's possible the accounts are related, I do not immediately see a reason to block <a href='./User:Khalil289' title='User:Khalil289'>User:Khalil289</a>, especially since they blanked their only contributions. Thanks for the notice — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:49, 13 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Bíblia Questionário Liga",
                            "shas": {
                                "html": "133a535855ecfb2f078ff2a8cc03cfd065708109dc2a1d5f0e68707de9922a37",
                                "indicator": "1c83feaa7b1c85709aae216d987b329f0db62a06c8f7c694caa291a4d0660304"
                            }
                        }, {
                            "id": 23,
                            "replies": [{
                                "sha": "7c5ef5070c3adfdc03b3fe0871a32aa8bc9af34eebefb7a593b85c44d56d5fa6",
                                "depth": 0,
                                "html": "Hi MusikAnimal,<br><br>I got your message re: the Josh Howard page changes that I made.  I am sorry for not explaining why I made the changes, I am still learning the editing process and didn't realize the importance of that.<br><br>I made the changes because 1) there was information about his NBA career listed under his college career section, 2) because his NBA career section began with a grammatically incorrect and poorly worded sentence that contained dead links and 3) because the information on his NBA page was incomplete and not ordered correctly.<br><br>I realize I could go back and make the changes again and learn to correctly log my changes, but if you could help and point me in the direction of how to do that without starting over at the beginning it would be much appreciated!<br><br>Thanks,<br><a href='./User:Liaobuqi' title='User:Liaobuqi'>Liaobuqi</a> (<a href='./User_talk:Liaobuqi' title='User talk:Liaobuqi'>talk</a>) 01:06, 14 August 2014 (UTC)liaobuqi 7:05pm MST, 8/13/2014<br><br>I have gone back and restored my changes and provided my reasons in the edit summary.  Please do contact me if you have any more questions or if I did this in an incorrect manner.<br><br>Thanks,<br><a href='./User:Liaobuqi' title='User:Liaobuqi'>Liaobuqi</a> (<a href='./User_talk:Liaobuqi' title='User talk:Liaobuqi'>talk</a>) 01:43, 14 August 2014 (UTC)liaobuqi, 7:42pm MST, 8/13/2014<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! First off, I'd like to formally <a href='./Wikipedia:WELCOME' title='Wikipedia:WELCOME'>welcome you to Wikipedia</a>. I've left some useful links on your <a href='./User_talk:Liaobuqi' title='User talk:Liaobuqi'>talk page</a> that may assist you in getting more familiar with our environment. Wikipedia is a rewarding collaborative community and I'm happy to see you here.<br><br> Looks like you've already figured out how to supply an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> with your changes. While we prefer to always use an edit summary, it is really only pertinent when making what may appear to be controversial changes. In your case, removal a large of amount of <a href='./Wikipedia:CITE' title='Wikipedia:CITE'>sourced material</a>. That being said, I think your rationale for removal is perfectly valid and thank you for taking the time to explain it.<br><br> You asked how to apply your changes without having to redo them from scratch. Perhaps you are not familiar with the concept of a <a href='./Help:Diff' title='Help:Diff'>diff</a>, which is the record of a change made to a page. Every change made can be restored in part or full. If you check the <a href='https://en.wikipedia.org/w/index.php?title=Josh_Howard&amp;action=history'>page history</a>, you'll see your work. The diff you were referring to is probably <a href='https://en.wikipedia.org/w/index.php?title=Josh_Howard&amp;diff=620814386&amp;oldid=620330290'>this one</a>, by viewing it you could simply copy and paste your work to the current version of the article. There is also the concept of <a href='./Help:Undo' title='Help:Undo'>undoing changes</a>. Here I reverted your work in a <a href='https://en.wikipedia.org/w/index.php?title=Josh_Howard&amp;diff=620814832&amp;oldid=620814451'>single edit</a>, so you could have also undone my edit and supplied the edit summary that way. Careful of not misusing it, the undo function can be quite handy.<br><br> Thanks again for helping improve Wikipedia. If you need any help moving forward don't hesitate to ask. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:34, 14 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Changes re: Josh Howard Page",
                            "shas": {
                                "html": "ed5631f780f15bca6f70800829b53a305f12d0fd3e0be584995b43ea920bf2e7",
                                "indicator": "87a23334585f7d70e566244e3bd0d842dccc860f8e08fa0195fbd91e77e69556"
                            }
                        }, {
                            "id": 24,
                            "replies": [{
                                "sha": "333a2759d221f2d780c9e6f398bbb0006bbc5b600235e14b75d3f87f7cc48d44",
                                "depth": 0,
                                "html": "Hello MusikAnimal-<br>I noticed that you deleted my entry on 'Quentin Stoltzfus' on 8-13-14 due to copyright violation: <a href='http://en.wikipedia.org/wiki/Quentin_Stoltzfus'>http://en.wikipedia.org/wiki/Quentin_Stoltzfus</a><br><br>I do have explicit permission from the writer to republish the article cited on the page. His contact info is matthewfritch@comcast.net if you would like to verify that.<br><br>Please let me know if I should there are further steps I should take to reinstate the entry.<br><br>orignal article here:<br><br><a href='http://www.wonderingsound.com/interview/who-is/who-are-light-heat/'>http://www.wonderingsound.com/interview/who-is/who-are-light-heat/</a>)<br><br>--<a href='./Special:Contributions/2607:F470:A:2:21F:5BFF:FE30:A9B5' title='Special:Contributions/2607:F470:A:2:21F:5BFF:FE30:A9B5'>2607:F470:A:2:21F:5BFF:FE30:A9B5</a> (<a href='./User_talk:2607:F470:A:2:21F:5BFF:FE30:A9B5' title='User talk:2607:F470:A:2:21F:5BFF:FE30:A9B5'>talk</a>) 17:21, 13 August 2014 (UTC)"
                            }, {
                                "sha": "17f9c94973fc77aa37baa0a0537cec613330a7e11063aa13691f455cfbd08bb1",
                                "depth": 1,
                                "html": "Hi! For legal reason we cannot accept copyrighted material without proper licensing in place. There are several ways to do this. See <a href='./Wikipedia:DONATETEXT' title='Wikipedia:DONATETEXT'>WP:DONATETEXT</a> for the full instructions. Let me know if you need any help, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:41, 14 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 2607:F470:A:2:21F:5BFF:FE30:A9B5",
                            "shas": {
                                "html": "72c71ca589096a8c94ee27010aada7cd659e2532619757dfe1713635c13c6305",
                                "indicator": "c46c5a573cee0613d6b67cf39eec28d032d7a809cedea1fa633e846472db4b8a"
                            }
                        }, {
                            "id": 25,
                            "replies": [{
                                "sha": "e8b5ef46c4aad1c5bcd10b22aa6f10f3ae243884217e7359c6a6e1d5afb4b200",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Pectinidae#rfc_66EC1AC' title='Talk:Pectinidae'>Talk:Pectinidae</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 16 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Pectinidae#rfc_66EC1AC' title='Talk:Pectinidae'>Talk:Pectinidae</a>",
                            "shas": {
                                "html": "23c04f10be5a4b1f8dfecde770353d74d48fd6e1a85280f8879e26b9f2c19a49",
                                "indicator": "b55ba28ea6d5a33fc87788d5d2f712ed317dff7a423579c25192e7c525431dd6"
                            }
                        }, {
                            "id": 26,
                            "replies": [{
                                "sha": "c9a1888878f8e0efc4ef769bcbec689a52e02a8a48e043629bd1dafb8833dc22",
                                "depth": 0,
                                "html": "Now socking with <a href='./User:81.170.127.161' title='User:81.170.127.161'>User:81.170.127.161</a>. Pretty obviously <a href='https://en.wikipedia.org/w/index.php?title=Song_2&amp;diff=621463158&amp;oldid=621366040'>here</a> and <a href='https://en.wikipedia.org/w/index.php?title=She%27s_So_High_%28Blur_song%29&amp;diff=621463259&amp;oldid=621337558'>here</a> and <a href='https://en.wikipedia.org/w/index.php?title=Underdog_%28Kasabian_song%29&amp;diff=621464276&amp;oldid=621367152'>here</a> and <a href='https://en.wikipedia.org/w/index.php?title=All_Star_%28song%29&amp;diff=621464465&amp;oldid=621365825'>here</a> and pretty much with every one of sock's edits. I would report to that useless SPI page except that it is a pain in the ass to deal with and WP admins as a group are incredible wusses about range-blocking, so what's the point? --<a href='./User:Hobbes_Goodyear' title='User:Hobbes Goodyear'>Hobbes Goodyear</a> (<a href='./User_talk:Hobbes_Goodyear' title='User talk:Hobbes Goodyear'>talk</a>) 11:05, 16 August 2014 (UTC)"
                            }, {
                                "sha": "fa7904518da6467729a2d24e5f7af3cdad004314ef74f4deee43771db129c537",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Blocked for <a href='./Wikipedia:BE' title='Wikipedia:BE'>block evasion</a>. I believe you may be confusing being a 'wuss' with exerting <i>caution</i>. Range blocks should be an absolute <a href='./Wikipedia:RANGE' title='Wikipedia:RANGE'>last resort</a>. Here as far as I can tell we're only dealing with two IPs, hardly enough disruption to warrant a range block. Only a few pages seem to be at focus, so <a href='./Wikipedia:SEMI' title='Wikipedia:SEMI'>semi-protection</a> may be an option moving forward. Thanks for the notice — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:43, 16 August 2014 (UTC)"
                            }, {
                                "sha": "158614f4e1a4bb4fd28b5c2e8d3b1baf71bd6eda288591c18e419cc43b44007c",
                                "depth": 2,
                                "html": "Agree range block not needed here--yet--but still find that too many admins are wu..., um, excessively cautious on the matter. By the way, sock is back, now using <a href='./User:89.168.17.86' title='User:89.168.17.86'>User:89.168.17.86</a>, e.g., <a href='https://en.wikipedia.org/w/index.php?title=Burn_Burn_%28song%29&amp;diff=621641917&amp;oldid=621465189'>here</a>, <a href='https://en.wikipedia.org/w/index.php?title=She%27s_So_High_%28Blur_song%29&amp;diff=621641781&amp;oldid=621463259'>here</a>, and <a href='https://en.wikipedia.org/w/index.php?title=Song_2&amp;diff=621641702&amp;oldid=621463158'>here</a>. --<a href='./User:Hobbes_Goodyear' title='User:Hobbes Goodyear'>Hobbes Goodyear</a> (<a href='./User_talk:Hobbes_Goodyear' title='User talk:Hobbes Goodyear'>talk</a>) 16:42, 17 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FYI, your block of 81.170.124.90 is being evaded",
                            "shas": {
                                "html": "af8a83bcfd56921fe2ae11ff63adf37c3756b69f2338a74c428433148e3aca87",
                                "indicator": "b3669a6887cac9a995e8b4a52e548c1e305c4fda2a32053eb61569c28df9dd02"
                            }
                        }, {
                            "id": 27,
                            "replies": [{
                                "sha": "d4d9547262c664dd892f0c871b91604559087292d55ab8feb6d478712f8f59be",
                                "depth": 0,
                                "html": "Thanks for the protection log. --<a href='./User:Ssven2' title='User:Ssven2'>Ssven2</a> (<a href='./User_talk:Ssven2' title='User talk:Ssven2'>talk</a>) 02:50, 17 August 2014 (UTC)"
                            }, {
                                "sha": "39e469b2ec96cf4accc3c7118ed68bc7bb67b5cb907ad5d5f9c0582ae253ccca",
                                "depth": 1,
                                "html": "No problem — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:53, 17 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Anjaan",
                            "shas": {
                                "html": "6c7ce26fca11808a8cdecdc4af0a8d37b627f649abbac3bdbab717ba607a0c9b",
                                "indicator": "c94fc829aead8d3b9f5d10baa4eca7b9bc99b3cdcddbfccba5c0482baaddf1cb"
                            }
                        }, {
                            "id": 28,
                            "replies": [{
                                "sha": "85807a1dbbe550e6240c01d406c316379ec161d11ed76cb6a1e896131faba5ae",
                                "depth": 0,
                                "html": "Thank you for the quick response to my AIV report and here to build an encyclopedia. :) <a href='./User:Angelo_Michael' title='User:Angelo Michael'>Angelo Michael</a> (<a href='./User_talk:Angelo_Michael' title='User talk:Angelo Michael'>talk</a>) 23:49, 17 August 2014 (UTC)"
                            }, {
                                "sha": "f6d7e7e1f1232b24c5f81db84a55d09e81194f58ef6e32d56c7d07a9fb57be7d",
                                "depth": 1,
                                "html": "<a href='./File:Symbol_thumbs_up.svg'>[File:Symbol_thumbs_up.svg]</a> You bet — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:53, 17 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Thank you from Angelo Michael",
                            "shas": {
                                "html": "f37eae72eadd09dc98f76d9e9006c745233541cd00807b4b876985f2ce0023b8",
                                "indicator": "e8946b8037dcdfdd54f1a228a5f5da6c07580534ec2ca964379865f5e91aee67"
                            }
                        }, {
                            "id": 29,
                            "replies": [{
                                "sha": "5d2bebfae4b42587e6262ffaf679f4a13aa1116c373d6adb8fbcc388e9229075",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-13' title='Wikipedia:Wikipedia Signpost/2014-08-13'>Wikipedia:Wikipedia Signpost/2014-08-13</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 01:56, 18 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 13 August 2014",
                            "shas": {
                                "html": "7cab51ae20f0d4e445255b041a3e866f99f56c38e9a2452a383e25cfc32f161e",
                                "indicator": "16256cfe4ef73448f952dc507d4651e3d81970bd1093ed5cd2c1a55e9a44c962"
                            }
                        }, {
                            "id": 30,
                            "replies": [{
                                "sha": "d8999c0e502c4a2551e87010cce62b1f02aec7e1e4a45f2b91011aa8acb00907",
                                "depth": 0,
                                "html": "Howdy MusikAnimal, I have a question, let there be two editors, X editor and Y editor. Both of them were editing and improving an article, X editor thought to change its citation style from {{<a href='./Template:Cite' title='Template:Cite'>cite</a>}} to {{<a href='./Template:Sfn' title='Template:Sfn'>Sfn</a>}}. And X editor started changing it being WP:Bold. Suddenly Y editor reverted the change with an edit summary <i>WP:CITEVAR and WP:CONSENSUS</i>. X editor started a thread for consensus at it's talk page. Y editor was having a disagreement with X editor. Although the article looks like a mess and have heavy citation clutter with {{<a href='./Template:Cite' title='Template:Cite'>Cite</a>}} but still Y editor supported using {{<a href='./Template:Cite' title='Template:Cite'>Cite</a>}} with reasons like, Newbies will not understand how {{<a href='./Template:Sfn' title='Template:Sfn'>Sfn</a>}} works. Suddenly another newbie came in and supported editor X. Y editor almost confused and can't handle the situation, he left messages at two admins talk page (Both the admins were good friends of Y editor) and started calling them at the articles talk page for discussion although both the admins have no relation with the article (never have edited that page). Y editor explained one of the admin at the admins talk page that X editor is an inexperienced newbie (X editor helped 1 article to meet GA, 1 article to meet FL and have started 3 DYKs). One of the admin came and took the side of Y editor and accused X editor for WP:BATTLE. I have tried my best to explain the case, now the question arises who is correct, X editor or Y editor?? Didn't Y editor actually canvassed when he called those unrelated admins (admin interven was not required)?? Is it correct to call X editor inexperienced newbie when he have done some good works like DYK, FL, GA?? Did X editor used common sense??  Thanks,  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 12:34, 18 August 2014 (UTC)"
                            }, {
                                "sha": "5857b4d5c1fcd7ea7cc55448bd51a4a158d41146fd1b75834df898d6678a5224",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> This is probably easier to assess if you'd just point me to where the dispute is actually taking place. But without getting involved, I'd say X must not be a 'newbie' and calling them one is not really fair. <a href='./Wikipedia:CITEVAR' title='Wikipedia:CITEVAR'>WP:CITEVAR</a> is good rationale to retain {{<a href='./Template:Cite' title='Template:Cite'>cite</a>}}. If it's a major overhaul to replace one citation style with another, maybe it's not worth it. In the end, which template to use of course yields to consensus. While you might consider it canvassing, I'd like to think the admins (being admins) are not swayed by Y's words, and their input is honest and impartial. Consider opening a <a href='./Wikipedia:RfC' title='Wikipedia:RfC'>request for comment</a> if you feel a more broader consensus is needed. Perhaps the RfC could add clarity to <a href='./Wikipedia:CITEVAR' title='Wikipedia:CITEVAR'>WP:CITEVAR</a> and if need be warrant a change to the guideline. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:10, 18 August 2014 (UTC)"
                            }, {
                                "sha": "fa8a7943b35b8839691435582a0b2ef936037112fc2b402865fcc80cd540741b",
                                "depth": 2,
                                "html": "Actually this was a question I thought of asking you since I was not present during your RfA. Good answers!  <b><a href='./User_talk:Jim_Carter_-_Public' title='User talk:Jim Carter - Public'>Jim Carter (<i>from public cyber</i>)</a></b> 03:13, 19 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Just a question",
                            "shas": {
                                "html": "055625d715e88274b384574bdb90f3e64d187d8ee0e30ea08778adf9ce088ce1",
                                "indicator": "c5fb40fb7593ef4b19e4ecfdd880dad9a7bb97031391b40918459e338dc1d230"
                            }
                        }, {
                            "id": 31,
                            "replies": [{
                                "sha": "8313a8f5aab2d9469354271fb745f19b6f901335c0e3d2c55cd591136f77f4d9",
                                "depth": 0,
                                "html": "Hi MusikAnimal I just wanted to say that I'm sorry about what I changed I just thought to change the last name because she got married and I thought she got married and when women get married they change there last name so I thought to do that.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:GAwes' title='User:GAwes'>GAwes</a> (<a href='./User_talk:GAwes' title='User talk:GAwes'>talk</a> • <a href='./Special:Contributions/GAwes' title='Special:Contributions/GAwes'>contribs</a>) 17:13, 19 August 2014 (UTC)"
                            }, {
                                "sha": "8630c831c34cce415bb464c2b47683e89054fcaeda7225aab13674c2af106965",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> No problem. I apologize for misinterpreting your edit as being unconstructive. The lead explains that her name changed as of the series finale, I assume Zbornak was still retained as the page name as it is the more well known. You can start a discussion on the <a href='./Talk:Dorothy_Zbornak' title='Talk:Dorothy Zbornak'>talk page</a> if you feel the page should be renamed. Moving forward, if you wish to rename pages you will need to do so by <a href='./Wikipedia:MOVE' title='Wikipedia:MOVE'>moving the page</a>. This requires your account be <a href='./Wikipedia:AUTOCONFIRMED' title='Wikipedia:AUTOCONFIRMED'>autoconfirmed</a>. Hope this helps, cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:20, 19 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from GAwes",
                            "shas": {
                                "html": "5fbd5299e34e3d3c6e353a1f3fa17c73b8e3fd6bc6ceaba365bbd9231ea5b0ce",
                                "indicator": "e612aa0c49d794882d4d3b7928caf707a826411ef0d1080b9173db814145bf56"
                            }
                        }, {
                            "id": 32,
                            "replies": [{
                                "sha": "8c931ce90160fe0d844d67ac4884b6e395fe8947fdbc6788cad72a6e3f6b2cef",
                                "depth": 0,
                                "html": "Did you notify the WMF? I thought about blocking but didn't, but I did click on the block button and saw the instructions to notify. It's at <a href='./Wikipedia:SIP' title='Wikipedia:SIP'>WP:SIP</a>. I don't know what happens in practice. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 20:34, 19 August 2014 (UTC)"
                            }, {
                                "sha": "b581ea11b35605c92b16169def2e750cd94f9d31525a4a7428ffffaf06d53ae9",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I did not, nor did I know it was sensitive! Where did you see the notice? I admittedly did not think about it given the extensive block log. 138.* is also not listed at the top-right of <a href='./Special:Block' title='Special:Block'>Special:Block</a> as sensitive. I'll get on IRC and ask somebody about it. That IP range has caused massive amounts of damage, at least to <a href='./Kevin_Kelly_(politician)' title='Kevin Kelly (politician)'>Kevin Kelly (politician)</a>, where I just finally revdel'd all the BLP violations. Thanks for the notice! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:40, 19 August 2014 (UTC)"
                            }, {
                                "sha": "b7a84884270b58e0160254c4df2a3258c2e99d0412c6ba75977d4ca5e7d1dae2",
                                "depth": 2,
                                "html": "138.162.0.0 - 138.162.255.255 (138.162.0.0/16) is listed at <a href='./Wikipedia:SIP' title='Wikipedia:SIP'>WP:SIP</a>. Not everything shows up on the block page, which is a serious pain. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 20:42, 19 August 2014 (UTC)"
                            }, {
                                "sha": "21a0fcb4aeec3531d719bc579bbaf5b77160a018963b17024ab96f633830a82a",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> <a href='https://meta.wikimedia.org/wiki/Communications_committee/Notifications#Blocked_138.162.0.41' title='meta:Communications committee/Notifications'>Notified on meta</a>. I think I'm safe... many of the other IPs in that range are blocked, and apparently the department of defense IPs aren't as critical as other sensitive ranges. Thanks again for bringing this to my attention! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:55, 19 August 2014 (UTC)"
                            }, {
                                "sha": "f24f9fef7c9af690abc3f2a266fbc48bce93c63f3eab3ffa14b33c0d62e04ba5",
                                "depth": 4,
                                "html": "I'm sure you're safe, just wondered if you did it because the IP isn't mentioned on the blocking page, and I thought you might not have noticed - I didn't realise for a long time there was another page with more IP ranges. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 05:24, 20 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Block of <a href='./User:138.162.0.41' title='User:138.162.0.41'>User:138.162.0.41</a>",
                            "shas": {
                                "html": "1c96bd60fcf79f78d69194831095aa628b0daaf752623a3e8d69b19e51f47dd0",
                                "indicator": "1175ab3e5a4fe62d17083d9183a1889ed2515890d2c259a7b98318eab91a8af0"
                            }
                        }, {
                            "id": 33,
                            "replies": [{
                                "sha": "9183bbdbfbc2d97cdb82c64bd306773f2d76d7d6817815fd5b30fe4ebbc6097d",
                                "depth": 0,
                                "html": "Look, will you remove this rubbish which is disallowing scores of good edits and actively harming the project. <a href='./Special:Contributions/90.199.67.62' title='Special:Contributions/90.199.67.62'>90.199.67.62</a> (<a href='./User_talk:90.199.67.62' title='User talk:90.199.67.62'>talk</a>) 20:22, 20 August 2014 (UTC)"
                            }, {
                                "sha": "d72b4c779e67d18af71d70c9d9290bb52839e47cf7224c1c8c58c2e3cd2dde54",
                                "depth": 1,
                                "html": "The filter I wrote does not disallow edits, it warns and then tags them. However, I see no error with the filter, as the edit you are trying to make to <a href='./Yulia_Bessolova' title='Yulia Bessolova'>Yulia Bessolova</a> would incorrectly add your signature into the article. Is there a reason why you are trying to do that? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:26, 20 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your E61 filter blocking good edits",
                            "shas": {
                                "html": "9dc37cf458cf6cad1e5f4f2bb56f73089a59c9e9bb65d4f34523dcd244061a0b",
                                "indicator": "aaf51f766e4f22d502eb23712a203ade04e1cba608175c5125e6ae63843016bf"
                            }
                        }, {
                            "id": 34,
                            "replies": [{
                                "sha": "1b790e77b3f0b6c381077ac392b586711f954f5399b0a902e471b9b0d2614a48",
                                "depth": 0,
                                "html": "Hello, I am the person who has been editing the page on Morisco. Yes, you have made a mistake. I have been reading the supposed sources, and  what the sources say is not reflected in the wikipedia article at all. There is no such thing as Sub-Saharan connection mentioned in the study. The other mention on studies that I deleted I specifically said it was not specified in the text. I was also adding to one of the studies explaining the origin of genetic markers. I am not vandalizing I am actually writing what has the sources say.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/31.205.91.168' title='Special:Contributions/31.205.91.168'>31.205.91.168</a> (<a href='./User_talk:31.205.91.168' title='User talk:31.205.91.168'>talk</a>) 21:23, 20 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 31.205.91.168",
                            "shas": {
                                "html": "e51ec8593fab69f458b397446f478963ab8f979123fd0e767753791dc154bfbb",
                                "indicator": "ce8369bf6c1ae3b614f42e2e8bcff8328f9fda5bc14081de7417a02eff00d556"
                            }
                        }, {
                            "id": 35,
                            "replies": [{
                                "sha": "4e64aa23f8a15a2b5a6e95baaa8a0908cbb2774b6dbab99b882b1a2183760071",
                                "depth": 0,
                                "html": "Hello, I was just wondering why I got Rollback and then had it revoked? I know I don't have many edits and would understand you denying me, but I am just curious so I can improve it in the future. Thanks. <a href='./User:VeNeMousKAT' title='User:VeNeMousKAT'><b>VeNeMous</b><b>KAT</b></a> (<a href='./User_talk:VeNeMousKAT#top' title='User talk:VeNeMousKAT'>talk</a>|<a href='./Special:Contributions/VeNeMousKAT' title='Special:Contributions/VeNeMousKAT'>contribs</a>) 02:30, 21 August 2014 (UTC)"
                            }, {
                                "sha": "7d2face1cd7140aae72ce035836f9a83da7a0452b111acb81c691b81f2c67e24",
                                "depth": 1,
                                "html": "Nevermind just read the reassesment. <a href='./User:VeNeMousKAT' title='User:VeNeMousKAT'><b>VeNeMous</b><b>KAT</b></a> (<a href='./User_talk:VeNeMousKAT#top' title='User talk:VeNeMousKAT'>talk</a>|<a href='./Special:Contributions/VeNeMousKAT' title='Special:Contributions/VeNeMousKAT'>contribs</a>) 02:32, 21 August 2014 (UTC)"
                            }, {
                                "sha": "6fa5b58ac76b4147d757fe0f80ede72f15ec6a79c1d90b1bca13c3a2cdeb72e4",
                                "depth": 2,
                                "html": "Yes sorry about that. I've provided further clarification on your talk page. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 02:38, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Rollback",
                            "shas": {
                                "html": "75f8107e968f6a9e120abffe726b215865922ad28320bf146eea29ca501f073f",
                                "indicator": "2271f18243aa1f8d3a6a9c6ee9527b7f5b68a2ceeb706bfb0381f7a57a91118b"
                            }
                        }, {
                            "id": 36,
                            "replies": [{
                                "sha": "8ca610e8626299c291f898eef68fe2bd72e5688fc906c448d34e766c89e78ecd",
                                "depth": 0,
                                "html": "yes i thin you made a mistake when you removed this external link<br>Following his debut EP ‘The Florida Files,’ B. Smyth is taking time for the ladies with his new Bigg D &amp; Lamb produced track, “Twerkoholic.” The young R&amp;B star on the rise pays homage to the old school with the sexy jam that samples “Love You Down” by Ready For The World.<br><br>The reason being is because Twerkoholic is the name of one of his latest songs that nobody knows about. This song is a very nice slow jam, it's just the title that's misleading. <a href='./User:Jayp316' title='User:Jayp316'>Jayp316</a> (<a href='./User_talk:Jayp316' title='User talk:Jayp316'>talk</a>) 16:52, 20 August 2014 (UTC)"
                            }, {
                                "sha": "b9a8641321de78bf75da9937441dc5289780f5b853cd63fe64db0b7f2a4f4757",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I understand you are trying to add new information about the subject, but your edits sound more like social commentary and lack an encyclopedic tone. crooner B. Smyth is doing it for the ladies in his new video is not appropriate for Wikipedia. We want to simply state the facts and disregard opinions, something like In 2014 Smyth released a new music video entitled 'Twerkaholic'. Also, instead of writing Read more at [this website] you could simply use that website as a reference. I recommend reviewing the <a href='./Wikipedia:5' title='Wikipedia:5'>five pillars of Wikipedia</a>, which explains what we're all about. You can learn how to add references at <a href='./Help:Referencing_for_beginners' title='Help:Referencing for beginners'>Help:Referencing for beginners</a>. Let me know if you need help, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:06, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from jayp316",
                            "shas": {
                                "html": "157c8ad6b38e1fd5122ef30ea8a2aaa107c0365bfbe41f2fc5cdd4df1d99df81",
                                "indicator": "d0b4b0c2c8ae315145e985bc9a56d15f55b6a01b0f05c12ec4165ecf00ded241"
                            }
                        }, {
                            "id": 37,
                            "replies": [{
                                "sha": "cdaaa93b50d6b17acaa637fa8544a16c92deb2fcdf6a1e8b266b43170e2ac585",
                                "depth": 0,
                                "html": "I was just bored to so I did that hoping someone would see it before it was edited back! xDxDxDxD<br>Yeah you probably think I'm stupid.......  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Orangetack' title='User:Orangetack'>Orangetack</a> (<a href='./User_talk:Orangetack' title='User talk:Orangetack'>talk</a> • <a href='./Special:Contributions/Orangetack' title='Special:Contributions/Orangetack'>contribs</a>) 09:57, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Orangetack",
                            "shas": {
                                "html": "38e04d9398e15e3c41bbedeaf8aa543b84ef9a29772b363ea535c23d75a37fbe",
                                "indicator": "e904fdbfeac9fef8e30a614c81cf1610bc436773357ef9b3de891aee8492118a"
                            }
                        }, {
                            "id": 38,
                            "replies": [{
                                "sha": "49ecc4021c69e6dcdbd6bbbd435a5f7715428d801e474b9b654bd68bc2d07aec",
                                "depth": 0,
                                "html": "Hey MusikAnimal. I was wondering whether you could help me create a guestbook page. If you could that would be great. Thanks,<br><a href='./User:MirrorFreak' title='User:MirrorFreak'>Mirror</a> <a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'>Freak</a> 13:16, 21 August 2014 (UTC)"
                            }, {
                                "sha": "a3e308861bd9910a8c35e7f9c8fe34bbf6ea3ef15436b03595d5bb23ea06c4ee",
                                "depth": 1,
                                "html": "Nevermind dude. I made it <a href='./User:MirrorFreak/Guestbook' title='User:MirrorFreak/Guestbook'>here</a>. You should sign it! <a href='./User:MirrorFreak' title='User:MirrorFreak'>Mirror</a> <a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'>Freak</a> 14:27, 21 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from MirrorFreak",
                            "shas": {
                                "html": "384f9a2f3095d652294608f30e5cdf6e2e42b2e675fe8a37bd1cb1075ae92688",
                                "indicator": "d90367656f4a0dae014bf92099741ef1ddb83390a6c7bc7ec0a3dcadb713abbe"
                            }
                        }, {
                            "id": 39,
                            "replies": [{
                                "sha": "e14fd8e841dbf423729db10fa63a674daee01a74973881d01b111edf4a2ff506",
                                "depth": 0,
                                "html": "I spent a lot of time adding language to the Celebrate Recovery section of Wikipedia.  <br>I also spent time formatting the information.  <br>I do understand your concerns about not citing items properly and possibly quoting more than I should have.<br>I have created a complete bibliography to add to the page,and I will rewrite some sections per your advice.<br>However, I would prefer to not have to reenter and reformat everything I submitted before.  <br>Is there a way I can access what I added and you removed so that I can edit the article, instead of trying to recreate it?  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Vactryl' title='User:Vactryl'>Vactryl</a> (<a href='./User_talk:Vactryl' title='User talk:Vactryl'>talk</a> • <a href='./Special:Contributions/Vactryl' title='Special:Contributions/Vactryl'>contribs</a>) 00:44, 22 August 2014 (UTC)"
                            }, {
                                "sha": "595a9381df54d2deb2a4b56a5cfb2ea7e2109c7384420abd7540851338ae7ace",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! Yes, it is important that you <a href='./Wikipedia:COPYPASTE' title='Wikipedia:COPYPASTE'>do not copy and paste</a> text from other sources, everything should be in your own words. I see your change also contained no references. Wikipedia aims to have all content <a href='./Wikipedia:V' title='Wikipedia:V'>verifiable</a>, which means it should be accompanied by <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. See <a href='./Wikipedia:REFBEGIN' title='Wikipedia:REFBEGIN'>WP:REFBEGIN</a> on how to add references. Finding your previous contributions is easy, just look for the 'Contributions' link at the top-right. From there you can click on the 'prev' links to get what's called a <a href='./Help:Diff' title='Help:Diff'>diff</a>, which is the difference of that revision and the one before it. Your change can be found <a href='https://en.wikipedia.org/w/index.php?title=Celebrate_Recovery&amp;diff=prev&amp;oldid=622249687'>here</a>. Let me know if you need anymore help! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:56, 22 August 2014 (UTC)"
                            }, {
                                "sha": "69d0d90a038394cc4fc7e31cb7afe3672cd91c48830d570b1950651d5c7f54fa",
                                "depth": 0,
                                "html": "Thanks, I revised the page considerably.  I added citations the best I could, but I am not sure they are in the format that is normal for Wikipedia.  I am a little unfamiliar with citations formats here.  Thanks.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Vactryl' title='User:Vactryl'>Vactryl</a> (<a href='./User_talk:Vactryl' title='User talk:Vactryl'>talk</a> • <a href='./Special:Contributions/Vactryl' title='Special:Contributions/Vactryl'>contribs</a>) 03:07, 22 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Vactryl - Celebrate Recovery Section Updates 08-21-14",
                            "shas": {
                                "html": "f61fef8f20513829b8286c7c5c90beb04c7200ce322cfa29e3bbbaf9859e0e2b",
                                "indicator": "d1cf90720e00221a777e4206193fdde2b0af53b21067628a69363610bf69db77"
                            }
                        }, {
                            "id": 40,
                            "replies": [{
                                "sha": "397424afa25f04622434728cb2bf123467e71dfc0c56e894fa988192dd9cbea5",
                                "depth": 0,
                                "html": "But it was ironic...<a href='./User:Pictureframedude' title='User:Pictureframedude'>Pictureframedude</a> (<a href='./User_talk:Pictureframedude' title='User talk:Pictureframedude'>talk</a>) 16:32, 22 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Oh the irony.",
                            "shas": {
                                "html": "dd93829db5ee95ab050608282141933842fe157eb4dcba94381932aa16deb94d",
                                "indicator": "21a8cf09405eac0a29b3cf0de794357f2f5c8f0f5bb65d09f9bdcbc19b19527c"
                            }
                        }, {
                            "id": 41,
                            "replies": [{
                                "sha": "60bed15ea2c3b69647407f44c98256526b7becb689711e7591ef080791207356",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-20' title='Wikipedia:Wikipedia Signpost/2014-08-20'>Wikipedia:Wikipedia Signpost/2014-08-20</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 20:10, 23 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 20 August 2014",
                            "shas": {
                                "html": "f361395fb2bb27ae39e23932745449d7ce7a7fa82656fd6239d6b02855fc5d6e",
                                "indicator": "27bbd647d80bca68c5f7e64a07342adde4eb5cb1fd04c1c66d3e5cdd06e42b03"
                            }
                        }, {
                            "id": 42,
                            "replies": [{
                                "sha": "abff3302a997d4963a17a093990a23b45d31692de1c97c211231799c146e7e25",
                                "depth": 0,
                                "html": "Background : <a href='./Special:Diff/622347676#In_the_Arms_of_an_Angel' title='Special:Diff/622347676'>Special:Diff/622347676#In the Arms of an Angel</a><br><br><a href='./The_X_Factor_(UK_series_10)' title='The X Factor (UK series 10)'>The X Factor (UK series 10)</a> - Another page that has been targeted for a few weeks now. If you look at the contributions from  the 95.83.253.* range (<a href='https://en.wikipedia.org/w/index.php?limit=500&amp;tagfilter=&amp;title=Special%3AContributions&amp;contribs=user&amp;target=95.83.253.*&amp;namespace=&amp;tagfilter=&amp;year=2014&amp;month=-1'>link</a>)- Almost all edits are addition of contentious BLP material. <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 14:38, 23 August 2014 (UTC)"
                            }, {
                                "sha": "e2e6f37f44648571fbe01334b1fe58c5973f6092e24baf9259fa27cd811864b8",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I've semi-protected the page for two weeks. Looks like this will be an ongoing issues from this IP range, and not just with subject of McDonald. Fortunately there are other measures we can take beyond page protection that I will look into. Thanks for letting me know! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:35, 23 August 2014 (UTC)"
                            }, {
                                "sha": "7901ef0d07dd02c1bb6add89e32b8d8dcba2a43d9aae8072f35745ffc17706c6",
                                "depth": 2,
                                "html": "Thankyou! <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 18:14, 24 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Nicholas McDonald",
                            "shas": {
                                "html": "dedbdb4eb75ad497b3ec875f94bc2130adb0489615f2b645b4ad244c40647082",
                                "indicator": "b4b9ec6cc453f09faed3bf1833ea0bf5490bdfec8920da3fe7f4827287dddeb9"
                            }
                        }, {
                            "id": 43,
                            "replies": [{
                                "sha": "5db13c8318093794c60c8832d4d4c648ef1a041ab2b81048298147883f68e0b2",
                                "depth": 0,
                                "html": "Thanks for blocking <a href='./User:Kblfan' title='User:Kblfan'>User:Kblfan</a> and his IP, 71.233.191.90. He's trying to evade the block yet again with a new IP (see <a href='https://en.wikipedia.org/w/index.php?title=Joshua_Vescovi&amp;curid=43631609&amp;action=history'>Joshua Vescovi edit history</a>). The new IP is <a href='./Special:Contributions/174.236.36.17' title='Special:Contributions/174.236.36.17'>174.236.36.17</a>. Can you block this other one too? <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 01:16, 25 August 2014 (UTC)"
                            }, {
                                "sha": "0b834a0034e795cd615d4118d24406102acfde4af58d99ede129b484ce29d258",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Blocked. Based on the WHOIS that IP was likely the user's mobile device. Those IPs tend to change based on location, so I've also reluctantly protected the page as the user may very well have a new IP at any moment. Probably safe to close the AfD discussion as delete based on apparent consensus, but I'll leave that to another admin — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 02:13, 25 August 2014 (UTC)"
                            }, {
                                "sha": "fae596fe6e45f3f23c34faa8af8a5e309f756e4d3dd5a133324312ef693369c1",
                                "depth": 2,
                                "html": "Thanks for the quick action! <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 03:38, 25 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "A block evader",
                            "shas": {
                                "html": "035c358bb91d620cc72b528a3793488599348019ce26ce64fcc0cad26146ff40",
                                "indicator": "b97faf36821080b5b069d5e4b8659b42adfb84ac0a35d13a15f1b6c66e29719b"
                            }
                        }, {
                            "id": 44,
                            "replies": [{
                                "sha": "ac390d2bfb8ccca6ff48f051a42d0e2fd59d53e3b81ab7917f22ed4feaa0b922",
                                "depth": 0,
                                "html": "Hello there, we have the right to change those allegations against us as they are not true.<br><br>If there is a better way to change them then please advice otherwise we will have to remove the content.<br><br>Thank you <a href='./User:Middle_East_Eye' title='User:Middle East Eye'>Middle East Eye</a> (<a href='./User_talk:Middle_East_Eye' title='User talk:Middle East Eye'>talk</a>) 14:49, 25 August 2014 (UTC)"
                            }, {
                                "sha": "a3d3f5ca1cf8424153ac13fcff0030122f6f01b192ef2b1177644f5d8867ffd8",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Two problems right off the bat. First off, it is against policy to have an account that represents multiple persons. For this reason I have blocked your account, but feel free to create a new one representing only yourself. Secondly, as noted on your talk page, you should use an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> when making changes, in this case removing a large amount of sourced material. You are also inadvertently removing references that you apparently wish to keep, and the article's categories. Don't worry about that, I can fix that. For now, instead of removing the content again, let's discuss on the article's <a href='./Middle_East_Eye' title='Middle East Eye'>talk page</a>, where we can find a <a href='./Wikipedia:CONSENSUS' title='Wikipedia:CONSENSUS'>consensus</a> as to whether or not we should retain the content in whole or part. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:54, 25 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Middle East Eye",
                            "shas": {
                                "html": "278fbd3b78223a6d4e08e4da4b2d5916af456e991b987af83e84a25159cba47b",
                                "indicator": "68a763cf2c014814a9b87db848e9a11e8418ffcc0e62bde2e8d4f66f00e65950"
                            }
                        }, {
                            "id": 45,
                            "replies": [{
                                "sha": "166c15a92b59ce28553e848169c28dfb7fa2e1431cf7da6bb7eae8d590230df6",
                                "depth": 0,
                                "html": "Hi MusicAnimal,<br><br>This is a member of the Middle East Eye. It was I who created previously the username Middle East Eye but I was blocked.<br><br>We want to remove the content written about us as we believe it is inaccurate and therefore is deceiving the public.<br>We can prove that we are the actual Middle East Eye company but please do let us know what we need to send you or how do we come about it to prove that we are the official MEE and we will be happy to do that.<br><br>We would like to change most of the content written about us as soon as possible.<br><br>Thank you and hope to hear from you<br><br> <a href='./Template:Tps' title='Template:Tps'>Template:Tps</a> Hi @<a href='./User:John768' title='User:John768'>John768</a>: and I'm one of MusikAnimal's friendly talk page stalkers. The case you are referring to is a conflict of interest. You may want to read <a href='./Wikipedia:COI' title='Wikipedia:COI'>WP:COI</a> if you are going to continue to edit about your company. Also, the information you removed or <a href='./Wikipedia:Verifiability' title='Wikipedia:Verifiability'>verifiable</a> which were supported by reliable sources. <a href='./User:TheQ_Editor' title='User:TheQ Editor'><b>&nbsp;ΤheQ Editor&nbsp;</b></a> <a href='./User_talk:TheQ_Editor' title='User talk:TheQ Editor'><sup><b><i>Talk</i>?</b></sup></a> 17:17, 25 August 2014 (UTC)"
                            }, {
                                "sha": "e5170e806f3e366d2c8b1c872e7fc8d2fc979fbe532bfa08245b49e1227143df",
                                "depth": 2,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey, sure I can help you. For right now I don't think it is necessary that you prove your identity. The content that makes up Wikipedia is based on previously published information, supported by <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. So if you have good sources backing what you're saying, there's no need to prove who you are, the sources prove everything. Similarly, you cannot remove well-sourced material just because you don't agree with it. I think this may be the problem you are having with <a href='./Middle_East_Eye' title='Middle East Eye'>Middle East Eye</a>. The content you tried to remove appears to be well-sourced, yet you say it is inaccurate. May I ask what you think is inaccurate? Note that it says <i>Allegations</i> of ties to the Muslim Brotherhood, I don't think it is specifically stating that was true. True or not, the allegations may still be considered encyclopedic, as it was reported in the national media. I agree with <a href='./User:TheQ_Editor' title='User:TheQ Editor'>TheQ Editor</a> that you should be careful not to exert a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a> when editing Wikipedia. We want to take into account all viewpoints, positive and negative, in a healthy balance that gives the reader unbiased, factual information. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:31, 25 August 2014 (UTC)"
                            }, {
                                "sha": "bc08180445365fa0cdbb0cd4514ee580eedfe387b2da60d3fab3c9185a8ddc17",
                                "depth": 3,
                                "html": "We have no issues to state balanced information. However, the content doesn't state facts and that is our issue. It will be hard to refute 'allegations' as this is an opinion and we have to prove a negative. The person that wrote this content wasn't obviously neutral nor balanced and spoke on behalf of the national. Maybe it is the national themselves. Is it possible to change the content along with its sources? We could refer to different sources. Thanks — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:John768' title='User:John768'>John768</a> (<a href='./User_talk:John768' title='User talk:John768'>talk</a> • <a href='./Special:Contributions/John768' title='Special:Contributions/John768'>contribs</a>)<br><br>    <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I've moved this discussion to the article's <a href='./Talk:Middle_East_Eye' title='Talk:Middle East Eye'>talk page</a>. Let's continue our discussion there. Please also remember to <a href='./Help:Signature' title='Help:Signature'>sign your posts</a> by putting four tildes at the end (~~~~). Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 19:40, 25 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from John768",
                            "shas": {
                                "html": "6ab71013898271d5c9786e08bcbd582d8de975b6a1089a4f0facf772f55b3168",
                                "indicator": "25c51dce3bce46fdba6475cf98ba15ca5d0f93c0d2c3e5cca92a18b26914518b"
                            }
                        }, {
                            "id": 46,
                            "replies": [{
                                "sha": "fedacb2a16ef23a435b067e05a0575e9f0681955b3d76b862613aa783c6a4406",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:List_of_nearest_exoplanets#rfc_E9D47A1' title='Talk:List of nearest exoplanets'>Talk:List of nearest exoplanets</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:List_of_nearest_exoplanets#rfc_E9D47A1' title='Talk:List of nearest exoplanets'>Talk:List of nearest exoplanets</a>",
                            "shas": {
                                "html": "869fb3e358f610e46c33dce5151a92368c1aae04286e2a2285b297e80dc0d70f",
                                "indicator": "9db87b1c97cad3b668d79b67e9544678514e470259583ce7d42143ee533730fc"
                            }
                        }, {
                            "id": 47,
                            "replies": [{
                                "sha": "bcf80f99c28baec3c4e7e508b9628080d5e58981172a0ce743595696e8a29a99",
                                "depth": 0,
                                "html": "Hello. You have messages at <a href='./User_talk:Gourami_Watcher' title='User talk:Gourami Watcher'>Gourami Watcher</a>'s talk page.<br><br>--<a href='./User:Gourami_Watcher' title='User:Gourami Watcher'><i><b>GouramiWatcher</b></i></a><a href='./User_talk:Gourami_Watcher' title='User talk:Gourami Watcher'><sup><i><b>(?)</b></i></sup></a> 02:45, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Talkback",
                            "shas": {
                                "html": "85162eedb66f18d155a6a0e170907f9c0a2e1d6204531749ce0a33b17681a0e3",
                                "indicator": "9c0fa590b803426b648fb69c36a3fabb07695b1f3a55be3a0bc14305b3c2e23f"
                            }
                        }, {
                            "id": 48,
                            "replies": [{
                                "sha": "5dad614fcdbb202f0a0cd708730175a560fc56dc232115e2dd40ad85567dd953",
                                "depth": 0,
                                "html": "<a href='./User:84.211.129.189' title='User:84.211.129.189'>84.211.129.189</a> (<a href='./User_talk:84.211.129.189' title='User talk:84.211.129.189'>talk</a> • <a href='./Special:Contributions/84.211.129.189' title='Special:Contributions/84.211.129.189'>contribs</a>) ignored the warning, so I've blocked. And for a month. The idea is to stop this and I don't think anything will but a block. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 10:32, 26 August 2014 (UTC)"
                            }, {
                                "sha": "44da0586ffb00e80225f19687476d1dfd23550281e447c5e3dbd4b641b61a03a",
                                "depth": 1,
                                "html": "No problemo. My instinct was to do the same, but I hadn't noticed that another admin had already declined the AIV report, hence why I unblocked. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:46, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "The IP you blocked and then unblocked",
                            "shas": {
                                "html": "3e9cb597c92fb0ff040c0df1099975bf61bca3bfcd64d06b2c72c93d30af2026",
                                "indicator": "6d9ead7557fff54b6f0e57c2f3fbbcff963d2c1b1963ee08574a3348ca6d25fa"
                            }
                        }, {
                            "id": 49,
                            "replies": [{
                                "sha": "a6a97a06789df4dc561775c40448015ecfe1571a272ab3ac37bce619fbe7d13a",
                                "depth": 0,
                                "html": "Can you please indefinitely page-protect <a href='./Joshua_Vescovi' title='Joshua Vescovi'>Joshua Vescovi</a> until the inevitable deletion at <a href='./Wikipedia:Articles_for_deletion/Joshua_Vescovi' title='Wikipedia:Articles for deletion/Joshua Vescovi'>the article's AfD</a>? Literally minutes after the protection was removed another IP sock of <a href='./User:Kblfan' title='User:Kblfan'>User:Kblfan</a> removed the AfD tag.<br><br>Or, as an admin, can you close the AfD per SNOW, delete the article, then salt it? There's no chance in hell it's going to survive the AfD at this point and by having the article still exist is only prolonging the annoyance and disruptive editing that Kblfan/his IP socks are causing. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 13:19, 26 August 2014 (UTC)"
                            }, {
                                "sha": "52c407cb8a1cf4a829af149679e9d5d2f9fcc22d225beac9e7bbabeaf74d9f43",
                                "depth": 1,
                                "html": "<a href='./Wikipedia:INVOLVED' title='Wikipedia:INVOLVED'>WP:INVOLVED</a> wouldn't apply here, so I've closed, deleted, and salted. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:28, 26 August 2014 (UTC)"
                            }, {
                                "sha": "1bf826d7c78e42414de2780d4350681c03d50a4c44df0d00b271c5b1bad35d29",
                                "depth": 2,
                                "html": "Thanks for the quick work of this. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 14:37, 26 August 2014 (UTC)"
                            }, {
                                "sha": "bc6eff8d589bcd1befa4c8ded1a47227f5d9d1f4d96d0ade94dedc996b63c727",
                                "depth": 3,
                                "html": "Actually, any chance you could SALT <a href='./Josh_Vescovi' title='Josh Vescovi'>Josh Vescovi</a> too? I could see Kblfan recreating the article under an abbreviated name. If you don't think that'd be necessary I'll go with your judgment, but this user has been particularly disruptive and insistent on the article's existence. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 14:40, 26 August 2014 (UTC)"
                            }, {
                                "sha": "103ef50aad38617482b9d600ca8fdbbfa7711275b9a4b2c75791d40f8157a123",
                                "depth": 4,
                                "html": "In theory it would make perfect sense, but procedurally I'd say we should wait until we have concrete reason to protect as that's generally not done preemptively. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:44, 26 August 2014 (UTC)"
                            }, {
                                "sha": "8dd4bc9facfdbe991630b70a089f9aef0f54d51c23614fe14573b7d439e3ba75",
                                "depth": 5,
                                "html": "Ok that's fine. <a href='./User:Jrcla2' title='User:Jrcla2'>Jrcla2</a> (<a href='./User_talk:Jrcla2' title='User talk:Jrcla2'>talk</a>) 14:56, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Joshua Vescovi / User:Kblfan and his IP socks",
                            "shas": {
                                "html": "186c109558f921f4d501429687fa63ea1d64d75012e23fc694927bd1d7c08a6b",
                                "indicator": "e9129feb2c8ef39a58962d71cf5da6defb22b8a80c752bd41e8b0c3d51f13a3a"
                            }
                        }, {
                            "id": 50,
                            "replies": [{
                                "sha": "2e3c74f6e9ed9ccd51b4f128a9fc4dc6040e3273f47e8379831c2dffabfc348e",
                                "depth": 0,
                                "html": "All I am trying to do is update the incorrect information currently written on Sieve Analysis.  The current statements on Digital Processing are incorrect. <a href='./Special:Contributions/68.14.229.131' title='Special:Contributions/68.14.229.131'>68.14.229.131</a> (<a href='./User_talk:68.14.229.131' title='User talk:68.14.229.131'>talk</a>) 15:24, 26 August 2014 (UTC)"
                            }, {
                                "sha": "8945131eae6473bc83947ff6a1d83c057eab541d9ff2635e2361fa6e9805261f",
                                "depth": 1,
                                "html": "Hey there, I realize your edits were made in <a href='./Wikipedia:AGF' title='Wikipedia:AGF'>good-faith</a>, however they removed valid use of <a href='./Wikipedia:LINK' title='Wikipedia:LINK'>links</a> and questionably capitalized non-proper nouns. See <a href='./MOS:CAPS' title='MOS:CAPS'>MOS:CAPS</a> for more information, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:36, 26 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 68.14.229.131",
                            "shas": {
                                "html": "6606d14d772865dd73ca01e8e9a332d1042e9074ae8e727bd7e672d2ca41d9fd",
                                "indicator": "c4367cad91516424f84fc9a2d366aee1f591eaac05412cb9e7c03da0023b9e74"
                            }
                        }, {
                            "id": 51,
                            "replies": [{
                                "sha": "0cf2a4972fd97e9d742c7547181c6ee454eaa9ae5324e617f927c08ae7e02e5b",
                                "depth": 0,
                                "html": "Hello, I wrote about Landscape Architect Gil Har-Gil, but it was deleted because it appears to have no references. I would like to try again, can I use the firm website (<a href='http://english.landscape.org.il/'>http://english.landscape.org.il/</a>) as a reference? Thank you, Tsufit<a href='./User:צופית_תור' title='User:צופית תור'>צופית תור</a> (<a href='./User_talk:צופית_תור' title='User talk:צופית תור'>talk</a>) 05:46, 17 August 2014 (UTC)"
                            }, {
                                "sha": "2d07dd218200d72b8d41bee6336883e2154d54b08613a70640caa66195ad3256",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> So sorry for taking so long to get back to you! Yes, <a href='./Gil_Har-Gil' title='Gil Har-Gil'>Gil Har-Gil</a> was deleted because it was a <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>biography on a living person</a> without any <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. Per <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>policy</a>, these types of articles have to have at least one source. This policy was a result lawsuits that happened way back when. Anyways, to answer your question, articles should be based on <a href='./Secondary_sources' title='Secondary sources'>secondary sources</a> and not <a href='./Primary_sources' title='Primary sources'>primary sources</a>. I might also add there's a <a href='./Wikipedia:PEOPLE' title='Wikipedia:PEOPLE'>notability guideline on people</a>. If you feel the subject does meet this guideline, feel free to make another attempt at the article. You could alternatively submit a draft of the article for review before it gets published. If the review passes, you can be fairly assured the article won't get deleted again. You can use the <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> to create the draft. Let me know if you need any help! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:01, 20 August 2014 (UTC)"
                            }, {
                                "sha": "85833864f03bcb79f908f194e1d28c64aad1af9c1d760ddcc6c3da32b816f31e",
                                "depth": 2,
                                "html": "Thank you, I will try again, as i think i've got this 2 subjects: The person has received a well-known and significant award or honor, or has been nominated for one several times. And the person has made a widely recognized contribution that is part of the enduring historical record in his or her specific field.<br><br>How can I be sure that it wont be deleted again? <a href='./User:צופית_תור' title='User:צופית תור'>צופית תור</a> (<a href='./User_talk:צופית_תור' title='User talk:צופית תור'>talk</a>) 05:16, 24 August 2014 (UTC)"
                            }, {
                                "sha": "0c70a1e111b4f3cd7ee42dafb9b4ddb8562d4d8c1994f6c958c17e727882c7c1",
                                "depth": 3,
                                "html": "Hey MusikAnimal, I added secondary sources to some of Gil Har-Gil projects, and some of the awards that he won, please note that all the links are in Hebrew. Moreover, I linked all the words that I found necessary to be linked. Please let me know if there any thing else I can improve. Thank you, Tsufit<a href='./User:צופית_תור' title='User:צופית תור'>צופית תור</a> (<a href='./User_talk:צופית_תור' title='User talk:צופית תור'>talk</a>) 16:28, 27 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Tsufit",
                            "shas": {
                                "html": "8c00983232d629e4ceaad9483bcc3a9f8a1f7f60a011a90314e69295d6680446",
                                "indicator": "95774c5048c06c148475e465ae1f52407bac71f5f5521013ad0028516a8fbb37"
                            }
                        }, {
                            "id": 52,
                            "replies": [{
                                "sha": "2040ac117746fc61425ecd935060a364efde5d514ab0b2ae6a286b2a9645c920",
                                "depth": 0,
                                "html": "Hey, I noticed you deleted <a href='./Ivan_Plachkov' title='Ivan Plachkov'>Ivan Plachkov</a> as A3, but in fact there was an article with content, it had just been blanked.  It's not a huge deal (I've made the same mistake before), but you should restore the article and try to remember to be a bit more careful in the future, eh? Cheers, <a href='./User:WilyD' title='User:WilyD'>Wily</a><a href='./User_talk:WilyD' title='User talk:WilyD'>D</a> 09:03, 28 August 2014 (UTC)"
                            }, {
                                "sha": "b84bff2b3a0089091ec7bcaddd22fe20616afa6dad55f7bac80c1ca50547a909",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Wowzas! That was way back in May. I was a rookie then. It would take a single look at the page history to see A3 was not appropriate... which is strange as even then I thought I always checked. Clearly I didn't that time :-/ I've restored it, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:42, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Ivan_Plachkov' title='Ivan Plachkov'>Ivan Plachkov</a>",
                            "shas": {
                                "html": "0fd210506f2e4a532462d26f9096a6d78b8020b5490c98419c681dba2e2b36cf",
                                "indicator": "1fc963c35a32717795546c292c25020bd0ba008167db917140542c48a21626dc"
                            }
                        }, {
                            "id": 53,
                            "replies": [{
                                "sha": "f41fd783ab8e74b8f8fff28f58385ab17c098e3c925c924f25c44880ec98a235",
                                "depth": 0,
                                "html": "Hi MusikAnimal. I am glad to see you are a real editor for Wikipedia and not some rogue person who is updating Union County College's page. I work for the College and have been asked to update the content which is at least three years old. I am totally new to this and was deleting all the information that was outdated, but haven't begun to populate it yet with the current information from our Academic Catalog and Annual Report. I will reach out to you if I have questions. If you see edits from me, they are legitimate. 8-27-14 Penguin05 <a href='./User:Penguin05' title='User:Penguin05'>Penguin05</a> (<a href='./User_talk:Penguin05' title='User talk:Penguin05'>talk</a>) 19:26, 27 August 2014 (UTC)"
                            }, {
                                "sha": "042609b2ae35ba45bbc2d70b1dd5f11589fd23d4f969108266f8586e63ab2d00",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! No problem, let me know if you need help. All I ask is that you try to use an <a href='./Help:Edit_summary' title='Help:Edit summary'>edit summary</a> to describe your changes, particularly when removing large amounts of sourced content. I've left a welcome template containing some useful links on your <a href='./User_talk:Penguin05' title='User talk:Penguin05'>talk page</a>. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:48, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Penguin05",
                            "shas": {
                                "html": "e7b48643703978753409103b9b57260a486b839cddd8150f64598190569d1f2a",
                                "indicator": "177a803d6334444ef5fe8f30d8c6e8db80b505ded00fc1df890e26e0f77c16dd"
                            }
                        }, {
                            "id": 54,
                            "replies": [{
                                "sha": "110d38d8b5e4fa9b7da3020febcfb23758cd7baf1da6e92f5a8e4fc8baba8541",
                                "depth": 0,
                                "html": "What should I do? <a href='https://en.wikipedia.org/wiki/User_talk:85.210.185.45'>https://en.wikipedia.org/wiki/User_talk:85.210.185.45</a> <a href='./User:Bobherry' title='User:Bobherry'>Bobherry</a> <a href='./User_talk:Bobherry' title='User talk:Bobherry'>talk</a> 15:37, 28 August 2014 (UTC)"
                            }, {
                                "sha": "d3b2af91bccdcd1bba3b890c3693fbcace6f5bae5aa12e6fa964231984fc46ba",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You've correctly warned them. If they make another <a href='./Wikipedia:PA' title='Wikipedia:PA'>personal attack</a> issue a more stern warning, then report to <a href='./Wikipedia:AIV' title='Wikipedia:AIV'>WP:AIV</a> if disruption continues. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:51, 28 August 2014 (UTC)"
                            }, {
                                "sha": "a11241fe17f760330aafb58b5d94d39420fb381ac20a55dc40a59bc265858007",
                                "depth": 2,
                                "html": "Thanks <a href='./User:Bobherry' title='User:Bobherry'>Bobherry</a> <a href='./User_talk:Bobherry' title='User talk:Bobherry'>talk</a> 16:01, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Help",
                            "shas": {
                                "html": "d84e2b38f81bd296bbdacefe4fdd2316654d98efbeb5793e56e9658805a2335a",
                                "indicator": "594bde775aaca9cc7511aab29525c1f24b18233d2e5a1453cb2a368bcf142028"
                            }
                        }, {
                            "id": 55,
                            "replies": [{
                                "sha": "27bd8339fe537a3350dbad6072e10e9de3102b109de42c00cf9d61fb4dc87e52",
                                "depth": 0,
                                "html": "Hi MusikAnimal!<br>I believe you inadvertently deleted the talk page to this article rather than the corresponding one on my userpage, <a href='./User_talk:Doug_butler/Abraham_Scott' title='User talk:Doug butler/Abraham Scott'>User talk:Doug butler/Abraham Scott</a>. Thanks heaps. <a href='./User:Doug_butler' title='User:Doug butler'>Doug butler</a> (<a href='./User_talk:Doug_butler' title='User talk:Doug butler'>talk</a>) 22:55, 28 August 2014 (UTC)"
                            }, {
                                "sha": "5c24175e56f621421e7f523d40bd1d34a9198cfc59b2190190a0fbf3c8034d1b",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Sure did, sorry about that! Restored. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:58, 28 August 2014 (UTC)"
                            }, {
                                "sha": "1d80f7855cf3dc4302b9fe61b5b9eca19dfe2cf32fc85f4dfe391f55c8a08626",
                                "depth": 2,
                                "html": "Wow! Thanks; that was quick. Don't you admins ever sleep? <a href='./User:Doug_butler' title='User:Doug butler'>Doug butler</a> (<a href='./User_talk:Doug_butler' title='User talk:Doug butler'>talk</a>) 23:06, 28 August 2014 (UTC)"
                            }, {
                                "sha": "205314b68a6e15904344150adf71662228fdfae300c18be5e133d46fdb56959c",
                                "depth": 3,
                                "html": "Well it's only around 7 PM here in New York, but I've been known to stay up well into the AM :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:17, 28 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Abraham_Scott' title='Abraham Scott'>Abraham Scott</a>",
                            "shas": {
                                "html": "f94b4f0c8207174138b4da0b6c03121eb17e29aa1a3ecf4f4e064be94e55669a",
                                "indicator": "09a2e3a4fa27842ef5a54070be2b3453818f634279743cd717bee9873ed071a4"
                            }
                        }, {
                            "id": 56,
                            "replies": [{
                                "sha": "5ca771d129bae99824a6e697225e9cb2d538c8acd0c955c3add4950ac69b23a4",
                                "depth": 0,
                                "html": "Check the name of the Countries - <a href='http://en.wikipedia.org/wiki/National_Sports_Day'>http://en.wikipedia.org/wiki/National_Sports_Day</a> ; Where is Citation for India? In Google search it is coming on top of SERP. Search with National Sports Day India,  I came for other reason. Why I will fight with you!  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/115.253.32.174' title='Special:Contributions/115.253.32.174'>115.253.32.174</a> (<a href='./User_talk:115.253.32.174' title='User talk:115.253.32.174'>talk</a>) 17:39, 29 August 2014 (UTC)"
                            }, {
                                "sha": "43cb59d2e77e08c6a19baabd01bba1cc26c19c034c970f4f51e8597f441a18d6",
                                "depth": 1,
                                "html": "I'm confused. You are correct that currently there is no source for National Sports Day in India. Why, then, are you removing the sourced content and leaving the unsourced part about India? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:43, 29 August 2014 (UTC)"
                            }, {
                                "sha": "ec21037c7461530d4efe762ebde962276f9c2b1fc456c5eee3c2454efca5991a",
                                "depth": 1,
                                "html": "Added cites <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 17:51, 29 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Check Name of the Countries",
                            "shas": {
                                "html": "8d948ed3d181d073af1649cdbace7fb2b9d9e7eb1282d64026f1f0306bb04661",
                                "indicator": "7c968ddd1605fb28bf18de47450cc68bf938120dd9f611fb131fbb191fb223ec"
                            }
                        }, {
                            "id": 57,
                            "replies": [{
                                "sha": "850b6265836e37e8f0558e4d361b273701d65044484014bb15cf827da867c195",
                                "depth": 0,
                                "html": "Hey I'm kbro123, you removed my contributions to the ghana national team page saying their results in the 2014 World Cup, I'm pretty sure that counts as relative <a href='./User:Kbro123' title='User:Kbro123'>Kbro123</a> (<a href='./User_talk:Kbro123' title='User talk:Kbro123'>talk</a>) 18:54, 29 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Kbro123",
                            "shas": {
                                "html": "98b37c33770beda69501adacc446847fa47c6772db9822fdc0cb766f5564ae15",
                                "indicator": "286269426321d73b7edcb3587d39e2e31a6903b17949d76763450cad83711f56"
                            }
                        }, {
                            "id": 58,
                            "replies": [{
                                "sha": "6c128e9a97fe2afd8cddb018f47a46d1defbf01f016fea1b1114194c42337a95",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-08-27' title='Wikipedia:Wikipedia Signpost/2014-08-27'>Wikipedia:Wikipedia Signpost/2014-08-27</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 10:37, 31 August 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 27 August 2014",
                            "shas": {
                                "html": "d2e9d4e0cf435eecfce04b997530b5bf7047f48534662fd4046deb69165c44ec",
                                "indicator": "b49becc4331d4eec098d2dfa73275aaa349c13e9d9233fc270b95bbb767c6289"
                            }
                        }, {
                            "id": 59,
                            "replies": [{
                                "sha": "009d5c094c4799010e9f0bf90c86334533e21c98e62185b82871766fd2cbaff3",
                                "depth": 0,
                                "html": "Hi mate, sorry to be a pain, but there are a few things that need to be addressed before your article can be passed. Personally, I'd be satisfied if you could address the orphan tag, but DYK are more interested in their vast array of rules, and they don't quite grasp concepts like the spirit of the law... Hopefully you should be able to resolve the issues; just let me know when you want me to take another look. Best, <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'><b>HJ&nbsp;Mitchell</b></a> | <a href='./User_talk:HJ_Mitchell' title='User talk:HJ Mitchell'>Penny for your thoughts? </a> 20:38, 30 August 2014 (UTC)"
                            }, {
                                "sha": "4f0e4abdd4d8dea9225660a2959b3a9ab1d89a7de93020e939cd80ddde80344a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> No worries, the DYK criteria did seem fairly strict, and I had a feeling I was missing something. I wish I had known that GA promotion is also an eligible scenario, or else I'd have a few more credits. Anyways, I think I've addressed all the concerns if you'd like to take another look :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:12, 31 August 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Template:Did_you_know_nominations/32_Old_Slip' title='Template:Did you know nominations/32 Old Slip'>Template:Did you know nominations/32 Old Slip</a>",
                            "shas": {
                                "html": "fbf71d576fc556d1b295cc639fd1d5d52de6228ebcbe4a3a044d8bb847f2f843",
                                "indicator": "52ed7c16e1b71bf161079e485ba8f9a7d2e23f4bc872c025aba7224993252757"
                            }
                        }, {
                            "id": 60,
                            "replies": [{
                                "sha": "13213e8fa29d3b3c4ab0a6f36e025d4464c514e0d3f05ab58758c5d8cffa8b63",
                                "depth": 0,
                                "html": "Hello, I just wanted to  know that whether in case of Good-Faith edits i can use the Rollback AGF feature or not?.Thanks.--<a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a> (<a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk</a>) 03:58, 1 September 2014 (UTC)"
                            }, {
                                "sha": "4b7c12c24d338e1ff78c7983b1cb30b0853b205377855fd53d58f5311d295785",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I assume you are referring to the <a href='./Wikipedia:TW' title='Wikipedia:TW'>Twinkle</a> 'Rollback (AGF)' link? If so, yes this is what you should use for reverting good faith edits manually. The term 'rollback' simply means reverting all subsequent changes by that user, as opposed to <a href='./Help:Undo' title='Help:Undo'>undoing</a> an edit which would revert only a single edit. Twinkle's 'Rollback (vandal)' would be the equivalent to system rollback. System rollback is the 'rollback' link you should now see next to edits in page histories and on your watchlist. Huggle and STiki have good-faith revert features of their own, for your convenience. Let me know if you need anymore help — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 04:18, 1 September 2014 (UTC)"
                            }, {
                                "sha": "992e7616fad6b7236faedc9382542d0b819669d6662924128f0e1ae75d1c4abc",
                                "depth": 0,
                                "html": "Yes, i was referring to the <a href='./Wikipedia:TW' title='Wikipedia:TW'>Twinkle</a> Rollback link only.Thank you very much for the help.I have got the answer to my question.--<a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a> (<a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk</a>) 11:31, 1 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Regarding Rollback Rights",
                            "shas": {
                                "html": "22a60399d27abd05777a7261946ed066154528850e092aeb41f5ef134a9bb29b",
                                "indicator": "765a66c1039b4749e866f9d7d9ff0d55c058ab5ca5f43208193da3b2d3a349aa"
                            }
                        }, {
                            "id": 61,
                            "replies": [{
                                "sha": "463fe28e2cbb1aee10bd0dd8dffe306269fd7fe8cc640e8e5d70d3f8d3b15f65",
                                "depth": 0,
                                "html": "Hello. May I ask for a review on <a href='./...And_Justice_for_All_(album)' title='...And Justice for All (album)'>...And Justice for All </a>, an FA nominee of mine? The review page is <a href='./Wikipedia:Featured_article_candidates/...And_Justice_for_All_(album)/archive1' title='Wikipedia:Featured article candidates/...And Justice for All (album)/archive1'>here</a>, where you can post your comments/vote regarding the article's quality. I would appreciate a swift response whether you're available to conduct the review. Thanks in advance.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 10:38, 27 August 2014 (UTC)"
                            }, {
                                "sha": "7bce8c27374eed8474ae810e09f2fbaa1cce8af7ed6dfdd7b6d5fc076ba9bc46",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> At least you're getting some feedback! Mine (<a href='./Wikipedia:Featured_article_candidates/Hasil_Adkins/archive1' title='Wikipedia:Featured article candidates/Hasil Adkins/archive1'>Hasil Adkins</a>) lay idling for the past 21 days. I'm not really the best to ask for a FA review, and I don't really know how acceptable this sort of 'canvassing for reviews' is, but any feedback is good. I can't imagine there's harm in that. How about you brief over mine and I will do the same for yours? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:29, 27 August 2014 (UTC)"
                            }, {
                                "sha": "ce3fb5936adb5db5b242c1b076cacac40978195e5267037d0da9c8cf2d86d033",
                                "depth": 2,
                                "html": "Haven't noticed you've got a nominee of your own; of course I can comment there. By the way, I 'learned' this trick from Dan56. I agree there's nothing harmful in that, at least to the point you demand a suggestion, not a direct support.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 20:20, 27 August 2014 (UTC)"
                            }, {
                                "sha": "cc90fab8abc698942f88a139315f15dd927adfd6a829502d7e6bf15933ad63b2",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Just wanted to let you know I still plan on looking over your FAC and you will hear from me very soon :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:04, 1 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FAC review",
                            "shas": {
                                "html": "07ed20b580353c532f345cd4645884f2af6ffca4043df5ba26250556b2ee7a04",
                                "indicator": "4124c9837b34ce1c717acb6bb4df465bbe70b01ad06cb48fa5e312b3c4548e01"
                            }
                        }, {
                            "id": 62,
                            "replies": [{
                                "sha": "2c3b1e7e3cc43caac8645a8bf6d7b0341fa15a5fb162edfc6085968293fc89d9",
                                "depth": 0,
                                "html": "Hello. Forgot to ask the last time whether you know to update music files from YouTube? If the response is yes, I'll specify what needs to be uploaded.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 09:49, 1 September 2014 (UTC)"
                            }, {
                                "sha": "08747d32ead97c9e8c628d041e1daa5ab38516b19651fe5f89df2a4df154bfaa",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm not sure if I follow...? What music files? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:38, 1 September 2014 (UTC)"
                            }, {
                                "sha": "b057b7ad5c93c7e9643e4ff979fc0228e305991e71a0dc075045fff36a8a3ad9",
                                "depth": 2,
                                "html": "Meant to create <a href='./File:Megadeth_-_Set_the_World_Afire.ogg' title='File:Megadeth - Set the World Afire.ogg'>File:Megadeth - Set the World Afire.ogg</a> from an extract on YouTube→<a href='http://www.youtube.com/watch?v=wB6tJD5-z3o'>[watch?v=wB6tJD5-z3o]</a>. Timing 2:48–3:18. Can you handle that?--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 19:27, 1 September 2014 (UTC)"
                            }, {
                                "sha": "ee52164937d0f6243731e0ad67c2b7f4769e26eb9e973e454e4ff988ebef6368",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm a computer savvy guy but not so much beyond the terminal and my web browser, sorry. Looks like there's some YouTube to MP3 converters out there. You could then cut whatever part of the MP3 you want and <a href='./Wikipedia:FUC' title='Wikipedia:FUC'>lower the quality</a> to 60 kbps using Audacity. More info at <a href='./Wikipedia:CMF' title='Wikipedia:CMF'>WP:CMF</a>. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:23, 2 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Query",
                            "shas": {
                                "html": "9462ae3b600f49b82507760e92f9ae1d8077d7ae6f1400cda78feb72df7f148d",
                                "indicator": "e6a0f340ce91298ab060f5efea4013753db31e64b42bc217385c56d497e8f29e"
                            }
                        }, {
                            "id": 63,
                            "replies": [{
                                "sha": "12ed56693307634803d41b14be20eeae3730fdbdda5e42878cf22cc3a1eec273",
                                "depth": 0,
                                "html": "<a href='./File:Updated_DYK_query.svg'>[File:Updated_DYK_query.svg]</a><br><br>On <a href='./Wikipedia:Recent_additions#4_September_2014' title='Wikipedia:Recent additions'>4 September 2014</a>, <b><a href='./Template:Did_you_know' title='Template:Did you know'>Did you know</a></b> was updated with a fact from the article <i><b><a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a></b></i>, which you recently created or substantially expanded. The fact was <i>... that the <a href='./United_States_Mint' title='United States Mint'>United States Mint</a> sold the <b><a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a></b> site in <a href='./Manhattan' title='Manhattan'>Manhattan</a> for US$27&nbsp;million, making it the most valuable US Government property sold at public auction?</i>  You are welcome to check how many page hits the article got while on the front page (<a href='./User:Rjanag/Pageview_stats' title='User:Rjanag/Pageview stats'>here's how</a>, <a href='https://tools.wmflabs.org/wikiviewstats/index.php?page=32_Old_Slip&amp;datefrom=2014-09-01&amp;dateto=2014-09-31'>live views</a>, <a href='http://stats.grok.se/en/201409/32_Old_Slip'>daily totals</a>), and it may be added to <a href='./Wikipedia:Did_you_know/Statistics' title='Wikipedia:Did you know/Statistics'>the statistics page</a> if the total is over 5,000. Finally, if you know of an interesting fact from another recently created article, then please feel free to suggest it on the <a href='./Template_talk:Did_you_know' title='Template talk:Did you know'>Did you know talk page</a>.<br><br><a href='./User:Casliber' title='User:Casliber'>Cas Liber</a> (<a href='./User_talk:Casliber' title='User talk:Casliber'>talk</a> <b>·</b> <a href='./Special:Contributions/Casliber' title='Special:Contributions/Casliber'>contribs</a>) 00:05, 4 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "DYK for 32 Old Slip",
                            "shas": {
                                "html": "f7a5ce44a740497bc2008e56ce4e37f10e9349e4ae8e76a8aa415f6cba5c496b",
                                "indicator": "1e7408bf25b5b13fb0252ac50e571e03e8488d4c7f1b14f9605a8e95f27d791a"
                            }
                        }, {
                            "id": 64,
                            "replies": [{
                                "sha": "0f8c9764dc852ec603e41d6a60a77147e6659ee5ba75812e8d1b1f8883e9cda0",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Latrodectus#rfc_F44AE78' title='Talk:Latrodectus'>Talk:Latrodectus</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:01, 6 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Latrodectus#rfc_F44AE78' title='Talk:Latrodectus'>Talk:Latrodectus</a>",
                            "shas": {
                                "html": "ae9a52db4ecca4b0076c46a017748aff6d1873458c9840b630d6b3c02e247cdb",
                                "indicator": "e2e04ff3c0cc0f47980de6f502df3674b9ed1463e55a3e6a9eea90839d1d758c"
                            }
                        }, {
                            "id": 65,
                            "replies": [{
                                "sha": "1bd7fd47417cbf576de79459d0eab2b4f5aced9c29e497a4bfc3729a98e965df",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-03' title='Wikipedia:Wikipedia Signpost/2014-09-03'>Wikipedia:Wikipedia Signpost/2014-09-03</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 08:03, 6 September 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 03 September 2014",
                            "shas": {
                                "html": "0743c315cc6fecbae06a47193791cefd262416a58b09a90caba2b6d05cb31c17",
                                "indicator": "a471a0d67d2e5defaad6d1e995835b88fc2b77dfed97d508006daf8a2d412a6a"
                            }
                        }, {
                            "id": 66,
                            "replies": [{
                                "sha": "97afe84025c20719ec326d8d54bcf0403eb3b12e410233733cd216364b758166",
                                "depth": 0,
                                "html": "Hello <a href='https://en.wikipedia.org/wiki/User_talk:VeNeMousKAT#Your_request_for_rollback'>again</a> (Just to let people know I'm asking on your talk page because you said I should), MusikAnimal! I am requesting reevaluation for rollback rights, as you might suspect from the title. Even though you told me to wait a month or two, I simply couldn't wait that long not knowing if I could have gotten rollback sooner. I now have more than <a href='https://tools.wmflabs.org/supercount/index.php?user=VeNeMousKAT&amp;project=en.wikipedia.org&amp;toplimit=10'>200 edits to mainspace</a> (article) and have <a href='https://en.wikipedia.org/wiki/User:VeNeMousKAT/CVUA'>completed my CVUA</a>! I will explain my reasons on why I think I should get rollback or not.<br><br><b>My block log</b><br><br>First, I want to get <a href='https://en.wikipedia.org/wiki/User_talk:VeNeMousKAT/Archive_1'>this</a> out of the way. When I first joined Wikipedia, I didn't realize the beauty of Wikipedia. I didn't realize how fun it is to revert and interact with people on Wikipedia. I have long since changed my ways, I no longer think to harm Wikipedia as I did when I first joined it. In fact, I want to help Wikipedia. I have found Wikipedia to be a very fun place ever since I've been unblocked and I never intend to hurt/disrupt Wikipedia again. Although I can't give you evidence that I won't do it again, I can give you my word and let my recent edits speak for themselves.<br><br><b>Counter vandalism unit academy</b><br><br>I have <a href='https://en.wikipedia.org/wiki/User:VeNeMousKAT/CVUA'>completed</a> the CVUA and on the final test, I believe I would have gotten a 98% or 99%, but he forgot to put the grade in the box, but I believe I got 100% on the last part. The CVUA taught me a lot about counter vandalism and how to deal with other issues involving edit waring to dealing with users.<br><br><b>Why I want, and what I intend to do with rollback</b><br><br>I want rollback for the simple reason being that rollback is more effective, faster, and more efficient way to stop, and neutralize vandalism. I intend to use rollback rights so I can revert vandalism (and only that with rollback) with Stiki and/or Huggle, two very effective anti-vandalism programs.<br><br><b>Why you, and the community should trust me</b><br><br>I believe you, and the community, should trust me because I now work hard to revert and/or remove vandalism and help improve Wikipedia. I have 200 mainspace edits now, compared to the <a href='https://en.wikipedia.org/w/index.php?&amp;oldid=622436794#User:VeNeMousKAT'>75</a> I had when I requested it before. I believe I have much more experience and knowledge by completing the CVUA than I had before I did.<br><br><b>Thank you</b><br><br>Thank you for taking your time to read this, and I look forward to hearing from you. Once again, Thanks. <a href='./User:VeNeMousKAT' title='User:VeNeMousKAT'><b>VeNeMouš</b><b>KAT</b></a> <sup><a href='./User_talk:VeNeMousKAT' title='User talk:VeNeMousKAT'><b>(talk:会話)</b></a></sup> 01:34, 9 September 2014 (UTC)"
                            }, {
                                "sha": "24663228b8f97dde99a49ae16444b0b41437ad9f946fd4088134f48b84f0229a",
                                "depth": 1,
                                "html": "Again, anti-vandal work looks great. You've indicated you are dedicated to helping the project, and I sense sincerity. I'm torn, however. It's only been 20 days since your last request was declined. Meanwhile the fact you were a vandal yourself a mere month ago is difficult to see past. I'd like a second opinion. I'm going to ping my colleague <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'>HJ Mitchell</a> who is active at <a href='./Wikipedia:PERM' title='Wikipedia:PERM'>WP:PERM</a>. HJ, might I inquire your take on this scenario? Feel free to review <a href='https://en.wikipedia.org/w/index.php?title=Special:Undelete&amp;target=User%3AVeNeMousKAT&amp;timestamp=20140802045159'>deleted contributions</a>. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:21, 9 September 2014 (UTC)"
                            }, {
                                "sha": "66ffd970c8a352281d887fdcb05472b5edc37076c5d4e43a8689b9086b2aff44",
                                "depth": 2,
                                "html": "I'd be a lot more comfortable if they'd done something other than revert vandalism, like write an article or something else that shows that they get what the project is about (cf. <a href='./Wikipedia:MMORPG' title='Wikipedia:MMORPG'>WP:MMORPG</a>). But then it's minimal effort to revoke rollback if it's misused. I'm not inclined to grant it, at least not at the moment, but I won't lose sleep if you want to. Best, <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'><b>HJ&nbsp;Mitchell</b></a> | <a href='./User_talk:HJ_Mitchell' title='User talk:HJ Mitchell'>Penny for your thoughts? </a> 15:47, 9 September 2014 (UTC)"
                            }, {
                                "sha": "ef7b90b4dc5f6828d50164652e450678d473a893405ab98bab27ec2af934f578",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I think we need more vandal fighters, but I agree with HJ. Having some content work under your belt would further corroborate your newfound good intent and help exemplify an understanding of <a href='./Template:Wikipedia_policies_and_guidelines' title='Template:Wikipedia policies and guidelines'>basic policy and guidelines</a>. Are there any topics you are particularly interested in? <a href='./Wikipedia:WikiProject_Music' title='Wikipedia:WikiProject Music'>Music</a>? <a href='./Wikipedia:FILM' title='Wikipedia:FILM'>Movies</a>? <a href='./Wikipedia:VIDEOGAMES' title='Wikipedia:VIDEOGAMES'>Video games</a>? Take a look at the <a href='./Wikipedia:PROJDIR' title='Wikipedia:PROJDIR'>various WikiProjects</a> and you'll find ample amounts of fun things to work on. Look up the article on your favourite band and try to expand on it a little. If you're not good with prose, consider adding references where needed, or helping lessen any of the <a href='./Wikipedia:BACKLOG' title='Wikipedia:BACKLOG'>content backlogs</a>. Anything you have to offer. 200+ mainspace edits is good, but let's try to get another 200 or so (400 is the new accepted standard for rollback). You're doing great with Twinkle right now, let's not rush to get rollback. Thanks for your understanding and look forward to seeing you grow as a Wikipedian. If you need help along the way don't hesitate to ask — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:23, 9 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Requesting for rollback",
                            "shas": {
                                "html": "e61e0592e317e8b6908b7988abf7d6aa2eb0b1f3fab5a6cb743c844cc77afa9e",
                                "indicator": "7df73120ed437e0cc0cf239728533b7b43c9198e0205785c50cc964154e46119"
                            }
                        }, {
                            "id": 67,
                            "replies": [{
                                "sha": "2bb20c908549af16bfcfd8b4b6572f20416e5e86f72d5d2c5d589f1498406ed5",
                                "depth": 0,
                                "html": "Hi MusikAnimal,<br><br>Saw your message, I see you have rolled back all my changes. Did not know about the edit summary, I will do that in the future. However, I was in the middle of rearranging the content into different sections, not removing them. Please restore the changes I have made.<br><br>Thanks <a href='./User:VasuEPA' title='User:VasuEPA'>VasuEPA</a> (<a href='./User_talk:VasuEPA' title='User talk:VasuEPA'>talk</a>) 21:20, 10 September 2014 (UTC)"
                            }, {
                                "sha": "76be12e3245028e45d198aad4a627ad0c5223db6459d65b308e73e1ed52dbefe",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Done. But yes, please do remember to supply an edit summary with your changes, especially when removing large amounts of sourced content. Thanks for your understanding. I've also left some useful links on your <a href='./User_talk:VasuEPA' title='User talk:VasuEPA'>talk page</a> to help you get started. If you ever need help don't hesitate to ask, and welcome to Wikipedia :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:26, 10 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from VasuEPA",
                            "shas": {
                                "html": "3111d1d9123424d200a03e551ae5de524633a0581bf38ac1d344f120cf8ce0e4",
                                "indicator": "6034f705a7c9ebe295186a93a279578e1b1667d46aa4aeade970a85e7e970e3e"
                            }
                        }, {
                            "id": 68,
                            "replies": [{
                                "sha": "b2e457cda9526c6bea1ef16753f0f95b0362d6702e97ea1149ea2ed08b45fb5c",
                                "depth": 0,
                                "html": "Hello MuzikAnimal,<br><br>I would like to contribute to an article which you have deleted, about <a href='https://en.wikipedia.org/w/index.php?title=Northern_Lights_Direct&amp;action=edit&amp;redlink=1'>Northern Lights Direct</a> .<br><br>To be clear it is currently the place where I work however I strongly believe the company should have a Wikipedia page due to it's accomplishments and client base in the Direct Response Advertising Industry.<br><br>I am aware the previous article written by my colleague did not meet Wikipedia's guidelines and was rather promotional in it's nature however, I would like to have a chance to address this issue by changing the content substantially from what it used to be. I'll make sure the article is a neutral summary of what reliable, independent sources have reported about the company.<br><br>I kindly ask that I be given a chance to edit the page and look forward to becoming a contributor to Wikipedia in not only this topic but others alike as well. <a href='./User:Responsecan88' title='User:Responsecan88'>Responsecan88</a> (<a href='./User_talk:Responsecan88' title='User talk:Responsecan88'>talk</a>) 20:38, 11 September 2014 (UTC)"
                            }, {
                                "sha": "052d30224750928c2670fba53b1f193ebc3b002055e1871a8d2b1191a4d16827",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hello! While it's best not to write about subjects you're directly involved with, you absolutely can give it another try. If you are asking to receive a copy of the deleted article, I could provide it in part, but it needed a fundamental rewrite anyway, so maybe you're better off starting from scratch. I recommend composing a draft article and then once complete, you can submit it for review. That way more experienced editors can help you refine it and ensure it doesn't get deleted again. You can use the <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> to expedite this process. Things to keep in mind... make sure your organization meets our <a href='./Wikipedia:NORG' title='Wikipedia:NORG'>notability guideline</a>, and that just as you say, be careful not to exert a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a>. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:07, 11 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Responsecan88",
                            "shas": {
                                "html": "321d9c1d7882be6ac10115f299d31e1eb02ee0fb7fe0bb47a39c14080a1974ef",
                                "indicator": "0f635441c097517494b44fccc907db34fbc063b1d009581a5ddd0166678ea30e"
                            }
                        }, {
                            "id": 69,
                            "replies": [{
                                "sha": "04b73f9363672374b29a2759f6fb980877bba72aeb64a974965bf72f496e9085",
                                "depth": 0,
                                "html": "I blocked the idiot, and the idiot what you reverted to also. I hate it when I revert a vandal to another vandal, but it's easily done. <a href='./User:Dougweller' title='User:Dougweller'>Dougweller</a> (<a href='./User_talk:Dougweller' title='User talk:Dougweller'>talk</a>) 15:57, 12 September 2014 (UTC)"
                            }, {
                                "sha": "ebc8a5951f14bbedf6fcbf6c8da0bf335f72cb175f2d7a3ae68899cfc187d9ff",
                                "depth": 1,
                                "html": "Ridiculous... unfortunately half the time I'm not aware what I'm reverting to. I usually issue a final warning before blocking, but edits like that are an obvious exception. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:05, 12 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your revert at Inca Empire",
                            "shas": {
                                "html": "e2db7a1a5780d63767a8cb237a13b1459eed581eb95e9862024134d4ea8a1aad",
                                "indicator": "c067841804284e674a782d62fd805edf7178198d867f428c50cf3e724d0fcf3e"
                            }
                        }, {
                            "id": 70,
                            "replies": [{
                                "sha": "64658a5e41f254625fd7be096c832600ea3ce7a2f6b28262a6ac033c4e914471",
                                "depth": 0,
                                "html": "He/she disruptive editing on <a href='./Daydream_(Mariah_Carey_album)' title='Daydream (Mariah Carey album)'>Daydream (Mariah Carey album)</a> again. Can you block him/her again. <a href='./Special:Contributions/183.171.168.28' title='Special:Contributions/183.171.168.28'>183.171.168.28</a> (<a href='./User_talk:183.171.168.28' title='User talk:183.171.168.28'>talk</a>) 17:48, 12 September 2014 (UTC)"
                            }, {
                                "sha": "d0c116c118917314ae0a66c1b4dbd0f9e507437824198e98bdced84b1737829a",
                                "depth": 1,
                                "html": "Not comfortable blocking just yet. This time around things look more constructive, with at least an attempt to add a source (it was a dead link). I've issued a level two warning. If disruption continues a block may be warranted. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:00, 12 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Special:Contributions/5.81.224.153' title='Special:Contributions/5.81.224.153'>Special:Contributions/5.81.224.153</a> again...",
                            "shas": {
                                "html": "4b006965289b019bfa17d9bbc95acb483efabc80c2513878d8c957f402134eed",
                                "indicator": "4328136ef9f776117ca63745ccf2bd5e89e67658d90ec88a9d0e1214adafda99"
                            }
                        }, {
                            "id": 71,
                            "replies": [{
                                "sha": "ce0835aef6257529bf431d126c8943f37d80b707ede29fdb4392f685238a35ad",
                                "depth": 0,
                                "html": "...on <a href='./Nimrod_Kamer' title='Nimrod Kamer'>Nimrod Kamer</a> and <a href='./Rowan_Blanchard' title='Rowan Blanchard'>Rowan Blanchard</a>? --<a href='./User:George_Ho' title='User:George Ho'>George Ho</a> (<a href='./User_talk:George_Ho' title='User talk:George Ho'>talk</a>) 16:57, 13 September 2014 (UTC)"
                            }, {
                                "sha": "ec4b58931d2499ed234283dd65d0304cc98ec2c945d8cf7cec086111e0904f30",
                                "depth": 1,
                                "html": "@<a href='./User:George_Ho' title='User:George Ho'>George Ho</a>: Extended <a href='./Nimrod_Kamer' title='Nimrod Kamer'>Nimrod Kamer</a> for another month. <a href='./Rowan_Blanchard' title='Rowan Blanchard'>Rowan Blanchard</a> history looks quite bad... pending changes protection isn't doing much, so I've bumped it to semi-protection. Thanks for keeping an eye on these articles! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:07, 13 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Extend PC time...",
                            "shas": {
                                "html": "a8fee5dff10ef6e14e499ac68c76ff9d26725c34ac4ef0de15635b70cbd149d3",
                                "indicator": "feb19810f6706d3c930560458f9e6007d4f7a6277619573ccf169672f1952d1f"
                            }
                        }, {
                            "id": 72,
                            "replies": [{
                                "sha": "8a212295e8e5db0c6dbddc08939f811ac829f5bbee016417b13863ae29fbbc35",
                                "depth": 0,
                                "html": "<a href='./User:1_chisper_(Pelicula)_2015' title='User:1 chisper (Pelicula) 2015'>User:1 chisper (Pelicula) 2015</a>, a page you substantially contributed to, has been nominated for <a href='./Wikipedia:MfD' title='Wikipedia:MfD'>deletion</a>. Your opinions on the matter are welcome; please participate in the discussion by adding your comments at <a href='./Wikipedia:Miscellany_for_deletion/User:1_chisper_(Pelicula)_2015' title='Wikipedia:Miscellany for deletion/User:1 chisper (Pelicula) 2015'>Wikipedia:Miscellany for deletion/User:1 chisper (Pelicula) 2015 </a> and please be sure to <a href='./Wikipedia:SIG' title='Wikipedia:SIG'>sign your comments</a> with four tildes (~~~~).  You are free to edit the content of <a href='./User:1_chisper_(Pelicula)_2015' title='User:1 chisper (Pelicula) 2015'>User:1 chisper (Pelicula) 2015</a> during the discussion but should not remove the miscellany for deletion template from the top of the page; such a removal will not end the deletion discussion.  Thank you. <a href='./User:Bovineboy2008' title='User:Bovineboy2008'>BOVINEBOY</a><a href='./User_talk:Bovineboy2008' title='User talk:Bovineboy2008'>2008</a> 23:38, 13 September 2014 (UTC)"
                            }, {
                                "sha": "6ff62430d737b06481d3ed87842a27c459f8951142d8d584cd4e184927309b35",
                                "depth": 1,
                                "html": "Deleted, more at <a href='./Wikipedia:Sockpuppet_investigations/1_chisper' title='Wikipedia:Sockpuppet investigations/1 chisper'>Wikipedia:Sockpuppet investigations/1 chisper</a> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:15, 14 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "MfD nomination of <a href='./User:1_chisper_(Pelicula)_2015' title='User:1 chisper (Pelicula) 2015'>User:1 chisper (Pelicula) 2015</a>",
                            "shas": {
                                "html": "415879979af6dc88361d4d0c48a300f57f32bab0a22ed7d98c9af2a5782bd456",
                                "indicator": "ee8e6801b7bb2c343ae7f793c8281a6bc16fbc636835650029eefe74f283aa3c"
                            }
                        }, {
                            "id": 73,
                            "replies": [{
                                "sha": "81255966b01886a1cae0900b788d1ceb6b1243a29d61841288c2d3ddb78d884e",
                                "depth": 0,
                                "html": "Hi, help here please. 31 hours wasn't enough.  — <a href='./User:Calvin999' title='User:Calvin999'>₳aron</a> 21:20, 13 September 2014 (UTC)"
                            }, {
                                "sha": "1344bc8ac0c410ad83f59557ff1c6921530b6fa3c8434a7203320f3410eada7a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> OK, I've reluctantly blocked again. User clearly means well, just continually adds unsourced content and refuses to talk. By the way, there's a discussion currently going on about the use of genre names in infoboxes at <a href='./Wikipedia_talk:WikiProject_Albums#Genre_path_in_template' title='Wikipedia talk:WikiProject Albums'>Wikipedia talk:WikiProject Albums#Genre path in template</a>. Your input is welcomed. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 05:06, 14 September 2014 (UTC)"
                            }, {
                                "sha": "cfa37d0a6a53be14a642678e89f40436996586050101933734c0877c461876f6",
                                "depth": 1,
                                "html": "Means well a few times. But to keep on meaning well after being repeatedly warned and told by several people to stop isn't meaning well.  — <a href='./User:Calvin999' title='User:Calvin999'>₳aron</a> 15:26, 14 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./User_talk:5.81.224.153' title='User talk:5.81.224.153'>User talk:5.81.224.153</a>",
                            "shas": {
                                "html": "737c5a64ef91ecec777fdd441396367bcebe8d77b2ec5e83d1b7cfbf54e6264a",
                                "indicator": "da0af0c2c41ad8eba30e59e90da6cac8364e062348ee4bc7136f20b613799450"
                            }
                        }, {
                            "id": 74,
                            "replies": [{
                                "sha": "562b686f1ba62366b72c26428feb010562c9d86622d574276d0fd21698112c88",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-10' title='Wikipedia:Wikipedia Signpost/2014-09-10'>Wikipedia:Wikipedia Signpost/2014-09-10</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 21:56, 14 September 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 10 September 2014",
                            "shas": {
                                "html": "e4494afd9459ffa2ba456de5d3bb334013704266473d3e4035e9c63674e07ca7",
                                "indicator": "6dccaad7a0e1c065e9cb35500b6b97ebc4d57c32e85ad8022e28b63ee4db5852"
                            }
                        }, {
                            "id": 75,
                            "replies": [{
                                "sha": "45f88c390b17e12d831a1534932ef3699db713dd16df5f5ca9ed7e4dcccafcc8",
                                "depth": 0,
                                "html": "Hi, i just wanted your help on disruptive editing by <a href='./User_talk:Alastair_winch' title='User talk:Alastair winch'>User talk:Alastair winch</a> on my talk page.Another problem with this user is that he has created his user page in his talk page and there is a possibility that <a href='./User:Indu_roy' title='User:Indu roy'>User: Indu roy</a> is the same as this user.Please guide me through this situation.Thanks.--<i><a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a>  <sup>  <a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk?</a></sup></i> 17:40, 14 September 2014 (UTC)"
                            }, {
                                "sha": "d8d020fb6097d529d07d1aa5cf31ccae564df57cb9d1b6cbd2487d9af2690cb4",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm not sure what to make of all this. I've <a href='./User_talk:Elockid#Quick_request' title='User talk:Elockid'>notified</a> the administrator who blocked <a href='./User:Indu_roy' title='User:Indu roy'>Indu roy</a>. Sock or not, if <a href='./User:Alastair_winch' title='User:Alastair winch'>Alastair winch</a> continues to disrupt a block may be warranted — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:05, 14 September 2014 (UTC)"
                            }, {
                                "sha": "22ba1129b19c689fd73f6bb7b79398e9b77574e09a239d25e30d7f6e1e3063e7",
                                "depth": 0,
                                "html": "Thank you very much for the help.--<i><a href='./User:Param_Mudgal' title='User:Param Mudgal'>Param Mudgal</a>  <sup>  <a href='./User_talk:Param_Mudgal' title='User talk:Param Mudgal'>talk?</a></sup></i> 04:09, 15 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Help",
                            "shas": {
                                "html": "59e91f6bfbec4d44c299a51725f2336444d91d3458abb047177513a0022cba8b",
                                "indicator": "2d248653f11f63760314f7cc5d29c673b6b6239083eed7ceddcb00788cb02bdf"
                            }
                        }, {
                            "id": 76,
                            "replies": [{
                                "sha": "6ba206d2d8f4b6c7b5f9a0a369c378da2d890b27450e58f3dbdd63c3bd90d2d2",
                                "depth": 0,
                                "html": "It was not a mistake. The removal was a statement promoted by the company leading to the company's actual website. It was a link to information on the company's own website which is already debunked by the sources already there. Please have a look at all the citations. The company is trying to deflect legitimate criticism of itself.<a href='./Special:Contributions/69.165.246.175' title='Special:Contributions/69.165.246.175'>69.165.246.175</a> (<a href='./User_talk:69.165.246.175' title='User talk:69.165.246.175'>talk</a>) 21:35, 15 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Reply",
                            "shas": {
                                "html": "596808e5e3c5eb5643773a4df35f3f5d8d3776a67b454af65f06fc247d52d505",
                                "indicator": "2c7b678ed1ee61f527e1dfc1af60e639b871fb3d0f6a232ad4aa0794c137fbcf"
                            }
                        }, {
                            "id": 77,
                            "replies": [{
                                "sha": "1f4c5da42a08663c9d69cf29e767a73a8044499fb7ab7da721c92360986c1026",
                                "depth": 0,
                                "html": "If my ip is blocked can i look at wikipedia i didnt edit the swedish guys article. sorry english is not my language thank you. <a href='./Special:Contributions/74.15.62.206' title='Special:Contributions/74.15.62.206'>74.15.62.206</a> (<a href='./User_talk:74.15.62.206' title='User talk:74.15.62.206'>talk</a>) 21:55, 15 September 2014 (UTC)"
                            }, {
                                "sha": "b38a5c24f38796398c207323e05875c2ef3c722448e8c09b5aac4a0ea4ad874d",
                                "depth": 1,
                                "html": "Yes, you can currently view and edit pages freely, as your IP address is not blocked. If you'd like avoid further irrelevant notices and not have vandals using your IP affect your ability to edit, consider <a href='./Wikipedia:REG' title='Wikipedia:REG'>creating an account</a>. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:59, 15 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 74.15.62.206",
                            "shas": {
                                "html": "618b7bc2937e3dd198ab575b94c089148ca41e694d16b40b71516404eb992a31",
                                "indicator": "7b03cef15ca7786a842abc2022f784d5e314e76f3d9c344ceced2019d7b92d04"
                            }
                        }, {
                            "id": 78,
                            "replies": [{
                                "sha": "8473a54b79bff63272781ead7db956e8dbc90ccc7fa7346232d09604c7639090",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Shooting_of_Michael_Brown#rfc_583E919' title='Talk:Shooting of Michael Brown'>Talk:Shooting of Michael Brown</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Shooting_of_Michael_Brown#rfc_583E919' title='Talk:Shooting of Michael Brown'>Talk:Shooting of Michael Brown</a>",
                            "shas": {
                                "html": "739201328c5df75b11c7778ad41221867bc70589101f4610f93b021480eba194",
                                "indicator": "3cc31f7ac2d056842857ae2733e48acdf63ffd7171189b5fc1a33cb329963e46"
                            }
                        }, {
                            "id": 79,
                            "replies": [{
                                "sha": "818c1e88005683a416c0790df2de7e218d4d3600620819c74a0beb9ead7e13a1",
                                "depth": 0,
                                "html": "Hello MusikAnimal. Sorry I forget to write the reason for changing the page. I just added Jay Park new Studio album <i>EVOLUTION</i> in his <a href='./Jay_Park_discography' title='Jay Park discography'>Studio albums discography</a>, the album already been released in September 1, and couple of new singles but still nobody update his discography. Thank you. — CesarLeto 20:00, 16 September 2014  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:CesarLeto' title='User:CesarLeto'>CesarLeto</a> (<a href='./User_talk:CesarLeto' title='User talk:CesarLeto'>talk</a> • <a href='./Special:Contributions/CesarLeto' title='Special:Contributions/CesarLeto'>contribs</a>)"
                            }],
                            "depth": 2,
                            "html": "Hello from CesarLeto",
                            "shas": {
                                "html": "d8eb9bcd683076c4bdf8f3335643025498ee4225fca087a9fbfc6f5c5a85ec8d",
                                "indicator": "b3f5bbd67b4761e9c808f3b732164392d842cb3fe178580e88d712546d0f6c0f"
                            }
                        }, {
                            "id": 80,
                            "replies": [{
                                "sha": "a98f4e27e78d4caa4a23e2c32cec7a7fed13f4c8c82f44cb516ac8031cf84199",
                                "depth": 0,
                                "html": "Review <a href='./Special:Contributions/69.117.1.13' title='Special:Contributions/69.117.1.13'>this IP's edits</a>. Some more RevDelete might be in order. — <b><a href='./User:Confession0791' title='User:Confession0791'>Confession0791</a></b> <b><a href='./User_talk:Confession0791' title='User talk:Confession0791'><sup>talk</sup></a></b> 04:17, 16 September 2014 (UTC)"
                            }, {
                                "sha": "139e54a549e45d6b6b7c4bcb680bf9b97208614e6098e8fa9f9d409c2ce38d9e",
                                "depth": 1,
                                "html": "<b>Done</b> — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:42, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Rowan Blanchard",
                            "shas": {
                                "html": "92c66b5cefa0c9946949ec4cc22c349a6a2828fa26cea68c1c4d302c6875f516",
                                "indicator": "ec952ed0365a3823ba916ebe764822e5190336c6492e94e03b6a471ff43b5147"
                            }
                        }, {
                            "id": 81,
                            "replies": [{
                                "sha": "8335252c5974899d05fa732efb871d19d12f889de93782e04f0000da7be64551",
                                "depth": 0,
                                "html": "Previous semi expired and the IP-hopping editor is back again adding contentious material. Needs rev-del too. <a href='https://en.wikipedia.org/wiki/User_talk:MusikAnimal/Archive_8#Nicholas_McDonald'>Previous discussion</a> <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 15:12, 16 September 2014 (UTC)"
                            }, {
                                "sha": "b26cf580c03893350442200205c1157fddb93b049f9704008a8cc0ce1c581e6e",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> This is really getting out of hand. How many articles are we talking about here? I have yet to look into these <a href='./Wikipedia:EDITFILTER' title='Wikipedia:EDITFILTER'>other measures</a> we could take, but problem is we need a narrow set of criteria in order for it to be effective. I'll brainstorm a solution, but for now I think semi-protecting the articles is the best route. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:23, 16 September 2014 (UTC)"
                            }, {
                                "sha": "58ed52939306656e421d99474479e18ebe77f247ceb875cfb57455910272a312",
                                "depth": 3,
                                "html": "I'm not sure there is much that can be done here. The new set of edits are from a University IP block and different from the previous range. Like you said, semi is probably the best way to tackle it as of now. Thanks for taking care of it. <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 16:59, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./List_of_The_X_Factor_finalists_(UK_series_10)' title='List of The X Factor finalists (UK series 10)'>List of The X Factor finalists (UK series 10)</a>",
                            "shas": {
                                "html": "8a99225b58a10953e8f27b3e4c5d85864ce273f14f65722e26d901d9a8270a43",
                                "indicator": "85cf2b28ec8cb2f5924e9e9b573dbd6320d5c0de59b0407b20899bc6ff6b6d15"
                            }
                        }, {
                            "id": 82,
                            "replies": [{
                                "sha": "728352a4221120b298b42b45dd00deb22853756fb037a96aed26703442b25c47",
                                "depth": 0,
                                "html": "Are you a bot? <a href='./Special:Contributions/216.155.131.68' title='Special:Contributions/216.155.131.68'>216.155.131.68</a> (<a href='./User_talk:216.155.131.68' title='User talk:216.155.131.68'>talk</a>) 17:36, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 216.155.131.68",
                            "shas": {
                                "html": "d64ca21b95071147f8b5a967f89e18ec9ba61e88b466cd6991c32a14550109b7",
                                "indicator": "e8c6015cab08483bdd18e26a7ca0cf3142dbcc23093af87e8a31126d5a297746"
                            }
                        }, {
                            "id": 83,
                            "replies": [{
                                "sha": "a593426a67d027c7b4c89c1015a6a2d29e0afaa877f57312e3a6ff2cb343e33a",
                                "depth": 0,
                                "html": "I would like to make an edit request on the Ahmed Hassan Imran page based on <a href='https://en.wikipedia.org/wiki/Wikipedia:Biographies_of_living_persons#BLPCRIM'>Biographies_of_living_persons#BLPCRIM</a> and based on unproven allegations by a politician which was published on a single newspaper recently while there are counter evidences against the allegations. Please, guide me sir on how I can do this. Thank you in advance.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a> • <a href='./Special:Contributions/MehulWB' title='Special:Contributions/MehulWB'>contribs</a>) 15:26, 16 September 2014 (UTC)"
                            }, {
                                "sha": "34a6ab03304319ff2481bea013b13f9100c5d8626a4e030ae4031fbf320bebab",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> View the source of the page (<a href='https://en.wikipedia.org/w/index.php?title=Ahmed_Hassan_Imran&amp;action=edit'>here</a>) then click on the blue button to submit an edit request. State only what you wish to change and why. Please also remember to sign your comments on talk pages by placing four tildes (~~~~) at the end. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:32, 16 September 2014 (UTC)"
                            }, {
                                "sha": "da06b7c0d1d4fd68bd6ea72effd5735a33857f8b9567f866255a309c9c4b3363",
                                "depth": 0,
                                "html": "Thank you very much for helping out. <br><a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a>) 15:40, 16 September 2014 (UTC)"
                            }, {
                                "sha": "b531b730df1a91e74106bed0cad0ab4ab9c25823e29feb083893bb51880be45c",
                                "depth": 0,
                                "html": "Sir, I thing I made the edit request properly but I am not sure if I did it correctly. Can you please, check it and tell me if I forgot anything? Thank you again.<br><a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a>) 17:06, 16 September 2014 (UTC)"
                            }, {
                                "sha": "87a644257d94788badf12a656b086bcf0ab15b3efd0db5b3592b75bc5199f7a6",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You should only make an edit request for content that is <i>uncontroversial</i> or is backed by <a href='./Wikipedia:CONSENSUS' title='Wikipedia:CONSENSUS'>consensus</a>. At first glance that doesn't appear to be the case, but either way I unfortunately do not have time right now to carefully review the proposed content and the layers of potential BLP issues. The edit request is logged and any patrolling admin can come by and answer it. The page protection will also be expiring soon anyway. When it does, be careful not to jump back into an <a href='./Wikipedia:EW' title='Wikipedia:EW'>edit war</a>. Remember, we work together to agree on content and how it is presented. More importantly, be very mindful of our <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>policy on biographies of living persons</a>. Violations could lead to blocks. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:11, 16 September 2014 (UTC)"
                            }, {
                                "sha": "3d4f544389f1590f224ff57f1ad55d6d37ee7cfdd639c49bc6832e3ba8d41aa8",
                                "depth": 0,
                                "html": "I greatly appreciate your suggestion. Thank you.<a href='./User:MehulWB' title='User:MehulWB'>MehulWB</a> (<a href='./User_talk:MehulWB' title='User talk:MehulWB'>talk</a>) 18:00, 16 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Edit request",
                            "shas": {
                                "html": "1286179666becb201a93afb39461f0fa97779a81e3f262077ae1eb9aac3bd605",
                                "indicator": "41d140197b86da82b7390792d1ff0fa9b9c99e64d3a02c2f44eb96a6dbf63643"
                            }
                        }, {
                            "id": 84,
                            "replies": [{
                                "sha": "d989099bb651355646b367790a5dc130a6808aa9445093e396a593775889115e",
                                "depth": 0,
                                "html": "Dear MusikAnimal,<br>You have deleted a company article called Alliance Global Group before 2 months ago due to mareketing tone.<br>The same deleted article has been recreated by a wikpedia editor.<br>i wanted to notify that<ul><li>the company is not notable one</li><li>they dont have enough sources for citation.</li><li>no newspapers have been mentioned about alliance global group. — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Baxzius' title='User:Baxzius'>Baxzius</a> (<a href='./User_talk:Baxzius' title='User talk:Baxzius'>talk</a> • <a href='./Special:Contributions/Baxzius' title='Special:Contributions/Baxzius'>contribs</a>)</li></ul><a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi there. Personally I think things look much better this time around, with some decent sources. However if you feel the article does not satisfy the <a href='./Wikipedia:NORG' title='Wikipedia:NORG'>notability guideline</a>, or otherwise meets some <a href='./Wikipedia:DEL-REASON' title='Wikipedia:DEL-REASON'>deletion criteria</a>, you can <a href='./Wikipedia:AFDHOW' title='Wikipedia:AFDHOW'>nominate it for deletion</a>. Hope this helps. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:56, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Alliance_Global_Group' title='Alliance Global Group'>Alliance Global Group</a>",
                            "shas": {
                                "html": "e2c6e32278e99904d4351dd8fee5de4ff20a589f39f4eeef4842f6832f50b9e7",
                                "indicator": "0420d5c6dc96c26a477e8f60f93ec51265e873b60c444d69779dc307ec92789b"
                            }
                        }, {
                            "id": 85,
                            "replies": [{
                                "sha": "29b147fdd3cda700431c317bd193c9b85e1c25fa74d7236e78fd309165767af3",
                                "depth": 0,
                                "html": "May i pleas have the code for the Dead Spirit page you deleted for improvement. thank you <a href='./User:Greatblade12' title='User:Greatblade12'>Greatblade12</a> (<a href='./User_talk:Greatblade12' title='User talk:Greatblade12'>talk</a>) 23:19, 17 September 2014 (UTC)greatblade13<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! Your article can now be found at <a href='./User:Greatblade12/Dead_Spirit' title='User:Greatblade12/Dead Spirit'>User:Greatblade12/Dead Spirit</a>. I have set it up so that when you finish the article, you can submit it for review. Simply hit the 'Submit your draft for review!' button. This way others can help you refine it before it gets published to the mainspace. However, before you go any further, I'd make sure the band meets the <a href='./Wikipedia:BAND' title='Wikipedia:BAND'>notability guideline</a>, as even a well-sourced may still get deleted if the subject is not notable. The fact is, unfortunately, <a href='./Wikipedia:NOTEVERYTHING' title='Wikipedia:NOTEVERYTHING'>not everything can be on Wikipedia</a>. Just please bear that in mind. Let me know if you need help. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:05, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Greatblade12 code please",
                            "shas": {
                                "html": "f27a581b552c18fe1df65c0aa4f7957ae38d71b91503603c882817f54e17fee7",
                                "indicator": "51774d3d2728e600a4f65f53274961f8e75c2600b2a240249c9e08141318a848"
                            }
                        }, {
                            "id": 86,
                            "replies": [{
                                "sha": "3a6ae6a14c1874c0281dbf8a189ce706563de041fa019c53784c3a8844c08718",
                                "depth": 0,
                                "html": "You deleted the article I posted for Richie Shakin' Nagan for copyright infringement based on it as being taken from the Grateful Garcia Gathering website.  I gave them that bio to use.  It is the bio from my facebook page.<br><br><a href='https://www.facebook.com/Richie.Shakin.Nagan/info?collection_token=853694445%3A2327158227%3A8'>https://www.facebook.com/Richie.Shakin.Nagan/info?collection_token=853694445%3A2327158227%3A8</a>  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:ShakinNagan' title='User:ShakinNagan'>ShakinNagan</a> (<a href='./User_talk:ShakinNagan' title='User talk:ShakinNagan'>talk</a> • <a href='./Special:Contributions/ShakinNagan' title='Special:Contributions/ShakinNagan'>contribs</a>) 01:09, 18 September 2014 (UTC)"
                            }, {
                                "sha": "a794cd46fd0e04f7b8f9045adc542178eee5ae0aa31477b443849e3755344c44",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Please see the notice I left on your talk page. Even if you are the copyright owner, you need to license the content for use on Wikipedia. There are steps that must be taken to verify the licensing, see <a href='./Wikipedia:DONATETEXT' title='Wikipedia:DONATETEXT'>WP:DONATETEXT</a>. In many cases it may be easier to simply reword the content altogether. Sorry for the inconvenience. Copyright is taken very seriously on Wikipedia as there are obvious legal concerns involved. Let me know if you need help. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:21, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please undelete article on Richie Shakin' Nagan",
                            "shas": {
                                "html": "e6bba52ebef3502f93c8abc520cebb7cfd91f4c2dc86f6d884a2ca4a09444455",
                                "indicator": "0a11330b677901827663c45a5b212ba5deadebcdb126d288d5f323e6ec863227"
                            }
                        }, {
                            "id": 87,
                            "replies": [{
                                "sha": "ff26ef33e315ca9913d4b6caf0e8b451d20815b159aa0b079f6560a94c19bae4",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-17' title='Wikipedia:Wikipedia Signpost/2014-09-17'>Wikipedia:Wikipedia Signpost/2014-09-17</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:37, 18 September 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 17 September 2014",
                            "shas": {
                                "html": "448aa4c9c44fda920e130f2984ef24ecc4df27f7c3a44b5126e80311492f9f31",
                                "indicator": "40500d91fd19a9f653424f5f14e5d3ca7a2a2f65414b1fca09247cfc83a374d5"
                            }
                        }, {
                            "id": 88,
                            "replies": [{
                                "sha": "30665f7c10829745fb7331812e285cfc9bd38a742806ff77cbdd89f6f5f58b10",
                                "depth": 0,
                                "html": "Hi :), I made an edit on the Halo series page that you just got rid of, it was constructive information explaining that Bungie formally developed the franchise, but now 343 industries develop it, which is true. Please keep that minor change I made, thanks :D<br><br>18/09/2014 Cuno1234<a href='./User:Cuno1234' title='User:Cuno1234'>Cuno1234</a> (<a href='./User_talk:Cuno1234' title='User talk:Cuno1234'>talk</a>) 15:46, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Cuno1234",
                            "shas": {
                                "html": "76c648d3fe470c52c4c626ddcb0ebbb3d8a57a26e77ff2d5252267bc67a1bf12",
                                "indicator": "2be2231ae4a149eb0a9e6ffec3432ca1bafb5d2f5e830e0bc0a8b0f614ba30fd"
                            }
                        }, {
                            "id": 89,
                            "replies": [{
                                "sha": "76ff58da3a357ff8dd680a2e1785413be58d5450faea122b55f774d47c21c432",
                                "depth": 0,
                                "html": "Hi, I saw your comment on the AIV and I do have links to pages that support the idea that the person was evading a block. I've never reported such a thing like evasion/sockpuppetry, so I suppose I didn't know exactly what to do. Here are some revisions: <a href='https://en.wikipedia.org/w/index.php?title=Roum_Man&amp;diff=624423928&amp;oldid=624361928'>from IP address</a> <a href='https://en.wikipedia.org/w/index.php?title=Bunsoh_Man&amp;diff=prev&amp;oldid=626118217'>from suspected sockpuppet</a>. The pages that the person keeps editing and edit warring on are on the same topic (<a href='./Bog_bodies' title='Bog bodies'>bog bodies</a>) and they are formatted the same, which strongly indicates block evasion. They've also claimed other user's reverts are vandalism and even gave a <a href='https://en.wikipedia.org/w/index.php?title=Rendsw%C3%BChren_Man&amp;diff=624427836&amp;oldid=624427579'>personal attack</a> in one instance. --<a href='./User:Gourami_Watcher' title='User:Gourami Watcher'><b>Gourami</b><b>Watcher</b></a><a href='./User_talk:Gourami_Watcher' title='User talk:Gourami Watcher'><sup><i><b>pride</b></i></sup></a> 21:59, 18 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "RE",
                            "shas": {
                                "html": "4317607d56a191005437696559cac761fb395d55136e1ed842b522663c1da8c4",
                                "indicator": "5bae5917b50fd09c75252c6549af9335a8e2add25f43635815e5cf69c22715af"
                            }
                        }, {
                            "id": 90,
                            "replies": [{
                                "sha": "a3628d09dfe2ddb2e53cd606445b5f65c7d1820c51a62dec2226bc0494b77557",
                                "depth": 0,
                                "html": "Hello, requesting guidance for a proposed edit to the Kevin Mitnick page. I noticed that you mentioned that 'Kevin Mitnick is an American convicted felon' normally wouldn't be noted in the first line of the article, UNLESS this is what the subject is known for. The rationale for this edit came from using the Frank Abagnale article as a model (Abagnale even wrote a promotional blurb for Mitnick's published autobiography), and from the fact that this is indeed what Mitnick is most famous for. See a simple Google image search resulting in his wanted posters, as well as the fact that he promotes his 'most wanted' status himself to position himself in his current field. Given this information, would it be inappropriate to make such an edit in the opening line of the article? — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Boorsours' title='User:Boorsours'>Boorsours</a> (<a href='./User_talk:Boorsours' title='User talk:Boorsours'>talk</a> • <a href='./Special:Contributions/Boorsours' title='Special:Contributions/Boorsours'>contribs</a>)<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> The <a href='./MOS:BLPLEAD' title='MOS:BLPLEAD'>first sentence</a> generally states the name and occupation, or why they are notable. This may be because of criminal matter, but I don't see the point in making a big fuss over it when the second sentence details the convictions. Not having it be the very first thing in the article makes it more neutral, and in my opinion feels more consistent with other BLPs. If I were you I'd bring my concerns to the <a href='./Talk:Kevin_Mitnick' title='Talk:Kevin Mitnick'>talk page</a> to gain input from other involved editors, and be careful no to start another edit war. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:43, 18 September 2014 (UTC)"
                            }, {
                                "sha": "4388884747aa38c32fa133ad3e2b2649d9dd6a3e8bacb68ebb080b0a8129e68e",
                                "depth": 0,
                                "html": "Okay thank you for the advice. I will take the issue to the talk page of the article as well.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Boorsours' title='User:Boorsours'>Boorsours</a> (<a href='./User_talk:Boorsours' title='User talk:Boorsours'>talk</a> • <a href='./Special:Contributions/Boorsours' title='Special:Contributions/Boorsours'>contribs</a>) 01:39, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Kevin Mitnick",
                            "shas": {
                                "html": "311186a3b7ed66bd7d0a82d639cb961487f445139b99447011226adac97f1e97",
                                "indicator": "c1bcdd6956aa1c31be014490e81bceffa5d12cc84c6c317aa039a96d1b67335b"
                            }
                        }, {
                            "id": 91,
                            "replies": [{
                                "sha": "59f01932414c36e6fb9e3cc57767771a0e2432ec7ef511783c37ed2b67d3fd8c",
                                "depth": 0,
                                "html": "You just deleted my 'article': <a href='https://en.wikipedia.org/wiki/Kissmetrics'>https://en.wikipedia.org/wiki/Kissmetrics</a>.<br>Sorry, it was actually an empty page - a plug for a future article stub on the subject. I am a very new editor and this is my first try at my own article. I thought I created it in my Sandbox. I was actually working on another article stub in parallel. I would have unpublished it if I would have realized it went into the public space not my sandbox. Thank you for deleting it. Once again - it was not intentional.<a href='./User:NancyJeanGF' title='User:NancyJeanGF'>NancyJeanGF</a> (<a href='./User_talk:NancyJeanGF' title='User talk:NancyJeanGF'>talk</a>) 02:47, 19 September 2014 (UTC)"
                            }, {
                                "sha": "fddf9688c6ce479eab6a649c755bd9f8c6a321aa149b29009c30f9a646e1ffa4",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Welcome! Don't worry about the mistake. You can find your sandbox <a href='https://en.wikipedia.org/wiki/Special:MyPage/sandbox?action=edit&amp;redlink=1&amp;editintro=Template%3AUser_sandbox&amp;preload=Template%3AUser_sandbox%2Fpreload'>here</a>, or if you'd like you can use the <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> to create new articles. That will set it up so that it can be <a href='./Wikipedia:AfC' title='Wikipedia:AfC'>submitted for review</a> before being published to the mainspace. Let me know if you need any help! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 03:02, 19 September 2014 (UTC)"
                            }, {
                                "sha": "b52c43cdeaa7e90aa887bee148bffb04cca14792dfb307ae508a0d3382b86dd6",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Thank you! I just did submit an article stub for review: <a href='https://en.wikipedia.org/wiki/User:NancyJeanGF/Mixpanel'>https://en.wikipedia.org/wiki/User:NancyJeanGF/Mixpanel</a>. I do not feel like I can do a whole article by myself yet, plus I hope others will help expanding/formatting it. <a href='./User:NancyJeanGF' title='User:NancyJeanGF'>NancyJeanGF</a> (<a href='./User_talk:NancyJeanGF' title='User talk:NancyJeanGF'>talk</a>) 03:48, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from NancyJeanGF",
                            "shas": {
                                "html": "6f97935bd641543925c363d201c34bc0cc8081120f2d7e1d58634f22d507b139",
                                "indicator": "ae18581494aef374cb3f7911c737774686fd9061ebb31f40b98372da09068cd1"
                            }
                        }, {
                            "id": 92,
                            "replies": [{
                                "sha": "0ea5355e26fe5717bb4687dbfcade31e19ff0b1be23e80270f17e86889aefc91",
                                "depth": 0,
                                "html": "Hi MusikAnimal - many thanks for granting <i>Rollback</i> and I promise not to abuse it<a href='./User:Eugene-elgato' title='User:Eugene-elgato'>Eugene-elgato</a> (<a href='./User_talk:Eugene-elgato' title='User talk:Eugene-elgato'>talk</a>) 06:11, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Rollback",
                            "shas": {
                                "html": "02052f88cb63a109ddbd7bbdabdda0612a6d5c0058666934c755778440190dc0",
                                "indicator": "83d8c70574e0f40133053bc6d9224726c986fdb64d67058bd5bc6fa704e56b8c"
                            }
                        }, {
                            "id": 93,
                            "replies": [{
                                "sha": "cdbfcd9e1380ea1099ba08d4ffdf2fa194e2723e31640242cfb834a5a935aa7f",
                                "depth": 0,
                                "html": "Hello MusikAnimal,<br><br>I contact you, because you are trusted admin and I know you'll help me. I company page was created in violation of Wikipedia laws by Indian agency and they made sure it bypass the Wikipedia standards with some tricks, like fake references. <br>The is the page: <a href='https://en.wikipedia.org/wiki/Alliance_Global_Group'>https://en.wikipedia.org/wiki/Alliance_Global_Group</a><br><br>Please delete this page and ban if possible the following users: 94.200.109.2 ans GB Fan. <br>This users are commercial creators and don't have place in free content community.<br><br>If you need proofs that this people get money for creation of this page, please contact me.<br><br>Regards<br><br>Dennis  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:PapaDoc88' title='User:PapaDoc88'>PapaDoc88</a> (<a href='./User_talk:PapaDoc88' title='User talk:PapaDoc88'>talk</a> • <a href='./Special:Contributions/PapaDoc88' title='Special:Contributions/PapaDoc88'>contribs</a>) 07:41, 19 September 2014 (UTC)"
                            }, {
                                "sha": "9d0cd689eee48ee26fafb50df289b05bc1d7a6a248c4b96dc9e50c6182d4dbae",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi, what you are referring to is called <a href='./Wikipedia:PE' title='Wikipedia:PE'>paid editing</a>, and while strongly discouraged, it is not a violation of policy. Any issues you have with neutrality or unreliable sources can be expressed on article's <a href='./Talk:Alliance_Global_Group' title='Talk:Alliance Global Group'>talk page</a>, or you could add any relevant <a href='./Wikipedia:TMAIN' title='Wikipedia:TMAIN'>maintenance templates</a> to the article. Any users that persistently have issues maintaining a <a href='./Wikipedia:NPOV' title='Wikipedia:NPOV'>neutral point of view</a> or exert a problematic <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a> may be subject to preventive measures. Based on their history and user group, I have serious doubts <a href='./User:GB_fan' title='User:GB fan'>GB fan</a> is affiliated with this organization. Hope this clears things up, thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:55, 19 September 2014 (UTC)"
                            }, {
                                "sha": "ba63cdbd70268b1d101c3354efbde352fe00ba2f944c14b900b337aaa4bb5404",
                                "depth": 3,
                                "html": "@MusicANimal, I submitted the article for deletion, on request of the owner of the company. Hope it will not take long this article to be removed<br><br>Thanks — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:PapaDoc88' title='User:PapaDoc88'>PapaDoc88</a> (<a href='./User_talk:PapaDoc88' title='User talk:PapaDoc88'>talk</a> • <a href='./Special:Contributions/PapaDoc88' title='Special:Contributions/PapaDoc88'>contribs</a>)"
                            }],
                            "depth": 2,
                            "html": "Hello from PapaDoc88",
                            "shas": {
                                "html": "d1efdcc4e81351d4f1f09e3f828fc5c8e276319c59aae7d65af9cbc917cc9901",
                                "indicator": "1a9bc806919ca03cb123c67af6d43dbf3f44d597b64c3a79ab11baa57d0120fa"
                            }
                        }, {
                            "id": 94,
                            "replies": [{
                                "sha": "0c086beb36a364e99262ecac458e62ad8f1360cb9395d3299cf0587d3e5f72ec",
                                "depth": 0,
                                "html": "I did not make any personal attack on Winkelvi. Whatever I said was to explain why I didn't put forward that idea earlier. You do not have any right to remove my comment especially if it's non-disruptive. But still I do not want to start to conflict over  comment. So I'll just modify it instead of adding it back outright. <a href='./User:KahnJohn27' title='User:KahnJohn27'>KahnJohn27</a> (<a href='./User_talk:KahnJohn27' title='User talk:KahnJohn27'>talk</a>) 07:56, 19 September 2014 (UTC)"
                            }, {
                                "sha": "8fca8abde3d81ce6d92adb952e990d79d30de7289c3abeef3115e07856daa42a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Manipulating other's comments on talk pages is most certainly not acceptable, but here I was trying to cool things down from what appeared to be a heated behavioural dispute. The portion of the comment that I removed did not seem to serve any purpose other than to disparage another editor. All I ask is to stay on topic, and don't comment on other contributors' actions. I do apologize for removing your words, and thank you for your understanding of my rationale. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:02, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "No attack",
                            "shas": {
                                "html": "fb9c2d8ad384a7596a48121048b9a33a768a2a0959853744140293dedc476a1f",
                                "indicator": "f08630f8511f1c5e11de22674e763add116e34c72d756f91e55e2599ad990f5e"
                            }
                        }, {
                            "id": 95,
                            "replies": [{
                                "sha": "f2d3a67fc18f19c1a9525ec581f5aa4cd85441b6000d53a25ddbf3fe40bad44f",
                                "depth": 0,
                                "html": "Hi...is there anything you can do to help with <a href='./Middle_East_Eye' title='Middle East Eye'>Middle East Eye</a>?....just look at the history and you will see quickly what is happening with the same editor using multiple accounts to delete the same content many, many times and despite repeated warnings and reversions by Cluebot, Administrators, other users. He has said over and over again that he is an employee of the company which is the subject of the article who simply disagrees with the content and wants it removed yet has never once come to the Talk page. I already requested page protection once but it was declined and I got a warning about Edit Warring but I am a loss here as what to do. He apparently will not stop vandalizing the article unless something is done. <a href='./User:Susan_belt74' title='User:Susan belt74'>Susan belt74</a> (<a href='./User_talk:Susan_belt74' title='User talk:Susan belt74'>talk</a>) 08:20, 19 September 2014 (UTC)"
                            }, {
                                "sha": "54cdb2443e2a552cd4a1a74191b522777d540fd31b0273b79e132a1bccc4f137",
                                "depth": 1,
                                "html": "Users blocked by <a href='./User:Ks0stm' title='User:Ks0stm'>Ks0stm</a>. If disruption continues we may need to <a href='./Wikipedia:PROTECT' title='Wikipedia:PROTECT'>protect</a> the page. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:06, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Help With Middle East Eye Please",
                            "shas": {
                                "html": "0d0e67a1666efdc8c604ad102c5011ba0129279d64816b3b998944bc589744f1",
                                "indicator": "2f8670d730b09d664b895e8d4a7964d172a3b9cb034afb467a3fb3b8a2144572"
                            }
                        }, {
                            "id": 96,
                            "replies": [{
                                "sha": "fb578b917bea1a90a3224d8f845461117feebbfd6b1a4636d8c9cd813dfe94f2",
                                "depth": 0,
                                "html": "I posted this already under the fakestu talk page, but I wanted to put it here under my real account. You posted on several of my students' talk pages. I want to apologize for the error. I am the professor <a href='./Drdemartino' title='Drdemartino'>Drdemartino</a>. Here is our <a href='./User:Drdemartino/PR_Sum_2013' title='User:Drdemartino/PR Sum 2013'>course page</a>. I want my students to learn how to edit Wikipedia for several reasons, noted in the project goals. Today was an attempt at practicing. I showed them, with the fakestu page, how to create userpages, and practice editing. I realize now I should have had them do that in their sandboxes (although last year a student was scolded for that, as well). Is there a more appropriate place for them to practice? I definitely don't want the students diving right into editing  <a href='./Social_judgment_theory' title='Social judgment theory'>the assignment page</a>.  Thank you for your feedback and advice; you clearly care about Wikipedia, as do I. <a href='./User:Drdemartino' title='User:Drdemartino'>Drdemartino</a> (<a href='./User_talk:Drdemartino' title='User talk:Drdemartino'>talk</a>) 17:32, 19 September 2014 (UTC)"
                            }, {
                                "sha": "3ae45a8216b4370ae1413a22c71506b439df3b4032ed942044916985c25562bd",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hey! First off no need to apologize, it was obvious what was going on and it's not like you were creating test pages in the mainspace. The only reason I was concerned was because some of the user pages they created read like social networking profiles, implying <a href='./Wikipedia:NOTWEBHOST' title='Wikipedia:NOTWEBHOST'>using Wikipedia as a web host</a>. Looks like they've blanked their user pages, so no harm done. I'm honestly not that familiar with our education program, but I can attest that <a href='./Special:MyPage/sandbox' title='Special:MyPage/sandbox'>the sandbox</a> is always a safe place to practice. The only things not welcome there (or anywhere) are <a href='./Wikipedia:BADSAND' title='Wikipedia:BADSAND'>copyrighted, offensive or libelous content</a>.<br><br> If you need more information, you could ask at the <a href='./Wikipedia:Education_noticeboard' title='Wikipedia:Education noticeboard'>education noticeboard</a>. They know all the ins and outs of the program. As far as I can tell your course looks great, and would yield substantive improvement to a live article – something I welcome with open arms. Hope this helps, and thanks for helping improve Wikipedia :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:13, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Drdemartino",
                            "shas": {
                                "html": "28869557f3ae6675d9fc948b7c7955e0caf83ae5bc89358d0f767064f621acf4",
                                "indicator": "7c1287e6e9a334434f02ab4d689f6e434b4e77985d653aede50e66873dbb59df"
                            }
                        }, {
                            "id": 97,
                            "replies": [{
                                "sha": "e3a74f6cc395aaaedda9bbb4009c5f633e2a10792804f38a7e63d93734f1ef1a",
                                "depth": 0,
                                "html": "Hey, I had made those edits because the information seemed irrelevant at the point in the article in which it was.<br><br>Thanks  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Adostaler' title='User:Adostaler'>Adostaler</a> (<a href='./User_talk:Adostaler' title='User talk:Adostaler'>talk</a> • <a href='./Special:Contributions/Adostaler' title='Special:Contributions/Adostaler'>contribs</a>) 20:18, 19 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Adostaler",
                            "shas": {
                                "html": "c7fc5c04fbc906013ebb132222afb57ee6e9efc3831b3b28567a64b8d40859fe",
                                "indicator": "8ce554acb21ef3a31692ad677c221e20e36173fde213b189af0669b34584b5c9"
                            }
                        }, {
                            "id": 98,
                            "replies": [{
                                "sha": "b9cb1a6088845461d9ba52deeebc61637e368b437673c85b70521cab6f9e3c1e",
                                "depth": 0,
                                "html": "Hi! Since you're an experienced editor in music-related articles and the alternative/rock WikiProjects, would you be interested reviewing or commenting on my <a href='./Wikipedia:Featured_article_candidates/Xx_(album)/archive1' title='Wikipedia:Featured article candidates/Xx (album)/archive1'>FA nomination</a> of the article <a href='./Xx_(album)' title='Xx (album)'>xx (album)</a>? The review page has been inactive for over a week, so another reviewer's input would be greatly appreciated. Cheers! <a href='./User:Dan56' title='User:Dan56'>Dan56</a> (<a href='./User_talk:Dan56' title='User talk:Dan56'>talk</a>) 07:46, 20 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FAC for xx (album)",
                            "shas": {
                                "html": "c2393326dd44e1ce96bdf17734f1f58c47a80be595dc7023bdf1d5f283fe1eea",
                                "indicator": "0419f7605ee7c87197f1b611019efada6c40a62894b8d44b0f85ce5828be9856"
                            }
                        }, {
                            "id": 99,
                            "replies": [{
                                "sha": "f57ac3733c688aa95f75b0a29eb16604a2e62201703680ec8838efd5f1a3b5bf",
                                "depth": 0,
                                "html": "Hello. MusikAnimal. Can you help? with the following articles; <a href='./Millfield_House' title='Millfield House'>Millfield House</a>, <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a> and <a href='./Millfield_Theatre,_Edmonton,_London' title='Millfield Theatre, Edmonton, London'>Millfield Theatre, Edmonton, London</a>. To cut a long story short the original article of Millfield House was redirected to Millfield Theatre without discussion with much of the original text being deleted. I have redirected the article back to its original location and rewrote the article. Can you try to repair the links to both articles? and remove the link to Millfield Theatre, Edmonton, London which I set up by mistake. Hope this is all clear. Thanks <a href='./User:Northmetpit' title='User:Northmetpit'>Northmetpit</a> (<a href='./User_talk:Northmetpit' title='User talk:Northmetpit'>talk</a>) 10:21, 19 September 2014 (UTC)"
                            }, {
                                "sha": "44a55fd1a094e97c3ed0d662d3ceaf3297702663fa8c499a60164aa6112cb2bc",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm not sure if I follow. <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a> now redirects to <a href='./Millfield_House' title='Millfield House'>Millfield House</a>, is that not what you wanted? Also, you would like <a href='./Millfield_Theatre,_Edmonton,_London' title='Millfield Theatre, Edmonton, London'>Millfield Theatre, Edmonton, London</a> to be deleted entirely? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:18, 19 September 2014 (UTC)"
                            }, {
                                "sha": "1038bdca599be590bf6d275c0f406175099df2b1d214ce097f52800a53a731a0",
                                "depth": 2,
                                "html": "Hi MusikAnimal. Thanks for swift reply. Sorry, I didn't explain myself correctly. I would like to see the redirect removed so there are separate links to the two articles and the Millfield Theatre, Edmonton, London removed. Thanks <a href='./User:Northmetpit' title='User:Northmetpit'>Northmetpit</a> (<a href='./User_talk:Northmetpit' title='User talk:Northmetpit'>talk</a>) 12:28, 20 September 2014 (UTC)"
                            }, {
                                "sha": "aa0a74b40557c22c98743f3a77daf97c1456a2b5b8dab6a75b550ba146d8c208",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Okay, I think I've done what you needed. I deleted Millfield Theatre and then moved Millfield Theatre, Edmonton, London there. So now you are left with <a href='./Millfield_House' title='Millfield House'>Millfield House</a> and <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a>. <a href='./Millfield_Theatre,_Edmonton,_London' title='Millfield Theatre, Edmonton, London'>Millfield Theatre, Edmonton, London</a> redirects to <a href='./Millfield_Theatre' title='Millfield Theatre'>Millfield Theatre</a>. Let me know if you need anything else! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 23:30, 21 September 2014 (UTC)"
                            }, {
                                "sha": "c47728ca96d02c81bd05790f690ecd789db78278df1c59be2ea6180bedc51351",
                                "depth": 4,
                                "html": "Hi MusikAnimal. Thanks for your help that's exactly what was needed. It's great to know there are really helpful people on here. Cheers <a href='./User:Northmetpit' title='User:Northmetpit'>Northmetpit</a> (<a href='./User_talk:Northmetpit' title='User talk:Northmetpit'>talk</a>) 09:39, 22 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Millfield House",
                            "shas": {
                                "html": "28784494cd0b73ef493a9285aa4acd62b7f25bcee37ca93687843516bcead030",
                                "indicator": "6a163c002659988018ce119c32e0001b90a4ccab9dcb975b3e7683a94b2bf2fe"
                            }
                        }, {
                            "id": 100,
                            "replies": [{
                                "sha": "3fa2cf4689d9d89e08a41e8fc9f71d921345bcc70a83953822d3473bde07d171",
                                "depth": 0,
                                "html": "Hi, I was trying to update Dustz's band page since 1. KenT is no longer a member of the band 2. They have two new band members &amp; 3. they have had two new singles out this year. I see that you have removed the changes i made. Please reconsider so that readers have up to date facts about this band. Thanks.<br><sup><a href='./User_talk:TSevener_(WMF)#cite_note-1'>[1]</a></sup><a href='http://dustz.jp/#profile'>http://dustz.jp/#profile</a> <a href='./Special:Contributions/24.186.85.109' title='Special:Contributions/24.186.85.109'>24.186.85.109</a> (<a href='./User_talk:24.186.85.109' title='User talk:24.186.85.109'>talk</a>) 01:12, 23 September 2014 (UTC)"
                            }, {
                                "sha": "e2927d9b19565fd898aedfdde2c26c9d976da6871669127daadb1f08323eb0f6",
                                "depth": 1,
                                "html": "Hey! I saw that you add 'hello' as a band member. Arbitrarily added 'hello', 'hi', etc is a common form of vandalism. Through my own research I didn't find any correlation between Dustz and someone named hello, but nonetheless I've undone my revert. My apologies if I have incorrectly identified your edits as vandalism. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:29, 23 September 2014 (UTC)"
                            }, {
                                "sha": "7bd3fa5ca8be84d56e89668ac580b88ce99346c51c2fc14a8544d533124dd857",
                                "depth": 0,
                                "html": "Oh, i completely understand. but there is an actual person in the band named 'hello' now ( <a href='https://twitter.com/HSP_reader'>[HSP_reader]</a> )(I don't think there's any info on his actual name). But anyway, thank you so much.<a href='./Special:Contributions/24.186.85.109' title='Special:Contributions/24.186.85.109'>24.186.85.109</a> (<a href='./User_talk:24.186.85.109' title='User talk:24.186.85.109'>talk</a>) 01:55, 23 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Dustz page 24.186.85.109",
                            "shas": {
                                "html": "9392c719cf978c6d974bc6d3dd4e2b5a194807440f82b50133a57887e023e395",
                                "indicator": "f5a30923a76d2cd87449c55393ebfee0d2936155d0e180a904d8f11f3c3c8ce8"
                            }
                        }, {
                            "id": 101,
                            "replies": [{
                                "sha": "c5bc30520368653ef2d326889eb480612788b04f358c2cd0ac9173880e9446d0",
                                "depth": 0,
                                "html": "MMORPG for four years Taera why u delete? --<a href='./User:Goccie' title='User:Goccie'>Goccie</a> (<a href='./User_talk:Goccie' title='User talk:Goccie'>talk</a>) 15:27, 23 September 2014 (UTC)"
                            }, {
                                "sha": "b8e3b5bd671ce707787b2b05d5c04f0af70eae7894f32c927737b5cb36d31784",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> See your talk page. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:28, 23 September 2014 (UTC)"
                            }, {
                                "sha": "0491eb04e1e4bb85f84da2b4965fcaa5b6467970cc3645d092c63d701f645085",
                                "depth": 0,
                                "html": "Look at the article it deserves to stay! <a href='./User:Goccie' title='User:Goccie'>Goccie</a> (<a href='./User_talk:Goccie' title='User talk:Goccie'>talk</a>) 15:30, 23 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hey",
                            "shas": {
                                "html": "0a43a06fa1e2a487adc78a409b8b32f67546cc5e9be8d125d34a4c44fc0d287f",
                                "indicator": "7a11b00f83ab1ac2487cc03000c93424d91c04a9eeefcc046290e3df4dbe8f75"
                            }
                        }, {
                            "id": 102,
                            "replies": [{
                                "sha": "06ccf8a773e1db8dc873b5fd74773a4bbcee5349b3d4588f0dc991122eb4ed2c",
                                "depth": 0,
                                "html": "On <a href='./Talk:Robin_Williams' title='Talk:Robin Williams'>Talk: Robin Williams</a>, <a href='./User:Richard_Arthur_Norton_(1958-_)' title='User:Richard Arthur Norton (1958- )'>User:Richard Arthur Norton (1958- )</a> made this comment <i>Creating a new infobox parameter to satisfy one person complaining about one celebrity is silly</i>. Due to the nature of his comment I thought he was referring to me and I took objection to it. When I raised my objection others said Richard wasn't referring to me. However even though you said earlier not to comment on editors but to comment on content, <a href='./User:Winkelvi' title='User:Winkelvi'>User: Winkelvi</a> in a comment accused me of trying to make the whole Rfc about me. This comment of Winkelvi is clearly an accusation on me in which he accuses me of starting the Rfc for my own personal purposes which I've stated many times isn't true. Was it my fault that I thought Richard was referring to me? Even if it was what right does Winkelvi have to accuse me of trying to make the Rfc about me? This is clearly an accusation against me. I think that comment of his should be removed since the whole comment is about accusing me instead of commenting on the Rfc.  <a href='./User:KahnJohn27' title='User:KahnJohn27'>KahnJohn27</a> (<a href='./User_talk:KahnJohn27' title='User talk:KahnJohn27'>talk</a>) 06:13, 23 September 2014 (UTC)"
                            }, {
                                "sha": "c78ff0c2cf432190d9b8175d6a055ee3f04367c435138ec2af2dc73e26d57d29",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> My best advice? <a href='./Wikipedia:DROPIT' title='Wikipedia:DROPIT'>Drop it</a>. Ignore it. Return to constructive editing. I apologize for being blunt, but all of you are acting like children. All I ask is that you stay on topic. If someone says something negative about you, and you really let it get to you, bring it up on their talk page. Don't reply on the article talk page, you only <a href='./Wikipedia:NPANPA' title='Wikipedia:NPANPA'>escalate tension that leads to more off-topic drama</a>. If you're so inclined, bring it to AN/I. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:46, 23 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Deliberate accusation by <a href='./User:Winkelvi' title='User:Winkelvi'>User: Winkelvi</a>",
                            "shas": {
                                "html": "1880aadee71ff6b959c5b5933c4b48b3d096002e988ec52b1122e76138a9d129",
                                "indicator": "7cdc92387154abc98e2d5a199bc6cd5d6275db5ee69b9631ef2548a6efc9de19"
                            }
                        }, {
                            "id": 103,
                            "replies": [{
                                "sha": "17baf2ffe0ceca29f0cf1d51d43b0dfa9fbde7f0865fc4802a00671a6f165148",
                                "depth": 0,
                                "html": "Hi,<br>Sorry. Actually I forgot to add a short summary of my edit. I will definitely include it in my next edit. There were several issues with the page so only I removed the content which were poorly sourced. I hope all the issues related to that page has been addressed.<br><br>Can you please help me removing the 'ISSUES' sign from that page? Can you let me know how can I resolve the issues? It appears that there are issues associated with this article. I want that to be resolved. All your help would be greatly appreciated.<br><br>Moreover I am preparing for civil services exam. I read an article of the subject in a magazine. Since she also became a civil servant in her first attempt and has contributed a lot to the society so I was inspired by that and wanted to put her page in Wikipedia. Since this is my first page so kindly excuse my mistakes and help me to retain the page. This will further help me in contributing more to Wikipedia in a correct way.<br><br><a href='./User:Krarjunakr' title='User:Krarjunakr'>Krarjunakr</a> (<a href='./User_talk:Krarjunakr' title='User talk:Krarjunakr'>talk</a>) 17:19, 24 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Krarjunakr",
                            "shas": {
                                "html": "3d263db27997b75863d8384f3942ced31f33b0e68ad12c97fecb751710f36efe",
                                "indicator": "3b76d43be3669f27cfad27c436075dedd8cfa8fa3b3ef5ada87ef796577a6ad7"
                            }
                        }, {
                            "id": 104,
                            "replies": [{
                                "sha": "5875df2c379995bbc5d7347533cb486310f4141c7462b2c653b13b6c0810e3d9",
                                "depth": 0,
                                "html": "Hi, I just tried to remove an album title on a band page that has not been officially announced. It is not officially confirmed or cited and should be taken down. The page is Walk The Moon <a href='./Special:Contributions/108.29.161.91' title='Special:Contributions/108.29.161.91'>108.29.161.91</a> (<a href='./User_talk:108.29.161.91' title='User talk:108.29.161.91'>talk</a>) 20:07, 23 September 2014 (UTC)"
                            }, {
                                "sha": "7ef1a5842fa93c53fddbafdf5bc3116918b67e17d5c166b11d5c7b2782b024d3",
                                "depth": 1,
                                "html": "No problem. Thanks for letting others know. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:21, 25 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 108.29.161.91",
                            "shas": {
                                "html": "6d43ababb930a2f849df26ba70c76413a18e699a5a46ccc7fb6b0811da7a4974",
                                "indicator": "d86ca661fd3af90d71f3bfd114d15fcc4666b556dd693d9b52289ebbf8948246"
                            }
                        }, {
                            "id": 105,
                            "replies": [{
                                "sha": "6f3ad27051caf34fde5efa8ac337e2c9bbf4c64302a91e17d63fa7c333287586",
                                "depth": 0,
                                "html": "Hi MusikAnimal,<br><br>Can you help me reverse the deletion of the following page so the copy can be changed and updated? Thanks! — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Froman_abe_chi' title='User:Froman abe chi'>Froman abe chi</a> (<a href='./User_talk:Froman_abe_chi' title='User talk:Froman abe chi'>talk</a> • <a href='./Special:Contributions/Froman_abe_chi' title='Special:Contributions/Froman abe chi'>contribs</a>)<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I'm sorry I cannot restore the page as it contains copyrighted material not licensed for Wikipedia. It will need to be rewritten from scratch. The copyrighted text that was used in the article can be found <a href='http://www.reuters.com/finance/stocks/companyProfile?rpc=66&amp;symbol=SSE'>here</a>. You may also wish to review our <a href='./Wikipedia:NCORP' title='Wikipedia:NCORP'>notability guideline on companies</a> to ensure this organization meets it. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:26, 25 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Seventy Seven Energy",
                            "shas": {
                                "html": "13f314d947978f0864f90da03bc48d8c0d43c10d7e96a6f744972c922c49a3d4",
                                "indicator": "f33034b8a4cd26cd092b42c91e0526cb2f0263964c52a317d6fd8c2e66e3abd4"
                            }
                        }, {
                            "id": 106,
                            "replies": [{
                                "sha": "54af1bfbc04c6e9f1f13fa514b87ad255b73dd4f1a50defa16ac6899cda1bcce",
                                "depth": 0,
                                "html": "Hi, i'm Rogers2098 and well I just want you to know that I change the information because the trailer of that specific movie has been release and the name 'A Many Splintered Thing' has been replaced. Also a tried to change the name of the article but I didn't know how. Im new in this by the way, but if you think that os better that way ok. <a href='./User:Rogers2098' title='User:Rogers2098'>Rogers2098</a> (<a href='./User_talk:Rogers2098' title='User talk:Rogers2098'>talk</a>) 05:35, 24 September 2014 (UTC)"
                            }, {
                                "sha": "aa30c9fa78c093ffedfb52e08af5ab13f8978330f83b58b4d7896a84dc4dccfb",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi! Thanks for getting in touch with me. Sorry about reverting your change... my mistake. I did not know the name of film had changed, and mistook your edit as vandalism. Anyhoo, looks like someone else has <a href='./Help:Move' title='Help:Move'>moved the page</a> to the new name. I see no one has officially welcomed you to Wikipedia... so welcome  I've left a few links on your <a href='./User_talk:Rogers2098' title='User talk:Rogers2098'>talk page</a> that you might find useful. Sorry again for my mistake. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 01:33, 25 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Rogers2098",
                            "shas": {
                                "html": "665e71051d053546297ccbc8bfc45b52f50e80e1e07fe85fb5c67941497a0114",
                                "indicator": "e19ae60db644d53bf57ce166a50682a0c1e85cf44f4e176a33fb8b509dad526f"
                            }
                        }, {
                            "id": 107,
                            "replies": [{
                                "sha": "803f844809fa90e072bc574d14d110c960fd2bcb1dd5994f8a22c60ff81b5e85",
                                "depth": 0,
                                "html": "Greetings! You have been randomly selected to receive an invitation to participate in the <a href='./Wikipedia:Request_for_comment' title='Wikipedia:Request for comment'>request for comment</a> on <b><a href='./Talk:Artificial_intelligence#rfc_12131C6' title='Talk:Artificial intelligence'>Talk:Artificial intelligence</a></b>. Should you wish to respond to the invitation, your contribution to this discussion will be very much appreciated! If in doubt, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>suggestions for responding</a>. If you do not wish to receive these types of notices, please remove your name from <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>Wikipedia:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:03, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Artificial_intelligence#rfc_12131C6' title='Talk:Artificial intelligence'>Talk:Artificial intelligence</a>",
                            "shas": {
                                "html": "ef7b6b708e144c6fe16dda9852814471cb8aacedb7d582fd6c5cc19b50a7783a",
                                "indicator": "a998c75f9aba2836d35c3d85c66f71bad6c7548467754d755f03970c49319ff8"
                            }
                        }, {
                            "id": 108,
                            "replies": [{
                                "sha": "b4cb0ea763d198fec192ab0df974b132297c2be00503d8724b11c49d8a29a2b4",
                                "depth": 0,
                                "html": "Hi MusikAnimal, I was wanting to be able to look at the deleted articles of Bart Baker. I asked about it at the Teahouse and they said that unless an admin userfy's the article, That I cant see it. I was wanting to try and create the article, but wanted to also see what was wrote in it before. Thanks, <a href='./User:MirrorFreak' title='User:MirrorFreak'>Mirror</a> <a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'>Freak</a> 15:23, 25 September 2014 (UTC)"
                            }, {
                                "sha": "e7250e221b40fcdce34cbbf084d3edfb49b7ca15f5bc0922090a59f4c8d0573e",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a>  <b>Done</b> Available at <a href='./User:MirrorFreak/Bart_Baker' title='User:MirrorFreak/Bart Baker'>User:MirrorFreak/Bart Baker</a>. I did some quick research of my own, and as it stands right now I don't think the subject meets the <a href='./Wikipedia:NACTOR' title='Wikipedia:NACTOR'>notability guideline</a>, but perhaps with more research notability can be established. Bear in mind issues brought up at the <a href='./Wikipedia:Articles_for_deletion/Bart_Baker' title='Wikipedia:Articles for deletion/Bart Baker'>AfD discussion</a>. When you feel comfortable the article is ready for the mainspace, make sure to <i><a href='./Help:Move' title='Help:Move'>move</a></i> the article, and not copy-and-paste. The article history needs to remain intact. Let me know if you need help. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:42, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Userfy Comment",
                            "shas": {
                                "html": "88223258dda1888a274084a219e56c29fb72511dd8dcc3f3210148da152c3bf8",
                                "indicator": "71ad148a7ab8b05e72587866362cd4b5182ab7bfd01bc7ff48a9be1a453907cf"
                            }
                        }, {
                            "id": 109,
                            "replies": [{
                                "sha": "f247af3d4eb83a673e8440f45185e96a5418ede32f231fcd0d2d1aed4a398c2a",
                                "depth": 0,
                                "html": "This article was too vandalized by the same IP addresses various times as <a href='./2004_French–Ivorian_clashes' title='2004 French–Ivorian clashes'>2004 French–Ivorian clashes</a>. Maybe you should consider blocking it for awhile just in case. Thank. ༆ (<a href='./User_talk:༆' title='User talk:༆'>talk</a>) 07:06, 26 September 2014 (UTC)"
                            }, {
                                "sha": "f823aaf5750ba874b0f5e8f61ea276a268dc75da1b70778a3ed9b6c86a092e47",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> User is an IP hopper, from at least two different IP ranges, so I don't think a block/range block will help. I've semi-protected the page for a month. If disruption continues we can extend protection. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:35, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<a href='./Tonkin_Campaign' title='Tonkin Campaign'>Tonkin Campaign</a>",
                            "shas": {
                                "html": "2f97a7fa24a3fc7f3e7f10c2249628408e733ed11a6e4ca76a5298c1be9483f6",
                                "indicator": "7fb8d1ce878ae1ddf12418d9fab283add739fdfa9e2f344f029860283dcef000"
                            }
                        }, {
                            "id": 110,
                            "replies": [{
                                "sha": "9fea2b28287ca4fa0645cbfb67bb3ed01b009dd679301c4e0076ad909e1174bc",
                                "depth": 0,
                                "html": "Thanks for <a href='https://en.wikipedia.org/w/index.php?title=Talk:Robin_Williams&amp;diff=627186484&amp;oldid=627185010#Including_Zachary_and_Cody_in_the_infobox'>bracketing this discussion</a> that really belongs in a kindergarten playground, rather than on a project to improve an encyclopedia. I hope <a href='https://en.wikipedia.org/w/index.php?title=Talk:Robin_Williams&amp;diff=627091613&amp;oldid=627091216'>you don't get accused of censorhip</a>. <a href='./User:How_hot_is_the_sun%3F' title='User:How hot is the sun?'>How hot is the sun?</a> (<a href='./User_talk:How_hot_is_the_sun%3F' title='User talk:How hot is the sun?'>talk</a>) 19:47, 26 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "thanks for bracketing",
                            "shas": {
                                "html": "554cd3801cbd14d052f3319c26b43a4d0f1ba2852905518ef9772979c5df2467",
                                "indicator": "3f6ecb558e21ccfc835f56e0994803e24bf140e5ee50c6f165e39cb8b379455b"
                            }
                        }, {
                            "id": 111,
                            "replies": [{
                                "sha": "29f8db3d3f453df8af204ea4b974aa9d3079f1f93af26b7f2215522ef0cc368c",
                                "depth": 0,
                                "html": "<b><a href='./Wikipedia:WPGA' title='Wikipedia:WPGA'>WikiProject Good Articles's</a> <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup' title='Wikipedia:WikiProject Good articles/GA Cup'>2014-15 GA Cup</a> - September 2014</b><br><br>Welcome to the <b>GA Cup</b>! In less than 72 hours, the competition will begin! Before you all start reviewing nominations we want to make sure you understand the following:<ul><li>This is a friendly competition so we don't want any cheating/breaking of the rules. However, if you do believe someone is going against the rules, notify the judges. All the rules are listed <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Scoring' title='Wikipedia:WikiProject Good articles/GA Cup/Scoring'>here</a>.</li><li>If you are a new editor or new to reviewing Good article nominations, it is imperative that you read the 4 essays/guides listed under <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/FAQ' title='Wikipedia:WikiProject Good articles/GA Cup/FAQ'>FAQ #4</a>. If you do not understand something, ask a judge for clarification ASAP!</li><li>The competition is not entirely about who can review the most nominations. Per the '<a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Scoring' title='Wikipedia:WikiProject Good articles/GA Cup/Scoring'>Scoring</a>' page, there is different criteria in which you can earn more points. Theoretically, you could review 10 nominations and have 80 points but another user could have reviewed 5 nominations and have 100 points. Yes, we want you to review as many nominations as you can as this will greatly increase the number of points you earn, but you must also keep in mind that <b>every single review</b> will be looked over by a judge. If we find that you are 'rubber-stamping' (in other words, the review is not complete but you still passed/failed the article) you may be disqualified without warning.</li></ul>Also, rather than creating a long list on what to remember, make sure you have read the 'Scoring', 'Submissions', and 'FAQ' pages.<br><br>Now for the one question that we guarantee you have: how on earth will the rounds work???<br><br>Yes, we never actually had a solid platform regarding how the rounds would work because we had no idea how many people would sign-up. Even though the competition is about to begin, because sign-ups are still open, it is impossible to say exactly how each round will work. As of now, we can confirm that Round 1 will have everyone compete in one big pool. Depending on the final number of participants after sign-ups close, a to-be-determined number of participants will move on (highest scorers will move on) to Round 2. We guarantee that the top 15 will move on, so make sure you aim for those top positions! Moving on to Round 2, participants will be split into pools of even numbers (for example, every pool will have 6 participants). The pools will be determined by a computer program that places participants by random. More details regarding Round 2 will be sent out at the end of Round 1.<br><br>It is important to note that the GA Cup will run on <a href='./UTC' title='UTC'>UTC</a> time, so make sure you know what time that is for where you live! On that note, the GA Cup will start on <b>October 1 at 0:00:01 UTC</b>; Round 1 will end on <b>October 29 at 23:59:59 UTC</b>; Round 2 will commence on <b>November 1 at 0:00:01 UTC</b>. All reviews must be started <i>after or on</i> the start time of the round. If you qualify for Round 2 but do not complete a review before the end of Round 1, the review can be carried over to Round 2; however that review will not count for Round 1. Prior to the start of the the second round, participants who qualify to move on will be notified.<br><br>Finally, if you know anyone else that might be interesting in participating, let them know! Sign-ups close on October 15 so there is still plenty of time to join in on the action!<br><br>If you have any further questions, contact one of the judges or leave a message <a href='./Wikipedia_talk:WikiProject_Good_articles/GA_Cup' title='Wikipedia talk:WikiProject Good articles/GA Cup'>here</a>.<br><br><i>On October 16 or 17, 2014, check the <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Pools/Round_1' title='Wikipedia:WikiProject Good articles/GA Cup/Pools/Round 1'>Pools</a> page as we will post the exact number of participants that will move on to the next round. Because this number will be determined past the halfway mark of Round 1, we encourage you to aim to be in the top 15 as the top 15 at the end of the round are guaranteed to move on.</i><br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>To subscribe or unsubscribe to future GA Cup newsletter, please add or remove your name to <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Send' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Send'>our mailing list</a>. If you are a participant, you will be on the mailing list no matter what as this is the easiest way to communicate between all participants.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 00:49, 28 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup - September 2014 Newsletter",
                            "shas": {
                                "html": "074227964055e2b145523e3b1ba4ba2f336cf53e25f66af9ee8d3e174bcdaaf0",
                                "indicator": "1822743e0333b6e6df00b429517a498c08403e2b9e1816379c24b3d0567e51ad"
                            }
                        }, {
                            "id": 112,
                            "replies": [{
                                "sha": "e7e336d2d87d0133fb385338e617b64983a4dec4cf7413d41f219dab7a7baece",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-09-24' title='Wikipedia:Wikipedia Signpost/2014-09-24'>Wikipedia:Wikipedia Signpost/2014-09-24</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:50, 28 September 2014 (UTC)</li></ul>Leave me alone. I'm sick of you people bullying me. <a href='./User:Seston' title='User:Seston'>Seston</a> (<a href='./User_talk:Seston' title='User talk:Seston'>talk</a>) 02:17, 29 September 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 24 September 2014",
                            "shas": {
                                "html": "432524c2d5ed9e84a602422acfd7f66fad0c10b4ef5cbb5366aad673aad59552",
                                "indicator": "1f1349a943aeb1a619cdd88ab56f25bea1f7eda208b7242575b82aca256db541"
                            }
                        }, {
                            "id": 113,
                            "replies": [{
                                "sha": "01958c8cd73ce4403c37b2141c98872531e3987d3890a761ece9270883ecc140",
                                "depth": 0,
                                "html": "This article had already been sent to AfD, blanked, G7'd, and promptly recreated under a new title, which is why I contested the second blanking so that future speedies could be under G4. Not sure if the previous subversion of the AfD process was intentional gaming or just had that effect. Please note per the AfD that the article is likely a hoax. <a href='./User:VQuakr' title='User:VQuakr'>VQuakr</a> (<a href='./User_talk:VQuakr' title='User talk:VQuakr'>talk</a>) 21:25, 30 September 2014 (UTC)"
                            }, {
                                "sha": "1563a495fd7c05c5396baf3cec3ede2f525f132806fba924cd53656311ee64e0",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Understood, I had not noticed the other deleted contributions. While I understand your reasoning, I still think the editor has the right to request deletion. AfD isn't necessary, in my opinion. If they were to continue to create the article then blank it, I'd consider that more of a behavioural disruption, with a block as a possible preventive measure. We could also salt <a href='./Claudia_Paola' title='Claudia Paola'>Claudia Paola</a>, which would seemingly be the more likely target for recreation. At any rate, thank you for your patrol work and initiative. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:23, 1 October 2014 (UTC)"
                            }, {
                                "sha": "58857bb4bb4edc082780b71490e75bd9e8a797b0de1415221706c1ea445970e6",
                                "depth": 2,
                                "html": "<a href='https://en.wikipedia.org/w/index.php?title=Claudia_Paola&amp;oldid=627779520'>Yup</a>. I am having trouble seeing how this is anything except a violation of <a href='./Wikipedia:GAME' title='Wikipedia:GAME'>WP:GAME</a>. <a href='./User:VQuakr' title='User:VQuakr'>VQuakr</a> (<a href='./User_talk:VQuakr' title='User talk:VQuakr'>talk</a>) 06:18, 1 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Claudia Paola",
                            "shas": {
                                "html": "900bc7c424b6198cd9b1f7189d9af0d83c0265974e6504abf8c80728e7284c4a",
                                "indicator": "3ec187b1643459f182c93860d266693284b416a84463fb750c284159d86b5a01"
                            }
                        }, {
                            "id": 114,
                            "replies": [{
                                "sha": "211220c07cd6bd858537b99c2eb3efeb0d49f00b2ed7b2119bb7f01a0b77fb21",
                                "depth": 0,
                                "html": "What I removed was a mistake, I was just trying add. Thank you <a href='./User:RosnerPR' title='User:RosnerPR'>RosnerPR</a> (<a href='./User_talk:RosnerPR' title='User talk:RosnerPR'>talk</a>) 17:28, 1 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from RosnerPR",
                            "shas": {
                                "html": "7cb1e91807a2320cb0fe0901e5d3d48203631a638db0e0594d69e429569811e3",
                                "indicator": "d401868c6925e4ef8c0b85390f6760e2581bc7f7fb287099e277819406f709b5"
                            }
                        }, {
                            "id": 115,
                            "replies": [{
                                "sha": "0578c1fc708fe149f47538f57ba850797f1c08216a510296af9e5d39de442d96",
                                "depth": 0,
                                "html": "Hi there, I'm pleased to inform you that I've begun reviewing the article <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a> you nominated for <a href='./Wikipedia:GA' title='Wikipedia:GA'>GA</a>-status according to the <a href='./Wikipedia:WIAGA' title='Wikipedia:WIAGA'>criteria</a>. <a href='./File:Time2wait.svg'>[File:Time2wait.svg]</a> This process may take up to 7 days. Feel free to contact me with any questions or comments you might have during this period.   Message delivered by <a href='./User:Legobot' title='User:Legobot'>Legobot</a>, on behalf of <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> -- <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> (<a href='./User_talk:CaroleHenson' title='User talk:CaroleHenson'>talk</a>) 04:02, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your <a href='./Wikipedia:Good_articles' title='Wikipedia:Good articles'>GA</a> nomination of <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a>",
                            "shas": {
                                "html": "b08c70bca3be1dde86b5c9dc6d2b208ecd37402135b4b67573375cd0eb7b2421",
                                "indicator": "d9967f72345e874f789d324bd0743c0efe530493824de03f4c09142ed4df81d0"
                            }
                        }, {
                            "id": 116,
                            "replies": [{
                                "sha": "c487572df264d064a2dfe6c0b30840880e87dcda4f1253b5904aaa39524f4740",
                                "depth": 0,
                                "html": "When I made this page, I made sure I don't 'advertise'. Looking at all other private school pages, I started the page with similar content and it got deleted right away.  I wasn't even interested to make a wiki page but it is a requirement for an association of private schools we are joining. So could you please either let me know what should be removed so that you don't consider it promotion (which by the way most of my competitors completely advertise on their wiki pages anyway!) or allow me to remove the page and the tag all together.  Thank you. <a href='./User:Hbahador' title='User:Hbahador'>Hbahador</a> (<a href='./User_talk:Hbahador' title='User talk:Hbahador'>talk</a>) 13:33, 2 October 2014 (UTC)"
                            }, {
                                "sha": "10368a973c93a2a4f58e8b27789bff9ab6be7af79dd4863c2177a1644fae5d9a",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> You are correct that not every page on Wikipedia is in the best of shape, but we do try :) In short, you should try to stick to the facts and disregard your own opinions or otherwise irrelevant information. For instance, you wrote 'Passionate about education, they offer what they can to help students improve and excel', referring to the teachers. Is this really <i>encyclopedic</i>? What have I learned about the institution? It sounds more like you are trying to convince the reader of how good the teachers are and this a good place to go to school. A similar acceptable example would be, 'so and so news agency rated the teachers to be the best in the school system'. That would attribute the opinion to something <b>previously published</b>, so it's left to the reader how to interpret it, as we aren't implying it to be factual. Finally, your article contained no sources whatsoever. On Wikipedia everything needs to be <a href='./Wikipedia:V' title='Wikipedia:V'>verifiable</a>, attributed with <a href='./Wikipedia:RS' title='Wikipedia:RS'>reliable sources</a>. See <a href='./Wikipedia:REFBEGIN' title='Wikipedia:REFBEGIN'>WP:REFBEGIN</a> for the basics. I can help you with this later, but it may take a day or two. Thanks for your understanding! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:03, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Ontario Academy of Technology",
                            "shas": {
                                "html": "d4feb3209a7a89f9901dc63239c4ea99ff90853af9acdb1e033bf275a8532701",
                                "indicator": "8eece1657a0303e645eb99515d64a7ead57b4d5ab2a900ee8fb19c28133495e7"
                            }
                        }, {
                            "id": 117,
                            "replies": [{
                                "sha": "d95709aedf600979dc68031cc6b7da9a89ddb675a46a991d238342139ece2b91",
                                "depth": 0,
                                "html": "The article <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a> you nominated as a <a href='./Wikipedia:Good_article_nominations' title='Wikipedia:Good article nominations'>good article</a> has passed <a href='./File:Symbol_support_vote.svg'>[File:Symbol_support_vote.svg]</a>; see <a href='./Talk:32_Old_Slip' title='Talk:32 Old Slip'>Talk:32 Old Slip</a> for comments about the article. Well done! If the article has not already been on the main page as an 'In the news' or 'Did you know' item, you can <a href='./Template_talk:Did_you_know#To_nominate_an_article' title='Template talk:Did you know'>nominate it</a> to appear in Did you know. Message delivered by <a href='./User:Legobot' title='User:Legobot'>Legobot</a>, on behalf of <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> -- <a href='./User:CaroleHenson' title='User:CaroleHenson'>CaroleHenson</a> (<a href='./User_talk:CaroleHenson' title='User talk:CaroleHenson'>talk</a>) 17:15, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Your <a href='./Wikipedia:Good_articles' title='Wikipedia:Good articles'>GA</a> nomination of <a href='./32_Old_Slip' title='32 Old Slip'>32 Old Slip</a>",
                            "shas": {
                                "html": "c084172daa2e7c279a6d237092688615fa67b861387107082b9c0ee50f19304a",
                                "indicator": "f8c2bdbe5c4e12c220c07578e4b3d9c445cb4c6cc6e5dbb289b508ef9a213e1e"
                            }
                        }, {
                            "id": 118,
                            "replies": [{
                                "sha": "63817d92a1141bf88cff40b503c5f308592f6dd4a556a7ce5355a9d0b905bc32",
                                "depth": 0,
                                "html": "hello i will to now why Odarion page was deleted because is a singer from portugal <br>thank you  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:DarioAbreu' title='User:DarioAbreu'>DarioAbreu</a> (<a href='./User_talk:DarioAbreu' title='User talk:DarioAbreu'>talk</a> • <a href='./Special:Contributions/DarioAbreu' title='Special:Contributions/DarioAbreu'>contribs</a>) 20:21, 2 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from DarioAbreu",
                            "shas": {
                                "html": "7c60973c21f88a28ef293b3de360d36c142fb3f605b1b6a80b4bd1e46103a246",
                                "indicator": "fbd6f441e5da06c9001568e81df6d993ed0d474155fada3c3dc7568ccd2fb613"
                            }
                        }, {
                            "id": 119,
                            "replies": [{
                                "sha": "c9911adbcfa64f78bd30a47e0e5cc935e2a07922c6e1b24ecd58491982f04ee7",
                                "depth": 0,
                                "html": "Hey, hope you don't mind but I upped your block of 216.21.169.232 to a week. If they've come straight back after 31 hours, 72 isn't likely to put them off and once we've established that the IP is static, we shouldn't have any qualms about drastically increasing block durations imo. Glad to see your mop's getting dirty! ;) All the best, <a href='./User:HJ_Mitchell' title='User:HJ Mitchell'><b>HJ&nbsp;Mitchell</b></a> | <a href='./User_talk:HJ_Mitchell' title='User talk:HJ Mitchell'>Penny for your thoughts? </a> 19:10, 3 October 2014 (UTC)"
                            }, {
                                "sha": "64a7a849bc765ea2233b30df421bd7082042e59edd4af3aa3ba5cff051db5144",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Don't mind at all, and fully agree with your logic. Kind of you to let me know! Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 19:29, 3 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "216.21.169.232",
                            "shas": {
                                "html": "79c62b51bc7e7eae7aa3ca17318319f68037d3e72d89cee1b1228b9eefaabf3a",
                                "indicator": "d80938f774d1cb7cc1d297199935b812f6684cc42205e0abbec02b5d8e27af3d"
                            }
                        }, {
                            "id": 120,
                            "replies": [{
                                "sha": "f8d87c8ef87df721085648d12da15a014e761e40804b7e760e280fe6f743c347",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-01' title='Wikipedia:Wikipedia Signpost/2014-10-01'>Wikipedia:Wikipedia Signpost/2014-10-01</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 19:26, 4 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 01 October 2014",
                            "shas": {
                                "html": "25881715b4b52adf3380ed95501d467135a7c694df2190d3e04ba621dcfb5aee",
                                "indicator": "939c5a21b93e3e1c79c2294fc582a708489d36841d4743e8fd58dbaa34263ef7"
                            }
                        }, {
                            "id": 121,
                            "replies": [{
                                "sha": "5f531684cbc627339efde0eb03649692c35da53860e7e8eea1cc95f86a050ed6",
                                "depth": 0,
                                "html": "You are being notified because you have participated in previous discussions on the same topic. <a href='./User:Alsee' title='User:Alsee'>Alsee</a> (<a href='./User_talk:Alsee' title='User talk:Alsee'>talk</a>) 19:17, 5 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Wikipedia:Village_pump_(proposals)#rfc_5D8BCA2' title='Wikipedia:Village pump (proposals)'>Wikipedia:Village pump (proposals) Media Viewer RfC</a>",
                            "shas": {
                                "html": "e776586c366db44a1c1fbadfda9aa25678ed453e011c3895ff82807abfaadab9",
                                "indicator": "3296bc1b02ca51552d5d5272d170676ecc53dd44200086eee8ea03e1ba480927"
                            }
                        }, {
                            "id": 122,
                            "replies": [{
                                "sha": "6fb00a8ca569dacda9cce532ac557e97323e227a13844ad15fb7a4ec476ca309",
                                "depth": 0,
                                "html": "You have been randomly selected to receive an invitation to <a href='./Talk:Nofel_Izz#rfc_4115521' title='Talk:Nofel Izz'>participate in the request for comment</a> on <b>Talk:Nofel Izz</b>. Should you wish to respond, your contribution to this discussion will be appreciated.  For tips, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>WP:Requests for comment#Suggestions for responding</a>. If you wish to change the frequency or topics of these notices, or do not wish to receive them any longer, please adjust your entries at <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>WP:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:04, 7 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Nofel_Izz#rfc_4115521' title='Talk:Nofel Izz'>Talk:Nofel Izz</a>",
                            "shas": {
                                "html": "64bbb5c459502df2ef7ea59be256117066cdf4ace0d8b45ca2e063235609ff0e",
                                "indicator": "533af7937aa9d10436078e907620d914d8f74225c0a2fc1186a686a622351a57"
                            }
                        }, {
                            "id": 123,
                            "replies": [{
                                "sha": "84deeef31af996805f878cec0465e9f0d04fd929edf60eac6dfcfc7e2f96f923",
                                "depth": 0,
                                "html": "Hello, I'm Gagliardi89. In March, you helpfully edited and patrolled the <a href='./SoCal_Coyotes' title='SoCal Coyotes'>SoCal Coyotes</a> article, which currently is under afd discussion. I have found your past input constructive and beneficial, and am seeking your recommendations to continue to improve the article. If you have the time to read the SoCal Coyotes afd talk page, you will see the steps that already have been administered. I appreciate any guidance you might render. My intention is to continue improving the quality of the article and the discussion by broadening participation, to more fully achieve consensus. Thank you! <a href='./User:Gagliardi89' title='User:Gagliardi89'>Gagliardi89</a> (<a href='./User_talk:Gagliardi89' title='User talk:Gagliardi89'>talk</a>) 04:44, 7 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello re: SoCal Coyotes",
                            "shas": {
                                "html": "0336433e5e1cea3ceccc0ff0e490d32c73b91b8c5a4fe029fd07165cd344c7ab",
                                "indicator": "65f31c8ed7d057bd2cfc075f117c4ea4b56e75612f38137b07a1761623aa0118"
                            }
                        }, {
                            "id": 124,
                            "replies": [{
                                "sha": "769d95f1140ab36ad280dd02f18b316b79c9bdb12de30b2d42975317ffcc9e5e",
                                "depth": 0,
                                "html": "<a href='./File:VisualEditor-logo.svg'>[File:VisualEditor-logo.svg]</a><a href='./File:TemplateData_GUI_editor_with_two_parameters.png'>[File:TemplateData_GUI_editor_with_two_parameters.png]</a><b>Did you know?</b><br><br>TemplateData is a separate program that organizes information about the parameters that can be used in a template.  VisualEditor reads that data, and uses it to populate its simplified template dialogs.<br><br>With the new TemplateData editor, it is easier to add information about parameters, because the ones you need to use are pre-loaded.<br><br>See <a href='https://www.mediawiki.org/wiki/Help:TemplateData' title='mediawikiwiki:Help:TemplateData'>the help page for TemplateData</a> for more information about adding TemplateData.  <a href='https://www.mediawiki.org/wiki/VisualEditor/User%20guide' title='mw:VisualEditor/User guide'>The user guide</a> has information about how to use VisualEditor.<br><br>Since the last newsletter, the <a href='https://www.mediawiki.org/wiki/VisualEditor' title='mediawikiwiki:VisualEditor'>Editing</a> team has reduced technical debt, simplified some workflows for template and citation editing, made major progress on Internet Explorer support, and fixed <a href='https://bugzilla.wikimedia.org/buglist.cgi?list_id=349619&amp;order=priority%252Cbug_severity&amp;product=VisualEditor&amp;query_format=advanced&amp;resolution=FIXED&amp;target_milestone=VE-deploy-2014-08-14&amp;target_milestone=VE-deploy-2014-08-21&amp;target_milestone=VE-deploy-2014-08-28&amp;target_milestone=VE-deploy-2014-09-04&amp;target_milestone=VE-deploy-2014-09-11&amp;target_milestone=VE-deploy-2014-09-18&amp;target_milestone=VE-deploy-2014-09-25&amp;target_milestone=VE-deploy-2014-10-02'>over 125 bugs and requests</a>. Several performance improvements were made, especially to the system around re-using references and reference lists.  Weekly updates are posted <a href='https://www.mediawiki.org/wiki/VisualEditor/status' title='mediawikiwiki:VisualEditor/status'>on Mediawiki.org</a>.<br><br>There were three issues that required urgent fixes: a deployment error that meant that many buttons didn't work correctly (bugs <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69856' title='bugzilla:69856'>69856</a> and <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69864' title='bugzilla:69864'>69864</a>), a problem with edit conflicts that left the editor with nowhere to go (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69150' title='bugzilla:69150'>bug 69150</a>), and a problem in Internet Explorer 11 that caused replaced some categories with a link to the system message, <a href='./MediaWiki:Badtitletext' title='MediaWiki:Badtitletext'>MediaWiki:Badtitletext</a> (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=70894' title='bugzilla:70894'>bug 70894</a>) when you saved. The developers apologize for the disruption, and thank the people who reported these problems quickly."
                            }],
                            "depth": 2,
                            "html": "VisualEditor newsletter—September and October 2014",
                            "shas": {
                                "html": "f52ff47176e9a7c33015a2ad818ae8d9995c68c32604e4e1c6e975b8cf8e924c",
                                "indicator": "90c0d553923bbdadb46a9474e8d183fedb3b59a5861b8acf1e868764a18ee764"
                            }
                        }, {
                            "id": 125,
                            "replies": [{
                                "sha": "2ffbc9cf6493f037f9900d5e28952e85185e419636856c330b54965dbb51f4ae",
                                "depth": 0,
                                "html": "<b>Internet Explorer 10 and 11 users now have access to VisualEditor</b>. This means that about 5% of Wikimedia's users will now get an 'Edit' tab alongside the existing 'Edit source' tab.  Support for Internet Explorer 9 is planned for the future.<br><br><b>Tablet users</b> browsing the site's mobile mode now have the option of using a mobile-specific form of VisualEditor. More editing tools, and availability of VisualEditor on smartphones, is planned for the future. The <b>mobile version of VisualEditor</b> was tweaked to show the context menu for citations instead of basic references (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=68897' title='bugzilla:68897'>bug 68897</a>).  A bug that broke the editor in iOS was corrected and released early (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=68949' title='bugzilla:68949'>bug 68949</a>). For mobile tablet users, three bugs related to scrolling were fixed (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=66697' title='bugzilla:66697'>bug 66697</a>, <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=68828' title='bugzilla:68828'>bug 68828</a>, <a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69630' title='bugzilla:69630'>bug 69630</a>). You can use VisualEditor on the mobile version of Wikipedia from your tablet by clicking on the cog in the top-right when editing a page and choosing which editor to use."
                            }],
                            "depth": 3,
                            "html": "Increased support for devices and browsers",
                            "shas": {
                                "html": "8ba4b484674dd4a3b709b90a2bab721fce98010981e292e6007e3ee5e2e54b2d",
                                "indicator": "fa4f1cae2914507a2b59faccf564950e30d6b42f32be32b2fb0fb228a511a9bc"
                            }
                        }, {
                            "id": 126,
                            "replies": [{
                                "sha": "264b4c06452a41f7d8fa4fa62ecf58d35eb59548dd76c60f584a4514b952968b",
                                "depth": 0,
                                "html": "<b>A tool for editing <a href='https://www.mediawiki.org/wiki/Extension:TemplateData' title='mediawikiwiki:Extension:TemplateData'>TemplateData</a> will be deployed to more Wikipedias soon.</b>  Other Wikipedias and some other projects may receive access next month.  This tool makes it easier to add TemplateData to the template's documentation.  When the tool is enabled, it will add a button above every editing window for a template (including documentation subpages).  To use it, edit the template or a subpage, and then click the 'Manage TemplateData' button at the top.  Read <a href='https://www.mediawiki.org/wiki/Help:TemplateData' title='mediawikiwiki:Help:TemplateData'>the help page for TemplateData</a>.  You can test the TemplateData editor <a href='https://www.mediawiki.org/wiki/Template:Sandbox/doc' title='mediawikiwiki:Template:Sandbox/doc'>in a sandbox at Mediawiki.org</a>.  Remember that TemplateData should be placed either on a documentation subpage <i><b>or</b></i> on the template page itself.  Only one block of TemplateData will be used per template."
                            }],
                            "depth": 3,
                            "html": "TemplateData editor",
                            "shas": {
                                "html": "1b851c5f704ca83461d4b0d86fb95fcdd403d3ee510ced62f828d36d4365862e",
                                "indicator": "b174fa65329ebc91d880e9e2baa9a2f80e069ff38a7905d77654214f13e99c76"
                            }
                        }, {
                            "id": 127,
                            "replies": [{
                                "sha": "5a14a437619bc833d5f4b87f29d695cbb1fbda3a560954bf2d0bd125a2012404",
                                "depth": 0,
                                "html": "Several interface <b>messages and labels were changed</b> to be simpler, clearer, or shorter, based on feedback from translators and editors. The formatting of dialogs was changed, and more changes to the appearance will be coming soon, when VisualEditor implements the new MediaWiki theme from Design.  (A preview of the theme is <a href='https://tools.wmflabs.org/oojs-ui/oojs-ui/demos/index.html#widgets-mediawiki-vector-ltr' title='toollabs:oojs-ui/oojs-ui/demos/index.html'>available on Labs</a> for developers.)  The team also made some improvements for users of the <b>Monobook</b> skin that improved the size of text in toolbars and fixed selections that overlapped menus.<br><br>VisualEditor-MediaWiki now supplies the <b>mw-redirect</b> or <b>mw-disambig</b> class on <b>links to redirects and disambiguation pages</b>, so that user gadgets that colour in these in types of links can be created.<br><br><b>Templates' fields can be marked as 'required' </b>in TemplateData.  If a parameter is marked as required, then you cannot delete that field when you add a new template or edit an existing one (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=60358' title='bugzilla:60358'>bug 60358</a>).<br><br>Language support improved by making annotations use bi-directional isolation (so they display correctly with cursoring behaviour as expected) and by fixing a bug that crashed VisualEditor when trying to edit a page with a <b>dir</b> attribute but no <b>lang</b> set (<a href='https://bugzilla.wikimedia.org/show_bug.cgi?id=69955' title='bugzilla:69955'>bug 69955</a>)."
                            }],
                            "depth": 3,
                            "html": "Other changes",
                            "shas": {
                                "html": "c5c3efe2fbe418ba0d1977633323b0e0321560ddd323b3dfaa5d40b477723f50",
                                "indicator": "772926e4a883159494ebcb4e33526297f92fa820a3e28283f016bbd66006e5cb"
                            }
                        }, {
                            "id": 128,
                            "replies": [{
                                "sha": "4f8819ea3ce9ae2f208980c786ed2fe206295a7daa913b007f12688bc70ce205",
                                "depth": 0,
                                "html": "The team posts details about planned work on the <a href='https://www.mediawiki.org/wiki/VisualEditor/Roadmap' title='mediawikiwiki:VisualEditor/Roadmap'>VisualEditor roadmap</a>.  The VisualEditor team <a href='https://www.mediawiki.org/wiki/Cite-from-id' title='mediawikiwiki:Cite-from-id'>plans to add&nbsp;<b>auto-fill features</b></a> <b>for citations</b> soon, perhaps in late October.<br><br>The team is also working on support for <b>adding rows and columns to tables</b>, and early work for this may appear within the month.  Please comment on the design <a href='https://www.mediawiki.org/wiki/VisualEditor/Design/Table_editor#Design_Workflow_for_comments' title='mw:VisualEditor/Design/Table editor'>at Mediawiki.org</a>.<br><br>In the future, real-time collaborative editing may be possible in VisualEditor.  Some early preparatory work for this was recently done."
                            }],
                            "depth": 3,
                            "html": "Looking ahead",
                            "shas": {
                                "html": "bb969ea8c54986210a3b8c6d5286e703656932aab1edebcfb467f4b01db59e0c",
                                "indicator": "7ced0a14ffa9772a1067cf29515594dde438acbcbd2865465691e79b73eff7e4"
                            }
                        }, {
                            "id": 129,
                            "replies": [{
                                "sha": "d603b47f7b90679cd517d0b97c1c270b460de6e15a58cde8b071d0292fe45642",
                                "depth": 0,
                                "html": "At Wikimania, several developers gave presentations about VisualEditor.  A translation sprint focused on improving access to VisualEditor was supported by many people.  <b>Deryck Chan</b> was the top translator.  Special honors also go to <b>संजीव कुमार (Sanjeev Kumar)</b>, <b>Robby</b>, <b>Takot</b>, <b>Bachounda</b>, <b>Bjankuloski06</b> and <b>Ата</b>.  A summary of the work achieved by the translation community has been <a href='https://www.mediawiki.org/wiki/VisualEditor/Translathon#Highlights_from_the_Translathon' title='mediawikiwiki:VisualEditor/Translathon'>posted here</a>.  Thank you all for your work.<br><br>VisualEditor can be made available to most non-Wikipedia projects.  If your community would like to test VisualEditor, please contact product manager <a href='https://meta.wikimedia.org/wiki/User%20talk:Jdforrester%20(WMF)' title='m:User talk:Jdforrester (WMF)'>James Forrester</a> or file an <a href='https://bugzilla.wikimedia.org/enter_bug.cgi?product=VisualEditor&amp;component=General'>enhancement request in Bugzilla</a>.<br><br>Please join the <a href='https://meta.wikimedia.org/wiki/IRC%20office%20hours' title='m:IRC office hours'>office hours</a> on Saturday, 18 October 2014 at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?hour=18&amp;min=00&amp;sec=0&amp;day=18&amp;month=10&amp;year=2014'>18:00 UTC</a> (daytime for the Americas; evening for Africa and Europe) and on Wednesday, 19 November at <a href='http://www.timeanddate.com/worldclock/fixedtime.html?msg=VisualEditor+office+hour+for+November&amp;iso=20141119T16&amp;p1=1440'>16:00 UTC</a> on <a href='https://en.wikipedia.org/wiki/IRC' title='w:IRC'>IRC</a>.<br><br><i>Give feedback on VisualEditor at <a href='https://www.mediawiki.org/wiki/VisualEditor/Feedback' title='mediawikiwiki:VisualEditor/Feedback'>mw:VisualEditor/Feedback.</a>  Subscribe or unsubscribe at <a href='https://meta.wikimedia.org/wiki/VisualEditor/Newsletter' title='m:VisualEditor/Newsletter'>Meta</a>. To help with translations, please subscribe to the <a href='https://lists.wikimedia.org/mailman/listinfo/translators-l' title='mail:translators-l'>Translators mailing list</a> or contact <a href='https://meta.wikimedia.org/wiki/User%20talk:Elitre%20(WMF)' title='m:User talk:Elitre (WMF)'>Elitre at Meta</a>.  Thank you!</i><br><br>— <a href='./User:Whatamidoing_(WMF)' title='User:Whatamidoing (WMF)'>Whatamidoing (WMF)</a> (<a href='./User_talk:Whatamidoing_(WMF)#top' title='User talk:Whatamidoing (WMF)'>talk</a>) 00:11, 8 October 2014 (UTC)"
                            }, {
                                "sha": "4d975bc4f9aac103a9c9e58fa35fc30da1f16d9da0d9c99740facaef909ed3e0",
                                "depth": 0,
                                "html": "<a href='./Template:You've_got_mail' title='Template:You've got mail'>Template:You've got mail</a>"
                            }],
                            "depth": 3,
                            "html": "Supporting your wiki",
                            "shas": {
                                "html": "bbbd0e843de37135f099ffff470b35de17ece26cec9b87663eec62f7b1cfe088",
                                "indicator": "3437dee474590ca5a7f6c15a61b4b20a881ea9e307a8b49b2b644c3d3a1118cd"
                            }
                        }, {
                            "id": 130,
                            "replies": [{
                                "sha": "a18fcdf63cc14b3a5971f674479900b4407ca187d0c5f897dd4b52fed5af285e",
                                "depth": 0,
                                "html": "Why did you delete my article of fan art? Also is it possible for me to create a page about my story?  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Mr.JimblesNotronbo' title='User:Mr.JimblesNotronbo'>Mr.JimblesNotronbo</a> (<a href='./User_talk:Mr.JimblesNotronbo' title='User talk:Mr.JimblesNotronbo'>talk</a> • <a href='./Special:Contributions/Mr.JimblesNotronbo' title='Special:Contributions/Mr.JimblesNotronbo'>contribs</a>) 17:04, 10 October 2014 (UTC)"
                            }, {
                                "sha": "2ce31359adb5fb82ed726121187aa5f6ac15099cba6fffaf296943ceb4e6f03b",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hello! I did not delete your article, <a href='./User:RHaworth' title='User:RHaworth'>RHaworth</a> did. The <a href='./Wikipedia:A1' title='Wikipedia:A1'>rationale</a> was that it was a very short article with insufficient context to identify the subject. There are a score of other requirements for an article to be retained on Wikipedia, however. Namely, your story must be <a href='./Wikipedia:N' title='Wikipedia:N'>notable</a>. I encourage you to read <a href='./Wikipedia:Your_first_article' title='Wikipedia:Your first article'>Wikipedia:Your first article</a>, which details what we expect and how you can prepare your article. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:29, 10 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Mr.JimblesNotronbo",
                            "shas": {
                                "html": "21a5df60329951d35c16e326a9426e90be10d6713dcf13265ccbfd2a43931deb",
                                "indicator": "1701cc37849e909b6dc56e19ed6937e54252f74a5a82c7e1d62630ccf3c61a48"
                            }
                        }, {
                            "id": 131,
                            "replies": [{
                                "sha": "976e2b744e5658eae840a3487722807ebebee66bb2293ebeae895c077b6ad259",
                                "depth": 0,
                                "html": "<a href='./Template:Diff2' title='Template:Diff2'>Template:Diff2</a> Yep, it's vandalism. It is easy to mistake these edits, but a quick check shows there's no mention of the first ancient dinosaurs in Brooklyn anywhere online. Not only that, but edits like that are typical puerile vandal behavior. – <a href='./User:Epicgenius' title='User:Epicgenius'>Epicgenius</a> (<a href='./User_talk:Epicgenius' title='User talk:Epicgenius'>talk</a>) 00:36, 11 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Brooklyn",
                            "shas": {
                                "html": "9e9c95dca3266f7c919facad7f6ac76ccc17ec979e36294cbb18011b4f422f12",
                                "indicator": "76003d8d4fd4da8f53263625e11750ffad351ab66421818fbd758687ba257d20"
                            }
                        }, {
                            "id": 132,
                            "replies": [{
                                "sha": "1d314c429701667726f58d8f229c924b725360a38ad19e890f4983ef52132620",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-08' title='Wikipedia:Wikipedia Signpost/2014-10-08'>Wikipedia:Wikipedia Signpost/2014-10-08</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 00:42, 11 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 08 October 2014",
                            "shas": {
                                "html": "ed9566ab55a7faca4943d904a86079f69d05a4f4b963adb705241a02cca17aa4",
                                "indicator": "b30f27c720bb64854e003c68a6d53055382ced8bd2e37388743e2c8f2f4a434d"
                            }
                        }, {
                            "id": 133,
                            "replies": [{
                                "sha": "6836cefc24a833d1411c318d2069d132c71f5299baa50b970ba2de79273a55a6",
                                "depth": 0,
                                "html": "<b><a href='./Wikipedia:WPGA' title='Wikipedia:WPGA'>WikiProject Good Articles's</a> <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup' title='Wikipedia:WikiProject Good articles/GA Cup'>2014-15 GA Cup</a> - Round 1</b><br><br>As we move into the middle of Round 1, we wanted to report some of the lessons we've learned thus far, as well as announce a major rule change going into Round 2, which begins November 1.  Remember, sign-ups for this year's Cup ends on September 15.<br><br>Thus far, we're very happy with the results of the competition.  One of our major goals, reducing the long backlog at GAN, is well on the way to being accomplished, mostly due to the enthusiastic efforts of <a href='./User:Jonas_Vinther' title='User:Jonas Vinther'>Jonas Vinther</a>, who has earned over 250 points.  Over 80 reviews have been made thus far.  Thank you all for your efforts and for your part in making the GA Cup a success.<br><br>However, this is the inaugural year of the GA Cup, so there have been some unforeseen circumstances that have come up.  One has been a glaring inadequacy with the rules, which the judges feel makes the competition unfair.  As a result, there will be a major change in the rules, starting at the beginning of Round 2:<br><br> <b>Your review must provide feedback/suggestions for improvement, and then you must wait until the nominator has responded and all issues/suggestions have been resolved before you can pass the article. Failure to follow this rule will result in disqualification.</b><br><br>What this means is that you must provide some feedback to the article's nominator, and must wait for him or her to respond before passing the article.  If the nominator has not responded in the standard 7 days, you can fail the article.  We're instituting this rule change to prevent the possibility of competitors passing articles for the sake of passing articles (or failing them) and to gain more points.  We believe that the change will make it more fair to all competitors in the GA Cup.<br><br>Also, in case you haven't noticed, we increased the 'guarantee' for Round 2 to 25 participants. The exact number will be decided in the near future.<br><br>We thank your for your participation, and for your flexibility and understanding as we learn what works and what doesn't work in this competition.<br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>To subscribe or unsubscribe to future GA Cup newsletter, please add or remove your name to <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Send' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Send'>our mailing list</a>. If you are a participant, you will be on the mailing list no matter what as this is the easiest way to communicate between all participants.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 14:26, 12 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup -Round 1 Newsletter",
                            "shas": {
                                "html": "c2c33453deec5ed7159196585d7db35ee4821b13c5d10545b982bf576f6c2a9c",
                                "indicator": "579bf4d6720d589982b50d9f2c2dc5c2067032dc0c8d565b5adbd66d32496e3f"
                            }
                        }, {
                            "id": 134,
                            "replies": [{
                                "sha": "c4fc6a0e6286a22814e7572c77758d9bf1cdf134bc14b766b878f726f103820a",
                                "depth": 0,
                                "html": "Hi everyone,<br><br>It was brought to the attention of the judges that there was an error in the newsletter sent out earlier today.<br><br>Sign-ups for the GA Cup will close on October 15, 2014, not September 15, 2014 (as mentioned in the newsletter).<br><br>Sorry for any confusion.<br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 00:03, 13 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup Newsletter Correction",
                            "shas": {
                                "html": "214e42f984fb9878ab3da74e02171897e46d690f1ff2d219b1637551423229ba",
                                "indicator": "cf8210db62316a7b13a7a20e2daa935267d1318a064f8ed8ef33c5176af361a9"
                            }
                        }, {
                            "id": 135,
                            "replies": [{
                                "sha": "c8fc2f30d0c5612f67ba145fbcfe035c8e19e748b21d79f6a25cc2ec982ed8f8",
                                "depth": 0,
                                "html": "Not sure how that happened. I reported 'User:Obama=NoSalt'. <a href='./User:Origamite' title='User:Origamite'>Origamite</a><sup><a href='./User_talk:Origamite' title='User talk:Origamite'>ⓣ</a><a href='./Special:Contributions/Origamite' title='Special:Contributions/Origamite'>ⓒ</a></sup> 16:03, 13 October 2014 (UTC)"
                            }, {
                                "sha": "6bced18dfc0c88d46c14ce5871d53786eeb435551bf30dd503a25bf69c538beb",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I think the {{<a href='./Template:Vandal' title='Template:Vandal'>vandal</a>}} template thought 'User:Obama' was a parameter because of the equals sign. Anyway, I normally would not block as they only made two edits and received two warnings, but agreed there's little doubt they'd turn around and edit constructively. Not sure about the username, either. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:16, 13 October 2014 (UTC)"
                            }, {
                                "sha": "72a3b93c601104a8aacd6946a1a7c7451cb5bc062ceb1ab02865a9e69c7cfb38",
                                "depth": 2,
                                "html": "Thanks. <a href='./User:Origamite' title='User:Origamite'>Origamite</a><sup><a href='./User_talk:Origamite' title='User talk:Origamite'>ⓣ</a><a href='./Special:Contributions/Origamite' title='Special:Contributions/Origamite'>ⓒ</a></sup> 17:38, 13 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "My AIV report",
                            "shas": {
                                "html": "d216817c82d2b73cf8cacc88fa5f896ff7d2a7bf6ab92551920d802e84ce8607",
                                "indicator": "05465459b744e14d75e083a094d391b2468817acadf8ebd7c40b93bf92e5d0e1"
                            }
                        }, {
                            "id": 136,
                            "replies": [{
                                "sha": "487a37859d430ee5ec961fbb479d8ee4b6f1beb4f0e8dd918c95f4e1fa107b7a",
                                "depth": 0,
                                "html": "I did not create <a href='./Democratic_anarchism' title='Democratic anarchism'>democratic anarchism</a>. My little sister thought it would be funny to edit Wikipedia while I was in the bathroom.<a href='./User:Erik_L'Ensle' title='User:Erik L'Ensle'>Erik L'Ensle&nbsp;:)</a> (<a href='./User_talk:Erik_L'Ensle' title='User talk:Erik L'Ensle'>talk</a>) 17:36, 14 October 2014 (UTC)"
                            }, {
                                "sha": "7e06c7a734974b543f2e1209a36d36258ca33c15a523953cc08e868a619e8486",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I saw the note on your user page. No worries, but do be forewarned that if it becomes a problem we may have no choice to but to take preventive measures, such as blocking. I always log out when I leave my computer, perhaps you should do the same. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:11, 14 October 2014 (UTC)"
                            }, {
                                "sha": "c11a17b5775de4a9c9bba9e1dc17b6a10154859a45ef7a28d7f6ffb0b84e0038",
                                "depth": 2,
                                "html": "<a href='./Template:Talk_page_stalker' title='Template:Talk page stalker'>Template:Talk page stalker</a>@<a href='./User:Erik_L'Ensle' title='User:Erik L'Ensle'>Erik L'Ensle</a>: See <a href='./Wikipedia:BRO' title='Wikipedia:BRO'>WP:BRO</a><a href='./User:MirrorFreak' title='User:MirrorFreak'>Amanda</a><a href='./User_talk:MirrorFreak' title='User talk:MirrorFreak'> Smalls</a> 18:17, 14 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "I AM INNOCENT",
                            "shas": {
                                "html": "4a6eb2b6cb712e52191cf40e2c2c356ac059b6647152eb5d1364bc18d72a0906",
                                "indicator": "31483d4a180328cc3c268e97a7425416f52af9d6546b4a00db0edb2c7625f091"
                            }
                        }, {
                            "id": 137,
                            "replies": [{
                                "sha": "4323659f56275676224be1f8b500e0ec1798295d25e816ce66afe0a9e2a318f6",
                                "depth": 0,
                                "html": "Hello!<br>I have a question: why did you delete the 'Structure' part of the draft DP1/Yop1p? Thanks! <a href='./User:BQUB14-Oagharbi' title='User:BQUB14-Oagharbi'>BQUB14-Oagharbi</a> (<a href='./User_talk:BQUB14-Oagharbi' title='User talk:BQUB14-Oagharbi'>talk</a>) 17:04, 15 October 2014 (UTC)"
                            }, {
                                "sha": "710b9451243b03514e15d378945fa1f6f6f03185e7605a977357277c337421f8",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi! While I was <a href='./Wikipedia:RCP' title='Wikipedia:RCP'>patrolling recent changes</a> I reverted an <a href='https://en.wikipedia.org/w/index.php?title=Draft:DP1/Yop1p&amp;diff=629728293&amp;oldid=629721823'>edit</a> as there appeared to add foreign language content and a smiley emoticon :) which in general does not belong in articles. First off, I admittedly did not notice it was a draft article. Secondly, because I used <a href='./Wikipedia:ROLLBACK' title='Wikipedia:ROLLBACK'>rollback</a> it reverted <i>all</i> of your changes. Sorry about that. Anyway... perhaps the foreign language emoticon content was inserted by mistake? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:21, 15 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from BQUB14-Oagharbi",
                            "shas": {
                                "html": "c2b575e3cd91ef907605d2a2e426e583bad068485b886e58a28800b90205da45",
                                "indicator": "b0199dcde9a2ca983fb30f9dd021c7592fad105e45db65bbca9e5455d2e1c4de"
                            }
                        }, {
                            "id": 138,
                            "replies": [{
                                "sha": "5b98c43f58261524a7282b6daaf3ee39a17fa85541432317b965bd23cdec4a90",
                                "depth": 0,
                                "html": "Hello! <br>Well, I am working together with other people on this article and that message followed by a smily emoticon was addressed to a one of the collaborators. Thanks anyway! <a href='./User:BQUB14-Oagharbi' title='User:BQUB14-Oagharbi'>BQUB14-Oagharbi</a> (<a href='./User_talk:BQUB14-Oagharbi' title='User talk:BQUB14-Oagharbi'>talk</a>) 17:53, 15 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from BQUB14-Oagharbi",
                            "shas": {
                                "html": "845cedd4a4014c3edc1a20875d5eed7e4ed514fe2e2c982ea2368adfc637f1d0",
                                "indicator": "aa8ed6143f91e6a85df1db11afca9c7dc8e5c6b4d6441784cec9d7f5d460d283"
                            }
                        }, {
                            "id": 139,
                            "replies": [{
                                "sha": "15349acec6efa90a0ba6ffac065ae6e100b5a75fd2f09a0e54c2441302ad0203",
                                "depth": 0,
                                "html": "<b><a href='./Wikipedia:WPGA' title='Wikipedia:WPGA'>WikiProject Good Articles's</a> <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup' title='Wikipedia:WikiProject Good articles/GA Cup'>2014-15 GA Cup</a> - Round 1</b><br><br>Hello GA Cup competitors!<br><br>The judges have learned a great deal in this first part of the competition, and we appreciate your patience with us as we've figured out what works and what doesn't work.  As we reported in our <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Round_1' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Round 1'>last newsletter</a>, an inadequacy in the scoring system has been illuminated in the past 15 days, which has resulted in a major change in the rules.  It has also resulted in one withdrawal.<br><br>To ensure fairness, we've decided to further increase the number of participants moving onto Round 2.  Everyone who has reviewed at least <b>one</b> article will automatically be moved forward, and will be placed in pools.  You have until October 29 to take advantage of this opportunity.  It is our hope that this will make up for the unforeseen glitch in our scoring system.<br><br>Best of wishes to all of you as you continue to help improve articles and make Wikipedia a better place.<br><br>Cheers from <a href='//test.wikipedia.org/wiki/User:NickGibson3900'>NickGibson3900</a>, <a href='//test.wikipedia.org/wiki/User:Dom497'>Dom497</a>, <a href='//test.wikipedia.org/wiki/User:TheQ_Editor'>TheQ Editor</a> and  <a href='//test.wikipedia.org/wiki/User:Figureskatingfan'>Figureskatingfan</a>.<br><br>To subscribe or unsubscribe to future GA Cup newsletter, please add or remove your name to <a href='./Wikipedia:WikiProject_Good_articles/GA_Cup/Newsletter/Send' title='Wikipedia:WikiProject Good articles/GA Cup/Newsletter/Send'>our mailing list</a>. If you are a participant, you will be on the mailing list no matter what as this is the easiest way to communicate between all participants.<br><br>--<a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 19:03, 15 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "GA Cup - Round 1 Newsletter #2",
                            "shas": {
                                "html": "a46ddd7e85d6954ea01bb48e2f3b5ec17f887ea131c72a59ee7ac74871923943",
                                "indicator": "3715e1957a56c21fc9b676303b0ea6453266624cb56d94c4c5b8b1bc84f04b02"
                            }
                        }, {
                            "id": 140,
                            "replies": [{
                                "sha": "56aeef9a1f7c01bd8c6683dd54464d6c0209654a0a83463b0d4c7206a29304b1",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-15' title='Wikipedia:Wikipedia Signpost/2014-10-15'>Wikipedia:Wikipedia Signpost/2014-10-15</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 05:48, 17 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 15 October 2014",
                            "shas": {
                                "html": "d788f0a3809231a1090f74cc435d0387f2e55923db29dc26f1c335ce6cf91b15",
                                "indicator": "799cc2dcb477da9bffde7a9784bd33d5989598d6e8ab589f3d473f9f49aae937"
                            }
                        }, {
                            "id": 141,
                            "replies": [{
                                "sha": "f7feff84be4e191b8e3dcc1445c87fc49827930cb04af28e180283a9535242ad",
                                "depth": 0,
                                "html": "Please stop reversing changes on the Democratic Party of Hawaii article.  THAT is not an official page of the Party and is being used to discredit the Hawai‘i Democratic Party.  I am the Social Media and Communications Chair for the Party and I am asking you to pull down this article that is misrepresenting our Party.<br><br>I do have lawyers, I don't want to use them.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Teri_Heede' title='User:Teri Heede'>Teri Heede</a> (<a href='./User_talk:Teri_Heede' title='User talk:Teri Heede'>talk</a> • <a href='./Special:Contributions/Teri_Heede' title='Special:Contributions/Teri Heede'>contribs</a>) 17:07, 17 October 2014 (UTC)"
                            }, {
                                "sha": "c96c71d7cf0c8167da16daf5bc85a0a04a705fd07a47427f4f6b95fcd73233f7",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi, Wikipedia is a collaborative effort. No one owns any article. Furthermore, no one claims Wikipedia pages to be the official of any organization. Articles are never <i>authorized</i>, nor do they have to be. This is an encyclopedia. Do you think Encyclopedia Britannica contacted the US Government before publishing their article on them? If there is content you disagree with, you should simply challenge it in a constructive way, instead of writing 'THIS PAGE HAS NOT BEEN AUTHORIZED', which is considered disruptive. Use the <a href='./Talk:Democratic_Party_of_Hawaii' title='Talk:Democratic Party of Hawaii'>talk page</a> to discuss your concerns. Instead of trying to control the article, work with others to improve it. Together we can make it more accurate and unbiased, which is our goal as an encyclopedia. If others are writing information intentionally to discredit your political party, we can address those concerns. First let us know exactly what is wrong on the talk page, then we'll go from there. Sound good? — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:21, 17 October 2014 (UTC)"
                            }, {
                                "sha": "8ab9da0329519b298668a352510cad843b6311e3665174a029ccc739f91f87d0",
                                "depth": 2,
                                "html": "Already blocked for <a href='./Wikipedia:NLT' title='Wikipedia:NLT'>legal threats</a> so unlikely you'll get a reply. <a href='./User:Amortias' title='User:Amortias'>Amortias</a> (<a href='./User_talk:Amortias' title='User talk:Amortias'>T</a>)(<a href='./Special:Contributions/Amortias' title='Special:Contributions/Amortias'>C</a>) 17:52, 17 October 2014 (UTC)"
                            }, {
                                "sha": "f2f6f7b93948562541723aada8d25a2423caa2e6a2ff2e5d1373883c947c43e6",
                                "depth": 3,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I noticed. I have a hunch they or other associates will be back. Hopefully at least one of them understands what Wikipedia is. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:56, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Teri Heede",
                            "shas": {
                                "html": "0dbc7a8750b77ab8856ecdbb3138c94da60fb0ffbdd67ca61e166827a577aafe",
                                "indicator": "11ef3863e6dd6b7f9991dd51e689f3d5e75d103bc4979ea176c264d814a323fa"
                            }
                        }, {
                            "id": 142,
                            "replies": [{
                                "sha": "8d35a03ba6d6777027fef31b460be8f6cb6b0396111543fb61907a672092f1d4",
                                "depth": 0,
                                "html": "Please stop changing my edit to the St. Catharines mayor race. This is the correct information  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/130.113.109.253' title='Special:Contributions/130.113.109.253'>130.113.109.253</a> (<a href='./User_talk:130.113.109.253' title='User talk:130.113.109.253'>talk</a>) 18:07, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from 130.113.109.253",
                            "shas": {
                                "html": "a64783eb183c256759935257b88f35deaddeac19f59e6d2992e07e4167b6a6f8",
                                "indicator": "c6e5572c551bb61533a80938ec96593cc705351f64dc7dc62e02b827d692c231"
                            }
                        }, {
                            "id": 143,
                            "replies": [{
                                "sha": "65be9d215c1fb124231210c926fc6d1520c3ad8744c9f9b3d2e3bd0e90de440b",
                                "depth": 0,
                                "html": "Do you know who is 'responsible' for this tool? For the last few days it hasn't been responding at all. It's always been erratic, but a few days is a bit longer than usual for it to stop working. Thanks.--<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 15:33, October 17, 2014 (UTC)"
                            }, {
                                "sha": "6d4147da9a6812613964686d8825ad4cd1209947c2b443b57850dad84d2dd9de",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Yeah I've noticed the same... the <a href='https://tools.wmflabs.org/xtools/pcount'>Xtools counter</a> as far as I know is maintained by <a href='./User:X!' title='User:X!'>X!</a>, <a href='./User:Cyberpower678' title='User:Cyberpower678'>Cyberpower678</a> and others. It doesn't seem to load at all. The Supercount tool is maintaing by Cyberpower678 (who is on wikibreak). It appears to work but you have to be very patient. Given both tools are running painfully slow, I'm going to guess there's an issue with wmflabs, although things look normal over on the <a href='https://tools.wmflabs.org/?status'>status page</a>. There's also <a href='http://en.wikichecker.com/'>Wikichecker</a> which doesn't run on wmflabs. It is <i>always</i> painfully slow, but currently is loading faster than the other two options.<br><br> If you just need edit count, as I'm sure you know with <a href='./Wikipedia:Tools/Navigation_popups' title='Wikipedia:Tools/Navigation popups'>navigation popups</a> you can just hover over their username to see the count. I've also installed <a href='./User:Anomie/useridentifier.js' title='User:Anomie/useridentifier.js'>useridentifier.js</a> which will show user edit count / user groups at the top of any given page in a userspace. Pretty nifty. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:07, October 17, 2014 (UTC)"
                            }, {
                                "sha": "8229c618627e14600e517f71d4a94bcd0eadac0a60a3768668e0280799571432",
                                "depth": 2,
                                "html": "I don't get into gadgets and scripts much, so I know very little. Didn't know about navigation popups, but just changed my preferences to use it. I'll try your script later. Thanks for the detailed explanation. It was very helpful.--<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 17:29, October 17, 2014 (UTC)"
                            }, {
                                "sha": "78e95f3ad50dc7fea6a42a14b0159e14020621d32dfbb54882c8ef11f576aa9e",
                                "depth": 3,
                                "html": "No problem! Since we're on the subject, other tools I cannot live without that you might be interested in: <a href='./User:Remember_the_dot/Syntax_highlighter' title='User:Remember the dot/Syntax highlighter'>Syntax highlighter</a> (bye bye bracket bot notices), <a href='./User:Anomie/ajaxpreview.js' title='User:Anomie/ajaxpreview.js'>ajaxpreview.js</a> (for some reason not part of MediaWiki core), <a href='./User:MusikAnimal/MoreMenu' title='User:MusikAnimal/MoreMenu'>MoreMenu.js</a> (written by yours truly). More where that came from, of course, but those are my favourites :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 17:41, October 17, 2014 (UTC)"
                            }, {
                                "sha": "297f3fa9f7cdc33355f00ce9b415c063a9ad23ce9a425929ed6100201ba73300",
                                "depth": 4,
                                "html": "I couldn't find any doc on the ajaxpreview script. What does it do? I already have something (don't ask me what because I don't remember) that adds things to the drop-downs on the menu bar. Will your script conflict with that? Unrelated curiosity question. You live in NYC and many of your userboxes are associated with New Yorker things, but your spelling is British-style. ? --<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 18:10, October 17, 2014 (UTC)"
                            }, {
                                "sha": "b0aac0355a605968bbf5e13cbf7859d7869e7114a34ad01828c31158384684ab",
                                "depth": 5,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> AjaxPreview is the same as normal preview except it is a million times faster and it <i>shows all the references</i> – a major fault of the native preview. Crucial when working on very large articles. E.g. go to a large article like <a href='./New_York_City' title='New York City'>New York City</a>, edit a particular section and compare previews (AjaxPreview has it's own button). You'll be sold!<br><br>     I assume you must have <a href='./User:Haza-w/Drop-down_menus' title='User:Haza-w/Drop-down menus'>drop-down menus</a>. If you don't use the Vector skin you should stick with that. <a href='./User:MusikAnimal/MoreMenu' title='User:MusikAnimal/MoreMenu'>MoreMenu.js</a> is a rewrite of that script to conform to vector styling, and I added a bunch more links and updated others. I wish <a href='./User:Haza-w' title='User:Haza-w'>Haza-w</a>, the original author, were still around for me to thank them for their work.<br><br>     I do live in New York City, and you are correct that I often use British English! I don't have a good explanation for that. I just prefer 24-hour time and having the u's in my colour's, favour's etc. Meanwhile I still use z's in realize, etc. Outside the mainspace it varies, but inside I of course try to conform to whatever is appropriate for that article. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 19:53, 17 October 2014 (UTC)"
                            }, {
                                "sha": "b7f4512a14317552be86ca20f7d4341dbd0c3f69fb054d1ddfe38bd508964d94",
                                "depth": 6,
                                "html": "I will probably try AjaxPreview and your script at some point. I implement new things slowly. It's the old computer professional in me. One change at a time. Your spelling preferences are amusing. Again, many thanks, and it's been a pleasure talking to you. That, of course, has its downside as I may be back with questions. I can be a bit of a pest. At least that's what my friends tell me.--<a href='./User:Bbb23' title='User:Bbb23'>Bbb23</a> (<a href='./User_talk:Bbb23' title='User talk:Bbb23'>talk</a>) 20:38, 17 October 2014 (UTC)"
                            }, {
                                "sha": "ea413a960d4823746346ad18234cb19c2aac94b17b047312d94c655b9afedcdb",
                                "depth": 7,
                                "html": "Haha! Pleasure is all mine :) — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:41, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Edit counts",
                            "shas": {
                                "html": "15ff7ec0c93c68994c920e7cb111e09d35f3886869d7554c63ceec897a5d238f",
                                "indicator": "7edc036289abcf8e53800d9b1210117b2d2e6a5bd8d55ddc2d9295cb29228a73"
                            }
                        }, {
                            "id": 144,
                            "replies": [{
                                "sha": "6944404168767972bb00fc397e2a12b48909b3beecb2f680223cdeede17e43c3",
                                "depth": 0,
                                "html": "Hello, MusikAnimal! Last week you semi-protected the page <a href='./John_Ducas_(investor)' title='John Ducas (investor)'>John Ducas (investor)</a> for repeated vandalism including BLP issues. I would like to ask you to reapply the semi-protection and to extend it for a month. I am asking for two reasons. First, as soon as the protection expired, one of the original ISP vandals posted hoax information to the page again. (Claiming a 16 year old guy is married and has six kids - pretty much the definition of a hoax.) Second, I think I may be the only person watching this article, and I am going to be on wikibreak until mid November. Alternatively, if you don't feel protection is justified, could I ask you to watch the article? Thanks! --<a href='./User:MelanieN' title='User:MelanieN'>MelanieN</a> (<a href='./User_talk:MelanieN' title='User talk:MelanieN'>talk</a>) 21:48, 17 October 2014 (UTC)"
                            }, {
                                "sha": "7e0735411243621f46c0c1403688249124b585445fde4713e199671bced7c2d1",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Semi-protected for another two weeks. We don't ever protect preemptively, but I have added it to my watchlist :) Thanks for helping keep this article clean. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:55, 17 October 2014 (UTC)"
                            }, {
                                "sha": "a8e744984abb7cd4b23565f9e6dd5a3e93bd4f8109a5c0fd190b4a76d0d642c1",
                                "depth": 2,
                                "html": "Thank you! --<a href='./User:MelanieN' title='User:MelanieN'>MelanieN</a> (<a href='./User_talk:MelanieN' title='User talk:MelanieN'>talk</a>) 22:01, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Page protection",
                            "shas": {
                                "html": "87c2ae72fe7affdc54c0a5dfc035db5dee3e434ec800d7183e4ecca47283822c",
                                "indicator": "13a1661a6c3e6b1af4865961517742683eaf6cbb2ebe01bccc6575cb7da320d7"
                            }
                        }, {
                            "id": 145,
                            "replies": [{
                                "sha": "3bf1f78b96a4b2a51c7f8539e43796e6c6207c9ee7f6362aabb9c98c5cb9b414",
                                "depth": 0,
                                "html": "thanks for rubbing it in<br>i think you should go and delete it on the french Etienne Chouard's page too as this was a direct translation from that uncontructive french page<br>cqfd!  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Jmvernay' title='User:Jmvernay'>Jmvernay</a> (<a href='./User_talk:Jmvernay' title='User talk:Jmvernay'>talk</a> • <a href='./Special:Contributions/Jmvernay' title='Special:Contributions/Jmvernay'>contribs</a>) 22:06, 17 October 2014 (UTC)"
                            }, {
                                "sha": "546d7ff779db300181e0b64e6a9c89ca559ffb2eedff914cf36fd0cfc5dbe023",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi. I don't know anything about Etienne Chouard but <a href='https://en.wikipedia.org/w/index.php?title=%C3%89tienne_Chouard&amp;diff=628522325&amp;oldid=628183841'>this</a> type of commentary never belongs in the article mainspace, so I removed it. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 22:25, 17 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from mr not contructive",
                            "shas": {
                                "html": "e7b97ab0ecf238a5e96104d7cbf109502b3d59476156fa9529bb0f4248dd0894",
                                "indicator": "99e34bbba67406df19bfdc77c7a2e2b6c4713b9f7d2a8ad28258f8dc90a8bc46"
                            }
                        }, {
                            "id": 146,
                            "replies": [{
                                "sha": "1f072e21ddfa0f6a6890dc7a36447d7b99536fcebb24cced4431ee5486fa6379",
                                "depth": 0,
                                "html": "You have been randomly selected to receive an invitation to <a href='./Talk:Epilepsy#rfc_DAA668A' title='Talk:Epilepsy'>participate in the request for comment</a> on <b>Talk:Epilepsy</b>. Should you wish to respond, your contribution to this discussion will be appreciated.  For tips, please see <a href='./Wikipedia:Requests_for_comment#Suggestions_for_responding' title='Wikipedia:Requests for comment'>WP:Requests for comment#Suggestions for responding</a>. If you wish to change the frequency or topics of these notices, or do not wish to receive them any longer, please adjust your entries at <a href='./Wikipedia:Feedback_request_service' title='Wikipedia:Feedback request service'>WP:Feedback request service</a>. —  <a href='./User:Legobot' title='User:Legobot'>Legobot</a> (<a href='./User_talk:Legobot' title='User talk:Legobot'>talk</a>) 00:04, 18 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Please comment on <a href='./Talk:Epilepsy#rfc_DAA668A' title='Talk:Epilepsy'>Talk:Epilepsy</a>",
                            "shas": {
                                "html": "13c76e358ee6ec6dc0688cd6749591ee6671b742e229ca7cac1a5a9fb8fe70b7",
                                "indicator": "4b6ef98a5530504dc2182f8e71d09e7e4b4758109b28befb0c359bd441653c4b"
                            }
                        }, {
                            "id": 147,
                            "replies": [{
                                "sha": "441b905ce3e7ecd96df7d0d4cb3556a3bcf6048626f6cc5a7923e83f347308f6",
                                "depth": 0,
                                "html": "Achraf Baznani is a Moroccan artist, filmmaker and photographer. The page about this moroccan artist was deleted. He is the author of the first surrealist photobook in Morocco, called 'Through my lens' <a href='./International_Standard_Book_Number' title='International Standard Book Number'>ISBN</a> <a href='./Special:BookSources/9781502793386' title='Special:BookSources/9781502793386'>9781502793386</a>. Can you please recreate the page? Thank you. <a href='./User:Bestforone' title='User:Bestforone'>Bestforone</a> (<a href='./User_talk:Bestforone' title='User talk:Bestforone'>talk</a>) 18:00, 19 October 2014 (UTC)"
                            }, {
                                "sha": "cdf945b926f99aeb132670a75999bf193c7ee0f64363eeb16c2905ffa8ae179c",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> The most recent version of the article was deleted for unambiguous advertising. This was the third time the article was deleted, so the page was <a href='./Wikipedia:SALT' title='Wikipedia:SALT'>salted</a> to prevent recreation. First make sure the subject meets the <a href='./Wikipedia:NPERSON' title='Wikipedia:NPERSON'>notability guideline</a>, and if you feel they do, you can create a draft article that once approved can be published to the mainspace. That is my recommendation. The <a href='./Wikipedia:WIZARD' title='Wikipedia:WIZARD'>article wizard</a> can expedite this process. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:19, 19 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Achraf Baznani",
                            "shas": {
                                "html": "2b0613578fe821340e126fd26e1489af29ef471b2352c06ea4d424004c353308",
                                "indicator": "cdf00556cadbc8daf0080784dfdfb89b1bbcbd4053f08b7ae673402ddec8dd27"
                            }
                        }, {
                            "id": 148,
                            "replies": [{
                                "sha": "a3b7a510228c1cc2c73777369aa30c2a63bedd01c53fbd25d78b6eaa1949f3a1",
                                "depth": 0,
                                "html": "I think you should undelete <a href='./Ben_Perry' title='Ben Perry'>Ben Perry</a>, its a good and important topic and subject and should be undeleted as soon as possible <a href='./Special:Contributions/216.255.168.124' title='Special:Contributions/216.255.168.124'>216.255.168.124</a> (<a href='./User_talk:216.255.168.124' title='User talk:216.255.168.124'>talk</a>) 18:25, 19 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Ben Perry",
                            "shas": {
                                "html": "78deb130529df0ee5b00b890d8a81ac09aa1fcad0a446832e1665bcd66dc6839",
                                "indicator": "79a73bd8655ff58e989b850fc78d4a065ffd41d2bcdc40133665f779d8568804"
                            }
                        }, {
                            "id": 149,
                            "replies": [{
                                "sha": "48daf358c8da28d255f3533d3e1d30eeaf03c5d18de632687a27190b6089a7aa",
                                "depth": 0,
                                "html": "I found this site that could really help women with preeclampsia but it doesn't seem to be search optimized, therefore I wanted to use Wiki to bring more awareness. How should I change the content to make it acceptable to post on Wiki? Thanks!  prefix:User — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./User:Rkapa96' title='User:Rkapa96'>Rkapa96</a> (<a href='./User_talk:Rkapa96' title='User talk:Rkapa96'>talk</a> • <a href='./Special:Contributions/Rkapa96' title='Special:Contributions/Rkapa96'>contribs</a>)<br><br> <a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> The fact that you want to use Wikipedia as a means to promote the subject is fundamentally wrong. That is simply <a href='./Wikipedia:NOTADVERTISING' title='Wikipedia:NOTADVERTISING'>not what Wikipedia is for</a>, and writing an article with that sort of mindset is not going to produce something acceptable for the mainspace. There are other platforms more suitable for what you are trying to do. A Google <a href='https://www.google.com/search?q=SEO&amp;oq=SEO&amp;aqs=chrome..69i57j0j69i60l3j0.2486j0j7&amp;sourceid=chrome&amp;es_sm=91&amp;ie=UTF-8'>search</a> of 'SEO' may yield some helpful resources. If you want to proceed with writing an article here, you first off need to ensure the subject meets the <a href='./Wikipedia:N' title='Wikipedia:N'>notability guideline</a>. I honestly am not familiar enough to critique medical-related subjects. Maybe ask at <a href='./Wikipedia_talk:MED' title='Wikipedia talk:MED'>Wikiproject Medicine</a> if they think your subject is suitable for Wikipedia. If does turn out to be notable enough for inclusion, you must be careful to not make the article sound promotional, and avoid exerting a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a>. If it is clear you are here only to promote this clinical trial you will surely run into more trouble. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:25, 20 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "PRESERVE-1 clinical trial",
                            "shas": {
                                "html": "f10f47c8ad08c6c62319202b4eebc2d472f5b572204eb973c5499d1b856e5fd5",
                                "indicator": "11087bad1b7e8015b4ad848cd8c013700ce4ef3b7292fcfca7c1ce58fc7113ee"
                            }
                        }, {
                            "id": 150,
                            "replies": [{
                                "sha": "236c0e11c355a9569365854c2c100dc56b249f3049d0d70ae453a0b2a0a2dca0",
                                "depth": 0,
                                "html": "Hello I am Don J. Snyder. why are you deleting the text I wrote for the page today and why have you deleted former text that I composed for wikipedia? <a href='./User:Donjsnyder' title='User:Donjsnyder'>Donjsnyder</a> (<a href='./User_talk:Donjsnyder' title='User talk:Donjsnyder'>talk</a>) 20:17, 20 October 2014 (UTC)"
                            }, {
                                "sha": "1c06984078ec8ecebcb9c53e38dcda342fc8fca1fe3b3371cf9d36e0c3512c6d",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Hi, it's really confusing what you're trying to do. For starters, this is entirely too much information for a biography. It reads like a series of diary entries. Secondly, there are absolutely no sources whatsoever. <a href='./Wikipedia:V' title='Wikipedia:V'>Verifiability</a> is crucial, especially with <a href='./Wikipedia:BLP' title='Wikipedia:BLP'>biographies of living persons</a>. You are also writing in the <a href='./First-person_narrative' title='First-person narrative'>first-person</a>, with a strong <a href='./Wikipedia:PROMO' title='Wikipedia:PROMO'>promotional tone</a>. Frankly all this combined made it seem like vandalism, which is why it keeps getting reverted. Finally, you are <a href='./Wikipedia:AUTOBIO' title='Wikipedia:AUTOBIO'>strongly discouraged</a> to contribute to articles about yourself, as it may be difficult to not exert a <a href='./Wikipedia:COI' title='Wikipedia:COI'>conflict of interest</a>. My advice is to refrain from adding the content, take a step back and try to first grasp what <a href='./Wikipedia:5' title='Wikipedia:5'>Wikipedia is all about</a>. Wikipedia is not a platform to write about and promote yourself. However, if there is something <i>wrong</i> with the article, such as incorrect information, we do want to fix that. Let us know on the <a href='./Talk:Don_J._Snyder' title='Talk:Don J. Snyder'>talk page</a> and we will help get things straight. Hope this helps — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 20:40, 20 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Donjsnyder",
                            "shas": {
                                "html": "d624675cd5c95a4d5b8ac87aa6a3be730d0a1137d62ed4690900bfa976719ae1",
                                "indicator": "d6e0b6dc27febd4c2826fd00c1777448b331231a881e3ca0e0c43a0b8623690f"
                            }
                        }, {
                            "id": 151,
                            "replies": [{
                                "sha": "5ee8962397f830187eaee6fd27764a1e2f9f6a550b32c13fb717c71ee1a203c3",
                                "depth": 0,
                                "html": "Hello Dear, I deleted Page of Ahlam Hamed Younis , because there is mistake in her title name . Her name should be ( Ahlam Hamed Younes ) . I made new page with her name . And i would like to keep her name in one page in Wikipedia only not two . Greeting . Mahmoud Atef <a href='./User:Mahemodkballet' title='User:Mahemodkballet'>Mahmoud Atef</a> (<a href='./User_talk:Mahemodkballet' title='User talk:Mahemodkballet'>talk</a>) 16:24, 21 October 2014 (UTC)"
                            }, {
                                "sha": "28d3f72ba122a5b9e5d6082d847664ba5b9498a45bbed54d1837ecfda747667f",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> No problem, but instead of deleting one page and creating a new one, we can just <a href='./Wikipedia:MOVE' title='Wikipedia:MOVE'>move</a> the page to the correct name. Is <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a> the correct name? Why does that page differ so greatly from <a href='./Ahlam_Hamed_Younis' title='Ahlam Hamed Younis'>Ahlam Hamed Younis</a>? We cannot delete the original page and start a new page about the same subject. Let's keep the old page, rename it, and you can change what you need to. Okay? Please verify <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a> is the right page so that I can delete it and move <a href='./Ahlam_Hamed_Younis' title='Ahlam Hamed Younis'>Ahlam Hamed Younis</a> there. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:30, 21 October 2014 (UTC)"
                            }, {
                                "sha": "75671226987210d013fce69ce62a0679b3c7e9305b4b433a0ff06872da4c3070",
                                "depth": 2,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> OK I've taken upon myself to do what I believe is what you wanted. <a href='./Ahlam_Hamed_Younis' title='Ahlam Hamed Younis'>Ahlam Hamed Younis</a> now redirects to <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a>, with all the page history intact. You may continue your work at <a href='./Ahlam_Hamed_Younes' title='Ahlam Hamed Younes'>Ahlam Hamed Younes</a>. Just remember in the future if you need to rename a page, you should <a href='./Help:Move' title='Help:Move'>move</a> the old page to the new name, rather than create a new page altogether. Best — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:37, 21 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Hello from Mahemodkballet",
                            "shas": {
                                "html": "52d473c5ea279088c94d5730fdbd425bde4417adf47fb9a14a3834aa0b3d0518",
                                "indicator": "a7a4bb982ea1d36333fe394480cff5273b2a40fc1689ee9bfe7f04a2c248c813"
                            }
                        }, {
                            "id": 152,
                            "replies": [{
                                "sha": "b3bd34ac5c58c57356ab8cd91c39578af2896ab7289a06d866745007523f1432",
                                "depth": 0,
                                "html": "Hello. You have messages at <a href='./User_talk:David_Levy' title='User talk:David Levy'>David Levy</a>'s talk page.<br><br>—<a href='./User:David_Levy' title='User:David Levy'>David Levy</a> 22:15, 21 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Talkback",
                            "shas": {
                                "html": "3c650f7592e84fea19f6c06097dddf15e4b57824adae7d70a94c6529c7c33eed",
                                "indicator": "ba135d77816f8ec87e14cc7bc93aba29fa15605d739b6852cc18950bba8241ca"
                            }
                        }, {
                            "id": 153,
                            "replies": [{
                                "sha": "a09fd8c4e44a34d54771807cfb3500fb10135d2687e6b8065850af61195ef37e",
                                "depth": 0,
                                "html": "<a href='./Wikipedia:Wikipedia_Signpost/2014-10-22' title='Wikipedia:Wikipedia Signpost/2014-10-22'>Wikipedia:Wikipedia Signpost/2014-10-22</a><ul><li><b><a href='./Wikipedia:Wikipedia_Signpost' title='Wikipedia:Wikipedia Signpost'>Read this Signpost in full</a></b></li><li><a href='./Wikipedia:Signpost/Single' title='Wikipedia:Signpost/Single'>Single-page</a></li><li><a href='./Wikipedia:Wikipedia_Signpost/Subscribe' title='Wikipedia:Wikipedia Signpost/Subscribe'>Unsubscribe</a></li><li><a href='./User:MediaWiki_message_delivery' title='User:MediaWiki message delivery'>MediaWiki message delivery</a> (<a href='./User_talk:MediaWiki_message_delivery' title='User talk:MediaWiki message delivery'>talk</a>) 08:22, 24 October 2014 (UTC)</li></ul>"
                            }],
                            "depth": 2,
                            "html": "<i>The Signpost</i>: 22 October 2014",
                            "shas": {
                                "html": "8aa47259e0754b4ffac6868814415812854ee9292363f5e516b3855a4078109f",
                                "indicator": "71f059beda17d2113ed3a1ed5ca7f00de0b98b868f6a1be602c27159979dc519"
                            }
                        }, {
                            "id": 154,
                            "replies": [{
                                "sha": "aa6eed90d51ae13820a15f4e2894a13fe764b05177a9bbaf235a800294a1654b",
                                "depth": 0,
                                "html": "Just letting you know that I have replied over at <a href='./Talk:Animal_(Miike_Snow_song)/GA1' title='Talk:Animal (Miike Snow song)/GA1'>Talk:Animal (Miike Snow song)/GA1</a> :) <a href='./User:PancakeMistake' title='User:PancakeMistake'>Pancake</a> (<a href='./User_talk:PancakeMistake' title='User talk:PancakeMistake'>talk</a>) 14:24, 25 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "'Animal' GAN",
                            "shas": {
                                "html": "edba5557e261b4250e7a418dd4e0d6ea9627f3905a428d7eb9c3ce258b49e677",
                                "indicator": "b2199eb0cd27d661fbb82443af8b20184e0f5e557f225a769317724b60a7d536"
                            }
                        }, {
                            "id": 155,
                            "replies": [{
                                "sha": "db9357bdbdb88a351695a623111010a85735566b0374a6f8811570a074c6dd44",
                                "depth": 0,
                                "html": "<a href='https://en.wikipedia.org/w/index.php?title=User_talk:MusikAnimal&amp;diff=631096850&amp;oldid=631061958'>[index.php?title=User_talk:MusikAnimal&amp;diff=631096850&amp;oldid=631061958]</a> and <a href='https://en.wikipedia.org/w/index.php?title=Wikipedia:Administrator_review/MusikAnimal&amp;diff=631096447&amp;oldid=630702559'>[MusikAnimal&amp;diff=631096447&amp;oldid=630702559]</a> <b>&nbsp;<a href='./User:NQ' title='User:NQ'>NQ</a>&nbsp;</b><a href='./User_talk:NQ' title='User talk:NQ'> talk</a> 20:28, 25 October 2014 (UTC)"
                            }, {
                                "sha": "1dfde32bb7839a2123612be3de9584fb3854f6cb023b1a3e2f3193e171d7f549",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Thank you for taking care of that! I've been offline for the past several days so obviously had no idea. Cheers — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 14:59, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "FYI",
                            "shas": {
                                "html": "b7e81fceb2c1a6143531cf4a64d30611e42e3c6c057b72f96c8ee11254888176",
                                "indicator": "69ac95df93dd3d9657974896a5fe00ccc8b4cd585fee9e4a80331a37b01d72d0"
                            }
                        }, {
                            "id": 156,
                            "replies": [{
                                "sha": "59cd95e812480b3fe4c4af1144edb7ad7b355cf2780c768b278dfd64d3c9089f",
                                "depth": 0,
                                "html": "<a href='./File:Wikipedia_Halloween's_Day.png'>[File:Wikipedia_Halloween's_Day.png]</a><a href='./File:Halloween_pumpkin_night_puzzle.jpg'>[File:Halloween_pumpkin_night_puzzle.jpg]</a><br><br><i><b>Happy <a href='./Halloween' title='Halloween'>Halloween</a>!</b></i><br><br><b>Hello MusikAnimal:Thanks for all of your contributions to improve Wikipedia, and have a happy and enjoyable <a href='./Halloween' title='Halloween'>Halloween</a>!</b><br><br>–  <a href='./User:Northamerica1000' title='User:Northamerica1000'>NorthAmerica</a><sup><a href='./User_talk:Northamerica1000' title='User talk:Northamerica1000'>1000</a></sup> 05:58, 27 October 2014 (UTC)"
                            }, {
                                "sha": "19326f13026e658afee1cbf0758b9737a2400d7d9dff7189f39e6c5c14662342",
                                "depth": 0,
                                "html": "Send Halloween cheer by adding {{subst:<a href='./Template:Happy_Halloween' title='Template:Happy Halloween'>Happy Halloween</a>}} to user talk pages with a friendly message.<br><br> Thanks! To you as well — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 15:04, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Halloween cheer!",
                            "shas": {
                                "html": "f253918584c8df4e21bfd7afdcc547e50b9d94cbf68a1a18545a6bb4440824c2",
                                "indicator": "3f3d305c9ce604bdf6f9fad9d085fbee5394396c7adf71578b3b2f5e6740f80a"
                            }
                        }, {
                            "id": 157,
                            "replies": [{
                                "sha": "b9f27bbed3b539818d3fbc909989dd9e6d60ce6dcaf12c4f398dc545b81074fe",
                                "depth": 0,
                                "html": "What don't you understand? Stop removing my edits and sources.  — Preceding <a href='./Wikipedia:Signatures' title='Wikipedia:Signatures'>unsigned</a> comment added by <a href='./Special:Contributions/129.127.32.123' title='Special:Contributions/129.127.32.123'>129.127.32.123</a> (<a href='./User_talk:129.127.32.123' title='User talk:129.127.32.123'>talk</a>) 16:01, 27 October 2014 (UTC)"
                            }, {
                                "sha": "35a5ece487105ebc87693d3efaf77e527095391b93d436811949fee501201941",
                                "depth": 1,
                                "html": "Your addition is entirely subject to opinion. We don't call anything 'the worst' or 'the best'. More at <a href='./Wikipedia:POV' title='Wikipedia:POV'>WP:POV</a>. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 16:10, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Edits",
                            "shas": {
                                "html": "c095a96d84c1cb5366bf2e131799d760d7217268b43c4a64de1309e8a64069e9",
                                "indicator": "44d39de04dcdbfc5d09b707a07cf4b50fd8f063d7fca4fc6597e025b113a4222"
                            }
                        }, {
                            "id": 158,
                            "replies": [{
                                "sha": "8aabb64b1f6d985febabbe821ac381a2a34dbbaa36fc448be41d106e521d8568",
                                "depth": 0,
                                "html": "FYI: You self reverted after reverting him and cluebot reverted his next edit to yours leaving his original removal live in the article. <a href='https://en.wikipedia.org/w/index.php?title=South_Asia&amp;diff=631351897&amp;oldid=631351858'>[index.php?title=South_Asia&amp;diff=631351897&amp;oldid=631351858]</a> --<a href='./User:TopGun' title='User:TopGun'><b>lTopGunl</b></a> (<a href='./User_talk:TopGun' title='User talk:TopGun'><b>talk</b></a>) 18:28, 27 October 2014 (UTC)"
                            }, {
                                "sha": "2516a065195ea259a31b13fb1576859fe8fefc3cdc00f9c36534bfc698ca25f3",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> Mistake on my part. I accidentally reverted with Huggle, and after realizing it wasn't vandalism, undid my revert. I did not notice that it was a test edit that broke the citation, however. Thanks for cleaning that up! — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 18:33, 27 October 2014 (UTC)"
                            }, {
                                "sha": "eed5a398eb18a74282c7d0234c1ae95424918a16a84447a496ff64815d32291f",
                                "depth": 2,
                                "html": "No problem. Just thought you'd like to know. Cheers. --<a href='./User:TopGun' title='User:TopGun'><b>lTopGunl</b></a> (<a href='./User_talk:TopGun' title='User talk:TopGun'><b>talk</b></a>) 18:35, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Test edits or vandalism..",
                            "shas": {
                                "html": "f141fc36787f90373f8d7c9e7e5285f5840eadcaaf33ef08cdfc66d158800e42",
                                "indicator": "fd139d35f92853cbfd8c6b2af135232a57bedbce7cc7d7fb1748246501283855"
                            }
                        }, {
                            "id": 159,
                            "replies": [{
                                "sha": "37cd2c4017dc01ac90ccc28d5c2f5c8e8566b594143e6938939434503a3e00c4",
                                "depth": 0,
                                "html": "Hi there. Can you check the multiple covers uploaded at <a href='./File:GunsnRosesAppetiteforDestructionalbumcover.jpg' title='File:GunsnRosesAppetiteforDestructionalbumcover.jpg'>File:GunsnRosesAppetiteforDestructionalbumcover.jpg</a>? I've nominated it for deletion because non-free work that is not used in any article should be deleted, but I haven't received feedback so far.--<a href='./User:Retrohead' title='User:Retrohead'>Retrohead</a> (<a href='./User_talk:Retrohead' title='User talk:Retrohead'>talk</a>) 21:15, 27 October 2014 (UTC)"
                            }, {
                                "sha": "794e05978a4b7ccb50decf8cbd9c3858642c613197d2daec2cb059773b11bab2",
                                "depth": 1,
                                "html": "<b>Done</b>. I don't think you can use specific versions of files but they are indeed non-free and not used, so I've deleted them. Thanks — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 21:36, 27 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Administrator's attention",
                            "shas": {
                                "html": "9b69e081bc596a9aea24a934e4710d365e753e9598b0f06ed2925c17733953dd",
                                "indicator": "87773b8ccc9cfb12fcae98e9a4fb809bf6778e8857e4d1defa14dd67b10ad15a"
                            }
                        }, {
                            "id": 160,
                            "replies": [{
                                "sha": "38c2dba55a6899e1daa63100a2818f2066b4fcbcb23d6ec40d80759e1bebe31c",
                                "depth": 0,
                                "html": "<a href='./File:Wikipedia_Halloween's_Day.png'>[File:Wikipedia_Halloween's_Day.png]</a><a href='./File:Halloween_pumpkin_night_puzzle.jpg'>[File:Halloween_pumpkin_night_puzzle.jpg]</a><br><br><i><b>Happy <a href='./Halloween' title='Halloween'>Halloween</a>!</b></i><br><br><b>Hello MusikAnimal:Thanks for all of your contributions to improve Wikipedia, and have a happy and enjoyable <a href='./Halloween' title='Halloween'>Halloween</a>!</b><br><br>–  –<a href='./User:Davey2010' title='User:Davey2010'><b>Davey</b><b>2010</b></a> • <a href='./User_talk:Davey2010' title='User talk:Davey2010'><i>(talk)</i></a> 22:19, 27 October 2014 (UTC)"
                            }, {
                                "sha": "872e29485e285552e4a5953fd5a2ee6b06d65ec3ee517bf4ad760c1845b5c193",
                                "depth": 0,
                                "html": "Send Halloween cheer by adding {{subst:<a href='./Template:Happy_Halloween' title='Template:Happy Halloween'>Happy Halloween</a>}} to user talk pages with a friendly message."
                            }],
                            "depth": 2,
                            "html": "Halloween cheer!",
                            "shas": {
                                "html": "6c76a96d9634ac84abf23b177dc107548abc7f3ec534b1cf865a7dfc30a15381",
                                "indicator": "1b4b0bea1441b040bb46a8d4a4d4df69503518255b23c1d8c9c1ce6c39dc36b5"
                            }
                        }, {
                            "id": 161,
                            "replies": [{
                                "sha": "ca373ca4e9658ec51ccf10a0a2485efa2927918b80a47ba8e81f87026497ef51",
                                "depth": 0,
                                "html": "Hi, is there any chance of blocking <a href='./User:Kmvhmv' title='User:Kmvhmv'>User:Kmvhmv</a> indefinitely? This is a long-term, vandalism-only account (every edit had been reverted thus far). Examples include changing dates and adding false assembly locations for cars/trucks/buses, etc. Has been given multiple warnings. My request at <a href='https://en.wikipedia.org/w/index.php?title=Wikipedia:Administrator_intervention_against_vandalism&amp;diff=prev&amp;oldid=629927779'>WP:RVAN</a> on October 17 did not get processed. Regards, <a href='./User:OSX' title='User:OSX'>OSX</a> (<a href='./User_talk:OSX' title='User talk:OSX'>talk</a> • <a href='./Special:Contributions/OSX' title='Special:Contributions/OSX'>contributions</a>) 23:34, 27 October 2014 (UTC)"
                            }, {
                                "sha": "867e7ac7127316a7bd974079434b992fbf04a11009e9ebc6e9d10586ec03b562",
                                "depth": 1,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> I looked into this quite thoroughly and can agree most edits are unconstructive. I would normally consider this stale, as they haven't edited since 18 October, but given the long-term disruption I think a block is warranted. I've gone with a month. Sometimes a temporary block is all that is needed to get their attention, and turn them around in to making useful contributions. — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 00:31, 28 October 2014 (UTC)"
                            }, {
                                "sha": "be09b6de4f1edac065a1b701a07aee5e3e37c034bd40795f0844b42bd3a716a6",
                                "depth": 2,
                                "html": "Ok thanks for that. Hopefully they get the message. Cheers, <a href='./User:OSX' title='User:OSX'>OSX</a> (<a href='./User_talk:OSX' title='User talk:OSX'>talk</a> • <a href='./Special:Contributions/OSX' title='Special:Contributions/OSX'>contributions</a>) 00:39, 28 October 2014 (UTC)"
                            }],
                            "depth": 2,
                            "html": "Kmvhmv",
                            "shas": {
                                "html": "a03aecb1064c810420d2fa6bb25760e9a0dc3964b8f25a82b0f412f50b396242",
                                "indicator": "b2d5e79303b48c3f161234fce49a99f1a4f6fb698ff73288a3b2a905470be6ac"
                            }
                        }, {
                            "id": 162,
                            "replies": [{
                                "sha": "102bbbf3263df3671e8b52d27339f2e775f1c668809904c596c35afc7bec9f96",
                                "depth": 0,
                                "html": "The contents of the use page is like he/she is promoting his/her website. Can you look into this? Thanks. <a href='./User:Physicsmathftw' title='User:Physicsmathftw'>Physicsmathftw</a> (<a href='./User_talk:Physicsmathftw' title='User talk:Physicsmathftw'>talk</a>) 05:42, 28 October 2014 (UTC)"
                            }, {
                                "sha": "c63cf645a96f2aa594746196a8c88e2edc50c619b144025e1770e86f29970a52",
                                "depth": 1,
                                "html": "Looks likes, the page is already deleted and the user is blocked. <a href='./User:Physicsmathftw' title='User:Physicsmathftw'>Physicsmathftw</a> (<a href='./User_talk:Physicsmathftw' title='User talk:Physicsmathftw'>talk</a>) 05:45, 28 October 2014 (UTC)"
                            }, {
                                "sha": "5079caa0a2339d1a4f4ada5cdfdea1cde8abf6e2656639bc965cbf8976626da2",
                                "depth": 2,
                                "html": "<a href='./Template:Reply' title='Template:Reply'>Template:Reply</a> That would be me. All-too-common username/promotion-only account. Thanks for the report — <b><a href='./User:MusikAnimal' title='User:MusikAnimal'>MusikAnimal</a> <sup><a href='./User_talk:MusikAnimal' title='User talk:MusikAnimal'>talk</a></sup></b> 05:47, 28 October 2014 (UTC)"
                            }, {
                                "sha": "35e2f205277fc6a05eddae3eb9d2a9be605f15ca320da5f02ac3effbd8de4683",
                                "depth": 1,
                                "html": "<a href='./User_talk:TSevener_(WMF)#cite_ref-1'>↑ </a>"
                            }],
                            "depth": 2,
                            "html": "About <a href='./User_talk:Iicacademy' title='User talk:Iicacademy'>User talk:Iicacademy</a>",
                            "shas": {
                                "html": "d45956e33d2e82abfe27aa2f25f47a2a09d3f89d17a5c5ff8b5a6ca7396bca6a",
                                "indicator": "f7af9d1b693c7eae60df96f8a4129a3879feddd8fbde85327b1ba722839890f5"
                            }
                        }]
                    }
                """.data(using: .utf8)!
            }
        }
    }
    
    static func networkTalkPage(for urlString: String, jsonType: TalkPageJSONType = .original, revisionId: Int) -> NetworkTalkPage? {
        let session = Session.shared
        do {
            let result: NetworkBase = try session.jsonDecodeData(data: jsonType.json)
            
            
            //update sort
            for (topicIndex, topic) in result.topics.enumerated() {
                
                topic.sort = topicIndex
                for (replyIndex, reply) in topic.replies.enumerated() {
                    reply.sort = replyIndex
                }
            }
            
            let talkPage = NetworkTalkPage(url: URL(string: urlString)!, topics: result.topics, revisionId: revisionId, displayTitle: "Username")

            return talkPage
        } catch {
            return nil
        }
    }
}
