unit DogListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxClasses, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxCheckBox, cxImageComboBox, cxContainer, cxPC, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxTextEdit, Vcl.StdCtrls,
  cxButtons, cxListBox, dxDockPanel, dxDockControl, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxBar, dxSkinsdxBarPainter, cxButtonEdit, cxBarEditItem,
  DocUnit, DogDocUnit, DogDopUnit, DbDataHelpers, OrderDocUnit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet;

type
  TDogListForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    lc1: TdxLayoutControl;
    doc1: TdxBarDockControl;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1KNAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1NOMDOG: TcxGridDBColumn;
    clv1DATADOG: TcxGridDBColumn;
    clv1DATAENDDOG: TcxGridDBColumn;
    clv1DATAPATH: TcxGridDBColumn;
    clv1FILENAME: TcxGridDBColumn;
    clv1DOGDATA: TcxGridDBColumn;
    l1: TcxGridLevel;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    clv2CODE: TcxGridDBColumn;
    clv2DOG: TcxGridDBColumn;
    clv2DOPNUM: TcxGridDBColumn;
    clv2DOPDATE: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv2ORDERDOC: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2KNAME: TcxGridDBColumn;
    clv2NOMDOG: TcxGridDBColumn;
    clv2DATADOG: TcxGridDBColumn;
    l2: TcxGridLevel;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv3CODE: TcxGridDBColumn;
    clv3STATE: TcxGridDBColumn;
    clv3DOCUMDATE: TcxGridDBColumn;
    clv3OPERATOR: TcxGridDBColumn;
    clv3OPERTYPE: TcxGridDBColumn;
    clv3WORKER: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3ARCOBJECT: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3DOGDOP: TcxGridDBColumn;
    l3: TcxGridLevel;
    doc2: TdxBarDockControl;
    doc3: TdxBarDockControl;
    cxlbl_return: TcxLabel;
    DockSite1: TdxDockSite;
    lDockSite1: TdxLayoutDockSite;
    DockPanel1: TdxDockPanel;
    doc4: TdxBarDockControl;
    grd5: TcxGrid;
    v5: TcxGridDBTableView;
    clv5CODE: TcxGridDBColumn;
    clv5DOPDOG: TcxGridDBColumn;
    clv5NOMER: TcxGridDBColumn;
    clv5DocTyeName: TcxGridDBColumn;
    clv5DOCTYPE: TcxGridDBColumn;
    clv5DATA: TcxGridDBColumn;
    clv5PAGENUM: TcxGridDBColumn;
    clv5ARCPLACE: TcxGridDBColumn;
    clv5STRCODE: TcxGridDBColumn;
    clv5STATE: TcxGridDBColumn;
    clv5COMPLECTDOC: TcxGridDBColumn;
    clv5NAME: TcxGridDBColumn;
    clv5NOTE: TcxGridDBColumn;
    clv5scans: TcxGridDBColumn;
    l5: TcxGridLevel;
    lst1: TcxListBox;
    lblDogDoc: TcxLabel;
    btn_Print: TcxButton;
    txt_Port: TcxTextEdit;
    lstSkan: TcxListBox;
    grp1: TdxLayoutGroup;
    Itmlc1Item1: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    Itmlc1Item11: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    spl1: TdxLayoutSplitterItem;
    Itmlc1Item12: TdxLayoutItem;
    Itmlc1Item13: TdxLayoutItem;
    Itmlc1Item14: TdxLayoutItem;
    Itmlc1Item15: TdxLayoutItem;
    Itmlc1Item16: TdxLayoutItem;
    Documents: TdxLayoutGroup;
    Itmlc1Item17: TdxLayoutItem;
    grplc1Group6: TdxLayoutGroup;
    grplc1Group7: TdxLayoutGroup;
    spllc1SplitterItem1: TdxLayoutSplitterItem;
    Itmlc1Item3: TdxLayoutItem;
    Itmlc1Item18: TdxLayoutItem;
    grplc1Group8: TdxLayoutGroup;
    Itmlc1Item19: TdxLayoutItem;
    Itmlc1Item21: TdxLayoutItem;
    itmlc1Item2: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    bar_dogdop: TdxBar;
    barORDERDOC: TdxBar;
    barDocuments: TdxBar;
    btnAdd: TdxBarButton;
    btn_ddAdd: TdxBarButton;
    btnodAdd: TdxBarButton;
    btn_Edit: TdxBarButton;
    btnDelete: TdxBarButton;
    btn_ddEdit: TdxBarButton;
    btn_ddDelete: TdxBarButton;
    btnodEdit: TdxBarButton;
    btnodDelete: TdxBarButton;
    btnodProv: TdxBarButton;
    btnodPrint: TdxBarButton;
    btnddOrder: TdxBarButton;
    btnDocAdd: TdxBarButton;
    btnDocEdit: TdxBarButton;
    btnDocDelete: TdxBarButton;
    btnDocDistribite: TdxBarButton;
    btnDocDistributeAll: TdxBarButton;
    btnDocClear: TdxBarButton;
    btnDocCreateOrder: TdxBarButton;
    btn_ScanList: TdxBarButton;
    btn_ReestrDoc: TdxBarButton;
    dxBarButton1: TdxBarButton;
    btn_genFolder: TcxBarEditItem;
    btnRefresh: TdxBarButton;
    btn_ComplDoc: TcxBarEditItem;
    btnUpload: TdxBarButton;
    btnDownLoadScan: TdxBarButton;
    btnDeleteScan: TdxBarButton;
    src_DOGDOC: TDataSource;
    src_DOG: TDataSource;
    src_DOGDOP: TDataSource;
    src_ORDERDOC: TDataSource;
    Report1: TfrxReport;
    frDS1: TfrxDBDataset;
    ds: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure v1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxlbl_returnClick(Sender: TObject);
    procedure btn_ddAddClick(Sender: TObject);
    procedure btn_ddEditClick(Sender: TObject);
    procedure btn_ddDeleteClick(Sender: TObject);
    procedure btnddOrderClick(Sender: TObject);
    procedure btn_ReestrDocClick(Sender: TObject);
    procedure btnodPrintClick(Sender: TObject);
    procedure v2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure v3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure lblDogDocClick(Sender: TObject);
    procedure btnDocAddClick(Sender: TObject);
    procedure btnDocEditClick(Sender: TObject);
    procedure btnDocDeleteClick(Sender: TObject);
    procedure btnDocCreateOrderClick(Sender: TObject);
    procedure btn_ScanListClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btn_genFolderChange(Sender: TObject);
    procedure btn_genFolderPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_genFolderPropertiesEditValueChanged(Sender: TObject);
    procedure btn_ComplDocPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure v5FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lst1DblClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure v2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    fDog: TDog;
    fDogDop: TDogDop;
    fDogDoc: TDogDoc;
    fOrderDoc: TOrderDoc;
    _fixFolder: Variant; // закрепленная папка
    _complDoc: Variant;  //установленное наименование папки
    isFirst: Boolean;
    //
    procedure PrepareDS;
    procedure ShowDOGDOP;
    //
    procedure MakeOrderDoc(dogdop: Integer);
    procedure PrintOrderReport;
    // DOGDOC
    procedure OpenDogDoc;
    procedure SetDogDocAccessBtn;
    procedure SetGridFilter(value: Variant);
    procedure AddFolderToFiler;
    procedure PrintTermoLabel(Port, Text: string);
  public
    { Public declarations }
  end;

