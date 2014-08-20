unit KontragentFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsdxBarPainter, cxButtonEdit,
  dxBar, cxBarEditItem, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxMaskEdit, cxDBLookupComboBox, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, DbDataHelpers, dxLayoutcxEditAdapters, cxRegExpr,
  dxLayoutControlAdapters, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxSpinEdit, cxDBEdit, cxTextEdit;

type
  TKontragentForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    src_Kontr: TDataSource;
    srcWorker: TDataSource;
    src_CONTACTS: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
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
    l1: TcxGridLevel;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    clv2CODE: TcxGridDBColumn;
    clv2KONTRAGENT: TcxGridDBColumn;
    clv2FIO: TcxGridDBColumn;
    clv2PROF: TcxGridDBColumn;
    clv2PHONE: TcxGridDBColumn;
    clv2MPHONE: TcxGridDBColumn;
    clv2EMAIL: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    l2: TcxGridLevel;
    grp_Root: TdxLayoutGroup;
    itm1: TdxLayoutItem;
    grp1: TdxLayoutGroup;
    grp2: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    itmLayoutControl1Item1: TdxLayoutItem;
    barMbrm1: TdxBarManager;
    bar1: TdxBar;
    btnAdd: TdxBarButton;
    btnEdit: TdxBarButton;
    btnDelete: TdxBarButton;
    btnCancel: TdxBarButton;
    btnSave: TdxBarButton;
    lgMain: TdxLayoutGroup;
    lgKontrEdit: TdxLayoutGroup;
    lgContacnEdit: TdxLayoutGroup;
    doc_kontr: TdxBarDockControl;
    itm3: TdxLayoutItem;
    doc_contacts: TdxBarDockControl;
    itm4: TdxLayoutItem;
    barMbrm1Bar1: TdxBar;
    btn_cAdd: TdxBarButton;
    btn_cEdit: TdxBarButton;
    btn_cDelete: TdxBarButton;
    fld_NAME: TcxDBTextEdit;
    dxlytm2: TdxLayoutItem;
    fld_FullName: TcxDBTextEdit;
    dxlytm3: TdxLayoutItem;
    fld_UrAddr: TcxDBTextEdit;
    dxlytm6: TdxLayoutItem;
    fld_PostAddr: TcxDBTextEdit;
    dxlytmLayoutControl1Item11: TdxLayoutItem;
    fld_PHONE: TcxDBTextEdit;
    dxlytmLayoutControl1Item12: TdxLayoutItem;
    fld_EMAIL: TcxDBTextEdit;
    dxlytmLayoutControl1Item13: TdxLayoutItem;
    fld_Bank: TcxDBTextEdit;
    dxlytmLayoutControl1Item14: TdxLayoutItem;
    fld_KSchet: TcxDBMaskEdit;
    dxlytmLayoutControl1Item17: TdxLayoutItem;
    fld_OKPO: TcxDBTextEdit;
    dxlytmLayoutControl1Item19: TdxLayoutItem;
    fld_Dir: TcxDBSpinEdit;
    dxlytmLayoutControl1Item20: TdxLayoutItem;
    fld_BUH: TcxDBSpinEdit;
    dxlytmLayoutControl1Item21: TdxLayoutItem;
    lg_bank: TdxLayoutGroup;
    lg_KontrBtn: TdxLayoutGroup;
    btn_KontrSave: TcxButton;
    itm_1: TdxLayoutItem;
    btn_KontrCancel: TcxButton;
    itm_LayoutControl1Item1: TdxLayoutItem;
    lg_contEdit: TdxLayoutGroup;
    fld_FIO: TcxDBTextEdit;
    itm_11: TdxLayoutItem;
    fld_PROF: TcxDBTextEdit;
    itm_2: TdxLayoutItem;
    fld_cPHONE: TcxDBTextEdit;
    itm_3: TdxLayoutItem;
    fld_cEmail: TcxDBTextEdit;
    itm_4: TdxLayoutItem;
    fld_NOTE: TcxDBTextEdit;
    itm_5: TdxLayoutItem;
    fld_MPhone: TcxDBMaskEdit;
    itm_6: TdxLayoutItem;
    lg_ContBtn: TdxLayoutGroup;
    btn_ContSave: TcxButton;
    itm_LayoutControl1Item11: TdxLayoutItem;
    btn_ContCancel: TcxButton;
    itm_LayoutControl1Item12: TdxLayoutItem;
    fld_INN: TcxDBMaskEdit;
    itm_Inn: TdxLayoutItem;
    fld_KPP: TcxDBMaskEdit;
    itm_Kp: TdxLayoutItem;
    fld_BIK: TcxDBMaskEdit;
    itm_Bik: TdxLayoutItem;
    fld_Schet: TcxDBMaskEdit;
    itm_Schet: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btn_KontrSaveClick(Sender: TObject);
    procedure btn_cAddClick(Sender: TObject);
    procedure btn_cEditClick(Sender: TObject);
    procedure btn_cDeleteClick(Sender: TObject);
    procedure btn_ContSaveClick(Sender: TObject);
    procedure btn_KontrCancelClick(Sender: TObject);
    procedure btn_ContCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    //
    procedure ContactBeforePost(DataSet: TDataSet);
    procedure KONTRAGENTBeforePost(DataSet: TDataSet);
    procedure fld_INNPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure fld_BIKPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure KontrAdd;
    procedure KontrEdit;
    procedure KontrSave;
    procedure KontrDelete;
    //
    procedure ContactAdd;
    procedure ContactEdit;
    procedure ContactDelete;
    procedure ContactSave;
    //
    function Validate(DataSet: TDataSet): Boolean;
    function ValidateKontragent: Boolean;
  public
    { Public declarations }
  end;

