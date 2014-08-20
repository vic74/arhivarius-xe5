unit DogDopEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Data.DB, System.Bindings.Helper,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxClasses, DogDopUnit;

type
  TDogDopEditForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    txt_DOPNUM: TcxTextEdit;
    lItmlc1Item1: TdxLayoutItem;
    dt_DOPDATE: TcxDateEdit;
    lItmlc1Item11: TdxLayoutItem;
    txt_NOTE: TcxTextEdit;
    lItmlc1Item12: TdxLayoutItem;
    btn_Save: TcxButton;
    lItmlc1Item13: TdxLayoutItem;
    btn_Cancel: TcxButton;
    lItmlc1Item14: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_DOPNUMPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dt_DOPDATEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txt_DOPNUMPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    //ds: TpFIBDataSet;
    fDogDop: TDogDop;
    procedure InitLinks;

    procedure SaveRec;
    function Validate: Boolean;
  public
    { Public declarations }
     constructor Create(AOwner: TComponent; dogdopCode: Variant; dog: Variant);
  end;

var
  DogDopEditForm: TDogDopEditForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TDogDopEditForm.btn_SaveClick(Sender: TObject);
begin
  SaveRec;
end;

constructor TDogDopEditForm.Create(AOwner: TComponent; dogdopCode: Variant;  dog: Variant);
begin
  inherited Create(AOwner);
  LoadForm(prop1,Self.Name);
  //
  fDogDop:= TDogDop.Create;
  fDogDop.Dog:= dog;
  fDogDop.Code:= dogdopCode;
  //
  InitLinks;
end;

procedure TDogDopEditForm.dt_DOPDATEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(DisplayValue);
end;

procedure TDogDopEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fDogDop) then
     FreeAndNil(fDogDop);
  Action:= caFree;
end;

procedure TDogDopEditForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
     ModalResult:= mrCancel;
end;

procedure TDogDopEditForm.InitLinks;
begin
  if (fDogDop.Code<>null) then
     fDogDop.LoadRec(fDogDop.Code);
  fDogDop.Bind('DopNum', txt_DOPNUM, 'EditValue');
  fDogDop.Bind('DopDate', dt_DOPDATE, 'EditValue');
  fDogDop.Bind('Note', txt_NOTE, 'EditValue');
  //fDogDop.Bind('Dog', Self, 'fDogCode');
  //fDogDop.Bind('Code', Self, 'fDogDopCode');
end;

procedure TDogDopEditForm.SaveRec;
begin
  if not Validate then Exit;
  if VarIsType(fDogDop.Code,[varNull, varEmpty]) then
     fDogDop.CreateRec else
     fDogDop.UpdateRec(fDogDop.Code);
  ModalResult:= mrOk;
end;

procedure TDogDopEditForm.txt_DOPNUMPropertiesEditValueChanged(Sender: TObject);
begin
  TBindings.Notify(Sender, 'EditValue');
end;

procedure TDogDopEditForm.txt_DOPNUMPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
   Error:= VarIsEmpty(DisplayValue);
end;

function TDogDopEditForm.Validate: Boolean;
begin
  Result:= False;
  if not txt_DOPNUM.ValidateEdit(false) then Exit;
  if not dt_DOPDATE.ValidateEdit(false) then Exit;
  Result:= True;
end;

initialization
 RegisterClass(TDogDopEditForm);
end.
