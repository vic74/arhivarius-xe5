unit KontrFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  AppUtils, BaseForm, cmDBUnit,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2013White,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl,
  cxClasses, dxBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
   cxDBLookupComboBox, cxCheckBox, cxPropertiesStore, cxMaskEdit;

type
  TKontrForm = class(TDezForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itm1: TdxLayoutItem;
    src_Kontr: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1FULLNAME: TcxGridDBColumn;
    clv1INN: TcxGridDBColumn;
    clv1KPP: TcxGridDBColumn;
    clv1URADDR: TcxGridDBColumn;
    clv1POSTADDR: TcxGridDBColumn;
    clv1PHONE: TcxGridDBColumn;
    clv1EMAIL: TcxGridDBColumn;
    clv1DIR: TcxGridDBColumn;
    clv1BANK: TcxGridDBColumn;
    clv1BIK: TcxGridDBColumn;
    clv1SCHET: TcxGridDBColumn;
    clv1KSCHET: TcxGridDBColumn;
    clv1CHIEFFIRM: TcxGridDBColumn;
    srcWorker: TDataSource;
    prop1: TcxPropertiesStore;
    grp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmLayoutControl1Item1: TdxLayoutItem;
    src_CONTACTS: TDataSource;
    clv2CODE: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    clv2PROF: TcxGridDBColumn;
    clv2PHONE: TcxGridDBColumn;
    clv2EMAIL: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    barMbrm1: TdxBarManager;
    bar1: TdxBar;
    btnAdd: TdxBarButton;
    btnEdit: TdxBarButton;
    btnDelete: TdxBarButton;
    btnCancel: TdxBarButton;
    btnSave: TdxBarButton;
    clv2MPHONE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure ds_CONTACTSBeforePost(DataSet: TDataSet);
    procedure clv2PHONEPropertiesEditValueChanged(Sender: TObject);
    procedure ds_KONTRAGENTAfterPost(DataSet: TDataSet);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure clv1INNPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ds_KONTRAGENTBeforePost(DataSet: TDataSet);
    procedure clv1BIKPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    procedure OpenDS;
    function Validate(DataSet: TDataSet): Boolean;
  public
    { Public declarations }
  end;

var
  KontrForm: TKontrForm;

implementation

{$R *.dfm}

{ TKontrForm }

procedure TKontrForm.btnAddClick(Sender: TObject);
begin
  v1.DataController.Append;
end;

procedure TKontrForm.btnCancelClick(Sender: TObject);
begin
  v1.DataController.Cancel;
end;

procedure TKontrForm.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    v1.DataController.DeleteFocused;
  end;
end;

procedure TKontrForm.btnEditClick(Sender: TObject);
begin
  v1.DataController.Edit;
end;

procedure TKontrForm.btnSaveClick(Sender: TObject);
begin
  v1.DataController.Post();
end;

procedure TKontrForm.clv1BIKPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  i: Integer;
begin
  i:= Length(DisplayValue);
  Error:= i<>9;
  ErrorText:='Введено недопустимое кол-во цифр ('+IntToStr(i)+')';
end;

procedure TKontrForm.clv1INNPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  var
    i: Integer;
    isError: Boolean;
begin
  isError:= True;
  i:= Length(DisplayValue);
  if (i=10) or (i=12) then
  isError:= False;
  Error :=isError;
  ErrorText:='Введено недопустимое кол-во цифр ('+IntToStr(i)+')';
end;

procedure TKontrForm.clv2PHONEPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post(True);
end;

procedure TKontrForm.ds_CONTACTSBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('KONTRAGENT').AsVariant = null then
     DataSet.FieldByName('KONTRAGENT').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
end;

procedure TKontrForm.ds_KONTRAGENTAfterPost(DataSet: TDataSet);
begin
  //cmDb.ds_KONTRAGENT.CloseOpen(False);
end;

procedure TKontrForm.ds_KONTRAGENTBeforePost(DataSet: TDataSet);
begin
  if not Validate(DataSet) then
     raise Exception.Create('Проверте поле ИНН.');
end;

procedure TKontrForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TKontrForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDS;
end;

procedure TKontrForm.OpenDS;
begin
  {ds_KONTRAGENT.SetWriteOpt(true);
  ds_CONTACTS.SetWriteOpt(true);
  dsWorker.Open;}
end;

function TKontrForm.Validate(DataSet: TDataSet): Boolean;
var
  isCorrect: Boolean;
begin
  isCorrect:= False;
    if (Length(DataSet.FieldByName('INN').AsString)=10) or
     (Length(DataSet.FieldByName('INN').AsString)=12) then
    isCorrect := True;
  Result:= isCorrect;
end;

initialization
  RegisterClass(TKontrForm);
end.
