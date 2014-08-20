unit OrderSpecEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxClasses, DbDataHelpers;

type
  TOrderSpecEditForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    cbb_ARCPLACE: TcxLookupComboBox;
    lItmlc1Item1: TdxLayoutItem;
    src_ARCPLACE: TDataSource;
    btn_Save: TcxButton;
    lItmlc1Item11: TdxLayoutItem;
    btnCancel: TcxButton;
    lItmlc1Item12: TdxLayoutItem;
    grplc1Group1: TdxLayoutGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbb_ARCPLACEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    curentKeyboard: LongWord;
    fOrderCode: Variant;
    procedure PrepareDS;
    function Validate: Boolean;
    procedure Showkeyb;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; aCode, aOrderCode: Variant);
  end;

var
  OrderSpecEditForm: TOrderSpecEditForm;

  const
  CNT_LAYOUT = 2; // количество известных раскладок
  ENGLISH = 1033;
  RUSSIAN = 1049;

implementation

uses cmDBUnit, KeyBoard;

{$R *.dfm}


procedure TOrderSpecEditForm.btn_SaveClick(Sender: TObject);
begin
  if not Validate then Exit;
  ModalResult:= mrOk;
end;

procedure TOrderSpecEditForm.cbb_ARCPLACEPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(cbb_ARCPLACE.EditValue);
end;

constructor TOrderSpecEditForm.Create(AOwner: TComponent; aCode, aOrderCode: Variant);
begin
  inherited Create(AOwner);
  LoadForm(prop1,Self.Name);
  fOrderCode:= aOrderCode;
  PrepareDS;
  if not VarIsType(aCode, [varNull, varEmpty]) then
   cbb_ARCPLACE.EditValue:=  DataManager.ExecuteScalar('SELECT ARCPLACE FROM ORDERSPEC WHERE (CODE = :CODE)',[aCode]);
end;

procedure TOrderSpecEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataManager.ArcPlaceList.Close;
  Action:= caFree;
end;

procedure TOrderSpecEditForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
     ModalResult:= mrCancel;
end;

procedure TOrderSpecEditForm.PrepareDS;
var
  Q: TDataSet;
begin
  Q:= DataManager.SelectData('SELECT * FROM ORDERDOC WHERE (CODE = :CODE)',[fOrderCode]);
  try
    with DataManager.ArcPlaceList do begin
      Close;
      case Q.FieldByName('OPERTYPE').AsVariant of
        0: MacroByName('Where').AsRaw:= 'WHERE (STATE = 2 and WORKER = '+VarToStr(Q.FieldByName('WORKER').AsVariant)+')';
        1: MacroByName('Where').AsRaw:= 'WHERE STATE = 1';
        2: MacroByName('Where').AsRaw:= 'WHERE STATE = 1';
        else
          raise Exception.Create('Не определен тип документа!');
      end;
      Open;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TOrderSpecEditForm.Showkeyb;
begin
  lItmlc1Item1.Caption:= 'Папка ['+NameKeyboardLayout(GetActiveKbdLayout)+']';
end;

function TOrderSpecEditForm.Validate: Boolean;
begin
  Result:= False;
  if not cbb_ARCPLACE.ValidateEdit(false) then Exit;
  Result:= True;
end;

initialization
 RegisterClass(TOrderSpecEditForm);
end.
