unit DogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, dxSkinsdxBarPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, WinSpool, System.IOUtils,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxBar, cxPC,
  dxDockControl, dxDockPanel, cxDBLookupComboBox, dxLayoutcxEditAdapters,
  cxContainer, cxLabel, cxImageComboBox, dxSkinsdxDockControlPainter, cxListBox,
  dxPSCore, dxPSFileBasedXplorer, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, frxClass, frxDBSet, frxRich, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckComboBox, dxmdaset, frxBarcode,
  FileCtrl,
  cxButtonEdit, cxBarEditItem, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DocUnit, DbDataHelpers, DogDopUnit, OrderDocUnit,
  DogDocUnit;

type
  TDogForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    brm1: TdxBarManager;
    doc1: TdxBarDockControl;
    lItmlc1Item1: TdxLayoutItem;
    bar1: TdxBar;
    btnAdd: TdxBarButton;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item11: TdxLayoutItem;

    src_DOG: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1NOMDOG: TcxGridDBColumn;
    clv1DATADOG: TcxGridDBColumn;
    clv1DATAENDDOG: TcxGridDBColumn;
    clv1DATAPATH: TcxGridDBColumn;
    clv1FILENAME: TcxGridDBColumn;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    lItmlc1Item12: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    lItmlc1Item13: TdxLayoutItem;
    doc2: TdxBarDockControl;
    lItmlc1Item14: TdxLayoutItem;
    doc3: TdxBarDockControl;
    lItmlc1Item15: TdxLayoutItem;
    bar_dogdop: TdxBar;
    btn_ddAdd: TdxBarButton;
    barORDERDOC: TdxBar;
    btnodAdd: TdxBarButton;

    src_DOGDOP: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2DOG: TcxGridDBColumn;
    clv2DOPNUM: TcxGridDBColumn;
    clv2DOPDATE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2ORDERDOC: TcxGridDBColumn;

    src_ORDERDOC: TDataSource;
    clv3CODE: TcxGridDBColumn;
    clv3STATE: TcxGridDBColumn;
    clv3DOCUMDATE: TcxGridDBColumn;
    clv3OPERATOR: TcxGridDBColumn;
    clv3OPERTYPE: TcxGridDBColumn;
    clv3WORKER: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3DOGDOP: TcxGridDBColumn;
    clv3ARCOBJECT: TcxGridDBColumn;
    lbl_return: TcxLabel;
    lItmlc1Item16: TdxLayoutItem;
    btn_Edit: TdxBarButton;
    btnDelete: TdxBarButton;
    btn_ddEdit: TdxBarButton;
    btn_ddDelete: TdxBarButton;
    btnodEdit: TdxBarButton;
    btnodDelete: TdxBarButton;
    btnodProv: TdxBarButton;
    btnodPrint: TdxBarButton;
    btnddOrder: TdxBarButton;
    clv3NAME: TcxGridDBColumn;
    grpDocuments: TdxLayoutGroup;
    DockSite1: TdxDockSite;
    lItmlc1Item17: TdxLayoutItem;
    DockPanel1: TdxDockPanel;
    lDockSite1: TdxLayoutDockSite;
    lst1: TcxListBox;
    doc4: TdxBarDockControl;
    barDocuments: TdxBar;
    btnDocAdd: TdxBarButton;
    v5: TcxGridDBTableView;
    l5: TcxGridLevel;
    grd5: TcxGrid;

    src_DOGDOC: TDataSource;
    clv5CODE: TcxGridDBColumn;
    clv5DOPDOG: TcxGridDBColumn;
    clv5DOCTYPE: TcxGridDBColumn;
    clv5NOMER: TcxGridDBColumn;
    clv5DATA: TcxGridDBColumn;
    clv5PAGENUM: TcxGridDBColumn;
    clv5NOTE: TcxGridDBColumn;
    clv5ARCPLACE: TcxGridDBColumn;
    clv5STATE: TcxGridDBColumn;
    clv5COMPLECTDOC: TcxGridDBColumn;
    clv5STRCODE: TcxGridDBColumn;
    clv5NAME: TcxGridDBColumn;
    grplc1Group6: TdxLayoutGroup;
    grplc1Group7: TdxLayoutGroup;
    spllc1SplitterItem1: TdxLayoutSplitterItem;
    lItmlc1Item3: TdxLayoutItem;
    btnDocEdit: TdxBarButton;
    btnDocDelete: TdxBarButton;
    btnDocDistribite: TdxBarButton;
    btnDocDistributeAll: TdxBarButton;
    btnDocClear: TdxBarButton;
    btnDocCreateOrder: TdxBarButton;
    lblDogDoc: TcxLabel;
    lItmlc1Item18: TdxLayoutItem;
    grplc1Group8: TdxLayoutGroup;
    btn_ScanList: TdxBarButton;
    btn_Print: TcxButton;
    lItmlc1Item19: TdxLayoutItem;

    btn_ReestrDoc: TdxBarButton;
    dxBarButton1: TdxBarButton;
    Report1: TfrxReport;
    frDS1: TfrxDBDataset;
    txt_Port: TcxTextEdit;
    lItmlc1Item21: TdxLayoutItem;
    btn_genFolder: TcxBarEditItem;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2NOMDOG: TcxGridDBColumn;
    clv2DATADOG: TcxGridDBColumn;
    btnRefresh: TdxBarButton;
    btn_ComplDoc: TcxBarEditItem;
    lstSkan: TcxListBox;
    itmlc1Item2: TdxLayoutItem;
    clv5scans: TcxGridDBColumn;

    btnUpload: TdxBarButton;
    clv1DOGDATA: TcxGridDBColumn;
    btnDownLoadScan: TdxBarButton;
    btnDeleteScan: TdxBarButton;
    ds: TFDQuery;
    Q: TFDQuery;
    clv1KNAME: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv5DocTyeName: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure lbl_returnClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btn_ddAddClick(Sender: TObject);
    procedure btn_ddEditClick(Sender: TObject);
    procedure btn_ddDeleteClick(Sender: TObject);
    procedure btnddOrderClick(Sender: TObject);

    procedure v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure lblDogDocClick(Sender: TObject);
    procedure v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDocAddClick(Sender: TObject);
    procedure btnDocEditClick(Sender: TObject);
    procedure btnDocDeleteClick(Sender: TObject);
    procedure btnDocCreateOrderClick(Sender: TObject);
    procedure btn_ScanListClick(Sender: TObject);
    procedure v5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure v1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_ReestrDocClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure btnodPrintClick(Sender: TObject);

    procedure v3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure lst1DblClick(Sender: TObject);
    procedure btn_genFolderPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_genFolderPropertiesEditValueChanged(Sender: TObject);
    procedure btn_genFolderChange(Sender: TObject);


    procedure btnRefreshClick(Sender: TObject);
    procedure btn_ComplDocPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

    procedure btnUploadClick(Sender: TObject);

    procedure v1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure v5FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    fDog: TDog;
    fDogDop: TDogDop;
    fDogDoc: TDogDoc;
    fOrderDoc: TOrderDoc;
    _fixFolder: Variant; // закрепленная папка
    _complDoc: Variant;  //установленное наименование папки
    isFirst: Boolean;
    procedure PrepareDS;
    procedure ShowDOGDOP;
    //
    procedure MakeOrderDoc(dogdop: Integer);
    procedure SetOrderBtnAccess;
    // DOGDOC
    procedure OpenDogDoc;
    procedure SetDogDocAccessBtn;

    procedure PrintTermoLabel(Port, Text: string);
    procedure PrintOrderReport;

    procedure AddFolderToFiler;
    procedure SetGridFilter(value: Variant);

  public
    { Public declarations }
  end;