var
  DogListForm: TDogListForm;

implementation

uses cmDBUnit, TextPrinter;

{$R *.dfm}


procedure TDogListForm.AddFolderToFiler;
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
    end;
end;

procedure TDogListForm.btnAddClick(Sender: TObject);
begin
  fDog.ShowEditForm(Self, null);
end;

procedure TDogListForm.btnddOrderClick(Sender: TObject);
begin
  MakeOrderDoc(v2.GetColumnByFieldName('CODE').EditValue);
end;

procedure TDogListForm.btnDeleteClick(Sender: TObject);
begin
  fDog.DeleteDog(v1.FN('CODE').EditValue);
end;

procedure TDogListForm.btnDocAddClick(Sender: TObject);
begin
  if (VarIsType(_fixFolder,[varNull, varEmpty]) or _fixFolder = -1) then
    raise Exception.Create('Выберите или сгенирируйте том!');

    if VarIsType(_complDoc,[varNull, varEmpty]) then
    raise Exception.Create('Не указано название тома');

  if _fixFolder = null then _fixFolder:= -1;
  if _complDoc = null then _complDoc:= -1;

  fDogDoc.AddRec(Self,v2.FN('CODE').EditValue, null,_fixFolder, _complDoc);
  fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
  SetDogDocAccessBtn;
  //v5.DataController.DataSource.DataSet.Refresh;
  v5.DataController.DataSet.Last;
end;

procedure TDogListForm.btnDocCreateOrderClick(Sender: TObject);
begin
  MakeOrderDoc(v2.GetColumnByFieldName('CODE').EditValue);
end;

procedure TDogListForm.btnDocDeleteClick(Sender: TObject);
begin
  fDogDoc.DeleteRec(v5.FN('CODE').EditValue);
  fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
  SetDogDocAccessBtn;
end;

procedure TDogListForm.btnDocEditClick(Sender: TObject);
var
  AIndex: Integer;
