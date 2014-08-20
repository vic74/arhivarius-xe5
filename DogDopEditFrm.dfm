object DogDopEditForm: TDogDopEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 154
  ClientWidth = 409
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
    Width = 409
    Height = 154
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object txt_DOPNUM: TcxTextEdit
      Left = 91
      Top = 10
      Properties.ValidateOnEnter = True
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = txt_DOPNUMPropertiesEditValueChanged
      Properties.OnValidate = txt_DOPNUMPropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt_DOPDATE: TcxDateEdit
      Left = 91
      Top = 37
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnEditValueChanged = txt_DOPNUMPropertiesEditValueChanged
      Properties.OnValidate = dt_DOPDATEPropertiesValidate
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object txt_NOTE: TcxTextEdit
      Left = 10
      Top = 82
      Properties.OnEditValueChanged = txt_DOPNUMPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object btn_Save: TcxButton
      Left = 201
      Top = 109
      Width = 96
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 3
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 303
      Top = 109
      Width = 96
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 42
      OptionsImage.Images = cmDB.iml1
      TabOrder = 4
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = lcf1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #8470' '#1076#1086#1087'. '#1089#1086#1075#1083'.'
      Control = txt_DOPNUM
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
      Control = dt_DOPDATE
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      CaptionOptions.Layout = clTop
      Control = txt_NOTE
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item13: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item14: TdxLayoutItem
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
      Index = 3
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 48
    Top = 104
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'Office2013White'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 24
    Top = 104
  end
end
