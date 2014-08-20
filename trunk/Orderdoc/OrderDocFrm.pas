unit OrderDocFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxImageComboBox, cxDBLookupComboBox, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, frxClass, frxDBSet, DbDataHelpers, OrderDocUnit;

type
  TOrderDocForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    spllc1SplitterItem1: TdxLayoutSplitterItem;
    dt1: TcxDateEdit;
    lItmlc1Item1: TdxLayoutItem;
    dt2: TcxDateEdit;
    lItmlc1Item11: TdxLayoutItem;
    btn_Load: TcxButton;
    lItmlc1Item12: TdxLayoutItem;

    src_ORDERDOC: TDataSource;
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
    lItmlc1Item2: TdxLayoutItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item13: TdxLayoutItem;
    brm1: TdxBarManager;
    doc1: TdxBarDockControl;
    lItmlc1Item14: TdxLayoutItem;
    doc2: TdxBarDockControl;
    lItmlc1Item15: TdxLayoutItem;
    barDoc: TdxBar;
    btnDocAdd: TdxBarButton;
    barSpec: TdxBar;
    btnSpecAdd: TdxBarButton;
    btnDocEdit: TdxBarButton;
    btnDocDelete: TdxBarButton;
    btnSpecEdit: TdxBarButton;
    btnSpecDelete: TdxBarButton;

    src_ORDERSPEC: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1ORDERDOC: TcxGridDBColumn;
    clv1ARCPLACE: TcxGridDBColumn;
    clv1STRCODE: TcxGridDBColumn;
    clv1ARNOTE: TcxGridDBColumn;
    clv1AONAME: TcxGridDBColumn;
    btn_Prov: TdxBarButton;
    btn_Print: TdxBarButton;
    clv3MOVESTATE: TcxGridDBColumn;
    src_Worker: TDataSource;
    src_MoveState: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dt1PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure dt2PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btn_LoadClick(Sender: TObject);
    procedure btnDocAddClick(Sender: TObject);
    procedure v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnDocEditClick(Sender: TObject);
    procedure btnSpecAddClick(Sender: TObject);
    procedure btnSpecEditClick(Sender: TObject);
    procedure btnDocDeleteClick(Sender: TObject);
    procedure btnSpecDeleteClick(Sender: TObject);
    procedure btn_ProvClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
  private
    { Private declarations }
    fOrderDoc: TOrderDoc;
    curentKeyboard: LongWord;
    procedure GetData;
    function Validate: Boolean;
    procedure PrepareDS;
    procedure CloseDS;
    procedure SetDocAccessBtn;
    procedure SetSpecAccessBtn;
  public
    { Public declarations }
  end;

var
  OrderDocForm: TOrderDocForm;
const
  CNT_LAYOUT = 2; // количество известных раскладок
  ENGLISH = 1033;
  RUSSIAN = 1049;
implementation

uses cmDBUnit, OrderDocPartial, {OrderSpecPartial,} KeyBoard;

{$R *.dfm}

procedure TOrderDocForm.btnDocAddClick(Sender: TObject);
begin
  fOrderDoc.ShowEditForm(Self, null);
end;

procedure TOrderDocForm.btnDocDeleteClick(Sender: TObject);
begin
  fOrderDoc.DeleteRec(v3.FN('CODE').EditValue);
end;

procedure TOrderDocForm.btnDocEditClick(Sender: TObject);
begin
  fOrderDoc.ShowEditForm(Self, v3.FN('CODE').EditValue);
end;

procedure TOrderDocForm.btnSpecAddClick(Sender: TObject);
begin
  fOrderDoc.Details.CreateRec(Self, Null, v3.FN('CODE').EditValue);
end;

procedure TOrderDocForm.btnSpecDeleteClick(Sender: TObject);
begin
  fOrderDoc.Details.DeleteRec(v1.FN('CODE').EditValue);
end;

procedure TOrderDocForm.btnSpecEditClick(Sender: TObject);
begin
  fOrderDoc.Details.EditRec(Self,v1.FN('CODE').EditValue, v3.FN('CODE').EditValue);
  {try
    curentKeyboard:= GetActiveKbdLayout;
    LoadKeyboardLayout('00000409', KLF_ACTIVATE);

    OrderSpec.EditRec(Self, ds_ORDERSPEC, v3.FN('STATE').EditValue,
      v3.FN('WORKER').EditValue);
  except
    on E: Exception do
    begin
      ds_ORDERSPEC.Cancel;
      raise dezException.Create(E.Message);
    end;
  end;}
  //if  curentKeyboard = RUSSIAN then
  //LoadKeyboardLayout('00000419', KLF_ACTIVATE);
