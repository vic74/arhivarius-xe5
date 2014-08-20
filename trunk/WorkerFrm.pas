unit WorkerFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter,
  dxBar, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBLookupComboBox,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxTextEdit, cxDBEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridInplaceEditForm, DogDocUnit, Vcl.Menus;

type
  TWorkerForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item1: TdxLayoutItem;
    doc1: TdxBarDockControl;
    lItmlc1Item11: TdxLayoutItem;
    brm1: TdxBarManager;
    bar1: TdxBar;
    btnAdd: TdxBarButton;
    btnEdit: TdxBarButton;
    btnDelete: TdxBarButton;
    clv1CODE: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    clv1F: TcxGridDBColumn;
    clv1I: TcxGridDBColumn;
    clv1O: TcxGridDBColumn;
    clv1WORKERSTATE: TcxGridDBColumn;
    clv1PHONE: TcxGridDBColumn;
    clv1EMAIL: TcxGridDBColumn;
    clv1NOTE: TcxGridDBColumn;
    clv1PSW: TcxGridDBColumn;
    clv1FIO: TcxGridDBColumn;
    src_KONTRAGENT: TDataSource;
    src_WORKERSTATE: TDataSource;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    txt_F: TcxDBTextEdit;
    itmlc1Item3: TdxLayoutItem;
    txt_I: TcxDBTextEdit;
    itmlc1Item4: TdxLayoutItem;
    txt_O: TcxDBTextEdit;
    itmlc1Item5: TdxLayoutItem;
    txt4: TcxDBTextEdit;
    itmlc1Item7: TdxLayoutItem;
    txt5: TcxDBTextEdit;
    itmlc1Item8: TdxLayoutItem;
    txt6: TcxDBTextEdit;
    itmlc1Item9: TdxLayoutItem;
    txt_PSWD: TcxDBTextEdit;
    itmlc1Item10: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    cbb_Kontr: TcxDBLookupComboBox;
    itmlc1Item12: TdxLayoutItem;
    cbb_WorkerState: TcxDBLookupComboBox;
    itmlc1Item1: TdxLayoutItem;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    btn_Save: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    btnCancel: TcxButton;
    itmlc1Item13: TdxLayoutItem;
    src_WORKER: TDataSource;
    ds_WORKER: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cbb_WorkerStatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbb_KontrPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txt1PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure txt2PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure txt3PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure txt7PropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure ds_WORKERAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    fDogDoc: TDogDoc;
    procedure PrepareDS;
    procedure AddWorker;
    function Validate: Boolean;
    procedure DeleteWorker;
  public
    { Public declarations }
  end;

var
  WorkerForm: TWorkerForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TWorkerForm.AddWorker;
begin
  grp1.ItemIndex:=1;
  ds_WORKER.Append;
end;

procedure TWorkerForm.btnAddClick(Sender: TObject);
begin
  AddWorker;
end;

procedure TWorkerForm.btnCancelClick(Sender: TObject);
begin
  ds_WORKER.Cancel;
  grp1.ItemIndex:=0;
end;

procedure TWorkerForm.btnDeleteClick(Sender: TObject);
begin
  //DeleteWorker;
  fDogDoc:= TDogDoc.Create;
  fDogDoc.LoadRecord(11);
end;

procedure TWorkerForm.btnEditClick(Sender: TObject);
begin
  ds_WORKER.Edit;
  grp1.ItemIndex:=1;
end;

procedure TWorkerForm.btn_SaveClick(Sender: TObject);
begin
  if not Validate then Exit;

  ds_WORKER.Post;
  grp1.ItemIndex:=0;
end;

procedure TWorkerForm.cbb_KontrPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= (cbb_Kontr.EditValue = null) or (cbb_Kontr.EditValue = Unassigned);
  ErrorText:= 'Укажите организацию.';
end;

procedure TWorkerForm.cbb_WorkerStatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= (cbb_WorkerState.EditValue = null) or (cbb_WorkerState.EditValue = Unassigned);
  ErrorText:= 'Укажите должность.';
end;

procedure TWorkerForm.DeleteWorker;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    cmDb.ds_WORKER.Delete;
  end;
end;

procedure TWorkerForm.ds_WORKERAfterPost(DataSet: TDataSet);
begin
  cmDB.ds_WORKER.Close;
  cmDB.ds_WORKER.Open;
end;

procedure TWorkerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TWorkerForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  grp1.TabbedOptions.HideTabs:= True;
  grp1.ItemIndex:=0;
  PrepareDS;
end;

procedure TWorkerForm.PrepareDS;
begin
  ds_WORKER.SetWriteOpt(true);
  with cmDB.ds_KONTRAGENT do begin
    Close;
    MacroByName('Order').AsRaw := 'Order By NAME';
    Open;
  end;
  with cmDB.ds_WORKERSTATE do begin
    Close;
    MacroByName('Order').AsRaw := 'Order By NAME';
    Open;
  end;
end;

procedure TWorkerForm.txt1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= Trim(DisplayValue)='';
  ErrorText:= 'Укажите фамилию.';
end;

procedure TWorkerForm.txt2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= Trim(DisplayValue)='';
  ErrorText:= 'Укажите имя.';
end;

procedure TWorkerForm.txt3PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= Trim(DisplayValue)='';
  ErrorText:= 'Укажите отчество.';
end;

procedure TWorkerForm.txt7PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= Trim(DisplayValue)='';
  ErrorText:= 'Установите пароль.';
end;

function TWorkerForm.Validate: Boolean;
begin
  Result:= False;
  if not txt_F.ValidateEdit(true) or
   not txt_I.ValidateEdit(true) or
   not txt_O.ValidateEdit(true) or
   not txt_PSWD.ValidateEdit(true) or
   not cbb_WorkerState.ValidateEdit(true) or
   not cbb_Kontr.ValidateEdit(true) then Exit;
  Result:= True;
end;

initialization
 RegisterClass(TWorkerForm);
end.