var
  DogForm: TDogForm;

implementation

uses cmDBUnit, UsersInfo, LoadingSplash,
  OrderDocPartial, DogDopEditFrm, TextPrinter;

{$R *.dfm}

procedure TDogForm.AddFolderToFiler;
var
  I: Integer;
  AItemList: TcxFilterCriteriaItemList;
  s: string;
begin
  for I := 0 to lst1.Count - 1 do
    if lst1.Selected[I] then
    begin
      btn_genFolder.EditValue := lst1.Items[I];
      SetGridFilter(btn_genFolder.EditValue);
//      s := 'Вы действительно хотите установить папку ' + lst1.Items[I] +
//        ' в строку фильтра?';
//      if Application.MessageBox(PChar(s), 'Внимание!', MB_YESNO + MB_ICONWARNING
//        + MB_DEFBUTTON2) = IDYES then
//      begin
//        btn_genFolder.EditValue := lst1.Items[I];
//        SetGridFilter(btn_genFolder.EditValue);
//      end;
    end;
end;

procedure TDogForm.btnAddClick(Sender: TObject);
begin
  fDog.ShowEditForm(Self, null);
end;

procedure TDogForm.btnddOrderClick(Sender: TObject);
begin
  MakeOrderDoc(v2.GetColumnByFieldName('CODE').EditValue);
