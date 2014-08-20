object ReportModule: TReportModule
  OldCreateOrder = False
  Height = 293
  Width = 392
  object RichObject1: TfrxRichObject
    Left = 56
    Top = 184
  end
  object Report: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41611.993703784700000000
    ReportOptions.LastChange = 41852.975394641200000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 88
    Top = 184
  end
  object frDS: TfrxDBDataset
    UserName = 'ds'
    CloseDataSource = False
    DataSet = ds1
    BCDToCurrency = False
    Left = 120
    Top = 184
  end
  object ds1: TFDQuery
    Connection = cmDB.fdb
    Transaction = cmDB.TR
    UpdateTransaction = cmDB.TRW
    SQL.Strings = (
      'SELECT'
      '    G.STRCODE,'
      '    G.NOMDOG,'
      '    G.DATADOG,'
      '    G.DOPNUM,'
      '    G.DOPDATE,'
      '    G.KNAME,'
      '    G.NOTE,'
      '    G.NOMER,'
      '    G.DATA,'
      '    G.PAGENUM,'
      '    G.DOCNOTE,'
      '    G.AONAME,'
      '    G.DTNAME,'
      '    G.CNAME,'
      '    G.DESCRIPTION,'
      '    G.EXECUTOR,'
      '    G.PAGERANGE'
      'FROM'
      '    GETREESTRDOC(:CODE,'
      '    :ARCPLACE) G')
    Left = 152
    Top = 184
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end
      item
        Name = 'ARCPLACE'
        ParamType = ptInput
      end>
  end
  object Report1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41613.088271122700000000
    ReportOptions.LastChange = 41852.974269363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 245
    Datasets = <
      item
        DataSet = frDS1
        DataSetName = 'DS'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baWidth
          Top = 7.559059999999999000
          Width = 718.110700000000000000
          Height = 109.606370000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657432303420417269616C204359523B7D7B5C
            66315C666E696C5C66636861727365743020617269616C3B7D7B5C66325C666E
            696C5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E322E393230307D5C766965776B
            696E64345C756331200D0A5C706172645C71725C66305C667332305C2763615C
            2765655C276534205C2765345C2765655C2765615C2766335C2765635C276535
            5C2765645C2766325C2765305C66315C6C616E6731303333203A5C66305C6C61
            6E673130343920205C756C5C66315C6C616E6731303333205B766172446F6343
            6F64655D5C7061720D0A5C756C6E6F6E655C66305C6C616E67313034395C2764
            315C2766325C2765305C2766325C2766335C2766313A205C756C5C66315C6C61
            6E6731303333205B76617253746174655D5C756C6E6F6E655C7061720D0A5C66
            305C6C616E67313034395C2763345C2765305C2766325C276530205C27653820
            5C2765325C2766305C2765355C2765635C276666205C2765665C2765355C2766
            375C2765305C2766325C2765383A205C756C205B446174655D205B54696D655D
            5C7061720D0A5B436F70794E616D65235D5C7061720D0A5C7061720D0A0D0A5C
            706172645C71635C756C6E6F6E655C667332345C2763645C2765305C2765615C
            2765625C2765305C2765345C2765645C2765305C276666205C2765665C276535
            5C2766305C2765355C2765635C2765355C2766395C2765355C2765645C276538
            5C276666205C2765345C2765655C2765615C2766335C2765635C2765355C2765
            645C2766325C2765655C276532205C7061720D0A5C2762395C625C66315C6C61
            6E6731303333205B7661724E756D446F635D5C623020205C66305C6C616E6731
            3034395C2765655C276632205C625C66315C6C616E6731303333205B76617244
            617465446F635D5C62305C66325C6C616E67313034395C7061720D0A7D0D0A00}
        end
        object Rich2: TfrxRichView
          Align = baWidth
          Top = 120.944960000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E322E393230307D5C766965776B
            696E64345C756331200D0A5C706172645C66305C667332305C2763385C276631
            5C2765665C2765655C2765625C2765645C2765385C2766325C2765355C276562
            5C2766633A5C66315C6C616E673130333320205C62205B766172457865637574
            6F725D5C62305C7061720D0A5C66305C6C616E67313034395C2764325C276538
            5C276566205C2765655C2765665C2765355C2766305C2765305C2766365C2765
            385C2765383A5C66315C6C616E673130333320205C62205B7661724F70657254
            7970655D5C62305C7061720D0A5C66305C6C616E67313034395C2763655C2765
            315C2766615C2765355C2765615C276632205C2765665C2765355C2766305C27
            65355C2765635C2765355C2766395C2765355C2765645C2765385C2766663A20
            5C625C66315C6C616E6731303333205B7661724F626A6563745D5C62305C6630
            5C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 37.795275590000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 26.456710000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1090#1086#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Width = 283.464750000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079#1095#1080#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 139.842610000000000000
          Width = 294.803340000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = frDS1
        DataSetName = 'DS'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DSSTRCODE: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'STRCODE'
          DataSet = frDS1
          DataSetName = 'DS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS."STRCODE"]')
          ParentFont = False
        end
        object DSKONTRNAME: TfrxMemoView
          Left = 434.645950000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KONTRNAME'
          DataSet = frDS1
          DataSetName = 'DS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DS."KONTRNAME"]')
          ParentFont = False
        end
        object DSARCNAME: TfrxMemoView
          Align = baLeft
          Left = 139.842610000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ARCNAME'
          DataSet = frDS1
          DataSetName = 'DS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DS."ARCNAME"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 257.008040000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Rich3: TfrxRichView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 204.094620000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C
            2A5C67656E657261746F7220526963686564323020362E322E393230307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667332305C706172
            0D0A5C2763385C2766315C2765665C2765655C2765625C2765645C2765385C27
            66325C2765355C2765625C2766633A205C7461625C7461625C74616220202F5C
            7461625C7461625C7461625C746162202F5C7461625C7461625C7461625C7461
            62202F5C7061720D0A5C7461625C7461625C74616220285C2765665C2765655C
            2765345C2765665C2765385C2766315C276663295C7461625C74616220285C27
            64345C2765305C2765635C2765385C2765625C2765385C276666205C2763382E
            5C2763652E295C7461625C7461625C74616220285C2763345C2765305C276632
            5C276530205C276538205C2765325C2766305C2765355C2765635C276666295C
            7061720D0A5C7061720D0A5C2763615C2766335C2766305C2766635C2765355C
            2766303A5C74616220205C7461625C7461625C74616220202F5C7461625C7461
            625C7461625C746162202F5C7461625C7461625C7461625C746162202F5C7061
            720D0A5C7461625C7461625C74616220285C2765665C2765655C2765345C2765
            665C2765385C2766315C276663295C7461625C74616220285C2764345C276530
            5C2765635C2765385C2765625C2765385C276666205C2763382E5C2763652E29
            5C7461625C7461625C74616220285C2763345C2765305C2766325C276530205C
            276538205C2765325C2766305C2765355C2765635C276666295C7061720D0A5C
            7061720D0A5C2763665C2765655C2765625C2766335C2766375C2765305C2766
            325C2765355C2765625C2766633A5C74616220205C7461625C746162202F5C74
            61625C7461625C7461625C746162202F5C7461625C7461625C7461625C746162
            202F5C7061720D0A5C7461625C7461625C74616220285C2765665C2765655C27
            65345C2765665C2765385C2766315C276663295C7461625C74616220285C2764
            345C2765305C2765635C2765385C2765625C2765385C276666205C2763382E5C
            2763652E295C7461625C7461625C74616220285C2763345C2765305C2766325C
            276530205C276538205C2765325C2766305C2765355C2765635C276666295C70
            61720D0A5C7061720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1086#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1084#1086#1074': [COUNT(MasterData1)]')
        end
      end
    end
  end
  object frDS1: TfrxDBDataset
    UserName = 'DS'
    CloseDataSource = False
    DataSet = ds
    BCDToCurrency = False
    Left = 80
    Top = 245
  end
  object ds: TFDQuery
    Connection = cmDB.fdb
    Transaction = cmDB.TR
    SQL.Strings = (
      'select *'
      'from REP$ORDERDOC(:DOCCODE)')
    Left = 112
    Top = 245
    ParamData = <
      item
        Name = 'DOCCODE'
        ParamType = ptInput
      end>
  end
  object Report_OrderDoc: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41613.088271122700000000
    ReportOptions.LastChange = 41869.001517210650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 48
    Datasets = <
      item
        DataSet = frds_OrderDoc
        DataSetName = 'DS_OrderDoc'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 177.637910000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          Align = baWidth
          Top = 7.559059999999999000
          Width = 718.110700000000000000
          Height = 109.606370000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657432303420417269616C204359523B7D7B5C
            66315C666E696C5C66636861727365743020617269616C3B7D7B5C66325C666E
            696C5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E322E393230307D5C766965776B
            696E64345C756331200D0A5C706172645C71725C66305C667332305C2763615C
            2765655C276534205C2765345C2765655C2765615C2766335C2765635C276535
            5C2765645C2766325C2765305C66315C6C616E6731303333203A5C66305C6C61
            6E673130343920205C756C5C66315C6C616E6731303333205B766172446F6343
            6F64655D5C7061720D0A5C756C6E6F6E655C66305C6C616E67313034395C2764
            315C2766325C2765305C2766325C2766335C2766313A205C756C5C66315C6C61
            6E6731303333205B76617253746174655D5C756C6E6F6E655C7061720D0A5C66
            305C6C616E67313034395C2763345C2765305C2766325C276530205C27653820
            5C2765325C2766305C2765355C2765635C276666205C2765665C2765355C2766
            375C2765305C2766325C2765383A205C756C205B446174655D205B54696D655D
            5C7061720D0A5B436F70794E616D65235D5C7061720D0A5C7061720D0A0D0A5C
            706172645C71635C756C6E6F6E655C667332345C2763645C2765305C2765615C
            2765625C2765305C2765345C2765645C2765305C276666205C2765665C276535
            5C2766305C2765355C2765635C2765355C2766395C2765355C2765645C276538
            5C276666205C2765345C2765655C2765615C2766335C2765635C2765355C2765
            645C2766325C2765655C276532205C7061720D0A5C2762395C625C66315C6C61
            6E6731303333205B7661724E756D446F635D5C623020205C66305C6C616E6731
            3034395C2765655C276632205C625C66315C6C616E6731303333205B76617244
            617465446F635D5C62305C66325C6C616E67313034395C7061720D0A7D0D0A00}
        end
        object Rich2: TfrxRichView
          Align = baWidth
          Top = 120.944960000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7B5C66315C
            666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C6765
            6E657261746F7220526963686564323020362E322E393230307D5C766965776B
            696E64345C756331200D0A5C706172645C66305C667332305C2763385C276631
            5C2765665C2765655C2765625C2765645C2765385C2766325C2765355C276562
            5C2766633A5C66315C6C616E673130333320205C62205B766172457865637574
            6F725D5C62305C7061720D0A5C66305C6C616E67313034395C2764325C276538
            5C276566205C2765655C2765665C2765355C2766305C2765305C2766365C2765
            385C2765383A5C66315C6C616E673130333320205C62205B7661724F70657254
            7970655D5C62305C7061720D0A5C66305C6C616E67313034395C2763655C2765
            315C2766615C2765355C2765615C276632205C2765665C2765355C2766305C27
            65355C2765635C2765355C2766395C2765355C2765645C2765385C2766663A20
            5C625C66315C6C616E6731303333205B7661724F626A6563745D5C62305C6630
            5C667331365C6C616E67313034395C7061720D0A7D0D0A00}
        end
      end
      object Header1: TfrxHeader
        Height = 37.795275590000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 26.456710000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1087#1072#1087#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Width = 283.464750000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079#1095#1080#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 139.842610000000000000
          Width = 294.803340000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Color = 13421772
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1087#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        DataSet = frds_OrderDoc
        DataSetName = 'DS_OrderDoc'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DSSTRCODE: TfrxMemoView
          Align = baLeft
          Left = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'STRCODE'
          DataSet = frds_OrderDoc
          DataSetName = 'DS_OrderDoc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_OrderDoc."STRCODE"]')
          ParentFont = False
        end
        object DSKONTRNAME: TfrxMemoView
          Left = 434.645950000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KONTRNAME'
          DataSet = frds_OrderDoc
          DataSetName = 'DS_OrderDoc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DS_OrderDoc."KONTRNAME"]')
          ParentFont = False
        end
        object DSARCNAME: TfrxMemoView
          Align = baLeft
          Left = 139.842610000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ARCNAME'
          DataSet = frds_OrderDoc
          DataSetName = 'DS_OrderDoc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DS_OrderDoc."ARCNAME"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 257.008040000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Rich3: TfrxRichView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 204.094620000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235315C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034397B5C666F6E7474626C7B5C66
            305C666E696C5C6663686172736574323034205461686F6D613B7D7D0D0A7B5C
            2A5C67656E657261746F7220526963686564323020362E322E393230307D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667332305C706172
            0D0A5C2763385C2766315C2765665C2765655C2765625C2765645C2765385C27
            66325C2765355C2765625C2766633A205C7461625C7461625C74616220202F5C
            7461625C7461625C7461625C746162202F5C7461625C7461625C7461625C7461
            62202F5C7061720D0A5C7461625C7461625C74616220285C2765665C2765655C
            2765345C2765665C2765385C2766315C276663295C7461625C74616220285C27
            64345C2765305C2765635C2765385C2765625C2765385C276666205C2763382E
            5C2763652E295C7461625C7461625C74616220285C2763345C2765305C276632
            5C276530205C276538205C2765325C2766305C2765355C2765635C276666295C
            7061720D0A5C7061720D0A5C2763615C2766335C2766305C2766635C2765355C
            2766303A5C74616220205C7461625C7461625C74616220202F5C7461625C7461
            625C7461625C746162202F5C7461625C7461625C7461625C746162202F5C7061
            720D0A5C7461625C7461625C74616220285C2765665C2765655C2765345C2765
            665C2765385C2766315C276663295C7461625C74616220285C2764345C276530
            5C2765635C2765385C2765625C2765385C276666205C2763382E5C2763652E29
            5C7461625C7461625C74616220285C2763345C2765305C2766325C276530205C
            276538205C2765325C2766305C2765355C2765635C276666295C7061720D0A5C
            7061720D0A5C2763665C2765655C2765625C2766335C2766375C2765305C2766
            325C2765355C2765625C2766633A5C74616220205C7461625C746162202F5C74
            61625C7461625C7461625C746162202F5C7461625C7461625C7461625C746162
            202F5C7061720D0A5C7461625C7461625C74616220285C2765665C2765655C27
            65345C2765665C2765385C2766315C276663295C7461625C74616220285C2764
            345C2765305C2765635C2765385C2765625C2765385C276666205C2763382E5C
            2763652E295C7461625C7461625C74616220285C2763345C2765305C2766325C
            276530205C276538205C2765325C2766305C2765355C2765635C276666295C70
            61720D0A5C7061720D0A7D0D0A00}
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Top = 7.559059999999988000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1086#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1072#1087#1086#1082': [COUNT(MasterData1)]')
        end
      end
    end
  end
  object frds_OrderDoc: TfrxDBDataset
    UserName = 'DS_OrderDoc'
    CloseDataSource = False
    DataSet = ds_ReportOrderDoc
    BCDToCurrency = False
    Left = 72
    Top = 48
  end
  object ds_ReportOrderDoc: TFDQuery
    Connection = cmDB.fdb
    Transaction = cmDB.TR
    SQL.Strings = (
      
        'select CODE, ORDERDOC, ARCPLACE, "PAGES", KONTRNAME, AONAME, PLA' +
        'CENAME, STRCODE, ARCNAME'
      'from REP$ORDERDOC(:DOCCODE)')
    Left = 104
    Top = 48
    ParamData = <
      item
        Name = 'DOCCODE'
        ParamType = ptInput
      end>
  end
end
