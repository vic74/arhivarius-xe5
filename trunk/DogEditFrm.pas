unit DogEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  System.Bindings.Helper, BoundHelpers,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
   Data.DB, System.IOUtils,
  Vcl.StdCtrls, cxButtons, cxButtonEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxClasses, DbDataHelpers, DocUnit;

type
  TDogEditForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_kontr: TcxLookupComboBox;
    lItmlc1Item1: TdxLayoutItem;
    txt_NOMDOG: TcxTextEdit;
    lItmlc1Item11: TdxLayoutItem;
    dt_DATADOG: TcxDateEdit;
    lItmlc1Item12: TdxLayoutItem;
    dt_DATAENDDOG: TcxDateEdit;
    lItmlc1Item13: TdxLayoutItem;
    btn_FIleName: TcxButtonEdit;
    lItmlc1Item14: TdxLayoutItem;
    btn_Save: TcxButton;
    lItmlc1Item15: TdxLayoutItem;
    btn_Cancel: TcxButton;
    lItmlc1Item16: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    OpenDialog1: TFileOpenDialog;
    ds_Kontr: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cbb_kontrPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txt_NOMDOGPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dt_DATADOGPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dt_DATAENDDOGPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dt_DATAENDDOGPropertiesChange(Sender: TObject);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    fDog: TDog;
    fDogCode: Variant;

    procedure SaveRec;
    function Validate: Boolean;
    procedure InitLinks;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; dogCode: Variant);
  end;

var
  DogEditForm: TDogEditForm;

implementation

uses cmDBUnit;

{$R *.dfm}

procedure TDogEditForm.btn_CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TDogEditForm.btn_SaveClick(Sender: TObject);
begin
  SaveRec;
end;

procedure TDogEditForm.cbb_kontrPropertiesEditValueChanged(Sender: TObject);
begin
  TBindings.Notify(Sender, 'EditValue');
end;

procedure TDogEditForm.cbb_kontrPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsNull(cbb_kontr.EditValue);
end;

constructor TDogEditForm.Create(AOwner: TComponent; dogCode: Variant);
begin
  inherited Create(AOwner);
  LoadForm(prop1,Self.Name);
  fDogCode:= dogCode;
  if DataManager.KontragentList.State in [dsInactive] then
    DataManager.KontragentList.Open;
    ds_Kontr.DataSet:= DataManager.KontragentList;
  InitLinks;
end;

procedure TDogEditForm.dt_DATADOGPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsNull(dt_DATADOG.EditValue);
end;

procedure TDogEditForm.dt_DATAENDDOGPropertiesChange(Sender: TObject);
begin
  TBindings.Notify(Sender, 'EditValue');
end;

procedure TDogEditForm.dt_DATAENDDOGPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsNull(DisplayValue);
end;

procedure TDogEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fDog) then
    FreeAndNil(fDog);
  Action := caFree;
end;

procedure TDogEditForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

procedure TDogEditForm.InitLinks;
begin
  //
  fDog:= TDog.Create;
      if (fDogCode<>null) then
    fDog.LoadDogById(fDogCode);

  fDog.Bind('Kontragent', cbb_kontr, 'EditValue');
  fDog.Bind('NomDog', txt_NOMDOG, 'EditValue');
  fDog.Bind('DataDog', dt_DATADOG, 'EditValue');
  fDog.Bind('DataEndDog', dt_DATAENDDOG, 'EditValue');
end;

procedure TDogEditForm.SaveRec;
var
  path: string;
begin
  if not Validate then Exit;

  if (fDogCode=null) then
    fDog.CreateDog else     //создаем договор
    fDog.EditDog(fDogCode); //редактируем договор
  ModalResult := mrOk;
end;

procedure TDogEditForm.txt_NOMDOGPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarIsNull(DisplayValue);
end;

function TDogEditForm.Validate: Boolean;
begin
  result := false;
  if not cbb_kontr.ValidateEdit(false) then
    Exit;
  if not txt_NOMDOG.ValidateEdit(false) then
    Exit;
  if not dt_DATADOG.ValidateEdit(false) then
    Exit;
  if not dt_DATAENDDOG.ValidateEdit(false) then
    Exit;
  result := True;
end;

initialization

RegisterClass(TDogEditForm);

end.