end;

procedure TDogForm.btnDeleteClick(Sender: TObject);
begin
  fDog.DeleteDog(v1.GetColumnByFieldName('CODE').EditValue);
end;

procedure TDogForm.btnDocAddClick(Sender: TObject);
begin
  if VarIsType(_fixFolder,[varNull, varEmpty]) then
    raise Exception.Create('Не указан том');
    if VarIsType(_complDoc,[varNull, varEmpty]) then
    raise Exception.Create('Не указано название тома');

  if _fixFolder = null then _fixFolder:= -1;
  if _complDoc = null then _complDoc:= -1;

  fDogDoc.AddRec(Self,v2.FN('CODE').EditValue, null,_fixFolder, _complDoc);
  fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
  SetDogDocAccessBtn;
  v5.DataController.DataSet.Last;
end;

procedure TDogForm.btnDocCreateOrderClick(Sender: TObject);
begin
  MakeOrderDoc(v2.GetColumnByFieldName('CODE').EditValue);
end;

procedure TDogForm.btnDocDeleteClick(Sender: TObject);
begin
  fDogDoc.DeleteRec(v5.FN('CODE').EditValue);
  fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
  SetDogDocAccessBtn;
end;

procedure TDogForm.btnDocEditClick(Sender: TObject);
var
  AIndex: Integer;
begin
  AIndex := v5.Controller.FocusedRowIndex; // запоминаем позицию
  try
    fDogDoc.AddRec(Self,v2.FN('CODE').EditValue, v5.FN('CODE').EditValue,_fixFolder, _complDoc);
    fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
    SetDogDocAccessBtn;
  finally
    v5.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TDogForm.btnodPrintClick(Sender: TObject);
begin
  PrintOrderReport;
end;

procedure TDogForm.btnRefreshClick(Sender: TObject);
begin
  DataManager.DogDocumList.Refresh;
  SetDogDocAccessBtn;
end;

procedure TDogForm.btnUploadClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите пркрепить копию договора?',
    'Внимание', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    fDog.AttachScans(v1.GetColumnByFieldName('CODE').EditValue);
  end;
end;

procedure TDogForm.btn_ComplDocPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0: begin
         _complDoc:= fDogDoc.ShowComplectDoc(Self);
         if fDogDoc.SetComplectDocForArcPlace(_fixFolder, _complDoc) then begin
            btn_ComplDoc.EditValue:= DataManager.ExecuteScalar('select NAME from COMPLECTDOC where CODE = :code',[_complDoc]);
            DataManager.DogDocumList.Refresh;
         end;
       end;
  end;
