object WorkerForm: TWorkerForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  ClientHeight = 616
  ClientWidth = 888
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
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 888
    Height = 616
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object grd1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 844
      Height = 509
      TabOrder = 1
      Visible = False
      LookAndFeel.NativeStyle = False
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_WORKER
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        EditForm.DefaultColumnCount = 1
        EditForm.UseDefaultLayout = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          VisibleForEditForm = bFalse
          Width = 29
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
          Properties.ListSource = src_KONTRAGENT
          LayoutItem = v1LayoutItem2.Owner
          Width = 172
        end
        object clv1FIO: TcxGridDBColumn
          Caption = #1060#1048#1054
          DataBinding.FieldName = 'FIOFULL'
          LayoutItem = v1LayoutItem3.Owner
          Width = 220
        end
        object clv1F: TcxGridDBColumn
          DataBinding.FieldName = 'F'
          Visible = False
        end
        object clv1I: TcxGridDBColumn
          DataBinding.FieldName = 'I'
          Visible = False
        end
        object clv1O: TcxGridDBColumn
          DataBinding.FieldName = 'O'
          Visible = False
        end
        object clv1WORKERSTATE: TcxGridDBColumn
          Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'WORKERSTATE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_WORKERSTATE
          LayoutItem = v1LayoutItem4.Owner
          Width = 126
        end
        object clv1PHONE: TcxGridDBColumn
          Caption = #1058#1077#1083#1077#1092#1086#1085
          DataBinding.FieldName = 'PHONE'
          Visible = False
          Width = 109
        end
        object clv1EMAIL: TcxGridDBColumn
          Caption = '@email'
          DataBinding.FieldName = 'EMAIL'
          Visible = False
          Width = 91
        end
        object clv1NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          LayoutItem = v1LayoutItem5.Owner
          Width = 149
        end
        object clv1PSW: TcxGridDBColumn
          DataBinding.FieldName = 'PSW'
          Visible = False
        end
        object v1RootGroup: TcxGridInplaceEditFormGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Card'
          CaptionOptions.Visible = False
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object v1LayoutItem2: TcxGridInplaceEditFormLayoutItem
          Parent = v1RootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 1
        end
        object v1LayoutItem3: TcxGridInplaceEditFormLayoutItem
          Parent = v1RootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 0
        end
        object v1LayoutItem4: TcxGridInplaceEditFormLayoutItem
          Parent = v1RootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 2
        end
        object v1LayoutItem5: TcxGridInplaceEditFormLayoutItem
          Parent = v1RootGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 3
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 844
      Height = 26
      Align = dalNone
      BarManager = brm1
      Visible = False
    end
    object txt_F: TcxDBTextEdit
      Left = 110
      Top = 62
      DataBinding.DataField = 'F'
      DataBinding.DataSource = src_WORKER
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Properties.OnValidate = txt1PropertiesValidate
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object txt_I: TcxDBTextEdit
      Left = 110
      Top = 91
      DataBinding.DataField = 'I'
      DataBinding.DataSource = src_WORKER
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Properties.OnValidate = txt2PropertiesValidate
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object txt_O: TcxDBTextEdit
      Left = 110
      Top = 120
      DataBinding.DataField = 'O'
      DataBinding.DataSource = src_WORKER
      Properties.ValidateOnEnter = True
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Properties.OnValidate = txt3PropertiesValidate
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object txt4: TcxDBTextEdit
      Left = 109
      Top = 261
      DataBinding.DataField = 'PHONE'
      DataBinding.DataSource = src_WORKER
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object txt5: TcxDBTextEdit
      Left = 109
      Top = 288
      DataBinding.DataField = 'EMAIL'
      DataBinding.DataSource = src_WORKER
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object txt6: TcxDBTextEdit
      Left = 32
      Top = 333
      DataBinding.DataField = 'NOTE'
      DataBinding.DataSource = src_WORKER
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object txt_PSWD: TcxDBTextEdit
      Left = 110
      Top = 149
      DataBinding.DataField = 'PSW'
      DataBinding.DataSource = src_WORKER
      Properties.ValidateOnEnter = True
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Properties.OnValidate = txt7PropertiesValidate
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cbb_Kontr: TcxDBLookupComboBox
      Left = 110
      Top = 233
      DataBinding.DataField = 'KONTRAGENT'
      DataBinding.DataSource = src_WORKER
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_KONTRAGENT
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Properties.OnValidate = cbb_KontrPropertiesValidate
      Style.Color = clBtnFace
      Style.HotTrack = False
      TabOrder = 7
      Width = 145
    end
    object cbb_WorkerState: TcxDBLookupComboBox
      Left = 110
      Top = 204
      DataBinding.DataField = 'WORKERSTATE'
      DataBinding.DataSource = src_WORKER
      Properties.DropDownSizeable = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CODE'
      Properties.ListColumns = <
        item
          FieldName = 'NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = src_WORKERSTATE
      Properties.ValidateOnEnter = False
      Properties.ValidationOptions = [evoAllowLoseFocus]
      Properties.OnValidate = cbb_WorkerStatePropertiesValidate
      Style.Color = clBtnFace
      Style.HotTrack = False
      TabOrder = 6
      Width = 145
    end
    object btn_Save: TcxButton
      Left = 668
      Top = 373
      Width = 96
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OptionsImage.ImageIndex = 10
      OptionsImage.Images = cmDB.iml1
      TabOrder = 11
      OnClick = btn_SaveClick
    end
    object btnCancel: TcxButton
      Left = 770
      Top = 373
      Width = 96
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.ImageIndex = 42
      OptionsImage.Images = cmDB.iml1
      TabOrder = 12
      OnClick = btnCancelClick
    end
    object grp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = -1
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grplc1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item11: TdxLayoutItem
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
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grplc1Group2: TdxLayoutGroup
      Parent = grp1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object itmlc1Item3: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = #1060#1072#1084#1080#1083#1080#1103'*'
      Control = txt_F
      Index = 0
    end
    object itmlc1Item4: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = #1048#1084#1103'*'
      Control = txt_I
      Index = 1
    end
    object itmlc1Item5: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = #1054#1090#1095#1077#1089#1090#1074#1086'*'
      Control = txt_O
      Index = 2
    end
    object itmlc1Item7: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = #1058#1077#1083#1077#1092#1086#1085
      Visible = False
      Control = txt4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itmlc1Item8: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = '@email'
      Visible = False
      Control = txt5
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmlc1Item9: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      CaptionOptions.Layout = clTop
      Control = txt6
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itmlc1Item10: TdxLayoutItem
      Parent = grplc1Group3
      CaptionOptions.Text = #1055#1072#1088#1086#1083#1100'*'
      Control = txt_PSWD
      Index = 3
    end
    object grplc1Group3: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object itmlc1Item12: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'*'
      Control = cbb_Kontr
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      Parent = grplc1Group4
      CaptionOptions.Text = #1056#1086#1083#1100'*'
      Control = cbb_WorkerState
      Index = 0
    end
    object grplc1Group4: TdxLayoutGroup
      Parent = grplc1Group1
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object grplc1Group5: TdxLayoutGroup
      Parent = grplc1Group1
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itmlc1Item11: TdxLayoutItem
      Parent = grplc1Group5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item13: TdxLayoutItem
      Parent = grplc1Group5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.ShowBorder = False
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
    Components = <>
    StorageName = 'prop1'
    Left = 728
    Top = 120
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 456
    Top = 272
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
  end
  object src_KONTRAGENT: TDataSource
    DataSet = cmDB.ds_KONTRAGENT
    Left = 568
    Top = 328
  end
  object src_WORKERSTATE: TDataSource
    DataSet = cmDB.ds_WORKERSTATE
    Left = 568
    Top = 376
  end
  object src_WORKER: TDataSource
    DataSet = ds_WORKER
    Left = 600
    Top = 232
  end
  object ds_WORKER: TFDQuery
    AfterPost = ds_WORKERAfterPost
    Connection = cmDB.fdb
    Transaction = cmDB.TR
    UpdateTransaction = cmDB.TRW
    SQL.Strings = (
      'SELECT *'
      'FROM WORKER W'
      'order by W.FIOSHORT')
    Left = 568
    Top = 232
  end
end