begin
  AIndex := v5.Controller.FocusedRowIndex; // запоминаем позицию
  try
    if VarIsType(v5.FN('CODE').EditValue,[varNull, varEmpty]) then
       raise Exception.Create('Не выбрана запись для редактирования!');
    fDogDoc.AddRec(Self,v2.FN('CODE').EditValue, v5.FN('CODE').EditValue,_fixFolder, _complDoc);
    fDogDoc.GetDistinctArcPlace(lst1.Items, v2.FN('CODE').EditValue);
    SetDogDocAccessBtn;
  finally
    v5.Controller.FocusRecord(AIndex, true); // возвращаемся на позицию
  end;
end;

procedure TDogListForm.btnodPrintClick(Sender: TObject);
begin
  PrintOrderReport;
end;

procedure TDogListForm.btnRefreshClick(Sender: TObject);
begin
  DataManager.DogDocumList.Refresh;
  SetDogDocAccessBtn;
end;

procedure TDogListForm.btn_ComplDocPropertiesButtonClick(Sender: TObject;
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

procedure TDogListForm.btn_ddAddClick(Sender: TObject);
begin
  fDogDop.ShowEditForm(Self,v1.FN('CODE').EditValue, null);
end;

procedure TDogListForm.btn_ddDeleteClick(Sender: TObject);
begin
  fDogDop.DeleteRec(v2.FN('CODE').EditValue);
end;

procedure TDogListForm.btn_ddEditClick(Sender: TObject);
begin
  fDogDop.ShowEditForm(Self,v1.FN('CODE').EditValue, v2.FN('CODE').EditValue);
end;

procedure TDogListForm.btn_EditClick(Sender: TObject);
begin
  fDog.ShowEditForm(Self,v1.FN('CODE').EditValue);
end;

procedure TDogListForm.btn_genFolderChange(Sender: TObject);
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

procedure TDogListForm.btn_genFolderPropertiesButtonClick(Sender: TObject;
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

procedure TDogListForm.btn_genFolderPropertiesEditValueChanged(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to v5.ColumnCount - 1 do
    v5.Columns[I].Options.Filtering := btn_genFolder.EditValue = null;
end;

procedure TDogListForm.btn_PrintClick(Sender: TObject);
var
  I: Integer;
begin
  for I := lst1.Count - 1 downto 0 do
  begin
    PrintTermoLabel(txt_Port.Text, lst1.Items[I]);
  end;
end;

procedure TDogListForm.btn_ReestrDocClick(Sender: TObject);
begin
  fDogDoc.Report.PrintReestrDoc(v2.FN('CODE').EditValue);
end;

procedure TDogListForm.btn_ScanListClick(Sender: TObject);
begin
  fDogDoc.ScanList.OpenScanForm(Self, v5.FN('CODE').EditValue);
end;

procedure TDogListForm.cxlbl_returnClick(Sender: TObject);
begin
  grplc1Group1.ItemIndex := 0;
end;

procedure TDogListForm.dxBarButton1Click(Sender: TObject);
begin
  fDogDoc.Report.PrintReestrDoc(v2.FN('CODE').EditValue);
end;

procedure TDogListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TDogListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
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

procedure TDogListForm.FormShow(Sender: TObject);
begin
  grd1.SetFocus;
end;

procedure TDogListForm.lblDogDocClick(Sender: TObject);
begin
  grplc1Group1.ItemIndex := 1;
end;

procedure TDogListForm.lst1DblClick(Sender: TObject);
begin
  AddFolderToFiler;
end;

procedure TDogListForm.MakeOrderDoc(dogdop: Integer);
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

procedure TDogListForm.OpenDogDoc;
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

procedure TDogListForm.PrepareDS;
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

procedure TDogListForm.PrintOrderReport;
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

procedure TDogListForm.PrintTermoLabel(Port, Text: string);
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

procedure TDogListForm.SetDogDocAccessBtn;
var
  code: Variant;
begin
  code:= v5.GetColumnByFieldName('CODE').EditValue;
  if code = Unassigned then
     code := null;
  btnDocCreateOrder.Enabled := not v5.DataController.DataSet.IsEmpty;
end;

procedure TDogListForm.SetGridFilter(value: Variant);
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

procedure TDogListForm.ShowDOGDOP;
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

procedure TDogListForm.v1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowDOGDOP;
end;

procedure TDogListForm.v2CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  OpenDogDoc;
end;

procedure TDogListForm.v2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (Shift <> [ssCtrl]) then
    OpenDogDoc;
end;

procedure TDogListForm.v2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TDogListForm.v3CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  PrintOrderReport;
end;

procedure TDogListForm.v5FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  fDogDoc.LoadScanList(lstSkan.Items, v5.FN('CODE').EditValue);
end;

initialization
 RegisterClass(TDogListForm);
end.
