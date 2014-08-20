unit DogDocAddFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxSpinEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  dxmdaset,
  System.Bindings.Helper,
  //firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  //
  DogDocUnit,
  cxGridTableView, cxGridDBTableView, cxGrid, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, DbDataHelpers;

type
  TDogDocAddForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    cbb_DocType: TcxLookupComboBox;
    lItmlc1Item1: TdxLayoutItem;
    txt_NOMER: TcxTextEdit;
    lItmlc1Item11: TdxLayoutItem;
    dt_DATA: TcxDateEdit;
    lItmlc1Item12: TdxLayoutItem;
    spn_PAGENUM: TcxSpinEdit;
    lItmlc1Item13: TdxLayoutItem;
    txt_NOTE: TcxTextEdit;
    lItmlc1Item14: TdxLayoutItem;
    cbb_COMPLECTDOC: TcxLookupComboBox;
    lItmlc1Item15: TdxLayoutItem;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    grplc1Group5: TdxLayoutGroup;
    btn_AddCompl: TcxButton;
    lItmlc1Item16: TdxLayoutItem;
    btn_Save: TcxButton;
    lItmlc1Item17: TdxLayoutItem;
    btnSaveAndClose: TcxButton;
    lItmlc1Item18: TdxLayoutItem;
    grplc1Group6: TdxLayoutGroup;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    lItmlc1Item19: TdxLayoutItem;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    btnSelect: TcxButton;
    lItmlc1Item110: TdxLayoutItem;
    src_DOCTYPE: TDataSource;
    md1: TdxMemData;
    md1strcode: TStringField;
    md1ARCPLACE: TIntegerField;
    cbb_Folder: TcxLookupComboBox;
    lc1Item1: TdxLayoutItem;
    ds_md1: TDataSource;
    src_COMPLECTDOC: TDataSource;
    btn_Cancel: TcxButton;
    itmlc1Item2: TdxLayoutItem;
    dxlytgrplc1Group1: TdxLayoutGroup;
    gpr_DocType: TdxLayoutGroup;
    grd4: TcxGrid;
    v4: TcxGridDBTableView;
    clv4CODE: TcxGridDBColumn;
    clv4NAME: TcxGridDBColumn;
    l4: TcxGridLevel;
    itmlc1Item3: TdxLayoutItem;
    btn_DocType: TcxButton;
    itmlc1Item21: TdxLayoutItem;
    grplc1Group7: TdxLayoutGroup;
    btn_DocTypeSelect: TcxButton;
    itmlc1Item22: TdxLayoutItem;
    btn_DocTypeCancel: TcxButton;
    itmlc1Item23: TdxLayoutItem;
    grplc1Group8: TdxLayoutGroup;
    btn_SaveScan: TcxButton;
    itmlc1Item24: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_AddComplClick(Sender: TObject);
    procedure v1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSelectClick(Sender: TObject);
    procedure cbb_DocTypePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure txt_NOMERPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dt_DATAPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure spn_PAGENUMPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btn_SaveClick(Sender: TObject);
    procedure btnSaveAndCloseClick(Sender: TObject);
    procedure cbb_DocTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cbb_COMPLECTDOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_COMPLECTDOCPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ds_COMPLECTDOCBeforePost(DataSet: TDataSet);
    procedure btn_CancelClick(Sender: TObject);
    procedure ds_COMPLECTDOCAfterPost(DataSet: TDataSet);
    procedure btn_DocTypeClick(Sender: TObject);
    procedure btn_DocTypeSelectClick(Sender: TObject);
    procedure btn_DocTypeCancelClick(Sender: TObject);
    procedure ds_DOCTYPEAfterPost(DataSet: TDataSet);
    procedure btn_SaveScanClick(Sender: TObject);
    procedure cbb_DocTypePropertiesEditValueChanged(Sender: TObject);
    procedure txt_NOMERPropertiesEditValueChanged(Sender: TObject);
    procedure dt_DATAPropertiesEditValueChanged(Sender: TObject);
    procedure spn_PAGENUMPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_FolderPropertiesEditValueChanged(Sender: TObject);
    procedure txt_NOTEPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fDogDoc: TDogDoc;
    fCode: Variant;
    isChange: Boolean;
    _fixFolder: Variant;
    mem: TdxMemData;
    ds: TFDQuery;
    newRec: Boolean;
    dopdog: Variant;
    procedure PrepareDS;
    function Validate: Boolean;
    procedure SaveRec(isClose: Boolean);
    procedure FillControls;
    procedure MemCreate;
    procedure InitLinks;
    procedure onChange(Sender: TObject);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; aDopDog: Variant; aCode: Variant;
       fixFolder: integer = -1; _complDoc: integer = -1);

  end;

