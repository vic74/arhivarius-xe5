unit OrdersDocFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxClasses, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxDBLookupComboBox, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxSkinsdxBarPainter, dxBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  DbDataHelpers, OrderDocUnit,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TOrdersDocForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    src_Worker: TDataSource;
    src_MoveState: TDataSource;
    src_ORDERSPEC: TDataSource;
    src_ORDERDOC: TDataSource;
    lc1: TdxLayoutControl;
    dt1: TcxDateEdit;
    dt2: TcxDateEdit;
    btn_Load: TcxButton;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv3CODE: TcxGridDBColumn;
    clv3STATE: TcxGridDBColumn;
    clv3DOCUMDATE: TcxGridDBColumn;
    clv3OPERATOR: TcxGridDBColumn;
    clv3OPERTYPE: TcxGridDBColumn;
    clv3MOVESTATE: TcxGridDBColumn;
    clv3WORKER: TcxGridDBColumn;
    clv3NAME: TcxGridDBColumn;
    clv3ARCOBJECT: TcxGridDBColumn;
    clv3NOTE: TcxGridDBColumn;
    clv3DOGDOP: TcxGridDBColumn;
    l3: TcxGridLevel;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1ORDERDOC: TcxGridDBColumn;
    clv1ARCPLACE: TcxGridDBColumn;
    clv1ARNOTE: TcxGridDBColumn;
    clv1AONAME: TcxGridDBColumn;
    clv1STRCODE: TcxGridDBColumn;
    l1: TcxGridLevel;
    doc1: TdxBarDockControl;
    doc2: TdxBarDockControl;
    grp1: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    spllc1SplitterItem1: TdxLayoutSplitterItem;
    lItmlc1Item1: TdxLayoutItem;
    lItmlc1Item11: TdxLayoutItem;
    lItmlc1Item12: TdxLayoutItem;
    lItmlc1Item2: TdxLayoutItem;
    lItmlc1Item13: TdxLayoutItem;
    lItmlc1Item14: TdxLayoutItem;
    lItmlc1Item15: TdxLayoutItem;
    brm1: TdxBarManager;
    barDoc: TdxBar;
    barSpec: TdxBar;
    btnDocAdd: TdxBarButton;
    btnSpecAdd: TdxBarButton;
    btnDocEdit: TdxBarButton;
    btnDocDelete: TdxBarButton;
    btnSpecEdit: TdxBarButton;
    btnSpecDelete: TdxBarButton;
    btn_Prov: TdxBarButton;
    btn_Print: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnDocAddClick(Sender: TObject);
    procedure btnDocEditClick(Sender: TObject);
    procedure btnDocDeleteClick(Sender: TObject);
    procedure btn_ProvClick(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure btn_LoadClick(Sender: TObject);
    procedure btnSpecAddClick(Sender: TObject);
    procedure btnSpecEditClick(Sender: TObject);
    procedure btnSpecDeleteClick(Sender: TObject);
    procedure dt1PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure dt2PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }

    fOrderDoc: TOrderDoc;
    curentKeyboard: LongWord;
    procedure InitControls;
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
  OrdersDocForm: TOrdersDocForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TOrdersDocForm.btnDocAddClick(Sender: TObject);
begin
  fOrderDoc.ShowEditForm(Self, null);
end;

procedure TOrdersDocForm.btnDocDeleteClick(Sender: TObject);
begin
  fOrderDoc.DeleteRec(v3.FN('CODE').EditValue);
end;

procedure TOrdersDocForm.btnDocEditClick(Sender: TObject);
begin
  fOrderDoc.ShowEditForm(Self, v3.FN('CODE').EditValue);
end;

procedure TOrdersDocForm.btnSpecAddClick(Sender: TObject);
begin
  fOrderDoc.Details.CreateRec(Self, Null, v3.FN('CODE').EditValue);
end;

procedure TOrdersDocForm.btnSpecDeleteClick(Sender: TObject);
begin
  fOrderDoc.Details.DeleteRec(v1.FN('CODE').EditValue);
end;

procedure TOrdersDocForm.btnSpecEditClick(Sender: TObject);
begin
  fOrderDoc.Details.EditRec(Self,v1.FN('CODE').EditValue, v3.FN('CODE').EditValue);
end;

procedure TOrdersDocForm.btn_LoadClick(Sender: TObject);
begin
  GetData;
end;

procedure TOrdersDocForm.btn_PrintClick(Sender: TObject);
begin
  fOrderDoc.Report.PrintReport(v3.FN('CODE').EditValue);
end;

procedure TOrdersDocForm.btn_ProvClick(Sender: TObject);
begin
  fOrderDoc.ChangeStateDoc(v3.FN('CODE').EditValue, v3.FN('STATE').EditValue);
end;

procedure TOrdersDocForm.CloseDS;
begin
  DataManager.OrderDocList.Close;
  DataManager.OrderDocSpecList.Close;
  DataManager.WorkerList.Close;
  DataManager.MoveStateList.Close;
end;

procedure TOrdersDocForm.dt1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsType(dt1.EditValue, [varNull, varEmpty]);
end;

procedure TOrdersDocForm.dt2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsType(dt2.EditValue, [varNull, varEmpty]);
end;

procedure TOrdersDocForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fOrderDoc) then
     FreeAndNil(fOrderDoc);
  CloseDS;
  Action:= caFree;
end;

procedure TOrdersDocForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  fOrderDoc:= TOrderDoc.Create;
  PrepareDS;
  SetDocAccessBtn;
end;

procedure TOrdersDocForm.GetData;
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

procedure TOrdersDocForm.InitControls;
begin
  {$REGION 'Grid Settings'}
  v3.DataController.DataSource:= src_ORDERDOC;
  TcxLookupComboBoxProperties(clv3OPERATOR.Properties).ListSource:= src_Worker;
  TcxLookupComboBoxProperties(clv3MOVESTATE.Properties).ListSource:= src_MoveState;
  TcxLookupComboBoxProperties(clv3WORKER.Properties).ListSource:= src_Worker;

  v1.DataController.DataSource:= src_ORDERSPEC;
  {$ENDREGION}

end;

procedure TOrdersDocForm.PrepareDS;
begin
  InitControls;
  //
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

procedure TOrdersDocForm.SetDocAccessBtn;
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

procedure TOrdersDocForm.SetSpecAccessBtn;
begin
  btnSpecAdd.Enabled := btnDocEdit.Enabled;
  btnSpecEdit.Enabled := (btnDocEdit.Enabled) and
    (not VarIsEmpty(v1.FN('CODE').EditValue));
  btnSpecDelete.Enabled := (btnDocEdit.Enabled) and
    (not VarIsEmpty(v1.FN('CODE').EditValue));
end;

procedure TOrdersDocForm.v3FocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  SetDocAccessBtn;
end;

function TOrdersDocForm.Validate: Boolean;
begin
  Result := false;
  if not dt1.ValidateEdit(false) then Exit;
  if not dt2.ValidateEdit(false) then Exit;
  Result := true;
end;

initialization
 RegisterClass(TOrdersDocForm);
end.
