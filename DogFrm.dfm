object DogForm: TDogForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
  ClientHeight = 633
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1060
    Height = 633
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object doc1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1012
      Height = 26
      Align = dalNone
      BarManager = brm1
      Visible = False
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1012
      Height = 533
      TabOrder = 1
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LockedStateImageOptions.ShowText = True
      object v1: TcxGridDBTableView
        OnKeyDown = v1KeyDown
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v1CellDblClick
        OnFocusedRecordChanged = v1FocusedRecordChanged
        DataController.DataSource = src_DOG
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDB.iml1
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 45
        end
        object clv1KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Width = 125
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KONTRAGENT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Visible = False
          Width = 186
        end
        object clv1NOMDOG: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'NOMDOG'
          Width = 90
        end
        object clv1DATADOG: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
          DataBinding.FieldName = 'DATADOG'
          Width = 116
        end
        object clv1DATAENDDOG: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
          DataBinding.FieldName = 'DATAENDDOG'
          Width = 151
        end
        object clv1DATAPATH: TcxGridDBColumn
          DataBinding.FieldName = 'DATAPATH'
          Visible = False
          VisibleForCustomization = False
          Width = 111
        end
        object clv1FILENAME: TcxGridDBColumn
          Caption = #1050#1086#1087#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'FILENAME'
          Visible = False
          Width = 137
        end
        object clv1DOGDATA: TcxGridDBColumn
          Caption = #1050#1086#1087#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DOGDATA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          HeaderImageIndex = 27
          Options.Editing = False
          Options.ShowCaption = False
          Width = 25
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 24
      Top = 99
      Width = 1012
      Height = 228
      TabOrder = 4
      object v2: TcxGridDBTableView
        OnKeyDown = v2KeyDown
        OnKeyUp = v2KeyUp
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v2CellDblClick
        DataController.DataSource = src_DOGDOP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 43
        end
        object clv2DOG: TcxGridDBColumn
          DataBinding.FieldName = 'DOG'
          Visible = False
        end
        object clv2DOPNUM: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088
          DataBinding.FieldName = 'DOPNUM'
          Width = 58
        end
        object clv2DOPDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          DataBinding.FieldName = 'DOPDATE'
          Width = 81
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 198
        end
        object clv2ORDERDOC: TcxGridDBColumn
          DataBinding.FieldName = 'ORDERDOC'
          Visible = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KONTRAGENT'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Visible = False
          Width = 106
        end
        object clv2KNAME: TcxGridDBColumn
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          DataBinding.FieldName = 'KNAME'
          Width = 180
        end
        object clv2NOMDOG: TcxGridDBColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'NOMDOG'
          Width = 71
        end
        object clv2DATADOG: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'DATADOG'
          Width = 152
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 24
      Top = 378
      Width = 1012
      Height = 226
      TabOrder = 6
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = v3CellDblClick
        OnFocusedRecordChanged = v3FocusedRecordChanged
        DataController.DataSource = src_ORDERDOC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 48
        end
        object clv3STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = cmDB.iml1
          Properties.Items = <
            item
              Description = #1087#1088#1086#1074#1077#1076#1077#1085
              ImageIndex = 33
              Value = 1
            end
            item
              Description = #1085#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
              Value = 0
            end>
          Properties.ShowDescriptions = False
          Width = 46
        end
        object clv3DOCUMDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DOCUMDATE'
          Width = 80
        end
        object clv3OPERATOR: TcxGridDBColumn
          Caption = #1057#1086#1079#1076#1072#1083
          DataBinding.FieldName = 'OPERATOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 114
        end
        object clv3OPERTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
          DataBinding.FieldName = 'OPERTYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImageAlign = iaRight
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = #1076#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1072#1088#1093#1080#1074
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1080#1079' '#1072#1088#1093#1080#1074#1072
              Value = 1
            end
            item
              Description = #1080#1079#1098#1103#1090#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1080#1079' '#1072#1088#1093#1080#1074#1072
              Value = 2
            end>
          Width = 147
        end
        object clv3WORKER: TcxGridDBColumn
          Caption = #1055#1086#1083#1091#1095#1080#1083
          DataBinding.FieldName = 'WORKER'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 149
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1082#1090
          DataBinding.FieldName = 'NAME'
          Width = 113
        end
        object clv3ARCOBJECT: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1082#1090
          DataBinding.FieldName = 'ARCOBJECT'
          Visible = False
          Width = 97
        end
        object clv3NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 275
        end
        object clv3DOGDOP: TcxGridDBColumn
          DataBinding.FieldName = 'DOGDOP'
          Visible = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object doc2: TdxBarDockControl
      Left = 24
      Top = 67
      Width = 1012
      Height = 26
      Align = dalNone
      BarManager = brm1
    end
    object doc3: TdxBarDockControl
      Left = 24
      Top = 346
      Width = 1012
      Height = 26
      Align = dalNone
      BarManager = brm1
    end
    object lbl_return: TcxLabel
      Left = 24
      Top = 44
      Cursor = crHandPoint
      Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      OnClick = lbl_returnClick
    end
    object DockSite1: TdxDockSite
      Left = 10000
      Top = 10000
      Width = 787
      Height = 542
      Visible = False
      DockingType = 5
      OriginalWidth = 787
      OriginalHeight = 542
      object lDockSite1: TdxLayoutDockSite
        Left = 0
        Top = 0
        Width = 787
        Height = 542
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      object DockPanel1: TdxDockPanel
        Left = 0
        Top = 0
        Width = 787
        Height = 542
        AllowDock = []
        AllowDockClients = []
        AllowFloating = False
        AutoHide = False
        Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1082' '#1076#1086#1087#1089#1086#1075#1083#1072#1096#1077#1085#1080#1102' '#8470
        CaptionButtons = []
        CustomCaptionButtons.Buttons = <>
        TabsProperties.CustomButtons.Buttons = <>
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        object doc4: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 783
          Height = 26
          Align = dalTop
          BarManager = brm1
        end
        object grd5: TcxGrid
          Left = 0
          Top = 26
          Width = 783
          Height = 488
          Align = alClient
          Images = cmDB.iml1
          TabOrder = 1
          object v5: TcxGridDBTableView
            OnKeyUp = v5KeyUp
            Navigator.Buttons.CustomButtons = <>
            FilterBox.Visible = fvNever
            OnFocusedRecordChanged = v5FocusedRecordChanged
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = src_DOGDOC
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = clv5PAGENUM
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Images = cmDB.iml1
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object clv5CODE: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'CODE'
              Width = 41
            end
            object clv5DOPDOG: TcxGridDBColumn
              DataBinding.FieldName = 'DOPDOG'
              Visible = False
            end
            object clv5NOMER: TcxGridDBColumn
              Caption = #1053#1086#1084#1077#1088
              DataBinding.FieldName = 'NOMER'
              Width = 52
            end
            object clv5DocTyeName: TcxGridDBColumn
              Caption = #1058#1080#1087
              DataBinding.FieldName = 'DOCTYPENAME'
              Width = 194
            end
            object clv5DOCTYPE: TcxGridDBColumn
              Caption = #1058#1080#1087
              DataBinding.FieldName = 'DOCTYPE'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownSizeable = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'CODE'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.ShowHeader = False
              Visible = False
              Width = 160
            end
            object clv5DATA: TcxGridDBColumn
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'DATA'
            end
            object clv5PAGENUM: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1080#1094
              DataBinding.FieldName = 'PAGENUM'
              Width = 54
            end
            object clv5ARCPLACE: TcxGridDBColumn
              Caption = #1055#1072#1087#1082#1072
              DataBinding.FieldName = 'ARCPLACE'
              Visible = False
            end
            object clv5STRCODE: TcxGridDBColumn
              Caption = #1058#1086#1084
              DataBinding.FieldName = 'STRCODE'
              Width = 68
            end
            object clv5STATE: TcxGridDBColumn
              Caption = #1057#1090#1072#1090#1091#1089
              DataBinding.FieldName = 'STATE'
              Visible = False
              Width = 45
            end
            object clv5COMPLECTDOC: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1084#1072
              DataBinding.FieldName = 'COMPLECTDOC'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownSizeable = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'CODE'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.ShowHeader = False
              Visible = False
              Width = 158
            end
            object clv5NAME: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1084#1072
              DataBinding.FieldName = 'NAME'
              Width = 177
            end
            object clv5NOTE: TcxGridDBColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'NOTE'
              Width = 105
            end
            object clv5scans: TcxGridDBColumn
              Caption = #1089
              DataBinding.FieldName = 'SCANS'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderImageIndex = 27
              Options.ShowCaption = False
              Width = 24
            end
          end
          object l5: TcxGridLevel
            GridView = v5
          end
        end
      end
    end
    object lst1: TcxListBox
      Left = 10000
      Top = 10000
      Width = 219
      Height = 358
      ItemHeight = 13
      TabOrder = 10
      Visible = False
      OnDblClick = lst1DblClick
    end
    object lblDogDoc: TcxLabel
      Left = 10000
      Top = 10000
      Cursor = crHandPoint
      Caption = #1082' '#1089#1087#1080#1089#1082#1091' '#1076#1086#1087'. '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1081
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsItalic]
      Style.HotTrack = False
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      Visible = False
      OnClick = lblDogDocClick
    end
    object btn_Print: TcxButton
      Left = 10000
      Top = 10000
      Width = 219
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      OptionsImage.ImageIndex = 40
      OptionsImage.Images = cmDB.iml1
      TabOrder = 12
      Visible = False
      OnClick = btn_PrintClick
    end
    object txt_Port: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 11
      Text = 'COM1'
      Visible = False
      Width = 219
    end
    object lstSkan: TcxListBox
      Left = 10000
      Top = 10000
      Width = 219
      Height = 99
      ItemHeight = 13
      ReadOnly = True
      TabOrder = 9
      Visible = False
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grplc1Group2
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grplc1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group4: TdxLayoutGroup
      Parent = grplc1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grplc1Group5: TdxLayoutGroup
      Parent = grplc1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object spl1: TdxLayoutSplitterItem
      Parent = grplc1Group3
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grplc1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item13: TdxLayoutItem
      Parent = grplc1Group5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item14: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item15: TdxLayoutItem
      Parent = grplc1Group5
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc3
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item16: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lbl_return
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpDocuments: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lItmlc1Item17: TdxLayoutItem
      Parent = grplc1Group8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxDockSite1'
      CaptionOptions.Visible = False
      Control = DockSite1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group6: TdxLayoutGroup
      Parent = grplc1Group7
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 219
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object grplc1Group7: TdxLayoutGroup
      Parent = grpDocuments
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object spllc1SplitterItem1: TdxLayoutSplitterItem
      Parent = grplc1Group6
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 0
    end
    object lItmlc1Item3: TdxLayoutItem
      Parent = grplc1Group6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1087#1089#1080#1086#1082' '#1090#1086#1084#1086#1074
      CaptionOptions.Layout = clTop
      Control = lst1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item18: TdxLayoutItem
      Parent = grplc1Group8
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblDogDoc
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group8: TdxLayoutGroup
      Parent = grplc1Group7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lItmlc1Item19: TdxLayoutItem
      Parent = grplc1Group6
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btn_Print
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lItmlc1Item21: TdxLayoutItem
      Parent = grplc1Group6
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = txt_Port
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item2: TdxLayoutItem
      Parent = grplc1Group6
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = #1057#1082#1072#1085#1082#1086#1087#1080#1080
      CaptionOptions.Layout = clTop
      Control = lstSkan
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 168
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = txt_Port
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 168
  end
  object brm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDB.iml1
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 576
    Top = 248
    DockControlHeights = (
      0
      0
      0
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = doc1
      DockedDockControl = doc1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Edit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnUpload'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDownLoadScan'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDeleteScan'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bar_dogdop: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc2
      DockedDockControl = doc2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ddAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ddEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ddDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnddOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ReestrDoc'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barORDERDOC: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = doc3
      DockedDockControl = doc3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnodAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnodEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnodDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnodProv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnodPrint'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barDocuments: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = doc4
      DockedDockControl = doc4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1076
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDocAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDocEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDocDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDocCreateOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ScanList'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 144
          Visible = True
          ItemName = 'btn_genFolder'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 265
          Visible = True
          ItemName = 'btn_ComplDoc'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 45
      OnClick = btnAddClick
    end
    object btn_ddAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btn_ddAddClick
    end
    object btnodAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivNever
      ImageIndex = 0
    end
    object btn_Edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_EditClick
    end
    object btnDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnDeleteClick
    end
    object btn_ddEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btn_ddEditClick
    end
    object btn_ddDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btn_ddDeleteClick
    end
    object btnodEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivNever
      ImageIndex = 1
    end
    object btnodDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivNever
      ImageIndex = 2
    end
    object btnodProv: TdxBarButton
      Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      Category = 0
      Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      Visible = ivNever
      ImageIndex = 33
    end
    object btnodPrint: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btnodPrintClick
    end
    object btnddOrder: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1075#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1075#1086' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 31
      OnClick = btnddOrderClick
    end
    object btnDocAdd: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btnDocAddClick
    end
    object btnDocEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btnDocEditClick
    end
    object btnDocDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnDocDeleteClick
    end
    object btnDocDistribite: TdxBarButton
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086' '#1087#1072#1087#1082#1072#1084
      Category = 0
      Hint = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1087#1086' '#1087#1072#1087#1082#1072#1084
      Visible = ivNever
      ImageIndex = 33
    end
    object btnDocDistributeAll: TdxBarButton
      Caption = #1042#1085#1077#1089#1090#1080' '#1085#1077#1079#1072#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1086#1076#1085#1091' '#1087#1072#1087#1082#1091
      Category = 0
      Hint = #1042#1085#1077#1089#1090#1080' '#1085#1077#1079#1072#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099' '#1074' '#1086#1076#1085#1091' '#1087#1072#1087#1082#1091
      Visible = ivNever
      ImageIndex = 20
    end
    object btnDocClear: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1080#1074#1103#1079#1082#1091' '#1082' '#1087#1072#1087#1082#1072#1084
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1080#1074#1103#1079#1082#1091' '#1082' '#1087#1072#1087#1082#1072#1084
      Visible = ivNever
      ImageIndex = 6
    end
    object btnDocCreateOrder: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1074#1085#1091#1090#1088#1077#1085#1077#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1074#1085#1091#1090#1088#1077#1085#1077#1077' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 31
      OnClick = btnDocCreateOrderClick
    end
    object btn_ScanList: TdxBarButton
      Caption = #1057#1082#1072#1085#1082#1086#1087#1080#1080
      Category = 0
      Hint = #1057#1082#1072#1085#1082#1086#1087#1080#1080
      Visible = ivAlways
      ImageIndex = 36
      OnClick = btn_ScanListClick
    end
    object btn_ReestrDoc: TdxBarButton
      Caption = #1056#1077#1077#1089#1090#1088#1099
      Category = 0
      Hint = #1056#1077#1077#1089#1090#1088#1099
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000B7A293FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF00000000000000000000
        0000B7A293FFEEE6E1FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FF694731FF00000000000000000000
        0000B7A293FFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9D3FFE3D5CEFFE0D1
        C9FFDDCDC4FFDBC9BFFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000B7A293FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9D3FFE3D5
        CEFFDE9A6CFFDE9A6CFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000B7A293FFF6F2F0FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9
        D3FFE3D5CEFFE0D1C9FFDDCDC4FFB7A293FF694731FF00000000000000000000
        0000B7A293FFF9F6F5FFE3AA82FFE2A87FFFE1A67CFFE1A47AFFE1A277FFE9DE
        D8FFDF9E71FFDE9C6EFFE0D1C9FFB7A293FF694731FF00000000000000000000
        0000B7A293FFFCFBFAFFF9F6F5FFF6F2F0FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2
        DDFFE9DED8FFE6D9D3FFE3D5CEFFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AC85FFE3AA82FFE2A87FFFE1A67CFFEEE6
        E1FFE1A277FFE0A074FFE6D9D3FFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFDFDFDFFFBF9F8FFF8F4F3FFF5F0EEFFF2EC
        E9FFEFE8E4FFEDE4DFFFEAE0DAFFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AE88FFE4AE88FFE4AC85FFE3AA82FFF5F0
        EEFFE1A67CFFE1A47AFFEDE4DFFFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBF9F8FFF8F4
        F3FFF5F0EEFFF2ECE9FFB7A293FFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AE88FFE4AE88FFE4AE88FFE4AE88FFFBF9
        F8FFF8F4F3FFB7A293FF694731FF694731FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDFFFBF9F8FFB7A293FFF3EBE6FFDBC9BFFF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AE88FFFFFFFFFFE4AE88FFE4AE88FFFFFF
        FFFFE4AE88FFB7A293FFDBC9BFFF694731FF0000000000000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB7A293FF694731FF000000000000000000000000000000000000
        0000B7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FF00000000000000000000000000000000}
      OnClick = btn_ReestrDocClick
    end
    object dxBarButton1: TdxBarButton
      Caption = #1056#1077#1077#1089#1090#1088#1099
      Category = 0
      Hint = #1056#1077#1077#1089#1090#1088#1099
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000B7A293FF694731FF694731FF694731FF694731FF694731FF694731FF6947
        31FF694731FF694731FF694731FF694731FF694731FF00000000000000000000
        0000B7A293FFEEE6E1FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FFB7A293FFB7A293FF694731FF00000000000000000000
        0000B7A293FFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9D3FFE3D5CEFFE0D1
        C9FFDDCDC4FFDBC9BFFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000B7A293FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9D3FFE3D5
        CEFFDE9A6CFFDE9A6CFFDBC9BFFFB7A293FF694731FF00000000000000000000
        0000B7A293FFF6F2F0FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2DDFFE9DED8FFE6D9
        D3FFE3D5CEFFE0D1C9FFDDCDC4FFB7A293FF694731FF00000000000000000000
        0000B7A293FFF9F6F5FFE3AA82FFE2A87FFFE1A67CFFE1A47AFFE1A277FFE9DE
        D8FFDF9E71FFDE9C6EFFE0D1C9FFB7A293FF694731FF00000000000000000000
        0000B7A293FFFCFBFAFFF9F6F5FFF6F2F0FFF4EEEBFFF1EAE6FFEEE6E1FFEBE2
        DDFFE9DED8FFE6D9D3FFE3D5CEFFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AC85FFE3AA82FFE2A87FFFE1A67CFFEEE6
        E1FFE1A277FFE0A074FFE6D9D3FFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFDFDFDFFFBF9F8FFF8F4F3FFF5F0EEFFF2EC
        E9FFEFE8E4FFEDE4DFFFEAE0DAFFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AE88FFE4AE88FFE4AC85FFE3AA82FFF5F0
        EEFFE1A67CFFE1A47AFFEDE4DFFFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBF9F8FFF8F4
        F3FFF5F0EEFFF2ECE9FFB7A293FFB7A293FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AE88FFE4AE88FFE4AE88FFE4AE88FFFBF9
        F8FFF8F4F3FFB7A293FF694731FF694731FF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDFFFBF9F8FFB7A293FFF3EBE6FFDBC9BFFF694731FF00000000000000000000
        0000B7A293FFFFFFFFFFE4AE88FFE4AE88FFFFFFFFFFE4AE88FFE4AE88FFFFFF
        FFFFE4AE88FFB7A293FFDBC9BFFF694731FF0000000000000000000000000000
        0000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB7A293FF694731FF000000000000000000000000000000000000
        0000B7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
        93FFB7A293FFB7A293FF00000000000000000000000000000000}
      OnClick = dxBarButton1Click
    end
    object btn_genFolder: TcxBarEditItem
      Caption = #1055#1072#1087#1082#1072
      Category = 0
      Hint = #1055#1072#1087#1082#1072
      Visible = ivAlways
      OnChange = btn_genFolderChange
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.AutoSelect = False
      Properties.Buttons = <
        item
          Caption = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1087#1082#1091
          Default = True
          ImageIndex = 26
          Hint = #1057#1075#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1072#1087#1082#1091
          Kind = bkGlyph
          LeftAlignment = True
        end
        item
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100
          ImageIndex = 23
          Hint = #1054#1095#1080#1089#1090#1080#1090#1100
          Kind = bkGlyph
        end>
      Properties.Images = cmDB.iml1
      Properties.ReadOnly = True
      Properties.ViewStyle = vsHideCursor
      Properties.OnButtonClick = btn_genFolderPropertiesButtonClick
      Properties.OnEditValueChanged = btn_genFolderPropertiesEditValueChanged
    end
    object btnRefresh: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 9
      OnClick = btnRefreshClick
    end
    object btn_ComplDoc: TcxBarEditItem
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1084#1072
      Category = 0
      Hint = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1084#1072
      Visible = ivAlways
      ImageIndex = 1
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 1
          Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1087#1082#1080
          Kind = bkGlyph
        end>
      Properties.Images = cmDB.iml1
      Properties.ReadOnly = True
      Properties.ViewStyle = vsHideCursor
      Properties.OnButtonClick = btn_ComplDocPropertiesButtonClick
    end
    object btnUpload: TdxBarButton
      Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1082#1086#1087#1080#1102' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1082#1086#1087#1080#1102' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivNever
      ImageIndex = 27
      OnClick = btnUploadClick
    end
    object btnDownLoadScan: TdxBarButton
      Caption = #1057#1082#1072#1095#1072#1090#1100' '#1082#1086#1087#1080#1102' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1057#1082#1072#1095#1072#1090#1100' '#1082#1086#1087#1080#1102' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivNever
      ImageIndex = 18
    end
    object btnDeleteScan: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1087#1080#1102' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1087#1080#1102' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivNever
      ImageIndex = 39
    end
  end
  object src_DOG: TDataSource
    Left = 280
    Top = 240
  end
  object src_DOGDOP: TDataSource
    Left = 248
    Top = 240
  end
  object src_ORDERDOC: TDataSource
    Left = 312
    Top = 240
  end
  object src_DOGDOC: TDataSource
    Left = 344
    Top = 240
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
    Top = 264
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
    Top = 264
  end
  object ds: TFDQuery
    Connection = cmDB.fdb
    Transaction = cmDB.TR
    SQL.Strings = (
      'select *'
      'from REP$ORDERDOC(:DOCCODE)')
    Left = 112
    Top = 264
    ParamData = <
      item
        Name = 'DOCCODE'
        ParamType = ptInput
      end>
  end
  object Q: TFDQuery
    Connection = cmDB.fdb
    Transaction = cmDB.TR
    UpdateTransaction = cmDB.TRW
    Left = 680
    Top = 504
  end
end
