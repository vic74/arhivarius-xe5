unit DogDocUnit;

interface
uses
  Windows, Messages, SysUtils, Classes, BoundHelpers, DbDataHelpers, Data.DB,
  System.Variants, Vcl.Dialogs, System.IOUtils, Vcl.Forms,
      //firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DogDocScanListUnit, DogDocReport;

  type
{ TDogDoc }

  TDogDoc = class(TBoundObject)
  private
    fCode: Variant;
    fDogDop: Variant;
    fDocType: Variant;
    fComplectDoc: Variant;
    fNomer: Variant;
    fData: Variant;
    fPageNum: Variant;
    fNote: Variant;
    fArcplace: Variant;
    fState: Variant;
    fScanList: TScanList;
    fReport: TReport;
  protected
    procedure SetCode(const AValue: Variant);
    procedure SetDogDop(const AValue: Variant);
    procedure SetDocType(const AValue: Variant);
    procedure SetComplectDoc(const AValue: Variant);
    procedure SetNomer(const AValue: Variant);
    procedure SetData(const AValue: Variant);
    procedure SetPageNum(const AValue: Variant);
    procedure SetNote(const AValue: Variant);
    procedure SetArcplace(const AValue: Variant);
    procedure SetState(const AValue: Variant);
    //
    function SaveScanInBlob(aCode: Variant; FullFilePath: string): Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddRec(AOwner: TComponent; aDopDog: Variant; aCode: Variant; _fixFolder, _complDoc: integer);
    procedure CreateRec;
    procedure UpdateRec(aCode: Variant);
    procedure DeleteRec(aCode: Variant);
    procedure LoadRecord(aCode: Variant);
    procedure LoadDataByDogDop(aDogDop: Variant);
    procedure GetDistinctArcPlace(list: TStrings; aDopDog: Variant);
    procedure GetMemDistinctArcPlace(mem: TDataSet; aDopDog: Variant);
    function AttachScan(aCode: Variant): Boolean;
    procedure LoadScanList(list: TStrings; aCode: Variant);
    function ShowComplectDoc(AOwner: TComponent): Variant;
    function SetComplectDocForArcPlace(aArcPlace ,aCoplectDoc: Variant): Boolean;
  published
    property Code: Variant read FCode write SetCode;
    property DogDop: Variant read FDogDop write SetDogDop;
    property DocType: Variant read FDocType write SetDocType;
    property ComplectDoc: Variant read FComplectDoc write SetComplectDoc;
    property Nomer: Variant read FNomer write SetNomer;
    property Data: Variant read FData write SetData;
    property PageNum: Variant read FPageNum write SetPageNum;
    property Note: Variant read FNote write SetNote;
    property Arcplace: Variant read FArcplace write SetArcplace;
    property State: Variant read FState write FState;
    property ScanList: TScanList read fScanList;
    property Report: TReport read fReport;
  end;

implementation

{ TDogDoc }

uses DogDocAddFrm, LoadingSplash, ComplectDocFrm;

procedure TDogDoc.AddRec(AOwner: TComponent; aDopDog: Variant; aCode: Variant; _fixFolder,
  _complDoc: integer);
var
  F: TDogDocAddForm;
begin
  F:= TDogDocAddForm.Create(AOwner, aDopDog, aCode, _fixFolder, _complDoc);
  F.ShowModal;
end;

function TDogDoc.AttachScan(aCode: Variant): Boolean;
var
  dlgOpen: TOpenDialog;
begin
  dlgOpen:= TOpenDialog.Create(nil);
  try
    dlgOpen.Options:=[ofHideReadOnly,ofFileMustExist,ofEnableSizing];
    if dlgOpen.Execute then
      Result:= SaveScanInBlob(aCode, dlgOpen.FileName);
    DataManager.DogDocumList.Refresh;
  finally
    FreeAndNil(dlgOpen);
  end;
end;

function TDogDoc.SaveScanInBlob(aCode: Variant; FullFilePath: string): Boolean;
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
  Q:= DataManager.GetQueryForUse('insert into SCANLIST (DOGDOC, DATAPATH, SCANDATA, FILESIZE, FILEDATA) values (:DOGDOC, :DATAPATH, :SCANDATA, :FILESIZE, :FILEDATA);');
  Q.Connection.UpdateTransaction.StartTransaction;

  SplashVisibility(True, 'Подождите, идет загрузка файла...');
  try
    FName:= ExtractFileName(FullFilePath);
    FSize:= GetFileSize(FullFilePath);
    FData:= TFile.GetCreationTime(FullFilePath);
    Q.ParamByName('DOGDOC').Value:= aCode;
    Q.ParamByName('DATAPATH').Value:= FName;
    Q.ParamByName('SCANDATA').LoadFromFile(FullFilePath, ftBlob);
    Q.ParamByName('FILESIZE').Value := FSize;
    Q.ParamByName('FILEDATA').Value := FData;
    Q.ExecSQL;
    Q.Connection.Commit;
    Result:= True;
  finally
    FreeAndNil(Q);
    SplashVisibility(False);
  end;