var
  KontragentForm: TKontragentForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TKontragentForm.btnAddClick(Sender: TObject);
begin
  KontrAdd;
end;

procedure TKontragentForm.btnDeleteClick(Sender: TObject);
begin
  KontrDelete;
end;

procedure TKontragentForm.btnEditClick(Sender: TObject);
begin
  KontrEdit;
end;

procedure TKontragentForm.btn_cAddClick(Sender: TObject);
begin
  ContactAdd;
end;

procedure TKontragentForm.btn_cDeleteClick(Sender: TObject);
begin
  ContactDelete;
end;

procedure TKontragentForm.btn_cEditClick(Sender: TObject);
begin
  ContactEdit;
end;

procedure TKontragentForm.btn_ContCancelClick(Sender: TObject);
begin
  DataManager.ContactList.Cancel;
  grp_Root.ItemIndex:=0;
end;

procedure TKontragentForm.btn_ContSaveClick(Sender: TObject);
begin
  ContactSave;
end;

procedure TKontragentForm.btn_KontrCancelClick(Sender: TObject);
begin
  DataManager.KontragentList.Cancel;
  grp_Root.ItemIndex:=0;
end;

procedure TKontragentForm.btn_KontrSaveClick(Sender: TObject);
begin
  KontrSave;
end;

procedure TKontragentForm.ContactAdd;
begin
  grp_Root.ItemIndex:=2;
  DataManager.ContactList.Append;
end;

procedure TKontragentForm.ContactBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('KONTRAGENT').AsVariant = Null then
     DataSet.FieldByName('KONTRAGENT').AsVariant:= v1.FN('CODE').EditValue;
end;

procedure TKontragentForm.ContactDelete;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    DataManager.ContactList.Delete;
  end;
end;

procedure TKontragentForm.ContactEdit;
begin
  grp_Root.ItemIndex:=2;
  DataManager.ContactList.Edit;
end;

procedure TKontragentForm.ContactSave;
begin
  if DataManager.ContactList.State in [dsInsert, dsEdit, dsSetKey] then
  DataManager.ContactList.Post;
  grp_Root.ItemIndex:=0;
end;

procedure TKontragentForm.fld_BIKPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  i: Integer;
begin
  i:= Length(DisplayValue);
  Error:= i<>9;
  ErrorText:='Введено недопустимое кол-во цифр ('+IntToStr(i)+')';
end;

procedure TKontragentForm.fld_INNPropertiesValidate(Sender: TObject;
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

procedure TKontragentForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TKontragentForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  grp_Root.TabbedOptions.HideTabs:= True;
  grp_Root.ItemIndex:=0;
  PrepareDS;

  grd1.LookAndFeel.SkinName:='Office2013White';
  grd1.LookAndFeel.NativeStyle:= False;
end;

procedure TKontragentForm.KontrAdd;
begin
  grp_Root.ItemIndex:=1;
  DataManager.KontragentList.Append;
end;

procedure TKontragentForm.KONTRAGENTBeforePost(DataSet: TDataSet);
begin
  if not Validate(DataSet) then
     raise Exception.Create('Проверте поле ИНН.');
end;

procedure TKontragentForm.KontrDelete;
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    DataManager.KontragentList.Delete;
  end;
end;

procedure TKontragentForm.KontrEdit;
begin
  grp_Root.ItemIndex:=1;
  DataManager.KontragentList.Edit;
end;

procedure TKontragentForm.KontrSave;
begin
  //if not ValidateKontragent then Exit;
  if DataManager.KontragentList.State in [dsInsert, dsEdit, dsSetKey] then
  DataManager.KontragentList.Post;
  grp_Root.ItemIndex:=0;
end;

procedure TKontragentForm.PrepareDS;
begin
  DataManager.KontragentList.SetWriteOpt;
  DataManager.KontragentList.BeforePost:= KONTRAGENTBeforePost;
  with DataManager.ContactList do begin
    SetWriteOpt(False);
    MacroByName('Where').AsRaw:= 'WHERE KONTRAGENT =:CODE';
    MacroByName('Order').AsRaw:='ORDER BY FIO';
    MasterSource:= src_Kontr;
    MasterFields:= 'CODE';
    Open;
  end;
  DataManager.ContactList.BeforePost:= ContactBeforePost;
  DataManager.WorkerList.Open;
  //
  src_Kontr.DataSet:= DataManager.KontragentList;
  srcWorker.DataSet:= DataManager.WorkerList;
  src_CONTACTS.DataSet:= DataManager.ContactList;
end;

function TKontragentForm.Validate(DataSet: TDataSet): Boolean;
var
  isCorrect: Boolean;
begin
  isCorrect:= False;
    if (Length(DataSet.FieldByName('INN').AsString)=10) or
     (Length(DataSet.FieldByName('INN').AsString)=12) then
    isCorrect := True;
  Result:= isCorrect;
end;

function TKontragentForm.ValidateKontragent: Boolean;
begin
  Result:= False;
  if not IsTextFullValid(fld_INN.Text,'\d{10,12}') then Exit;
  if not IsTextFullValid(fld_KPP.Text,'\d{9}') then Exit;
  if not IsTextFullValid(fld_BIK.Text,'\d{9}') then Exit;
  if not IsTextFullValid(fld_Schet.Text,'\d{20}') then Exit;
  if not IsTextFullValid(fld_KSchet.Text,'\d{20}') then Exit;
  Result:= True;
end;

initialization
 RegisterClass(TKontragentForm);
end.
