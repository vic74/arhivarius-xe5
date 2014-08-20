object ArcObjectListForm: TArcObjectListForm
  Left = 0
  Top = 0
  Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1072#1088#1093#1080#1074#1072
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
    object grd1: TcxGrid
      Left = 10
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 0
      object v1: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
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
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = src_ARCOBJECT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.DragDropText = True
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.PullFocusing = True
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv1CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
          Width = 42
        end
        object clv1NAME: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
          DataBinding.FieldName = 'NAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnEditValueChanged = clv1NAMEPropertiesEditValueChanged
          Width = 208
        end
        object clv1ADDR: TcxGridDBColumn
          Caption = #1040#1076#1088#1077#1089' '#1086#1073#1098#1077#1082#1090#1072
          DataBinding.FieldName = 'ADDR'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnEditValueChanged = clv1ADDRPropertiesEditValueChanged
          Width = 217
        end
      end
      object l1: TcxGridLevel
        GridView = v1
      end
    end
    object grd2: TcxGrid
      Left = 547
      Top = 10
      Width = 250
      Height = 200
      TabOrder = 1
      object v2: TcxGridDBTableView
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
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = src_ARCROOM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.DragDropText = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object clv2CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv2ARCOBJECT: TcxGridDBColumn
          DataBinding.FieldName = 'ARCOBJECT'
          Visible = False
        end
        object clv2NOTE: TcxGridDBColumn
          Caption = #1055#1086#1084#1077#1097#1077#1085#1080#1103
          DataBinding.FieldName = 'NOTE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnEditValueChanged = clv2NOTEPropertiesEditValueChanged
        end
      end
      object l2: TcxGridLevel
        GridView = v2
      end
    end
    object grd3: TcxGrid
      Left = 10
      Top = 306
      Width = 250
      Height = 200
      TabOrder = 2
      object v3: TcxGridDBTableView
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
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = src_ARCRACK
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.DragDropText = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object clv3CODE: TcxGridDBColumn
          DataBinding.FieldName = 'CODE'
          Visible = False
        end
        object clv3ARCROOM: TcxGridDBColumn
          DataBinding.FieldName = 'ARCROOM'
          Visible = False
        end
        object clv3NOMER: TcxGridDBColumn
          Caption = #8470' '#1089#1090#1077#1083#1072#1078#1072
          DataBinding.FieldName = 'NOMER'
          Width = 69
        end
        object clv3SHELFCOUNT: TcxGridDBColumn
          Caption = #1063#1080#1089#1083#1086' '#1087#1086#1083#1086#1082
          DataBinding.FieldName = 'SHELFCOUNT'
          Width = 79
        end
        object clv3CELLCOUNT: TcxGridDBColumn
          Caption = #1063#1080#1089#1083#1086' '#1103#1095#1077#1077#1082' '#1085#1072' '#1087#1086#1083#1082#1077
          DataBinding.FieldName = 'CELLCOUNT'
          Width = 72
        end
        object clv3PLACECOUNT: TcxGridDBColumn
          Caption = #1063#1080#1089#1083#1086' '#1087#1072#1087#1082#1086#1082' '#1074' '#1103#1095#1077#1081#1082#1077
          DataBinding.FieldName = 'PLACECOUNT'
          Width = 86
        end
      end
      object l3: TcxGridLevel
        GridView = v3
      end
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
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object grplc1Group2: TdxLayoutGroup
      Parent = grplc1Group1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object grplc1Group3: TdxLayoutGroup
      Parent = grplc1Group1
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = False
      SizeOptions.Width = 301
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object grplc1Group4: TdxLayoutGroup
      Parent = grp1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object split1: TdxLayoutSplitterItem
      Parent = grp1
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object split2: TdxLayoutSplitterItem
      Parent = grplc1Group1
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object itmlc1Item1: TdxLayoutItem
      Parent = grplc1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item11: TdxLayoutItem
      Parent = grplc1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmlc1Item12: TdxLayoutItem
      Parent = grplc1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd3
      ControlOptions.ShowBorder = False
      Index = 0
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
  object src_ARCRACK: TDataSource
    Left = 658
    Top = 64
  end
  object src_ARCROOM: TDataSource
    Left = 704
    Top = 64
  end
  object src_ARCOBJECT: TDataSource
    Left = 750
    Top = 64
  end
end
