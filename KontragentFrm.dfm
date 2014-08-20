object KontragentForm: TKontragentForm
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
  ClientHeight = 588
  ClientWidth = 858
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
    Top = 0
    Width = 858
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 22
      Top = 74
      Width = 1042
      Height = 490
      TabOrder = 1
      LookAndFeel.NativeStyle = False
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
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
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
    object doc_kontr: TdxBarDockControl
      Left = 22
      Top = 48
      Width = 814
      Height = 26
      Align = dalNone
      BarManager = barMbrm1
    end
    object doc_contacts: TdxBarDockControl
      Left = 22
      Top = 394
      Width = 814
      Height = 26
      Align = dalNone
      BarManager = barMbrm1
    end
    object grd2: TcxGrid
      Left = 22
      Top = 422
      Width = 1042
      Height = 171
      TabOrder = 3
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
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
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
          Caption = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          DataBinding.FieldName = 'NOTE'
          Width = 209
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object fld_NAME: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object fld_FullName: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'FULLNAME'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object fld_UrAddr: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'URADDR'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 121
    end
    object fld_PostAddr: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'POSTADDR'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 121
    end
    object fld_OKPO: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OKPO'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 121
    end
    object fld_Dir: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'DIR'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object fld_BUH: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'BUH'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Width = 121
    end
    object fld_EMAIL: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 121
    end
    object fld_PHONE: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 121
    end
    object fld_Bank: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'BANK'
      DataBinding.DataSource = src_Kontr
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 121
    end
    object fld_KSchet: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = #1082'/'#1089#1095
      DataBinding.DataField = 'KSCHET'
      DataBinding.DataSource = src_Kontr
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{20}'
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoShowErrorIcon]
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object btn_KontrSave: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 19
      Visible = False
      OnClick = btn_KontrSaveClick
    end
    object btn_KontrCancel: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDB.iml1
      TabOrder = 20
      Visible = False
      OnClick = btn_KontrCancelClick
    end
    object fld_FIO: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'FIO'
      DataBinding.DataSource = src_CONTACTS
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 121
    end
    object fld_PROF: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PROF'
      DataBinding.DataSource = src_CONTACTS
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 121
    end
    object fld_cPHONE: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = src_CONTACTS
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Width = 121
    end
    object fld_cEmail: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = src_CONTACTS
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Width = 121
    end
    object fld_NOTE: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NOTE'
      DataBinding.DataSource = src_CONTACTS
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Width = 121
    end
    object fld_MPhone: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'MPHONE'
      DataBinding.DataSource = src_CONTACTS
      Properties.EditMask = '+0 \(999\) 000-00-00;1;_'
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Width = 121
    end
    object btn_ContSave: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 27
      Visible = False
      OnClick = btn_ContSaveClick
    end
    object btn_ContCancel: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDB.iml1
      TabOrder = 28
      Visible = False
      OnClick = btn_ContCancelClick
    end
    object fld_INN: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'INN'
      DataBinding.DataSource = src_Kontr
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d?\d?'
      Properties.ValidationOptions = [evoShowErrorIcon]
      Properties.OnValidate = fld_INNPropertiesValidate
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 121
    end
    object fld_KPP: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'KPP'
      DataBinding.DataSource = src_Kontr
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{9}'
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoShowErrorIcon]
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 121
    end
    object fld_BIK: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'BIK'
      DataBinding.DataSource = src_Kontr
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{9}'
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoShowErrorIcon]
      Properties.OnValidate = fld_BIKPropertiesValidate
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object fld_Schet: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'SCHET'
      DataBinding.DataSource = src_Kontr
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d{20}'
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoShowErrorIcon]
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 121
    end
    object grp_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object lgMain: TdxLayoutGroup
      Parent = grp_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object grp1: TdxLayoutGroup
      Parent = lgMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm1: TdxLayoutItem
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grp2: TdxLayoutGroup
      Parent = lgMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = True
      SizeOptions.Height = 280
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object lgKontrEdit: TdxLayoutGroup
      Parent = grp_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itm3: TdxLayoutItem
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm4: TdxLayoutItem
      Parent = grp2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc_contacts
      ControlOptions.ShowBorder = False
      Index = 0
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
      Index = 1
    end
    object lgContacnEdit: TdxLayoutGroup
      Parent = grp_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxlytm2: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Control = fld_NAME
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytm3: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Control = fld_FullName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytm6: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = #1070#1088'. '#1072#1076#1088#1077#1089
      Control = fld_UrAddr
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxlytmLayoutControl1Item11: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
      Control = fld_PostAddr
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxlytmLayoutControl1Item19: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = 'OKPO'
      Visible = False
      Control = fld_OKPO
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxlytmLayoutControl1Item20: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = 'DIR'
      Visible = False
      Control = fld_Dir
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxlytmLayoutControl1Item21: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = 'BUH'
      Visible = False
      Control = fld_BUH
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxlytmLayoutControl1Item13: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = 'EMAIL'
      Visible = False
      Control = fld_EMAIL
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxlytmLayoutControl1Item12: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = 'PHONE'
      Visible = False
      Control = fld_PHONE
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object lg_bank: TdxLayoutGroup
      Parent = lgContacnEdit
      CaptionOptions.Text = #1041#1072#1085#1082
      ButtonOptions.Buttons = <>
      Index = 6
    end
    object dxlytmLayoutControl1Item14: TdxLayoutItem
      Parent = lg_bank
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
      Control = fld_Bank
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxlytmLayoutControl1Item17: TdxLayoutItem
      Parent = lg_bank
      CaptionOptions.Text = #1082'/'#1089#1095
      Control = fld_KSchet
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lg_KontrBtn: TdxLayoutGroup
      Parent = lgContacnEdit
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 12
    end
    object itm_1: TdxLayoutItem
      Parent = lg_KontrBtn
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_KontrSave
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_LayoutControl1Item1: TdxLayoutItem
      Parent = lg_KontrBtn
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_KontrCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lg_contEdit: TdxLayoutGroup
      Parent = lgKontrEdit
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itm_11: TdxLayoutItem
      Parent = lg_contEdit
      CaptionOptions.Text = #1060#1048#1054
      Control = fld_FIO
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_2: TdxLayoutItem
      Parent = lg_contEdit
      CaptionOptions.Text = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Control = fld_PROF
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_3: TdxLayoutItem
      Parent = lg_contEdit
      CaptionOptions.Text = #1088#1072#1073'. '#1090#1077#1083#1077#1092#1086#1085
      Control = fld_cPHONE
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_4: TdxLayoutItem
      Parent = lg_contEdit
      CaptionOptions.Text = 'email'
      Control = fld_cEmail
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_5: TdxLayoutItem
      Parent = lg_contEdit
      CaptionOptions.Text = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Control = fld_NOTE
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_6: TdxLayoutItem
      Parent = lg_contEdit
      CaptionOptions.Text = #1084#1086#1073'. '#1090#1077#1083#1077#1092#1086#1085
      Control = fld_MPhone
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lg_ContBtn: TdxLayoutGroup
      Parent = lgKontrEdit
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itm_LayoutControl1Item11: TdxLayoutItem
      Parent = lg_ContBtn
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_ContSave
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_LayoutControl1Item12: TdxLayoutItem
      Parent = lg_ContBtn
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_ContCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Inn: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = #1048#1053#1053
      Control = fld_INN
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Kp: TdxLayoutItem
      Parent = lgContacnEdit
      CaptionOptions.Text = #1050#1055#1055
      Control = fld_KPP
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_Bik: TdxLayoutItem
      Parent = lg_bank
      CaptionOptions.Text = #1041#1048#1050
      Control = fld_BIK
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Schet: TdxLayoutItem
      Parent = lg_bank
      CaptionOptions.Text = #1088'/'#1089#1095
      Control = fld_Schet
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object split1: TdxLayoutSplitterItem
      Parent = lgMain
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 120
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = grp2
        Properties.Strings = (
          'SizeOptions.Height')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object src_Kontr: TDataSource
    Left = 120
    Top = 528
  end
  object srcWorker: TDataSource
    Left = 88
    Top = 528
  end
  object src_CONTACTS: TDataSource
    Left = 56
    Top = 528
  end
  object barMbrm1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cmDB.iml1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 272
    Top = 208
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
      DockControl = doc_kontr
      DockedDockControl = doc_kontr
      DockedLeft = 0
      DockedTop = 0
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
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barMbrm1Bar1: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc_contacts
      DockedDockControl = doc_contacts
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_cAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_cEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_cDelete'
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
      ImageIndex = 41
      OnClick = btnAddClick
    end
    object btnEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 43
      OnClick = btnEditClick
    end
    object btnDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 44
      OnClick = btnDeleteClick
    end
    object btnCancel: TdxBarButton
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 12
    end
    object btnSave: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 10
    end
    object btn_cAdd: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 41
      OnClick = btn_cAddClick
    end
    object btn_cEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 43
      OnClick = btn_cEditClick
    end
    object btn_cDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 44
      OnClick = btn_cDeleteClick
    end
  end
end