var
  DogDocAddForm: TDogDocAddForm;

implementation

uses cmDBUnit, DogDocPartial, LoadingSplash;

{$R *.dfm}


procedure TDogDocAddForm.btnSaveAndCloseClick(Sender: TObject);
begin
  SaveRec(true);
end;

procedure TDogDocAddForm.btnSelectClick(Sender: TObject);
begin
  v1.DataController.Post(true);
  cbb_COMPLECTDOC.EditValue:= v1.GetColumnByFieldName('CODE').EditValue;
  grplc1Group4.ItemIndex:= 0;
end;

procedure TDogDocAddForm.btn_AddComplClick(Sender: TObject);
begin
  grplc1Group4.ItemIndex:= 1;
end;

procedure TDogDocAddForm.btn_CancelClick(Sender: TObject);
begin
  grplc1Group4.ItemIndex:= 0;
end;

procedure TDogDocAddForm.btn_DocTypeCancelClick(Sender: TObject);
begin
  grplc1Group4.ItemIndex:= 0;
end;

procedure TDogDocAddForm.btn_DocTypeClick(Sender: TObject);
begin
  grplc1Group4.ItemIndex:= 2;
end;

procedure TDogDocAddForm.btn_DocTypeSelectClick(Sender: TObject);
begin
  v4.DataController.Post(true);
  cbb_DocType.EditValue:= v4.GetColumnByFieldName('CODE').EditValue;
  grplc1Group4.ItemIndex:= 0;
end;

procedure TDogDocAddForm.btn_SaveClick(Sender: TObject);
begin
  SaveRec(False);
end;

procedure TDogDocAddForm.btn_SaveScanClick(Sender: TObject);
begin
  if (VarIsType(fDogDoc.Code,[varNull, varEmpty])) then
     raise Exception.Create('Ошибка получения кода записи!');
  fDogDoc.AttachScan(fDogDoc.Code);
end;

procedure TDogDocAddForm.cbb_COMPLECTDOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // if Key = VK_RETURN then begin
 //   cbb_COMPLECTDOC.PostEditValue;
 //   Key := VK_TAB;
 // end;
end;

procedure TDogDocAddForm.cbb_COMPLECTDOCPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(cbb_COMPLECTDOC.EditValue);
end;

procedure TDogDocAddForm.cbb_DocTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // if Key = VK_RETURN then Key := VK_TAB;
end;

procedure TDogDocAddForm.cbb_DocTypePropertiesEditValueChanged(Sender: TObject);
begin
  onChange(Sender);
end;

procedure TDogDocAddForm.cbb_DocTypePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(cbb_DocType.EditValue);
end;

procedure TDogDocAddForm.cbb_FolderPropertiesEditValueChanged(Sender: TObject);
begin
  onChange(Sender);
end;

constructor TDogDocAddForm.Create(AOwner: TComponent;
  aDopDog: Variant; aCode: Variant; fixFolder, _complDoc: integer);
begin
  inherited Create(AOwner);
  LoadForm(prop1,Self.Name);
  //
  fDogDoc:= TDogDoc.Create;
  fDogDoc.DogDop:= aDopDog;
  fDogDoc.Code:= aCode;
  fDogDoc.Arcplace:= fixFolder;
  //ds:= dogdoc;
  //dopdog:= dop;
  //newRec:= isNew;
  //_fixFolder:= fixFolder;
  //if _fixFolder = null then
  //   _fixFolder := -1;
  fDogDoc.GetMemDistinctArcPlace(md1, fDogDoc.DogDop);
  PrepareDS;
   //cbb_Folder.EditValue:= _fixFolder;
   cbb_Folder.Enabled:= fDogDoc.Arcplace = -1;
   //if _complDoc>0 then
   //  cbb_COMPLECTDOC.EditValue:= _complDoc;

  itmlc1Item24.Visible:= not VarIsType(fDogDoc.Code,[varNull, varEmpty]);

  InitLinks;
