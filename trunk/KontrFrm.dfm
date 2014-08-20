object KontrForm: TKontrForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1086#1074
  ClientHeight = 695
  ClientWidth = 1062
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 26
    Width = 1062
    Height = 669
    Align = alClient
    TabOrder = 0
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 1042
      Height = 490
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDB.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079' [RecordCount]'
        Navigator.InfoPanel.Visible = True
        DataController.DataSource = src_Kontr
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDB.iml1
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 34
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 212
        end
        object clv1FULLNAME: TcxGridDBColumn
          Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FULLNAME'
          Width = 283
        end
        object clv1INN: TcxGridDBColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'INN'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d?\d?'
          Properties.OnValidate = clv1INNPropertiesValidate
          Width = 126
        end
        object clv1KPP: TcxGridDBColumn
          Caption = #1050#1055#1055
          DataBinding.FieldName = 'KPP'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          Width = 106
        end
        object clv1URADDR: TcxGridDBColumn
          Caption = #1070#1088'. '#1072#1076#1088#1077#1089
          DataBinding.FieldName = 'URADDR'
          Width = 165
        end
        object clv1POSTADDR: TcxGridDBColumn
          Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
          DataBinding.FieldName = 'POSTADDR'
          Width = 159
        end
        object clv1PHONE: TcxGridDBColumn
          Caption = #1058#1077#1083#1077#1092#1086#1085
          DataBinding.FieldName = 'PHONE'
          Visible = False
          Width = 128
        end
        object clv1EMAIL: TcxGridDBColumn
          DataBinding.FieldName = 'EMAIL'
          Visible = False
          Width = 121
        end
        object clv1DIR: TcxGridDBColumn
          Caption = #1044#1080#1088#1077#1082#1090#1086#1088
          DataBinding.FieldName = 'DIR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = srcWorker
          Visible = False
          Width = 141
        end
        object clv1BANK: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
          DataBinding.FieldName = 'BANK'
          Width = 140
        end
        object clv1BIK: TcxGridDBColumn
          Caption = #1041#1048#1050
          DataBinding.FieldName = 'BIK'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          Properties.OnValidate = clv1BIKPropertiesValidate
          Width = 127
        end
        object clv1SCHET: TcxGridDBColumn
          Caption = #1088'/'#1089#1095
          DataBinding.FieldName = 'SCHET'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d{20}'
          Width = 156
        end
        object clv1KSCHET: TcxGridDBColumn
          Caption = #1082'/'#1089#1095
          DataBinding.FieldName = 'KSCHET'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d{20}'
          Width = 170
        end
        object clv1CHIEFFIRM: TcxGridDBColumn
          Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1080#1088#1084#1072
          DataBinding.FieldName = 'CHIEFFIRM'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          Width = 97
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 10
      Top = 495
      Width = 1042
      Height = 171
      TabOrder = 1
      object v2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = cmDB.iml1
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Append.ImageIndex = 0
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Delete.Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Delete.ImageIndex = 2
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        Navigator.Buttons.Edit.ImageIndex = 1
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Navigator.Buttons.Post.ImageIndex = 10
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] '#1080#1079' [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = src_CONTACTS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = cmDB.iml1
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
        end
        object clv2FIO: TcxGridDBColumn
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
          DataBinding.FieldName = 'FIO'
          Width = 318
        end
        object clv2PROF: TcxGridDBColumn
          Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'PROF'
          Width = 242
        end
        object clv2PHONE: TcxGridDBColumn
          Caption = #1088#1072#1073'. '#1090#1077#1083#1077#1092#1086#1085
          DataBinding.FieldName = 'PHONE'
          Width = 106
        end
        object clv2MPHONE: TcxGridDBColumn
          Caption = #1084#1086#1073'. '#1090#1077#1083#1077#1092#1086#1085
          DataBinding.FieldName = 'MPHONE'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.EditMask = '+0 \(999\) 000-00-00;1;_'
          Width = 126
        end
        object clv2EMAIL: TcxGridDBColumn
          Caption = 'email'
          DataBinding.FieldName = 'EMAIL'
          Width = 98
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 209
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itm1: TdxLayoutItem
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grp1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grp2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object split1: TdxLayoutSplitterItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmLayoutControl1Item1: TdxLayoutItem
      Parent = grp2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object src_Kontr: TDataSource
    Left = 336
    Top = 224
  end
  object srcWorker: TDataSource
    Left = 336
    Top = 280
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 480
    Top = 200
  end
  object src_CONTACTS: TDataSource
    Left = 304
    Top = 536
  end
  object barMbrm1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 456
    Top = 272
    DockControlHeights = (
      0
      0
      26
      0)
    object bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 640
      FloatTop = 145
      FloatClientWidth = 51
      FloatClientHeight = 82
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSave'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCancel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnAdd: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btnAddClick
    end
    object btnEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btnEditClick
    end
    object btnDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnDeleteClick
    end
    object btnCancel: TdxBarButton
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btnCancelClick
    end
    object btnSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 10
      OnClick = btnSaveClick
    end
  end
end
