object OrderDocEditForm: TOrderDocEditForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
  ClientHeight = 153
  ClientWidth = 508
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 508
    Height = 153
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object cbb_ArcObject: TcxLookupComboBox
      Left = 351
      Top = 10
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_ARCOBJECT
      Properties.OnEditValueChanged = cbb_OperTypePropertiesEditValueChanged
      Properties.OnValidate = cbb_ArcObjectPropertiesValidate
      Style.HotTrack = False
      TabOrder = 3
      Width = 145
    end
    object dt_DocumDate: TcxDateEdit
      Left = 98
      Top = 37
      Properties.OnEditValueChanged = cbb_OperTypePropertiesEditValueChanged
      Properties.OnValidate = dt_DocumDatePropertiesValidate
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cbb_Worker: TcxLookupComboBox
      Left = 351
      Top = 37
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'FIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_Worker
      Properties.OnEditValueChanged = cbb_OperTypePropertiesEditValueChanged
      Properties.OnValidate = cbb_WorkerPropertiesValidate
      Style.HotTrack = False
      TabOrder = 4
      Width = 145
    end
    object txt_Note: TcxTextEdit
      Left = 98
      Top = 91
      Properties.OnEditValueChanged = cbb_OperTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cbb_OperType: TcxComboBox
      Left = 98
      Top = 10
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1076#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1072#1088#1093#1080#1074
        #1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1080#1079' '#1072#1088#1093#1080#1074#1072
        #1080#1079#1098#1103#1090#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1080#1079' '#1072#1088#1093#1080#1074#1072)
      Properties.OnEditValueChanged = cbb_OperTypePropertiesEditValueChanged
      Properties.OnValidate = cbb_OperTypePropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object btn_Save: TcxButton
      Left = 300
      Top = 118
      Width = 96
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 6
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 402
      Top = 118
      Width = 96
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      OptionsImage.ImageIndex = 42
      OptionsImage.Images = cmDB.iml1
      TabOrder = 7
    end
    object cbb_State: TcxLookupComboBox
      Left = 98
      Top = 64
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_MoveState
      Properties.OnEditValueChanged = cbb_OperTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grplc1Group2
      CaptionOptions.Text = #1054#1073#1098#1077#1082#1090
      Control = cbb_ArcObject
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grplc1Group5
      CaptionOptions.Text = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      SizeOptions.Width = 237
      Control = dt_DocumDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item13: TdxLayoutItem
      Parent = grplc1Group2
      CaptionOptions.Text = #1055#1086#1083#1091#1095#1080#1083' '#1076#1086#1082#1091#1084#1077#1085#1090
      Control = cbb_Worker
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item14: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Control = txt_Note
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item15: TdxLayoutItem
      Parent = grplc1Group5
      CaptionOptions.Text = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 237
      Control = cbb_OperType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item16: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Cancel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplc1Group3: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itmlc1Item1: TdxLayoutItem
      Parent = grplc1Group5
      CaptionOptions.Text = #1057#1090#1072#1090#1091#1089
      Control = cbb_State
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object grplc1Group5: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  object lf1: TdxLayoutLookAndFeelList
    Left = 56
    Top = 88
    object lcf1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
    end
  end
  object prop1: TcxPropertiesStore
    Components = <>
    StorageName = 'prop1'
    Left = 72
    Top = 144
  end
  object src_ARCOBJECT: TDataSource
    Left = 136
    Top = 88
  end
  object src_MoveState: TDataSource
    Left = 200
    Top = 96
  end
  object src_Worker: TDataSource
    Left = 256
    Top = 96
  end
end