end;

procedure TOrderDocForm.btn_LoadClick(Sender: TObject);
begin
  GetData;
end;

procedure TOrderDocForm.btn_PrintClick(Sender: TObject);
begin
  fOrderDoc.Report.PrintReport(v3.FN('CODE').EditValue);
end;

procedure TOrderDocForm.btn_ProvClick(Sender: TObject);
begin
  fOrderDoc.ChangeStateDoc(v3.FN('CODE').EditValue, v3.FN('STATE').EditValue);
end;

procedure TOrderDocForm.CloseDS;
begin
  DataManager.OrderDocList.Close;
  DataManager.OrderDocSpecList.Close;
  DataManager.WorkerList.Close;
  DataManager.MoveStateList.Close;
end;

procedure TOrderDocForm.dt1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsEmpty(dt1.EditValue);
end;

procedure TOrderDocForm.dt2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsEmpty(dt2.EditValue);
end;

procedure TOrderDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fOrderDoc) then
     FreeAndNil(fOrderDoc);
  CloseDS;
  Action := caFree;
end;

procedure TOrderDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  fOrderDoc:= TOrderDoc.Create;
  PrepareDS;
  SetDocAccessBtn;
end;

procedure TOrderDocForm.GetData;
begin
  if not Validate then
    Exit;
  with DataManager.OrderDocList do
  begin
    Close;
    MacroByName('Where').AsRaw := 'Where O.DOCUMDATE between :d1 and :d2';
    ParamByName('d1').Value := dt1.EditValue;
    ParamByName('d2').Value := dt2.EditValue;
    Open;
  end;
  if DataManager.OrderDocSpecList.State in [dsInactive] then
     DataManager.OrderDocSpecList.Open;
  SetDocAccessBtn;
end;

procedure TOrderDocForm.PrepareDS;
begin
  DataManager.OrderDocList.SetWriteOpt(False);
  src_ORDERDOC.DataSet:= DataManager.OrderDocList;

  with DataManager.OrderDocSpecList do begin
    SetWriteOpt(False);
    MasterSource:= v3.DataController.DataSource;
    MasterFields:='CODE';
  end;
  src_ORDERSPEC.DataSet:= DataManager.OrderDocSpecList;

  if DataManager.WorkerList.State in [dsInactive] then
     DataManager.WorkerList.Open;
     src_Worker.DataSet:= DataManager.WorkerList;

  if DataManager.MoveStateList.State in [dsInactive] then
     DataManager.MoveStateList.Open;
     src_MoveState.DataSet:= DataManager.MoveStateList;
  SetDocAccessBtn;
end;

procedure TOrderDocForm.SetDocAccessBtn;
var
  codeIsNull: Boolean;
begin
  if DataManager.OrderDocList.State in [dsInactive] then
  begin
    btnDocAdd.Enabled := false;
    btnDocEdit.Enabled := false;
    btnDocDelete.Enabled := false;
    btn_Prov.Enabled:= False;
    btn_Print.Enabled:= False;
  end
  else
  begin
    codeIsNull:= VarIsType(v3.FN('CODE').EditValue,[varEmpty, varNull]);
    btnDocAdd.Enabled := true;
    btnDocEdit.Enabled :=
      (not codeIsNull) and
      (v3.FN('STATE').EditValue = 0);
    btnDocDelete.Enabled := btnDocEdit.Enabled;
    btn_Prov.Enabled:= (not codeIsNull);
    btn_Print.Enabled:= (not codeIsNull);
  end;
  SetSpecAccessBtn;
end;

procedure TOrderDocForm.SetSpecAccessBtn;
begin
  btnSpecAdd.Enabled := btnDocEdit.Enabled;
  btnSpecEdit.Enabled := (btnDocEdit.Enabled) and
    (not VarIsEmpty(v1.FN('CODE').EditValue));
  btnSpecDelete.Enabled := (btnDocEdit.Enabled) and
    (not VarIsEmpty(v1.FN('CODE').EditValue));
end;

procedure TOrderDocForm.v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  SetDocAccessBtn;
end;

function TOrderDocForm.Validate: Boolean;
begin
  Result := false;
  if not dt1.ValidateEdit(false) then
    Exit;
  if not dt2.ValidateEdit(false) then
    Exit;
  Result := true;
end;

initialization

RegisterClass(TOrderDocForm);

end.
