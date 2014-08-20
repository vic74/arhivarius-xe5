object DogEditForm: TDogEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 159
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 363
    Height = 159
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_kontr: TcxLookupComboBox
      Left = 106
      Top = 10
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_Kontr
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = cbb_kontrPropertiesEditValueChanged
      Properties.OnValidate = cbb_kontrPropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object txt_NOMDOG: TcxTextEdit
      Left = 106
      Top = 37
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = dt_DATAENDDOGPropertiesChange
      Properties.OnValidate = txt_NOMDOGPropertiesValidate
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dt_DATADOG: TcxDateEdit
      Left = 106
      Top = 64
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = dt_DATAENDDOGPropertiesChange
      Properties.OnValidate = dt_DATADOGPropertiesValidate
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dt_DATAENDDOG: TcxDateEdit
      Left = 106
      Top = 91
      Properties.ImmediatePost = True
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = dt_DATAENDDOGPropertiesChange
      Properties.OnValidate = dt_DATAENDDOGPropertiesValidate
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object btn_FIleName: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 121
    end
    object btn_Save: TcxButton
      Left = 155
      Top = 118
      Width = 96
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 4
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 257
      Top = 118
      Width = 96
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 42
      OptionsImage.Images = cmDB.iml1
      TabOrder = 5
      OnClick = btn_CancelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1053#1086#1084#1077#1088
      Control = txt_NOMDOG
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
      Control = dt_DATADOG
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item13: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
      Control = dt_DATAENDDOG
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lItmlc1Item14: TdxLayoutItem
      CaptionOptions.Text = #1050#1086#1087#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      Control = btn_FIleName
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lItmlc1Item15: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item16: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group1: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 24
    Top = 144
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 52
    Top = 144
  end
  object OpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 64
    Top = 40
  end
  object ds_Kontr: TDataSource
    Left = 24
    Top = 112
  end
end
