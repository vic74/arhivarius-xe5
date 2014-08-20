unit DogDocPartial;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  SingletonTemplate, System.Variants,
  dxmdaset, System.IOUtils, Vcl.Dialogs,FileCtrl,
  //firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  //
  Data.DB;
type
{ TDogDoc }
{$M+}
  TDogDocPartial = class(TSingleton)
  private
    fQUniq: TFDQuery;
  protected
    constructor Create; override;
  public
    destructor Destroy; override;
  published
    procedure AddRec(AOwner: TComponent; ds: TFDQuery; docdop: Variant; _fixFolder, _complDoc: integer);
    procedure EditRec(AOwner: TComponent; ds: TFDQuery);
    procedure DeleteRec(ds: TFDQuery);
    procedure SetDogDocArcplece(dopdog: Variant; isAll: Boolean);
    procedure CleadArcPlace(dopdog: Variant);
    procedure GetDistinctArcPlace(list: TStrings; dopdog: Variant);
    procedure GetMemDistinctArcPlace(mem: TdxMemData; dopdog: Variant);
    function GetDSDistinctArcPlace(dopdog: Variant): TFDQuery;
    function GetRandomArcPlace : Variant;
    function GetNameArcPlace(code: Integer): string;
    function GetArcplaceCode(strcode: string): integer;
    function SetComplectDocForArcPlace(arcPlace ,cd: Variant): Boolean;
    function GetComplDocName(_complDoc: Variant): string;
    function GetComplDocByArcPlace(arcPlace: Variant): Variant;
    function SaveScanInBlob(_dogDoc: Variant; FullFilePath: string): Boolean;
    function LoadScanFromBlob(code: Variant; Dir: string): Boolean;
    function SaveScan(_dogDoc: Variant): Boolean;
  end;

  function DogDoc: TDogDocPartial;
{$M-}
implementation

{ TDogDoc }

uses DogDocAddFrm, cmDBUnit, LoadingSplash;
function DogDoc: TDogDocPartial;
begin
  Result:= TDogDocPartial.GetInstance;
end;

procedure TDogDocPartial.AddRec(AOwner: TComponent; ds: TFDQuery; docdop: Variant; _fixFolder, _complDoc: integer);
var
  F: TDogDocAddForm;
begin
  //F:= TDogDocAddForm.Create(AOwner, ds, docdop, true, _fixFolder, _complDoc);
  //F.ShowModal;
end;

