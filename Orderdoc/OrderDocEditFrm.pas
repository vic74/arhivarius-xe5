unit OrderDocEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Data.DB, cxDropDownEdit,
  System.Bindings.Helper,
  cxTextEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxClasses, OrderDocUnit, DbDataHelpers;

type
  TOrderDocEditForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_ArcObject: TcxLookupComboBox;
    lItmlc1Item11: TdxLayoutItem;
    dt_DocumDate: TcxDateEdit;
    lItmlc1Item12: TdxLayoutItem;
    cbb_Worker: TcxLookupComboBox;
    lItmlc1Item13: TdxLayoutItem;
    txt_Note: TcxTextEdit;
    lItmlc1Item14: TdxLayoutItem;
    cbb_OperType: TcxComboBox;
    lItmlc1Item15: TdxLayoutItem;

    src_ARCOBJECT: TDataSource;
    grplc1Group1: TdxLayoutGroup;
    btn_Save: TcxButton;
    lItmlc1Item1: TdxLayoutItem;
    btn_Cancel: TcxButton;
    lItmlc1Item16: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    cbb_State: TcxLookupComboBox;
    itmlc1Item1: TdxLayoutItem;
    grplc1Group5: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    src_MoveState: TDataSource;
    src_Worker: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SaveClick(Sender: TObject);
    procedure cbb_OperTypePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbb_ArcObjectPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbb_WorkerPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dt_DocumDatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_OperTypePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fOrderDoc: TOrderDoc;

    procedure InitLinks;
    procedure PrepareDS;
    procedure SaveRec;
    function Validate: Boolean;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; aCode: Variant);
  end;

var
  OrderDocEditForm: TOrderDocEditForm;

implementation

uses cmDBUnit, UsersInfo;

{$R *.dfm}

procedure TOrderDocEditForm.btn_SaveClick(Sender: TObject);
begin
  SaveRec;
end;

procedure TOrderDocEditForm.cbb_ArcObjectPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(cbb_ArcObject.EditValue);
end;

procedure TOrderDocEditForm.cbb_OperTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  TBindings.Notify(Sender, 'EditValue');
end;

procedure TOrderDocEditForm.cbb_OperTypePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= cbb_OperType.ItemIndex<0;
end;

procedure TOrderDocEditForm.cbb_WorkerPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(cbb_Worker.EditValue);
end;

constructor TOrderDocEditForm.Create(AOwner: TComponent; aCode: Variant);
begin
  inherited Create(AOwner);
  LoadForm(prop1, Self.Name);
  fOrderDoc:= TOrderDoc.Create;
  fOrderDoc.Code:= aCode;

  PrepareDS;
  InitLinks;
end;

procedure TOrderDocEditForm.dt_DocumDatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(dt_DocumDate.EditValue);
end;

procedure TOrderDocEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(fOrderDoc) then
     FreeAndNil(fOrderDoc);
  Action := caFree;
end;

procedure TOrderDocEditForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
     ModalResult:= mrCancel;
end;

procedure TOrderDocEditForm.InitLinks;
begin
  if (fOrderDoc.Code<>null) then
     fOrderDoc.LoadRec(fOrderDoc.Code);
  fOrderDoc.Bind('OperType', cbb_OperType, 'ItemIndex');
  fOrderDoc.Bind('DocumDate', dt_DocumDate, 'EditValue');
  fOrderDoc.Bind('State', cbb_State, 'EditValue');
  fOrderDoc.Bind('ArcObject', cbb_ArcObject, 'EditValue');
  fOrderDoc.Bind('Worker', cbb_Worker, 'EditValue');
  fOrderDoc.Bind('Note', txt_Note, 'EditValue');
  fOrderDoc.Bind('Oper', UserInfo, 'Code');
end;

procedure TOrderDocEditForm.PrepareDS;
begin
  if DataManager.WorkerList.State in [dsInactive] then
    DataManager.WorkerList.Open;
  src_Worker.DataSet:= DataManager.WorkerList;

  if DataManager.MoveStateList.State in [dsInactive] then
    DataManager.MoveStateList.Open;
  src_MoveState.DataSet:= DataManager.MoveStateList;

  DataManager.ArcObjectList.Open;
  src_ARCOBJECT.DataSet:= DataManager.ArcObjectList;
end;

procedure TOrderDocEditForm.SaveRec;
begin
  if not Validate then Exit;
  if VarIsType(fOrderDoc.Code,[varNull, varEmpty]) then
     fOrderDoc.CreateRec else //Insert
     fOrderDoc.EditRec(fOrderDoc.Code);
  ModalResult:= mrOk;
end;

function TOrderDocEditForm.Validate: Boolean;
begin
  Result:= False;
  if not cbb_OperType.ValidateEdit(false) then Exit;
  if not dt_DocumDate.ValidateEdit(false) then Exit;
  if not cbb_ArcObject.ValidateEdit(false) then Exit;
  if not cbb_Worker.ValidateEdit(false) then Exit;
  Result:= True;
end;

initialization

RegisterClass(TOrderDocEditForm);

end.
