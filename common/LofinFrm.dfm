object LoginForm: TLoginForm
  Left = 0
  Top = 0
  ActiveControl = edt_pass
  BorderStyle = bsDialog
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1073#1072#1079#1077' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 189
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lcontr1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 410
    Height = 189
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxlytcxlkndfl1
    object cbb_user: TcxLookupComboBox
      Left = 60
      Top = 64
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownSizeable = True
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1076
          MinWidth = 0
          Width = 0
          FieldName = 'CODE'
        end
        item
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          FieldName = 'FIO'
        end
        item
          MinWidth = 0
          Sorting = False
          Width = 0
          FieldName = 'PSW'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds2
      Properties.OnEditValueChanged = cbb_userPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Width = 265
    end
    object edt_pass: TcxTextEdit
      Left = 60
      Top = 91
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.HotTrack = False
      TabOrder = 1
      OnKeyUp = edt_passKeyUp
      Width = 168
    end
    object btn_Ok: TcxButton
      Left = 260
      Top = 140
      Width = 132
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000001190A30011F0C3C0006020C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000008030F0252209F048132F9048433FF048433FF048433FF036A
        29CC011C0B360000000000000000000000000000000000000000000000000000
        0000011E0B39047B2FEB0C9940FF19A64DFF1BA44DFF19A24BFF1AA24BFF0E9A
        40FF048533FC023E187800000000000000000000000000000000000000000009
        0412047B30EB10A44AFF14AC56FF09A348FF058A37FF058A37FF07983BFF119C
        43FF129F45FF048834FF01270F4B000000000000000000000000000000000246
        1B870A9B41FF0EB760FF06AE53FF11AC53FFE4F5EBFFC7EAD5FF03993AFF0397
        39FF0B993EFF0B9B3EFF03702BD8000000000000000000000000000000000371
        2CDB0BB459FF09BD66FF058A37FF129042FFE4F5EBFFBDE2CBFF058A37FF058A
        37FF05973AFF089B3DFF048433FF0116082A0000000000000000000201030482
        32FC0AC168FF03C166FFDAF2E5FFE4F5EBFFE4F5EBFFE4F5EBFFE4F5EBFFA1DB
        B8FF019838FF069A3CFF048433FF012B1154000000000000000000000000047F
        31F60AC56BFF05C76EFFB7EAD1FFCFEEDEFFE4F5EBFFE4F5EBFFCEEEDDFF87D5
        A8FF029F40FF069D40FF048433FF01270F4B0000000000000000000000000365
        27C310BF6AFF0BD385FF08CF7FFF0DC873FFE4F5EBFFD8F2E4FF00B857FF03B9
        5CFF06B356FF0CA94CFF048433FF0010061E0000000000000000000000000235
        146610A14BFF1AD995FF08D488FF18D48CFFE4F5EBFFBFEDD7FF09C673FF05C0
        68FF11C06CFF14A64EFF035F25B7000000000000000000000000000000000003
        0106036C2ACC23B565FF27DB98FF0ED68DFF05D485FF04D07FFF0BCD7EFF1FCD
        83FF27B767FF058533F70116082A000000000000000000000000000000000000
        0000000E051B036C2ACC1BA552FF37CA84FF37D794FF35D592FF37CA84FF1FA9
        56FF058032EF01240E4500000000000000000000000000000000000000000000
        000000000000000301060238166C036A29CC048433FF048433FF04782EE7024B
        1D90000C05180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
      OnClick = btn_OkClick
    end
    object btn_cancel: TcxButton
      Left = 18
      Top = 140
      Width = 127
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      LookAndFeel.SkinName = 'LondonLiquidSky'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000031B300004223C0001070C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001080F00095A9F000F8DF9000F90FF000F90FF000F90FF000C
        73CC00031E360000000000000000000000000000000000000000000000000000
        000000032039011089ED081D9FFF0522A9FF0A2FB7FF0B32B8FF082CB5FF0825
        A7FF051898FD0008487E00000000000000000000000000000000000000000001
        0A12010F87EB0A20A5FF010D9DFF525ABCFF0A16A0FF0936C5FF1F29A9FF1A26
        B4FF020C8FFF041698FF00042A4B000000000000000000000000000000000008
        4C8704179BFF0A2FB8FF7186D2FFFFFFFFFFCFD4EEFF2731ACFFE3E8F8FFDAE1
        F6FF2048C8FF051C9FFF000D7AD800000000000000000000000000000000000D
        7CDB0824ADFF0430BFFF3452C2FFF3F5FBFFFFFFFFFFFDFDFEFFFFFFFFFFCBD3
        F0FF143FC6FF0525ACFF000F90FF0002182A000000000000000000000203000F
        8EFC082BB7FF0938C7FF042FC0FF414AB6FFFCFDFEFFFFFFFFFFF9FAFDFF1620
        A5FF0834C2FF0724A6FF000F90FF00052F54000000000000000000000000000E
        8BF6092AB4FF0639CDFF1F29A9FFE1E3F6FFFFFFFFFFF9FAFEFFFFFFFFFFC1C4
        EBFF0A16A0FF0521A5FF000F90FF00042A4B000000000000000000000000000B
        6EC30921A5FF0F44D4FF5679DCFFFDFDFEFFD2D9F3FF4E69CFFFEBEEF9FFFAFB
        FEFF4668D4FF0925AAFF000F90FF0002111E0000000000000000000000000006
        3A66021294FF2045C5FF154CD8FF4C72DDFF0F42D0FF0035CBFF254DCBFF5071
        D6FF1740C4FF0D23A4FF000B67B7000000000000000000000000000000000000
        0306000C72C9051698FF2B4BC5FF2657D9FF174ED8FF134BD5FF1D4FD3FF2E56
        CCFF162CAAFF01108EF70002182A000000000000000000000000000000000000
        000000020F1B000C72C9021294FF1428A6FF2844BBFF2D4BC0FF223BB4FF091B
        9CFF010F88EE0004274500000000000000000000000000000000000000000000
        0000000000000000030600063D6C000C73CC000F90FF000F90FF000E82E70008
        519000010E180000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      OnClick = btn_cancelClick
    end
    object cbb_base: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 267
    end
    object txt_usr: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 267
    end
    object cbb_kontr: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end
        item
          MinWidth = 0
          Width = 0
          FieldName = 'AROLE'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_KONTR
      Properties.OnEditValueChanged = cbb_kontrPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 145
    end
    object cbb_PIPLE: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.CaseSensitiveSearch = True
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CODE'
        end
        item
          FieldName = 'FIO'
        end
        item
          FieldName = 'PSW'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds2
      Properties.OnEditValueChanged = cbb_PIPLEPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 145
    end
    object chk_pswd: TcxCheckBox
      Left = 275
      Top = 91
      Caption = #1087#1086#1082#1072#1079#1072#1090#1100
      Properties.OnEditValueChanged = chk_pswdPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 82
    end
    object lGrp: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'nmhn'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object grp4: TdxLayoutGroup
      Parent = lGrp
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LafScin1
      ButtonOptions.Buttons = <>
      Expanded = False
      Index = 0
    end
    object lGrp1: TdxLayoutGroup
      AlignHorz = ahClient
      CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      LayoutLookAndFeel = LafScin1
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 53
      SizeOptions.Width = 312
      ButtonOptions.Buttons = <>
      Index = -1
    end
    object ItemBase: TdxLayoutItem
      Parent = lGrp1
      CaptionOptions.Text = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      LayoutLookAndFeel = LafScin1
      Control = cbb_base
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrp2: TdxLayoutGroup
      Parent = lGrp
      CaptionOptions.Text = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      LayoutLookAndFeel = LafScin1
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 86
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object Itm_usr: TdxLayoutItem
      CaptionOptions.Text = #1051#1086#1075#1080#1085
      Control = txt_usr
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object Item_pass: TdxLayoutItem
      Parent = grplcontr1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = #1055#1072#1088#1086#1083#1100
      LayoutLookAndFeel = LafScin1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 251
      Control = edt_pass
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lGrp3: TdxLayoutGroup
      Parent = lGrp
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LafScin1
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object Item_btnCancel: TdxLayoutItem
      Parent = lGrp3
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LafScin1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 127
      Control = btn_cancel
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object Item_bntOk: TdxLayoutItem
      Parent = lGrp3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = LafScin1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 132
      Control = btn_Ok
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object Item_cbUser: TdxLayoutItem
      Parent = grplcontr1Group1
      CaptionOptions.Text = #1051#1086#1075#1080#1085
      LayoutLookAndFeel = LafScin1
      Control = cbb_user
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object litlcontr1Item1: TdxLayoutItem
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      Control = cbb_kontr
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litlcontr1Item11: TdxLayoutItem
      CaptionOptions.Text = #1051#1086#1075#1080#1085
      Control = cbb_PIPLE
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object litlcontr1Item12: TdxLayoutItem
      Parent = grplcontr1Group2
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chk_pswd
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grplcontr1Group1: TdxLayoutGroup
      Parent = lGrp2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object grplcontr1Group2: TdxLayoutGroup
      Parent = grplcontr1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object ds2: TDataSource
    DataSet = cmDB.ds_WORKER
    Left = 177
    Top = 120
  end
  object prop1: TcxPropertiesStore
    Components = <
      item
        Component = cbb_base
        Properties.Strings = (
          'ItemIndex')
      end
      item
        Component = cbb_kontr
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_PIPLE
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = cbb_user
        Properties.Strings = (
          'EditValue'
          'Properties.DropDownWidth')
      end
      item
        Component = txt_usr
        Properties.Strings = (
          'Text')
      end>
    StorageName = 'prop1'
    Left = 208
  end
  object LaFls1: TdxLayoutLookAndFeelList
    Left = 288
    Top = 96
    object LafScin1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'LondonLiquidSky'
    end
    object dxlytcxlkndfl1: TdxLayoutCxLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
    end
  end
  object ds_KONTR: TDataSource
    Left = 184
    Top = 176
  end
  object idtl1: TIdTelnet
    Terminal = 'dumb'
    Left = 224
    Top = 136
  end
  object ds_WORKER: TFDQuery
    Connection = cmDB.fdb
    SQL.Strings = (
      'SELECT W.CODE,'
      '       W.PSW,'
      '       W.FIOSHORT FIO'
      'FROM WORKER W'
      'where w.KONTRAGENT = 1'
      'order by W.FIOSHORT')
    Left = 352
    Top = 120
  end
end