end;

constructor TDogDoc.Create;
begin
  inherited;
  DataManager.DogDocumList.SetWriteOpt(false);
  fScanList:= TScanList.Create;
  fReport:= TReport.Create;
end;

procedure TDogDoc.CreateRec;
var
  fSQL: string;
begin
  fSQL:= 'insert into DOGDOC ( DOPDOG, DOCTYPE, COMPLECTDOC, NOMER, DATA, PAGENUM, NOTE, ARCPLACE, STATE)'+#10#13+
         'values (:DOPDOG, :DOCTYPE, :COMPLECTDOC, :NOMER, :DATA, :PAGENUM, :NOTE, :ARCPLACE, :STATE)';
  try
    DataManager.ExecSQL(fSQL,
                [fDogDop, fDocType, fComplectDoc, fNomer, fData, fPageNum, fNote, fArcplace, 0]);
    DataManager.DogDocumList.Refresh;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TDogDoc.DeleteRec(aCode: Variant);
var
  fSQL: string;
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
    raise Exception.Create('Не выбрана запись!');
  if Application.MessageBox('Вы действительно хотите удалить запиь?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    fSQL:= 'DELETE FROM DOGDOC WHERE CODE = :CODE;';
    DataManager.ExecSQL(fSQL,[aCode]);
    DataManager.DogDocumList.Refresh;
  end;
end;

destructor TDogDoc.Destroy;
begin
  if Assigned(fScanList) then
     FreeAndNil(fScanList);
  if Assigned(fReport) then
     FreeAndNil(fReport);
  inherited;
end;

procedure TDogDoc.GetDistinctArcPlace(list: TStrings; aDopDog: Variant);
var
  Q: TDataSet;
begin
  list.Clear;
  Q:= DataManager.SelectData('select STRCODE, ARCPLACE from GETUNIQARCPLACE(:CODE)',[aDopDog]);
  try
    Q.Open;
      while not Q.Eof do begin
        if Trim(Q.FIeldByName('STRCODE').AsString)<>'' then
        list.Add(Q.FIeldByName('STRCODE').AsString);
        Q.Next;
      end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TDogDoc.GetMemDistinctArcPlace(mem: TDataSet; aDopDog: Variant);
var
  Q: TDataSet;
begin
  Q:= DataManager.SelectData('select STRCODE, ARCPLACE from GETUNIQARCPLACE(:CODE)',[aDopDog]);
  try
    Q.Open;
    mem.Close; mem.Open;
        mem.Append;
        mem.FieldByName('ARCPLACE').AsVariant:= null;
        mem.FieldByName('STRCODE').AsVariant:= '';
        mem.Post;

    while not Q.Eof do begin
        if Q.FieldByName('ARCPLACE').AsVariant<>null then begin
          mem.Append;
          mem.FieldByName('ARCPLACE').AsVariant:= Q.FieldByName('ARCPLACE').AsVariant;
          mem.FieldByName('STRCODE').AsVariant:= Q.FieldByName('STRCODE').AsVariant;
          mem.Post;
        end;
      Q.Next;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TDogDoc.LoadDataByDogDop(aDogDop: Variant);
begin
  with DataManager.DogDocumList do begin
    Close;
    MacroByName('Where').AsRaw:='WHERE D.DOPDOG = :CODE';
    ParamByName('CODE').Value:= aDogDop;
    Open;
  end;
end;

procedure TDogDoc.LoadRecord(aCode: Variant);
var
  fSQL: string;
  Q: TDataSet;
begin
  fSQL:= 'SELECT * FROM DOGDOC WHERE CODE = :CODE';
  try
    Q:= DataManager.SelectData(fSQL,[aCode]);
    while not Q.Eof do begin
      fCode:= Q.FieldByName('CODE').AsVariant;
      fDogDop:= Q.FieldByName('DOPDOG').AsVariant;
      fDocType:= Q.FieldByName('DOCTYPE').AsVariant;
      fComplectDoc:= Q.FieldByName('COMPLECTDOC').AsVariant;
      fNomer:= Q.FieldByName('NOMER').AsVariant;
      fData:= Q.FieldByName('DATA').AsVariant;
      fPageNum:= Q.FieldByName('PAGENUM').AsVariant;
      fNote:= Q.FieldByName('NOTE').AsVariant;
      fArcplace:= Q.FieldByName('ARCPLACE').AsVariant;
      fState:= Q.FieldByName('STATE').AsVariant;
      Q.Next;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TDogDoc.LoadScanList(list: TStrings; aCode: Variant);
var
  Q: TDataSet;
begin
  list.Clear;
  Q:= DataManager.SelectData('SELECT DATAPATH FROM SCANLIST where DOGDOC =:CODE',[aCode]);
  try
    Q.Open;
      while not Q.Eof do begin
        list.Add(Q.FIeldByName('DATAPATH').AsString);
        Q.Next;
      end;
  finally
    FreeAndNil(Q);
  end;
end;

{$REGION 'properties'}
procedure TDogDoc.SetArcplace(const AValue: Variant);
begin
  if AValue <> fArcplace then
  begin
    fArcplace := AValue;
    Notify('Arcplace');
  end;
end;

procedure TDogDoc.SetCode(const AValue: Variant);
begin
  if AValue <> fCode then
  begin
    fCode := AValue;
    Notify('Code');
  end;
end;

procedure TDogDoc.SetComplectDoc(const AValue: Variant);
begin
  if AValue <> fComplectDoc then
  begin
    fComplectDoc := AValue;
    Notify('ComplectDoc');
  end;
end;

function TDogDoc.SetComplectDocForArcPlace(aArcPlace, aCoplectDoc: Variant): Boolean;
begin
  Result:= False;
  if ((aArcPlace < 0) or (aArcPlace = null)) then Exit;
  if (aCoplectDoc = null) or (aCoplectDoc<0) then Exit;

  try
    DataManager.ExecSQL('update ARCPLACE set COMPLECTDOC = :COMPLECTDOC where (CODE = :CODE)',[aCoplectDoc,aArcPlace]);
    Result:= True;
  finally

  end;
end;

procedure TDogDoc.SetData(const AValue: Variant);
begin
  if AValue <> fData then
  begin
    fData := AValue;
    Notify('Data');
  end;
end;

procedure TDogDoc.SetDocType(const AValue: Variant);
begin
  if AValue <> fDocType then
  begin
    fDocType := AValue;
    Notify('DocType');
  end;
end;

procedure TDogDoc.SetDogDop(const AValue: Variant);
begin
  if AValue <> fDogDop then
  begin
    fDogDop := AValue;
    Notify('DogDop');
  end;
end;

procedure TDogDoc.SetNomer(const AValue: Variant);
begin
  if AValue <> fNomer then
  begin
    fNomer := AValue;
    Notify('Nomer');
  end;
end;

procedure TDogDoc.SetNote(const AValue: Variant);
begin
  if AValue <> fNote then
  begin
    fNote := AValue;
    Notify('Note');
  end;
end;

procedure TDogDoc.SetPageNum(const AValue: Variant);
begin
  if AValue <> fPageNum then
  begin
    fPageNum := AValue;
    Notify('PageNum');
  end;
end;

procedure TDogDoc.SetState(const AValue: Variant);
begin
  if AValue <> fState then
  begin
    fState := AValue;
    Notify('State');
  end;
end;

function TDogDoc.ShowComplectDoc(AOwner: TComponent): Variant;
var
  F: TComplectDocForm;
begin
  F:= TComplectDocForm.Create(AOwner);
  if F.ShowModal = 1 then
     Result:= F.v1.GetColumnByFieldName('CODE').EditValue
     else
     Result:= null;
end;

{$ENDREGION}

procedure TDogDoc.UpdateRec(aCode: Variant);
var
  fSQL: string;
begin
  fSQL := 'update DOGDOC'+#10#13+
          'set DOPDOG = :DOPDOG,'+#10#13+
          '    DOCTYPE = :DOCTYPE,'+#10#13+
          '    COMPLECTDOC = :COMPLECTDOC,'+#10#13+
          '    NOMER = :NOMER,'+#10#13+
          '    DATA = :DATA,'+#10#13+
          '    PAGENUM = :PAGENUM,'+#10#13+
          '    NOTE = :NOTE,'+#10#13+
          '    ARCPLACE = :ARCPLACE,'+#10#13+
          '    STATE = :STATE'+#10#13+
          'where (CODE = :CODE)';
   try
     DataManager.ExecSQL(fSQL,
     [fDogDop, fDocType, fComplectDoc, fNomer, fData, fPageNum, fNote, fArcplace, fState, aCode]);
     DataManager.DogDocumList.Refresh;
   except
     on e: Exception do
       raise Exception.Create(e.Message);
   end;
end;

end.