end;

procedure TDogDocAddForm.ds_COMPLECTDOCAfterPost(DataSet: TDataSet);
begin
   {$MESSAGE WARN 'restruct'}
  //cmDb.ds_COMPLECTDOC.CloseOpen(false);
end;

procedure TDogDocAddForm.ds_COMPLECTDOCBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('KONTRAGENT').AsVariant = null then
     DataSet.FieldByName('KONTRAGENT').AsVariant := currKontr;
end;

procedure TDogDocAddForm.ds_DOCTYPEAfterPost(DataSet: TDataSet);
begin
  {$MESSAGE WARN 'restruct'}
  //cmDb.ds_DOCTYPE.CloseOpen(false);
end;

procedure TDogDocAddForm.dt_DATAPropertiesEditValueChanged(Sender: TObject);
begin
  onChange(Sender);
end;

procedure TDogDocAddForm.dt_DATAPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsNull(dt_DATA.EditValue);
end;

procedure TDogDocAddForm.FillControls;
begin
  {with ds do begin
    cbb_DocType.EditValue:= FieldByName('DOCTYPE').AsVariant;
    txt_NOMER.EditValue:= FieldByName('NOMER').AsVariant;
    dt_DATA.EditValue:= FieldByName('DATA').AsVariant;
    spn_PAGENUM.EditValue:= FieldByName('PAGENUM').AsVariant;
    txt_NOTE.EditValue:=FieldByName('NOTE').AsVariant;
    cbb_COMPLECTDOC.EditValue:= FieldByName('COMPLECTDOC').AsVariant;
    cbb_Folder.EditValue:= FieldByName('ARCPLACE').AsVariant;
    //cbb_Folder.Text:= VarToStr(FN('STRCODE').AsVariant);
  end;}
end;

procedure TDogDocAddForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fDogDoc) then
     FreeAndNil(fDogDoc);
  Action:= caFree;
end;

procedure TDogDocAddForm.FormCreate(Sender: TObject);
begin
  isChange:= True;
  btn_Save.Enabled:= False;

  InitLinks;
end;

procedure TDogDocAddForm.FormShow(Sender: TObject);
begin
  cbb_DocType.SetFocus;
end;

procedure TDogDocAddForm.InitLinks;
begin
  if not (VarIsType(fDogDoc.Code,[varNull, varEmpty])) then
    fDogDoc.LoadRecord(fDogDoc.Code);
  fDogDoc.Bind('DocType',cbb_DocType,'EditValue');
  fDogDoc.Bind('Nomer',txt_NOMER,'EditValue');
  fDogDoc.Bind('Data',dt_DATA,'EditValue');
  fDogDoc.Bind('PageNum',spn_PAGENUM,'EditValue');
  fDogDoc.Bind('Note',txt_NOTE,'EditValue');
  fDogDoc.Bind('ComplectDoc',cbb_COMPLECTDOC,'EditValue');
  fDogDoc.Bind('Arcplace',cbb_Folder,'EditValue');
  fDogDoc.Bind('DogDop',Self,'dopdog');
  fDogDoc.Bind('Code',Self,'fCode');
end;

procedure TDogDocAddForm.MemCreate;
begin

end;

procedure TDogDocAddForm.onChange(Sender: TObject);
begin
  isChange:= True;
  btn_Save.Enabled:= isChange;
  TBindings.Notify(Sender, 'EditValue');
end;

procedure TDogDocAddForm.PrepareDS;
begin
  grplc1Group4.ItemIndex:= 0;
  grplc1Group4.TabbedOptions.HideTabs:= True;
  //
  {$REGION 'COMPLECTDOC'}
  with DataManager.ComplectDocList do begin
    SetWriteOpt(False);
    Close;
    MacroByName('Where').AsRaw := 'WHERE KONTRAGENT =:KONTRAGENT';
    ParamByName('KONTRAGENT').AsInteger:= currKontr;
    Open;
  end;
  src_COMPLECTDOC.DataSet:= DataManager.ComplectDocList;
  {$ENDREGION}
  {$REGION 'DOCTYPE'}
  with DataManager.DocTypeList do begin
    Close;
    MacroByName('Order').AsRaw:='ORDER BY NAME';
    SetWriteOpt;
  end;
  src_DOCTYPE.DataSet:= DataManager.DocTypeList;
  {$ENDREGION}
