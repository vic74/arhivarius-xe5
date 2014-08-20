object OrderSpecEditForm: TOrderSpecEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 83
  ClientWidth = 327
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
    Width = 327
    Height = 83
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_ARCPLACE: TcxLookupComboBox
      Left = 46
      Top = 10
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'STRCODE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_ARCPLACE
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnValidate = cbb_ARCPLACEPropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object btn_Save: TcxButton
      Left = 119
      Top = 37
      Width = 96
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 1
      OnClick = btn_SaveClick
    end
    object btnCancel: TcxButton
      Left = 221
      Top = 37
      Width = 96
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 42
      OptionsImage.Images = cmDB.iml1
      TabOrder = 2
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
      CaptionOptions.Text = #1055#1072#1087#1082#1072
      Control = cbb_ARCPLACE
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCancel
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
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 40
    Top = 40
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 8
    Top = 40
  end
  object src_ARCPLACE: TDataSource
    Left = 88
    Top = 40
  end
end