procedure TDogDocPartial.CleadArcPlace(dopdog: Variant);
begin
  if Application.MessageBox('Вы действительно хотите очистить распределение по папкам?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    try
      cmDB.fdb.ExecSQL('execute procedure CLEARARCPLACE(:DOGDOP)',[dopdog]);
    except
      on e: Exception do
      raise Exception.Create(e.message);
    end;
  end;
end;

constructor TDogDocPartial.Create;
begin
  inherited;
  fQUniq:= TFDQuery.Create(nil);

  //fQUniq:= GetQueryForUse(cmDb.RT, 'select STRCODE, ARCPLACE from GETUNIQARCPLACE(:CODE)');
  //fQUniq.Options:=[qoStartTransaction];
end;

procedure TDogDocPartial.DeleteRec(ds: TFDQuery);
begin
  if Application.MessageBox('Вы действительно хотите удалить запиь?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    ds.Delete;
  end;
end;

destructor TDogDocPartial.Destroy;
begin
  //FreeQueryForUse(fQUniq);
  inherited;
end;

procedure TDogDocPartial.EditRec(AOwner: TComponent; ds: TFDQuery);
var
  F: TDogDocAddForm;
begin
  //F:= TDogDocAddForm.Create(AOwner, ds, null, false);
  //F.ShowModal;
end;

function TDogDocPartial.GetArcplaceCode(strcode: string): integer;
var
  code: Variant;
begin
  try
    code:= cmDB.fdb.ExecSQLScalar('SELECT CODE FROM ARCPLACE WHERE STRCODE=:STRCODE',[strcode]);
    if code = null then
       code:= -1;
    Result:= code;
  finally

  end;
end;

function TDogDocPartial.GetComplDocByArcPlace(arcPlace: Variant): Variant;
begin
  try
    Result:= cmDB.fdb.ExecSQLScalar('select COMPLECTDOC from ARCPLACE where CODE = :code',[arcPlace]);
  finally

  end;
end;

function TDogDocPartial.GetComplDocName(_complDoc: Variant): string;
begin
  try
    Result:= cmDB.fdb.ExecSQLScalar('select NAME from COMPLECTDOC where CODE = :code',[_complDoc]);
  finally

  end;
end;

procedure TDogDocPartial.GetDistinctArcPlace(list: TStrings; dopdog: Variant);
begin
  list.Clear;
  fQUniq.ParamByName('CODE').AsInteger:= dopdog;
  fQUniq.Open;
  while not fQUniq.Eof do begin
    if Trim(fQUniq.FIeldByName('STRCODE').AsString)<>'' then
    list.Add(fQUniq.FIeldByName('STRCODE').AsString);
    fQUniq.Next;
  end;
end;

function TDogDocPartial.GetDSDistinctArcPlace(dopdog: Variant): TFDQuery;
begin
  fQUniq.ParamByName('CODE').AsInteger:= dopdog;
  fQUniq.Open;
  Result:= fQUniq;
end;

procedure TDogDocPartial.GetMemDistinctArcPlace(mem: TdxMemData; dopdog: Variant);
begin
  fQUniq.ParamByName('CODE').AsInteger:= dopdog;
  fQUniq.Open;
  mem.Close; mem.Open;
      mem.Append;
      mem.FieldByName('ARCPLACE').AsVariant:= null;
      mem.FieldByName('STRCODE').AsVariant:= '';
      mem.Post;

  while not fQUniq.Eof do begin
      if fQUniq.FieldByName('ARCPLACE').AsVariant<>null then begin
        mem.Append;
        mem.FieldByName('ARCPLACE').AsVariant:= fQUniq.FieldByName('ARCPLACE').AsVariant;
        mem.FieldByName('STRCODE').AsVariant:= fQUniq.FieldByName('STRCODE').AsVariant;
        mem.Post;
      end;
    fQUniq.Next;
  end;
end;

function TDogDocPartial.GetNameArcPlace(code: Integer): string;
begin
  try
    Result:= cmDB.fdb.ExecSQLScalar('SELECT STRCODE FROM ARCPLACE WHERE CODE=:CODE',[code]);
  finally

  end;
end;

function TDogDocPartial.GetRandomArcPlace: Variant;
begin
  try
    Result:= cmDB.fdb.ExecSQLScalar('select ARCPLACE from RANDARCPLACE');
  finally

  end;
end;

function TDogDocPartial.LoadScanFromBlob(code: Variant; Dir: string): Boolean;
var
  Q: TFDQuery;
  FName, FilePath: string;
begin
  Result:= False;

  //Q:= GetQueryForUse(cmDb.RT,'SELECT DATAPATH, SCANDATA FROM SCANLIST WHERE CODE = :CODE');

  try
    //Q.ParamByName('CODE').AsVariant:= code;
    //Q.ExecQuery;

    //FName:= Q.FN('DATAPATH').AsString;
    if FName = '' then Exit;
    if not DirectoryExists(Dir) then begin
      MessageDlg('Неверный каталог!', mtError, [mbOK], 0);
      Exit;
    end;
    FilePath:= IncludeTrailingBackslash(Dir)+FName;
    SplashVisibility(True, 'Подождите, идет скачивание файла...');
    //Q.FN('SCANDATA').SaveToFile(FilePath);
    Result:= True;
  finally

    SplashVisibility(False);
  end;
end;

function TDogDocPartial.SaveScan(_dogDoc: Variant): Boolean;
var
  dlgOpen: TOpenDialog;
begin
  dlgOpen:= TOpenDialog.Create(nil);
  try
    dlgOpen.Options:=[ofHideReadOnly,ofFileMustExist,ofEnableSizing];
    if dlgOpen.Execute then
      Result:= SaveScanInBlob(_dogDoc, dlgOpen.FileName);
  finally
    FreeAndNil(dlgOpen);
  end;
end;

function TDogDocPartial.SaveScanInBlob(_dogDoc: Variant; FullFilePath: string): Boolean;
var
  Q: TFDQuery;
  FName: string;
  FSize: Integer;
  FData: TDateTime;

  function GetFileSize(p_sFilePath : string) : Int64;
  var
    oFile : file of Byte;
  begin
    Result := -1;
    AssignFile(oFile, p_sFilePath);
    try
      Reset(oFile);
      Result := FileSize(oFile);
    finally
      CloseFile(oFile);
    end;
  end;

begin
  Result:= False;
  if not FileExists(FullFilePath) then
     Exit;
  //Q:= GetQueryForUse(cmDb.WT,'insert into SCANLIST (DOGDOC, DATAPATH, SCANDATA, FILESIZE, FILEDATA) values (:DOGDOC, :DATAPATH, :SCANDATA, :FILESIZE, :FILEDATA)');

  SplashVisibility(True, 'Подождите, идет загрузка файла...');
  try
    FName:= ExtractFileName(FullFilePath);
    FSize:= GetFileSize(FullFilePath);
    FData:= TFile.GetCreationTime(FullFilePath);
    //Q.ParamByName('DOGDOC').AsVariant:= _dogDoc;
    //Q.ParamByName('DATAPATH').AsVariant:= FName;
    //Q.ParamByName('SCANDATA').LoadFromFile(FullFilePath);
    //Q.ParamByName('FILESIZE').AsVariant := FSize;
    //Q.ParamByName('FILEDATA').AsVariant := FData;
    //Q.ExecQuery;
    Result:= True;
  finally

    SplashVisibility(False);
  end;
end;

function TDogDocPartial.SetComplectDocForArcPlace(arcPlace ,cd: Variant): boolean;
begin
  Result:= False;
  if ((arcPlace < 0) or (arcPlace = null)) then Exit;
  if (cd = null) or (cd<0) then Exit;

  try
    cmDB.fdb.ExecSQL('update ARCPLACE set COMPLECTDOC = :COMPLECTDOC where (CODE = :CODE)',[cd,arcPlace]);
    Result:= True;
  finally

  end;
end;

procedure TDogDocPartial.SetDogDocArcplece(dopdog: Variant; isAll: Boolean);
var
  s: string;

  procedure DistributeRec;
  begin
    try
      cmDB.fdb.ExecSQL('execute procedure SETDOGDOPARCPLACE(:DOPDOG, :ISALL)',[dopdog,Integer(isAll)]);
    finally

    end;
  end;

begin
  case isAll of
    true: s:= 'Вы действительно хотите внести незакрепленные документы в одну папку?';
    false: s:= 'Вы действительно хотите распределить документы по папкам?';
  end;
  if Application.MessageBox(PWideChar(s), 'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    DistributeRec;
  end;
end;

end.
