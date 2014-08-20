object OrdersDocForm: TOrdersDocForm
  Left = 0
  Top = 0
  Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
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
  object lc1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 858
    Height = 588
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcf1
    object dt1: TcxDateEdit
      Left = 64
      Top = 10
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnValidate = dt1PropertiesValidate
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dt2: TcxDateEdit
      Left = 212
      Top = 10
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnValidate = dt2PropertiesValidate
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object btn_Load: TcxButton
      Left = 339
      Top = 10
      Width = 92
      Height = 25
      Caption = #1047#1072#1087#1088#1086#1089
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cmDB.iml1
      TabOrder = 2
      OnClick = btn_LoadClick
    end
    object grd3: TcxGrid
      Left = 10
      Top = 73
      Width = 838
      Height = 275
      TabOrder = 4
      object v3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnFocusedRecordChanged = v3FocusedRecordChanged
        DataController.DataSource = src_ORDERDOC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv3CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 48
        end
        object clv3STATE: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = 'STATE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = cmDB.iml1
          Properties.Items = <
            item
              Description = #1087#1088#1086#1074#1077#1076#1077#1085
              ImageIndex = 33
              Value = 1
            end
            item
              Description = #1085#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
              Value = 0
            end>
          Properties.ShowDescriptions = False
          Width = 46
        end
        object clv3DOCUMDATE: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DOCUMDATE'
          Width = 80
        end
        object clv3OPERATOR: TcxGridDBColumn
          Caption = #1057#1086#1079#1076#1072#1083
          DataBinding.FieldName = 'OPERATOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_Worker
          Width = 114
        end
        object clv3OPERTYPE: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080
          DataBinding.FieldName = 'OPERTYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.ImageAlign = iaRight
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = #1076#1086#1082#1091#1084#1077#1085#1090' '#1074' '#1072#1088#1093#1080#1074
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1080#1079' '#1072#1088#1093#1080#1074#1072
              Value = 1
            end
            item
              Description = #1080#1079#1098#1103#1090#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1080#1079' '#1072#1088#1093#1080#1074#1072
              Value = 2
            end>
          Width = 147
        end
        object clv3MOVESTATE: TcxGridDBColumn
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
          DataBinding.FieldName = 'MoveState'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_MoveState
          Width = 132
        end
        object clv3WORKER: TcxGridDBColumn
          Caption = #1055#1086#1083#1091#1095#1080#1083
          DataBinding.FieldName = 'WORKER'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CODE'
          Properties.ListColumns = <
            item
              FieldName = 'FIO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = src_Worker
          Width = 149
        end
        object clv3NAME: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1082#1090
          DataBinding.FieldName = 'NAME'
          Width = 113
        end
        object clv3ARCOBJECT: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1082#1090
          DataBinding.FieldName = 'ARCOBJECT'
          Visible = False
          Width = 97
        end
        object clv3NOTE: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'NOTE'
          Width = 275
        end
        object clv3DOGDOP: TcxGridDBColumn
          DataBinding.FieldName = 'DOGDOP'
          Visible = False
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
    end
    object grd1: TcxGrid
      Left = 10
      Top = 378
      Width = 838
      Height = 220
      TabOrder = 6
      object v1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = src_ORDERSPEC
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          Width = 38
        end
        object clv1ORDERDOC: TcxGridDBColumn
          DataBinding.FieldName = 'ORDERDOC'
          Visible = False
        end
        object clv1ARCPLACE: TcxGridDBColumn
          DataBinding.FieldName = 'ARCPLACE'
          Visible = False
        end
        object clv1ARNOTE: TcxGridDBColumn
          Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1077
          DataBinding.FieldName = 'ARNOTE'
          Width = 130
        end
        object clv1AONAME: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1082#1090
          DataBinding.FieldName = 'AONAME'
          Width = 157
        end
        object clv1STRCODE: TcxGridDBColumn
          Caption = #1055#1072#1087#1082#1072
          DataBinding.FieldName = 'STRCODE'
          Width = 177
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object doc1: TdxBarDockControl
      Left = 10
      Top = 41
      Width = 838
      Height = 26
      Align = dalNone
      BarManager = brm1
    end
    object doc2: TdxBarDockControl
      Left = 10
      Top = 346
      Width = 838
      Height = 26
      Align = dalNone
      BarManager = brm1
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
      Parent = grp1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object grplc1Group3: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 5
    end
    object spllc1SplitterItem1: TdxLayoutSplitterItem
      Parent = grp1
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object lItmlc1Item1: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = #1087#1077#1088#1080#1086#1076' '#1089':'
      Control = dt1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item11: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = #1087#1086':'
      Control = dt2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item12: TdxLayoutItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btn_Load
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lItmlc1Item2: TdxLayoutItem
      Parent = grplc1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item13: TdxLayoutItem
      Parent = grplc1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lItmlc1Item14: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lItmlc1Item15: TdxLayoutItem
      Parent = grp1
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = doc2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 4
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
        Component = dt1
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = dt2
        Properties.Strings = (
          'EditValue')
      end>
    StorageName = 'prop1'
    Left = 728
    Top = 120
  end
  object src_Worker: TDataSource
    Left = 216
    Top = 240
  end
  object src_MoveState: TDataSource
    Left = 120
    Top = 240
  end
  object src_ORDERSPEC: TDataSource
    Left = 152
    Top = 240
  end
  object src_ORDERDOC: TDataSource
    Left = 184
    Top = 240
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
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 504
    Top = 280
    DockControlHeights = (
      0
      0
      0
      0)
    object barDoc: TdxBar
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
      FloatClientWidth = 51
      FloatClientHeight = 138
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnDocAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDocEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDocDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Prov'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Print'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barSpec: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = doc2
      DockedDockControl = doc2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 892
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 80
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSpecAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSpecEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSpecDelete'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnDocAdd: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 41
      OnClick = btnDocAddClick
    end
    object btnSpecAdd: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 41
      OnClick = btnSpecAddClick
    end
    object btnDocEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 43
      OnClick = btnDocEditClick
    end
    object btnDocDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 44
      OnClick = btnDocDeleteClick
    end
    object btnSpecEdit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 43
      OnClick = btnSpecEditClick
    end
    object btnSpecDelete: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 44
      OnClick = btnSpecDeleteClick
    end
    object btn_Prov: TdxBarButton
      Caption = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      Category = 0
      Hint = #1059#1090#1074#1077#1088#1076#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 33
      OnClick = btn_ProvClick
    end
    object btn_Print: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btn_PrintClick
    end
  end
end