end;

procedure TDogForm.btn_ddAddClick(Sender: TObject);
begin
  fDogDop.ShowEditForm(Self,v1.FN('CODE').EditValue, null);
end;

procedure TDogForm.btn_ddDeleteClick(Sender: TObject);
begin
  fDogDop.DeleteRec(v2.FN('CODE').EditValue);
end;

procedure TDogForm.btn_ddEditClick(Sender: TObject);
begin
  fDogDop.ShowEditForm(Self,v1.FN('CODE').EditValue, v2.FN('CODE').EditValue);
end;

procedure TDogForm.btn_EditClick(Sender: TObject);
begin
  fDog.ShowEditForm(Self,v1.FN('CODE').EditValue);
end;

procedure TDogForm.btn_genFolderChange(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to v5.ColumnCount - 1 do
    v5.Columns[I].Options.Filtering := btn_genFolder.EditValue = null;
  if btn_genFolder.EditValue = null then
     _fixFolder:= -1 else
     _fixFolder:= DataManager.ExecuteScalar('SELECT CODE FROM ARCPLACE WHERE STRCODE=:STRCODE',[btn_genFolder.EditValue]);
     //
      _complDoc:= DataManager.ExecuteScalar('select COMPLECTDOC from ARCPLACE where CODE = :code',[_fixFolder]);
      btn_ComplDoc.EditValue:= DataManager.ExecuteScalar('select NAME from COMPLECTDOC where CODE = :code',[_complDoc]);
end;

procedure TDogForm.btn_genFolderPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  case AButtonIndex of
    0:
      begin
          _complDoc:= fDogDoc.ShowComplectDoc(Self);
          _fixFolder := DataManager.ExecuteScalar('select ARCPLACE from RANDARCPLACE',[]);
          if _fixFolder = null then begin
            _fixFolder:= -1;
            raise Exception.Create('Свободные папки отсутствуют!');
          end;
          if _complDoc<>null then
          begin
            fDogDoc.SetComplectDocForArcPlace(_fixFolder, _complDoc);
            btn_genFolder.EditValue := DataManager.ExecuteScalar('SELECT STRCODE FROM ARCPLACE WHERE CODE=:CODE',[_fixFolder]);
            btn_ComplDoc.EditValue:= DataManager.ExecuteScalar('select NAME from COMPLECTDOC where CODE = :code',[_complDoc]);
            SetGridFilter(btn_genFolder.EditValue);
          end;
          grd5.SetFocus;
      end;
    1:
      begin
        btn_genFolder.EditValue := null;
        btn_ComplDoc.EditValue:= null;
        _fixFolder := -1;
        _complDoc := -1;
        v5.DataController.Filter.Root.Clear;
        grd5.SetFocus;
      end;
  end;
end;

procedure TDogForm.btn_genFolderPropertiesEditValueChanged(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to v5.ColumnCount - 1 do
    v5.Columns[I].Options.Filtering := btn_genFolder.EditValue = null;
end;

function ToriPrintDOS(APrnName: string; aMemo: TStringList): Boolean;
var
  I: Integer;
  TmpCursor: TCursor;
  fPrinterHandle: THandle;

  fDocInfo: PDocInfo1A;
  plen: dword;
begin

  GetMem(fDocInfo, SizeOf(TDocInfo1A));
  TmpCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    OpenPrinter(PChar(APrnName), fPrinterHandle, nil);
    try
      fDocInfo^.pDocName := PAnsiChar(APrnName);
      fDocInfo^.pOutPutFile := nil;
      fDocInfo^.pDatatype := nil;
      StartDocPrinter(fPrinterHandle, 1, fDocInfo);
      for I := 0 to aMemo.Count - 1 do
      begin
        WritePrinter(fPrinterHandle, PChar(aMemo.Strings[I]),
          Length(aMemo.Strings[I]), plen);
        WritePrinter(fPrinterHandle, PChar(#13#10), 2, plen);
      end;
      WritePrinter(fPrinterHandle, PChar(#13#10), 2, plen);
      EndDocPrinter(fPrinterHandle);
    finally
      ClosePrinter(fPrinterHandle);
    end;
  finally
    FreeMem(fDocInfo);
    Screen.Cursor := TmpCursor;
  end;

end;

procedure TDogForm.btn_PrintClick(Sender: TObject);
var
  I: Integer;
begin
  for I := lst1.Count - 1 downto 0 do
  begin
    PrintTermoLabel(txt_Port.Text, lst1.Items[I]);
  end;
end;

procedure TDogForm.btn_ReestrDocClick(Sender: TObject);
begin
  fDogDoc.Report.PrintReestrDoc(v2.FN('CODE').EditValue);
end;

procedure TDogForm.btn_ScanListClick(Sender: TObject);
begin
  fDogDoc.ScanList.OpenScanForm(Self, v5.FN('CODE').EditValue);
end;


procedure TDogForm.dxBarButton1Click(Sender: TObject);
begin
  fDogDoc.Report.PrintReestrDoc(v2.FN('CODE').EditValue);
end;

procedure TDogForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fDog) then FreeAndNil(fDog);
  if Assigned(fDogDop) then FreeAndNil(fDogDop);
  if Assigned(fOrderDoc) then FreeAndNil(fOrderDoc);
  if Assigned(fDogDoc) then FreeAndNil(fDogDoc);
  Action := caFree;
end;

procedure TDogForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  //
  fDog:= TDog.Create;
  fDogDop:= TDogDop.Create;
  fDogDoc:= TDogDoc.Create;
  fOrderDoc:= TOrderDoc.Create;
  //
  grplc1Group1.ItemIndex := 0;
  grplc1Group1.TabbedOptions.HideTabs := true;
  PrepareDS;
end;

procedure TDogForm.FormShow(Sender: TObject);
begin
  grd1.SetFocus;
end;

procedure TDogForm.lblDogDocClick(Sender: TObject);
begin
  grplc1Group1.ItemIndex := 1;
end;

procedure TDogForm.lbl_returnClick(Sender: TObject);
begin
  grplc1Group1.ItemIndex := 0;
end;

procedure TDogForm.lst1DblClick(Sender: TObject);
begin
  AddFolderToFiler;
end;

procedure TDogForm.MakeOrderDoc(dogdop: Integer);
var
  note, kontr: Variant;
begin
  // автосоздание вн. перемещения
  kontr := v1.FN('KNAME').EditValue;
  note := '[авто]' + kontr + ', договор №' + VarToStr(v1.FN('NOMDOG').EditValue)
    + ', доп. согл. №' + VarToStr(v2.FN('DOPNUM').EditValue);
  //
  fOrderDoc.CreateAutoDoc(dogdop, note);
end;

procedure TDogForm.OpenDogDoc;
begin
  fDogDoc.LoadDataByDogDop(v2.FN('CODE').EditValue);
  //
  fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
  //
        btn_genFolder.EditValue := null;
        _fixFolder := -1;
        _complDoc := -1;
        v5.DataController.Filter.Root.Clear;
  //
  grplc1Group1.ItemIndex := 2;
  SetDogDocAccessBtn;
  grd5.SetFocus;
  DockPanel1.Caption := 'Список документов к допсоглашению №' +
    VarToStr(v2.FN('DOPNUM').EditValue) + ' от ' +
    VarToStr(v2.FN('DOPDATE').EditValue);
end;

procedure TDogForm.PrepareDS;
begin
  src_Dog.DataSet:= DataManager.DogList;
  src_DOGDOP.DataSet:= DataManager.DogDopList;
  v5.DataController.DataSource.DataSet:= DataManager.DogDocumList;
  with DataManager.Dog_OrderDoc do begin
    Close;
    MacroByName('Where').AsRaw:= 'WHERE o.DOGDOP = :CODE';
    MasterSource:=  v2.DataController.DataSource;
    Open;
  end;
  v3.DataController.DataSource.DataSet:= DataManager.Dog_OrderDoc;
  //
  Report1.LoadFromFile(IncludeTrailingBackslash
    (ExtractFilePath(Application.ExeName)) + 'rep\orderdoc.fr3');
end;

procedure TDogForm.PrintOrderReport;
begin
  with ds do
  begin
    Close;
    ParamByName('DOCCODE').Value := v3.FN('CODE').EditValue;
    Open;
  end;
  with Report1 do
  begin
    // set variables
    Variables['varDocCode'] := v3.FN('CODE').EditValue;
    case v3.FN('STATE').EditValue of
      0:
        Variables['varState'] := #39'не проведен'#39;
      1:
        Variables['varState'] := #39'проведен'#39;
    end;
    Variables['varExecutor'] := #39 + GetKontrName(1) + #39;
    Variables['varWorker'] := #39 + GetWorkerName
      (v3.FN('OPERATOR').EditValue) + #39;
    Variables['varWorkerGet'] := #39 +
      GetWorkerName(v3.FN('WORKER').EditValue) + #39;
    case v3.FN('OPERTYPE').EditValue of
      0:
        Variables['varOperType'] := #39'передача документов в архив'#39;
      1:
        Variables['varOperType'] := #39'выдача документов из архива'#39;
      2:
        Variables['varOperType'] := #39'возврат документов заказчику'#39;
    end;
    Variables['varObject'] := #39 + v3.FN('NAME').EditValue + #39;
    Variables['varNote'] := #39 + v3.FN('NOTE').EditValue + #39;
    Variables['varNumDoc'] := v3.FN('CODE').EditValue;
    Variables['varDateDoc'] := #39+VarToStr(v3.FN('DOCUMDATE').EditValue)+#39;
    ShowReport;
  end;
end;


function FullStr(I: Integer; NumSize: Integer = 4): string;
begin
  Result := IntToStr(I);
  while Length(Result) < NumSize do
    Result := '0' + Result;
end;

procedure TDogForm.PrintTermoLabel(Port, Text: string);
const
  BCTypes = 'ABCDEFGHIJKLMNOpQRSTuvz';
var
  s: string;
begin
  // формируем этикетку
  s := #2'm'#13 + // метрическая система
    #2'M' + FullStr(30 * 15) + #13 + // размер этикетки
    #2'L'#13 + // режим дизайна эткеток
    'D11'#13 + // размер этикетки
  // параметры штрих кода
    '1' + // угол поворота 0 градусов
    BCTypes[5] + // Code39
    '1' + // ширина штрих-кода (1,2,3)
    '1' + // ширина штрих-кода
    FullStr(10 * 10, 3) + // высота штрих кода
    FullStr(2 * 10) + // позиция по вертикали
    FullStr(2 * 10) + // позиция по горизонтали
    Text + #13; // штрих код
  // печать наименования товара
  // S:=S+AddText(0);
  // S:=S+AddText(1);
  s := s + 'X'#13; // печать штрих кода
  // команда числа копий
  s := s + #2'E' + FullStr(1) + #13 + #2'G'#13;
  WriteTextToPrinter(Port, s); // печать этикеток
  Sleep(500);
end;

procedure TDogForm.SetDogDocAccessBtn;
var
  code: Variant;
begin
  code:= v5.GetColumnByFieldName('CODE').EditValue;
  if code = Unassigned then
     code := null;
  btnDocCreateOrder.Enabled := not v5.DataController.DataSet.IsEmpty;
end;

procedure TDogForm.SetGridFilter(value: Variant);
var
  AItemList: TcxFilterCriteriaItemList;
begin
  v5.DataController.Filter.BeginUpdate;
  try
    v5.DataController.Filter.Root.Clear;
    v5.DataController.Filter.Root.AddItem(clv5STRCODE, foEqual, value, value);
  finally
    v5.DataController.Filter.EndUpdate;
    v5.DataController.Filter.Active := true;
  end;
end;

procedure TDogForm.SetOrderBtnAccess;
begin
  btnodEdit.Enabled := (v3.FN('STATE').EditValue <> 1) and
    (not VarIsNull(v3.FN('CODE').EditValue));
  btnodDelete.Enabled := btnodEdit.Enabled;
  btnodProv.Enabled := not VarIsNull(v3.FN('CODE').EditValue);
  // btnodPrint.Enabled:= not VarIsNull(v3.FN('CODE').EditValue);
end;

procedure TDogForm.ShowDOGDOP;
begin
  v1.BeginUpdate(lsimImmediate);
  try
    fDogDop.LoadByDogCode(v1.FN('CODE').EditValue);
    currKontr:= v1.FN('KONTRAGENT').EditValue;
    grplc1Group1.ItemIndex := 1;
    grd2.SetFocus;
  finally
    v1.EndUpdate;
  end;
end;

procedure TDogForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowDOGDOP;
end;

procedure TDogForm.v1FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  //btnDownLoadScan.Enabled := v1.GetColumnByFieldName('DOGDATA').EditValue = 1;
  //btnDeleteScan.Enabled:= v1.GetColumnByFieldName('DOGDATA').EditValue = 1;
end;

procedure TDogForm.v1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (Shift <> [ssCtrl]) then
    ShowDOGDOP;
end;

procedure TDogForm.v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (Shift <> [ssCtrl]) then
    fDog.ShowEditForm(Self, null);
  if (Key = VK_RETURN) and (Shift = [ssCtrl]) then
    fDog.ShowEditForm(Self, v1.FN('CODE').EditValue);
end;

procedure TDogForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDogDoc;
end;

procedure TDogForm.v2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (Shift <> [ssCtrl]) then
    OpenDogDoc;
end;

procedure TDogForm.v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (Shift <> [ssCtrl]) then
    fDogDop.ShowEditForm(Self,v1.FN('CODE').EditValue, null);
  if (Key = VK_RETURN) and (Shift = [ssCtrl]) then
    fDogDop.ShowEditForm(Self,v1.FN('CODE').EditValue, v2.FN('CODE').EditValue);
  if (Key = VK_DELETE) and (Shift = [ssCtrl]) then
    fDogDop.DeleteRec(v2.FN('CODE').EditValue);
  if Key = VK_ESCAPE then
    grplc1Group1.ItemIndex := 0;
end;

procedure TDogForm.v3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  PrintOrderReport;
end;

procedure TDogForm.v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  SetOrderBtnAccess;
end;

procedure TDogForm.v4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  case Key of
//    VK_RETURN:
//      if v4.DataController.EditState <> [] then
//        v4.DataController.Post;
//  end;
end;


procedure TDogForm.v5FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  fDogDoc.LoadScanList(lstSkan.Items, v5.FN('CODE').EditValue);
end;

procedure TDogForm.v5KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  {if _fixFolder = null then
     _fixFolder:= -1;
  if (Key = VK_INSERT) and (Shift <> [ssCtrl]) then
    DogDoc.AddRec(Self, ds_DOGDOC, v2.FN('CODE').EditValue, _fixFolder, _complDoc);
  if (Key = VK_RETURN) and (Shift = [ssCtrl]) then
    DogDoc.EditRec(Self, ds_DOGDOC);
  if (Key = VK_DELETE) and (Shift = [ssCtrl]) then
  begin
    DogDoc.DeleteRec(ds_DOGDOC);
    DogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
  end;
  if (Key = VK_ESCAPE) and (Shift <> [ssCtrl]) then
    grplc1Group1.ItemIndex := 1;}
end;

initialization

RegisterClass(TDogForm);

end.
