object DogDocAddForm: TDogDocAddForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 321
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 425
    Height = 321
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_DocType: TcxLookupComboBox
      Left = 125
      Top = 61
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_DOCTYPE
      Properties.PostPopupValueOnTab = True
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = cbb_DocTypePropertiesEditValueChanged
      Properties.OnValidate = cbb_DocTypePropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      OnKeyDown = cbb_DocTypeKeyDown
      Width = 224
    end
    object txt_NOMER: TcxTextEdit
      Left = 125
      Top = 88
      Properties.ValidateOnEnter = True
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = txt_NOMERPropertiesEditValueChanged
      Properties.OnValidate = txt_NOMERPropertiesValidate
      Style.HotTrack = False
      TabOrder = 2
      OnKeyDown = cbb_DocTypeKeyDown
      Width = 259
    end
    object dt_DATA: TcxDateEdit
      Left = 125
      Top = 115
      Properties.PostPopupValueOnTab = True
      Properties.ShowTime = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = dt_DATAPropertiesEditValueChanged
      Properties.OnValidate = dt_DATAPropertiesValidate
      Style.HotTrack = False
      TabOrder = 3
      OnKeyDown = cbb_DocTypeKeyDown
      Width = 259
    end
    object spn_PAGENUM: TcxSpinEdit
      Left = 125
      Top = 142
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = spn_PAGENUMPropertiesEditValueChanged
      Properties.OnValidate = spn_PAGENUMPropertiesValidate
      Style.HotTrack = False
      TabOrder = 4
      OnKeyDown = cbb_DocTypeKeyDown
      Width = 259
    end
    object txt_NOTE: TcxTextEdit
      Left = 88
      Top = 209
      Properties.OnEditValueChanged = txt_NOTEPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      OnKeyDown = cbb_DocTypeKeyDown
      Width = 311
    end
    object cbb_COMPLECTDOC: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Enabled = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_COMPLECTDOC
      Properties.PostPopupValueOnTab = True
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnValidate = cbb_COMPLECTDOCPropertiesValidate
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      OnKeyDown = cbb_DocTypeKeyDown
      Width = 224
    end
    object btn_AddCompl: TcxButton
      Left = 10000
      Top = 10000
      Width = 29
      Height = 21
      Caption = #1057#1086#1079#1076#1072#1090#1100
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cmDB.iml1
      PaintStyle = bpsGlyph
      TabOrder = 17
      TabStop = False
      Visible = False
      OnClick = btn_AddComplClick
    end
    object btn_Save: TcxButton
      Left = 283
      Top = 236
      Width = 120
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 7
      OnClick = btn_SaveClick
    end
    object btnSaveAndClose: TcxButton
      Left = 10000
      Top = 10000
      Width = 155
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = cmDB.iml1
      TabOrder = 15
      TabStop = False
      Visible = False
      OnClick = btnSaveAndCloseClick
    end
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 359
      Height = 216
      TabOrder = 9
      Visible = False
      object v1: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_COMPLECTDOC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 1266
        end
        object clv1KONTRAGENT: TcxGridDBColumn
          DataBinding.FieldName = 'KONTRAGENT'
          Visible = False
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btnSelect: TcxButton
      Left = 10000
      Top = 10000
      Width = 359
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OptionsImage.ImageIndex = 31
      OptionsImage.Images = cmDB.iml1
      TabOrder = 10
      Visible = False
      OnClick = btnSelectClick
    end
    object cbb_Folder: TcxLookupComboBox
      Left = 88
      Top = 182
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ARCPLACE'
      Properties.ListColumns = <
        item
          FieldName = 'STRCODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_md1
      Properties.OnEditValueChanged = cbb_FolderPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 311
    end
    object btn_Cancel: TcxButton
      Left = 10000
      Top = 10000
      Width = 97
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDB.iml1
      TabOrder = 11
      Visible = False
      OnClick = btn_CancelClick
    end
    object grd4: TcxGrid
      Left = 10000
      Top = 10000
      Width = 425
      Height = 241
      TabOrder = 12
      Visible = False
      object v4: TcxGridDBTableView
        OnKeyUp = v1KeyUp
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = src_DOCTYPE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object clv4CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Visible = False
          Options.Editing = False
          Width = 24
        end
        object clv4NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          Width = 190
        end
      end
      object l4: TcxGridLevel
        GridView = v4
      end
    end
    object btn_DocType: TcxButton
      Left = 364
      Top = 61
      Width = 29
      Height = 21
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1090#1080#1087
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1090#1080#1087
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cmDB.iml1
      PaintStyle = bpsGlyph
      TabOrder = 1
      OnClick = btn_DocTypeClick
    end
    object btn_DocTypeSelect: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OptionsImage.ImageIndex = 31
      OptionsImage.Images = cmDB.iml1
      TabOrder = 13
      Visible = False
      OnClick = btn_DocTypeSelectClick
    end
    object btn_DocTypeCancel: TcxButton
      Left = 10000
      Top = 10000
      Width = 97
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = cmDB.iml1
      TabOrder = 14
      Visible = False
      OnClick = btn_DocTypeCancelClick
    end
    object btn_SaveScan: TcxButton
      Left = 122
      Top = 267
      Width = 281
      Height = 25
      Caption = #1055#1088#1080#1082#1088#1077#1087#1080#1090#1100' '#1089#1082#1072#1085' '#1092#1072#1081#1083
      OptionsImage.ImageIndex = 27
      OptionsImage.Images = cmDB.iml1
      TabOrder = 8
      OnClick = btn_SaveScanClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grplc1Group1: TdxLayoutGroup
      Parent = grplc1Group3
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grplc1Group7
      AlignHorz = ahClient
      CaptionOptions.Text = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Control = cbb_DocType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Control = txt_NOMER
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Control = dt_DATA
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item13: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = #1050#1086#1083'-'#1074#1086' '#1089#1090#1088#1072#1085#1080#1094
      Control = spn_PAGENUM
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lItmlc1Item14: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Control = txt_NOTE
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item15: TdxLayoutItem
      Parent = grplc1Group2
      AlignHorz = ahClient
      CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1072#1087#1082#1080
      Control = cbb_COMPLECTDOC
      ControlOptions.AutoControlAreaAlignment = False
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      Parent = grplc1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object grplc1Group4: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object grplc1Group5: TdxLayoutGroup
      Parent = grplc1Group4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lItmlc1Item16: TdxLayoutItem
      Parent = grplc1Group2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = btn_AddCompl
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item17: TdxLayoutItem
      Parent = grplc1Group6
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item18: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSaveAndClose
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object grplc1Group6: TdxLayoutGroup
      Parent = grplc1Group3
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lItmlc1Item19: TdxLayoutItem
      Parent = grplc1Group5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item110: TdxLayoutItem
      Parent = dxlytgrplc1Group1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSelect
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lc1Item1: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = #1058#1086#1084
      Control = cbb_Folder
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item2: TdxLayoutItem
      Parent = dxlytgrplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxlytgrplc1Group1: TdxLayoutGroup
      Parent = grplc1Group5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object gpr_DocType: TdxLayoutGroup
      Parent = grplc1Group4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object itmlc1Item3: TdxLayoutItem
      Parent = gpr_DocType
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item21: TdxLayoutItem
      Parent = grplc1Group7
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_DocType
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group7: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item22: TdxLayoutItem
      Parent = grplc1Group8
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_DocTypeSelect
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item23: TdxLayoutItem
      Parent = grplc1Group8
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_DocTypeCancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group8: TdxLayoutGroup
      Parent = gpr_DocType
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item24: TdxLayoutItem
      Parent = grplc1Group3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = btn_SaveScan
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 80
    Top = 248
    object lcf1: TdxLayoutCxLookAndFeel
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 48
    Top = 248
  end
  object src_DOCTYPE: TDataSource
    Left = 272
    Top = 64
  end
  object md1: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F020000002400000001000800535452434F44450004
      00000003000900415243504C41434500}
    SortOptions = []
    Left = 216
    Top = 208
    object md1strcode: TStringField
      FieldName = 'STRCODE'
      Size = 36
    end
    object md1ARCPLACE: TIntegerField
      FieldName = 'ARCPLACE'
    end
  end
  object ds_md1: TDataSource
    DataSet = md1
    Left = 184
    Top = 208
  end
  object src_COMPLECTDOC: TDataSource
    Left = 272
    Top = 120
  end
end
