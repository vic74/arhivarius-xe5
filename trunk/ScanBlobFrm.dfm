object ScanBlobForm: TScanBlobForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1086#1082' '#1092#1072#1081#1083#1086#1074
  ClientHeight = 387
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 436
    Height = 387
    Align = alClient
    TabOrder = 0
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_SCANLIST
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 44
        end
        object clv1DOGDOC: TcxGridDBColumn
          DataBinding.FieldName = 'DOGDOC'
          Visible = False
        end
        object clv1NOMER: TcxGridDBColumn
          DataBinding.FieldName = 'NOMER'
          Visible = False
        end
        object clv1DATAPATH: TcxGridDBColumn
          Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
          DataBinding.FieldName = 'DATAPATH'
          Width = 269
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object btn_SaveScan: TcxButton
      Left = 192
      Top = 352
      Width = 234
      Height = 25
      Caption = #1057#1082#1072#1095#1072#1090#1100' '#1092#1072#1081#1083
      OptionsImage.ImageIndex = 18
      OptionsImage.Images = cmDB.iml1
      TabOrder = 2
      OnClick = btn_SaveScanClick
    end
    object btnDelete: TcxButton
      Left = 10
      Top = 352
      Width = 176
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083
      OptionsImage.ImageIndex = 44
      OptionsImage.Images = cmDB.iml1
      TabOrder = 1
      OnClick = btnDeleteClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object itmlc1Item1: TdxLayoutItem
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grplc1Group1: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 12
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmlc1Item11: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_SaveScan
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmlc1Item12: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnDelete
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object src_SCANLIST: TDataSource
    Left = 228
    Top = 136
  end
end