end;

procedure TDogDocAddForm.SaveRec(isClose: Boolean);
  procedure CreateRec;
  begin
    with ds do begin
      Append;
      FieldByName('DOPDOG').AsVariant:= dopdog;
      FieldByName('DOCTYPE').AsVariant:= cbb_DocType.EditValue;
      FieldByName('NOMER').AsVariant:= txt_NOMER.EditingValue;
      FieldByName('DATA').AsVariant:= dt_DATA.EditValue;
      FieldByName('PAGENUM').AsVariant:= spn_PAGENUM.EditValue;
      FieldByName('NOTE').AsVariant:= VarToStr(txt_NOTE.EditingValue);
      FieldByName('STATE').AsVariant:= null;
      if _fixFolder>0 then
         FieldByName('ARCPLACE').AsVariant:= _fixFolder else
         FieldByName('ARCPLACE').AsVariant:= cbb_Folder.EditValue;
      FieldByName('COMPLECTDOC').AsVariant:= cbb_COMPLECTDOC.EditValue;
      Post;
    end;
    //ds.CloseOpen(false);
    ds.Last;
    itmlc1Item24.Visible:=True;
  end;
  procedure EditRec;
  var
    code: Variant;
  begin
    code:= ds.FieldByName('CODE').AsVariant;
    try
      with ds do begin
        Edit;
        FieldByName('DOCTYPE').AsVariant:= cbb_DocType.EditValue;
        FieldByName('NOMER').AsVariant:= txt_NOMER.EditingValue;
        FieldByName('DATA').AsVariant:= dt_DATA.EditValue;
        FieldByName('PAGENUM').AsVariant:= spn_PAGENUM.EditValue;
        FieldByName('NOTE').AsVariant:= VarToStr(txt_NOTE.EditingValue);
        FieldByName('COMPLECTDOC').AsVariant:= cbb_COMPLECTDOC.EditValue;
        FieldByName('ARCPLACE').AsVariant:= cbb_Folder.EditValue;
        Post;
      end;
    finally
      //ds.CloseOpen(false);
      ds.Locate('CODE',code,[]);
    end;
  end;

begin
  if not Validate then Exit;
  if isChange = False then
    if Application.MessageBox('Вы действительно хотите повторно сохранить данную запись?',
      'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then Exit;

      if VarIsType(fDogDoc.Code,[varNull, varEmpty]) then fDogDoc.CreateRec
        else fDogDoc.UpdateRec(fDogDoc.Code);
      isChange:= False;
      btn_Save.Enabled:= False;
      cbb_DocType.SetFocus;
      if isClose then
         ModalResult:= mrOk;
end;

procedure TDogDocAddForm.spn_PAGENUMPropertiesEditValueChanged(Sender: TObject);
begin
  onChange(Sender);
end;

procedure TDogDocAddForm.spn_PAGENUMPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= spn_PAGENUM.EditingValue<1;
end;

procedure TDogDocAddForm.txt_NOMERPropertiesEditValueChanged(Sender: TObject);
begin
  onChange(Sender);
end;

procedure TDogDocAddForm.txt_NOMERPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error:= VarIsEmpty(DisplayValue);
end;

procedure TDogDocAddForm.txt_NOTEPropertiesEditValueChanged(Sender: TObject);
begin
  onChange(Sender);
end;

procedure TDogDocAddForm.v1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN: if v1.DataController.EditState <> [] then  v1.DataController.Post;
  end;
end;

function TDogDocAddForm.Validate: Boolean;
begin
  Result:= False;
  if not cbb_DocType.ValidateEdit(False) then Exit;
  if not txt_NOMER.ValidateEdit(false) then Exit;
  if not dt_DATA.ValidateEdit(false) then Exit;
  if not spn_PAGENUM.ValidateEdit(false) then Exit;
  //if not cbb_COMPLECTDOC.ValidateEdit(false) then Exit;
  Result:= True;
end;

initialization
 RegisterClass(TDogDocAddForm);
end.
