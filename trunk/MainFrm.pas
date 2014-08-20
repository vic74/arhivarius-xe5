unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGraphics,  cxGrid, HtmlHelpViewer, cxGridCustomView,
  cxGridExportLink, cxExport, ShellApi,DB,
  Dialogs, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, dxSkinsForm, dxBar, dxStatusBar, dxRibbonStatusBar,
  cxClasses, dxRibbon, AppUtils, cxPropertiesStore, dxSkinBlue,
  cxLocalization, dxLayoutLookAndFeels,
  cxLabel, cxBarEditItem, ExtCtrls,
  dxRibbonForm,
  dxRibbonSkins, dxBarApplicationMenu,
  cxGridCustomPopupMenu, cxGridPopupMenu,
  dxSkinOffice2013White, UsersInfo, dxRibbonCustomizationForm, dxmdaset,
  cxContainer, cxEdit, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView;

type

 TcxMyGridTableViewExport = class(TcxGridTableViewExport)
  protected
    procedure AddFooterMessage(var ATop, ALeft: Integer; AText: string); virtual;
    procedure AddHeaderMessage(var ATop, ALeft: Integer; AText: string); virtual;
    function GetCopyrightMessage: string; virtual;
    function GetHeaderMessage: string; virtual;
    procedure CreateFooter(var ATop, ALeft: Integer); override;
    procedure CreateHeader(var ATop, ALeft: Integer); override;
  end;
                    //Tdxcustomribbonform
  TMainForm = class(TdxRibbonForm)
    stb1: TdxRibbonStatusBar;
    dxskncntrlr1: TdxSkinController;
    prop1: TcxPropertiesStore;
    LSkin1: TdxLayoutLookAndFeelList;
    LCxSkin1: TdxLayoutCxLookAndFeel;
    LfC1: TcxLookAndFeelController;
    Ribbon: TdxRibbon;
    tmr: TTimer;
    ppm1: TcxGridPopupMenu;
    dlgSave1: TSaveDialog;
    bm1: TdxBarManager;
    bar_stbr: TdxBar;
    bar_mm: TdxBar;
    br_tool: TdxBar;
    btn_WorkerForm: TdxBarButton;
    btn_filtr: TdxBarButton;
    btn_grp: TdxBarButton;
    SubItem1: TdxBarSubItem;
    btn_RightsForm: TdxBarButton;
    btn_excel_bar: TdxBarButton;
    btn_pop: TdxBarButton;
    BarSeparatorsep3: TdxBarSeparator;
    grp1: TdxBarGroup;
    sbiArh: TdxBarSubItem;
    btn_DogListForm: TdxBarButton;
    btn_OrdersDocForm: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btn_KontragentForm: TdxBarButton;
    itm1: TdxBarSubItem;
    btn_ArcObjectForm: TdxBarButton;
    itm_ep: TdxBarSubItem;
    btn_ArhRepForm: TdxBarButton;
    btn_RepkontrForm: TdxBarButton;
    btn_IssueDocForm: TdxBarButton;
    itmPayments: TdxBarSubItem;
    btn_PaymentsForm: TdxBarButton;
    btn_AccountForm: TdxBarButton;
    btn_ServisesForm: TdxBarButton;
    btn_FundsForm: TdxBarButton;
    btn_OborotForm: TdxBarButton;
    btn_ReviseForm: TdxBarButton;
    btn_PostForm: TdxBarButton;
    rView1: TdxRibbonBackstageView;
    vTab1: TdxRibbonBackstageViewTabSheet;
    cxlbl1: TcxLabel;
    GalleryControl1: TdxRibbonBackstageViewGalleryControl;
    grp3: TdxRibbonBackstageViewGalleryGroup;
    item_DogListForm: TdxRibbonBackstageViewGalleryItem;
    item_OrdersDocForm: TdxRibbonBackstageViewGalleryItem;
    vTab2: TdxRibbonBackstageViewTabSheet;
    cxlbl2: TcxLabel;
    GalleryControl2: TdxRibbonBackstageViewGalleryControl;
    grp4: TdxRibbonBackstageViewGalleryGroup;
    item_KontragentForm: TdxRibbonBackstageViewGalleryItem;
    item_WorkerForm: TdxRibbonBackstageViewGalleryItem;
    item_ArcObjectListForm: TdxRibbonBackstageViewGalleryItem;
    vTab3: TdxRibbonBackstageViewTabSheet;
    GalleryControl3: TdxRibbonBackstageViewGalleryControl;
    cxlbl3: TcxLabel;
    vTab4: TdxRibbonBackstageViewTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure btn_filtrClick(Sender: TObject);
    procedure btn_grpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bm1ClickItem(Sender: TdxBarManager; ClickedItem: TdxBarItem);
    procedure ShowDEZForm(Sender: TdxBarButton);
    procedure tmrTimer(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure DEZClick(Sender: TObject);
    procedure btn_popClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GalleryControl1ItemClick(Sender: TObject;
      AItem: TdxRibbonBackstageViewGalleryItem);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FActivated: Boolean;
    procedure CreateSkin;
    procedure SetGrants;
    procedure OnHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    procedure EventsButton;
    procedure ShowGroup(Sender: TObject);
    procedure ShowFilter(Sender: TObject);
    procedure GlobalExpExcel(Sender: TObject);
    procedure ShowPOActSmeta;
    procedure ShowSmetaABSForm;
    procedure ShowHelp;
    procedure SetUnSum(Sender: TObject);
    procedure ConstRight;
    procedure ShowPopup(Sender: TObject);
    procedure ShowDisp(Sender: TObject);
  public
  procedure GrdEnter(Sender: TObject);
    { Public declarations }
  end;

var
  MainForm: TMainForm;
const
  HH_HELP_CONTEXT = $F;
  MYHELP_FILE = '\Help\TZ.chm' + Chr(0);
var
  RetCode: LongInt;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure ExportGridToFile(AFileName: string; AExportType: Integer;
  AGrid: TcxGrid; AExpand, ASaveAll, AUseNativeFormat: Boolean;
  const ASeparator, ABeginString, AEndString: string; const AFileExt: string);
var
  AView: TcxCustomGridView;
  AGridExport: TcxGridCustomExport;
begin
  if AGrid <> nil then
  begin
    if AFileExt <> '' then
      AFileName := ChangeFileExt(AFileName, '.' + AFileExt);
    AView := AGrid.ActiveLevel.GridView;
    AGridExport := TcxMyGridTableViewExport.Create(AFileName, AExportType, AView, AGrid, nil);
    AGridExport.SaveAll := ASaveAll;
    AGridExport.Expand := AExpand;
    AGridExport.UseNativeFormat := AUseNativeFormat;
    AGridExport.AddSeparators([ASeparator, ABeginString, AEndString]);
    AGrid.BeginUpdate;
    try
      try
        AGridExport.DoExport;
      finally
        AGridExport.Free;
      end;
    finally
      AGrid.EndUpdate;
    end;
  end;
end;

procedure TMainForm.bm1ClickItem(Sender: TdxBarManager;
  ClickedItem: TdxBarItem);
var
  i :Integer;
begin
 if FindChild(ClickedItem.Description)<>nil then
 begin
     for I := 0 to br_tool.ItemLinks.AvailableItemCount - 1 do
     begin
       (br_tool.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=False;
     end;
   FindChild(ClickedItem.Description).BringToFront;
  (ClickedItem as TdxBarButton).Lowered:=True;
 end;
end;

procedure TMainForm.OnHotKey(var Msg: TWMHotKey);
var
  Id_context :Integer;
begin
   inherited;
   if (Msg.HotKey=1)  then
   begin
     if Application.MainForm.ActiveMDIChild=nil then Exit;
     Id_context:=Application.MainForm.ActiveMDIChild.HelpContext;
     if Id_context<>0 then Application.HelpContext(Id_context);
   end;
end;

procedure TMainForm.btn_filtrClick(Sender: TObject);
begin
  //ShowFilter();
end;

procedure TMainForm.btn_grpClick(Sender: TObject);
begin
  //ShowGroup();
end;

procedure TMainForm.btn_helpClick(Sender: TObject);
var
  Id_context :Integer;
begin
  Id_context:=Application.MainForm.ActiveMDIChild.HelpContext;
  if Id_context<>0 then Application.HelpContext(Id_context);
end;

procedure TMainForm.btn_popClick(Sender: TObject);
begin
  //
end;

procedure TMainForm.ShowGroup(Sender: TObject);
var
  Form :TForm;
  i :Integer;
  grd : TcxGrid;
begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;
  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then
      TcxGridDBTableView(grd.FocusedView).OptionsView.GroupByBox:=
      not TcxGridDBTableView(grd.FocusedView).OptionsView.GroupByBox;
    end;
  end;
end;

procedure TMainForm.ShowHelp;
var
  Id_context :Integer;
begin
  if Application.MainForm.ActiveMDIChild=nil then Exit;
  Id_context:=Application.MainForm.ActiveMDIChild.HelpContext;
  if Id_context<>0 then
    Application.HelpContext(Id_context)
  else
    ShowMessage('Для данной формы справка отсутствует.');
end;

procedure TMainForm.GalleryControl1ItemClick(Sender: TObject;
  AItem: TdxRibbonBackstageViewGalleryItem);
var
  AName: string;
  AHelpIndex: integer;
begin
   try
     AName:=GetWord(AItem.Name,2,'_');
     AHelpIndex:=0;
     CreateForm(AName, AHelpIndex);
     rView1.Hide;
   finally

   end;
end;

procedure TMainForm.GlobalExpExcel(Sender: TObject);
var
  Form :TForm;
  i :Integer;
  grd : TcxGrid;
  FName: string;
begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;
  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then
      if dlgSave1.Execute then begin
          {ExportGridToExcel(dlg2.FileName, grd, True, True, NativeFormat, 'xls');
          ShellExecute(Handle,'open',PChar(dlg2.FileName),nil,nil,0); }
          ExportGridToFile(dlgSave1.FileName, cxExportToExcel, grd, true, True, false,
                           '', '', '', 'xls');
          FName:= ChangeFileExt(dlgSave1.FileName, '.xls');
          if Application.MessageBox('Данные экспортированы.      ' + #13#10 +
            '        Открыть файл?      ', 'Внимание', MB_YESNO +
            MB_ICONQUESTION + MB_TOPMOST) = IDYES then
          begin
            ShellExecute(0, PChar('open'), PChar(FName), nil, nil, SW_SHOWMAXIMIZED);
          end;
      end;
    end;
  end;
end;

procedure TMainForm.GrdEnter(Sender: TObject);
begin
  ppm1.Grid:=Sender as TcxGrid;
    inherited;
end;

procedure TMainForm.tmrTimer(Sender: TObject);
begin
  //cmDB.DB.Execute('select CODE FROM ROLES Where CODE=1');
end;

procedure TMainForm.ShowFilter(Sender: TObject);
var
  Form :TForm;
  i :Integer;
  grd : TcxGrid;
begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;

  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then
      TcxGridDBTableView(grd.FocusedView).FilterRow.Visible:=
      not TcxGridDBTableView(grd.FocusedView).FilterRow.Visible;
    end;
  end;
end;

procedure TMainForm.ShowDEZForm(Sender: TdxBarButton);
var
  AName: string;
  AHelpIndex: integer;
begin
   //SplashVisibility(True,'Подождите. Идет загрузка формы...');
   try
     AName:=GetWord(Sender.Name,2,'_');
     AHelpIndex:=Sender.HelpContext;
     CreateForm(AName, AHelpIndex);
   finally
     //SplashVisibility(false);
   end;
end;

procedure TMainForm.ShowDisp(Sender: TObject);
begin

end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  {if not FActivated then
  begin
    //show the Application Menu - must be after the form has activated
    Ribbon.ApplicationMenuPopup;
    FActivated := False;
  end;}
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UnregisterHotKey(Handle, 1);
  if Assigned(LCxSkin) then
  LCxSkin.Free;
  //if Assigned(SFD) then
  //   FreeAndNil(SFD);
  if Assigned(LSkin) then
  LSkin.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  bar_mm.Visible:= False;
  vTab1.Active:= True;
  AppPath:= ExtractFilePath(Application.ExeName);
  LoadForm(prop1,Self.Name);
  CreateSkin;

  //права доступа
  SetGrants;
  stb1.Panels[2].Text:=UserInfo.FIO;
  //stb1.Panels[1].Text:= GetFileVersionEx(Application.ExeName);
  stb1.Panels[0].Text:=BaseNameStr;
  EventsButton;
  //ConstRight;
  if mform then
     br_tool.Visible:=true else
     br_tool.Visible:=false;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  //SplashVisibility(false);
end;

procedure TMainForm.EventsButton;
var
  i :Integer;
begin
  for I := 0 to MainForm.ComponentCount - 1 do
  begin
    if Components[i].ClassType=TdxBarButton then
    begin
      if (Components[i] as TdxBarButton).Name='btn_filtr' then
          (Components[i] as TdxBarButton).OnClick:= ShowFilter else
      if (Components[i] as TdxBarButton).Name='btn_grp' then
          (Components[i] as TdxBarButton).OnClick:= ShowGroup else
      if (Components[i] as TdxBarButton).Name='btn_excel_bar' then
          (Components[i] as TdxBarButton).OnClick:= GlobalExpExcel else
      if (Components[i] as TdxBarButton).Name='btn_pop' then
          (Components[i] as TdxBarButton).OnClick:= ShowPopup else
     // if (Components[i] as TdxBarButton).Name='btn_RequestForm' then
     //     (Components[i] as TdxBarButton).OnClick:= ShowDisp else
      (Components[i] as TdxBarButton).OnClick:= DEZClick;
    end;
  end;
end;

procedure TMainForm.DEZClick(Sender: TObject);
begin
  if (Sender is TdxBarButton) then begin
    if (Sender as TdxBarButton).Name='btn_POActSmetaForm' then
      ShowPOActSmeta
    else if (Sender as TdxBarButton).Name='btn_SmetaABSForm' then
      ShowSmetaABSForm
    else if (Sender as TdxBarButton).Name='btn_help' then
      ShowHelp
    else
      ShowDEZForm(Sender as TdxBarButton);
  end;
end;

procedure TMainForm.ConstRight;
begin

end;

procedure TMainForm.ShowSmetaABSForm;
begin

end;

procedure TMainForm.ShowPOActSmeta;
begin

end;

procedure TMainForm.ShowPopup(Sender: TObject);
var
  Form :TForm;
  i, n :Integer;
  grd : TcxGrid;

begin
  Form:=Application.MainForm.ActiveMDIChild;
  if Form=nil then Exit;
  for I := 0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[i].ClassType=TcxGrid) then
    begin
      grd:=(Form.Components[i] as TcxGrid);
      if grd.IsFocused then begin
        (grd.FocusedView as TcxGridDBTableView).OptionsView.Footer:=
        not (grd.FocusedView as TcxGridDBTableView).OptionsView.Footer;
      end;
    end;
  end;
end;

procedure TMainForm.CreateSkin;
begin

end;

function IsGrant(code: integer) :Boolean;
begin
  Result:= True;
end;

procedure TMainForm.SetGrants;
var
  i: integer;

procedure ClosedGroup;
var
  i,j: integer;
begin

  for i:=0 to ComponentCount-1 do
    if (Components[i].ClassType=TdxBarSubItem) and
      (TdxBarSubItem(Components[i]).Visible=ivAlways) then
    begin
      TdxBarSubItem(Components[i]).Visible:=ivNever;
      //if TdxBarSubItem(Components[i]).Name='Sub_osm' then
      //  ShowMessage('Tyt');
      for j:=0 to TdxBarSubItem(Components[i]).ItemLinks.Count-1 do
        if (TdxBarSubItem(Components[i]).ItemLinks[j].Item.Visible=ivAlways) and
          not (TdxBarSubItem(Components[i]).ItemLinks[j].Item is TdxBarSeparator) then
        begin
          TdxBarSubItem(Components[i]).Visible:=ivAlways;
          Break;
        end;
    end;
end;

begin

  //первый этап - проверка прав доступа
  for i:=0 to ComponentCount-1 do
    if (Components[i] is TdxBarItem) and
      (TdxBarItem(Components[i]).Tag<>0) then
        if not IsGrant(TdxBarItem(Components[i]).Tag) then
          TdxBarItem(Components[i]).Visible:=ivNever;
  //второй этап скрытие не используемых пунктов меню
  for i:=0 to 2 do ClosedGroup;
end;

procedure TMainForm.SetUnSum(Sender: TObject);
begin

end;

{ TcxMyGridTableViewExport }

procedure TcxMyGridTableViewExport.AddFooterMessage(var ATop, ALeft: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount: Integer;
begin
  inherited;
  if CanShowMultiSummaries(True) then
    ARowCount := GetFooterLineCount(DataController.Summary.FooterSummaryItems)
  else
    ARowCount := RecordRowCount;
  R.Bottom := ATop + ARowCount * (DefaultRowHeight + cxGridFooterCellIndent);
  R := Rect(ALeft, R.Bottom, RecordWidth, R.Bottom + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taRightJustify, cxBordersAll, FooterCellBorderColor);
end;

procedure TcxMyGridTableViewExport.AddHeaderMessage(var ATop, ALeft: Integer;
  AText: string);
var
  R: TRect;
  AParams: TcxViewParams;
  ARowCount: Integer;
begin
  inherited;
  R.Top := ((DefaultRowHeight + cxGridFooterCellIndent))*-1;
  R := Rect(ALeft, R.Top, RecordWidth, R.Top + DefaultRowHeight);
  Styles.GetFooterParams(nil, nil, -1, nil, AParams);
  AddVisualItemEx(R, AText,  AParams, taCenter, cxBordersAll, FooterCellBorderColor);
end;

procedure TcxMyGridTableViewExport.CreateFooter(var ATop, ALeft: Integer);
begin
  inherited;
  AddFooterMessage(ATop, ALeft, GetCopyrightMessage);

end;

procedure TcxMyGridTableViewExport.CreateHeader(var ATop, ALeft: Integer);
begin
  inherited;
  AddHeaderMessage(ATop, ALeft, GetHeaderMessage);
end;

function TcxMyGridTableViewExport.GetCopyrightMessage: string;
begin
  Result := 'Сохранен '+DateTimeToStr(Date)+' '+TimeToStr(Time);
end;

function TcxMyGridTableViewExport.GetHeaderMessage: string;
begin
  Result:= Application.MainForm.ActiveMDIChild.Caption;
end;

initialization
  //ширина заголовка в Backstage меню
  dxRibbonBackstageViewMinMenuWidth := 152;

end.

