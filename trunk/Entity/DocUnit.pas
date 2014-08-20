unit DocUnit;

interface
uses
  Windows, Messages, SysUtils, BoundHelpers, Classes, Graphics, Controls, Forms,
  SingletonTemplate, System.Variants,
  DbDataHelpers, Data.DB,
    //firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  //
  dxmdaset, System.IOUtils, Vcl.Dialogs,FileCtrl;

  type
{ TDog }

  TDog = class(TBoundObject)
  private
    fCode: Variant;
    fKontragent: Variant;
    fNomDog: Variant;
    fDataDog: Variant;
    fDataEndDog: Variant;

  protected
    procedure SetCode(const AValue: Variant);
    procedure SetKontragent(const AValue: Variant);
    procedure SetNomDog(const AValue: Variant);
    procedure SetDataDog(const AValue: Variant);
    procedure SetDataEndDog(const AValue: Variant);
  public
    constructor Create;
    destructor Destroy; override;
    function LoadDogList: TDataSet;
    procedure LoadDogById(aCode: Variant);
    procedure CreateDog;
    procedure EditDog(aCode: Variant);
    procedure DeleteDog(aCode: Variant);
    procedure AttachScans(aCode: Variant);
    procedure ShowEditForm(Aowner: TComponent; aCode: Variant);
  published
    property Code: Variant read FCode write SetCode;
    property Kontragent: Variant read fKontragent write SetKontragent;
    property NomDog: Variant read fNomDog write SetNomDog;
    property DataDog: Variant read fDataDog write SetDataDog;
    property DataEndDog: Variant read fDataEndDog write SetDataEndDog;
  end;

implementation

{ TDog }

uses LoadingSplash, DogEditFrm;

procedure TDog.AttachScans(aCode: Variant);
var
  FName, exeFile: string;
  FSize: Integer;
  FData: TDateTime;
  dlgOpen: TOpenDialog;

  function GetFilePath: string;
  begin
    dlgOpen:= TOpenDialog.Create(nil);
    try
      dlgOpen.Options:=[ofHideReadOnly,ofFileMustExist,ofEnableSizing];
      if dlgOpen.Execute then
        Result:= dlgOpen.FileName;
    finally
      FreeAndNil(dlgOpen);
    end;
  end;

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

  procedure SaveInBlob;
  var
    Q: TFDQuery;
  begin
    SplashVisibility(True, 'Подождите, идет загрузка файла...');
    try
      Q:= DataManager.GetQueryForUse('update DOG'+#10#13+
                                     'set FILENAME = :FILENAME,'+#10#13+
                                     '    DOGDATA = :DOGDATA'+#10#13+
                                     'where (CODE = :CODE)');
      Q.ParamByName('CODE').AsInteger:= code;
      Q.ParamByName('FILENAME').AsString:= exeFile;
      Q.ParamByName('DOGDATA').LoadFromFile(FName, ftBlob);
      Q.ExecSQL;
    finally
      FreeAndNil(Q);
      SplashVisibility(False);
    end;
  end;

begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не выбран договор.');
  FName:= GetFilePath;
  exeFile:= ExtractFileName(FName);
  FSize:= GetFileSize(FName);
  FData:= TFile.GetCreationTime(FName);
  //
  try
    SaveInBlob;
  except
    on E: Exception do
       raise Exception.Create(e.Message);
  end;
end;

constructor TDog.Create;
begin
  inherited;
  DataManager.DogList.SetWriteOpt(True);
end;

procedure TDog.CreateDog;
var
  s: string;
begin
  s:=DataManager.DogList.UpdateOptions.GeneratorName;
  if DataManager.DogList.State in [dsInactive] then
     DataManager.DogList.Open;
  with DataManager.DogList do begin
    Append;
    FieldByName('KONTRAGENT').AsVariant:= fKontragent;
    FieldByName('NOMDOG').AsVariant:= fNomDog;
    FieldByName('DATADOG').AsVariant:= fDataDog;
    FieldByName('DATAENDDOG').AsVariant:= fDataEndDog;
    Post;
  end;
end;

procedure TDog.DeleteDog(aCode: Variant);
var
  fSQL: string;
begin
  if Application.MessageBox('Вы действительно хотите удалить договор?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    if VarIsType(aCode,[varNull, varEmpty]) then
      raise Exception.Create('Не выбран договор.');
    fSQL:= 'DELETE FROM DOG WHERE (CODE = :CODE)';
    DataManager.ExecSQL(fSQL,[aCode]);
    DataManager.DogList.Refresh;
  end;
end;

destructor TDog.Destroy;
begin

  inherited;
end;

procedure TDog.EditDog(aCode: Variant);
begin
  if DataManager.DogList.State in [dsInactive] then
     DataManager.DogList.Open;
  with DataManager.DogList do begin
    if Locate('CODE',aCode,[]) then begin
      Edit;
      FieldByName('KONTRAGENT').AsVariant:= fKontragent;
      FieldByName('NOMDOG').AsVariant:= fNomDog;
      FieldByName('DATADOG').AsVariant:= fDataDog;
      FieldByName('DATAENDDOG').AsVariant:= fDataEndDog;
      Post;
    end;
  end;
end;

procedure TDog.LoadDogById(aCode: Variant);
var
  fSQL: string;
  Q: TDataSet;
begin
  fSQL := 'SELECT'+#10#13+
          '    d.CODE, d.KONTRAGENT, d.NOMDOG,'+#10#13+
          '    d.DATADOG, d.DATAENDDOG'+#10#13+
          'FROM DOG d'+#10#13+
          'WHERE d.CODE = :CODE';
  try
    Q:= DataManager.SelectData(fSQL,[aCode]);
    while not Q.Eof do begin
      fCode:= Q.FieldByName('CODE').AsVariant;
      fKontragent:= Q.FieldByName('KONTRAGENT').AsVariant;
      fNomDog:= Q.FieldByName('NOMDOG').AsVariant;
      fDataDog:= Q.FieldByName('DATADOG').AsVariant;
      fDataEndDog:= Q.FieldByName('DATAENDDOG').AsVariant;
      Q.Next;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

function TDog.LoadDogList: TDataSet;
begin
  DataManager.DogList.Open;
  Result:= DataManager.DogList;
end;

procedure TDog.SetCode(const AValue: Variant);
begin
  if AValue <> fCode then
  begin
    fCode := AValue;
    Notify('Code');
  end;
end;

procedure TDog.SetDataDog(const AValue: Variant);
begin
  if AValue <> fDataDog then
  begin
    fDataDog := AValue;
    Notify('DataDog');
  end;
end;

procedure TDog.SetDataEndDog(const AValue: Variant);
begin
  if AValue <> fDataEndDog then
  begin
    fDataEndDog := AValue;
    Notify('DataEndDog');
  end;
end;

procedure TDog.SetKontragent(const AValue: Variant);
begin
  if AValue <> fKontragent then
  begin
    fKontragent := AValue;
    Notify('Kontragent');
  end;
end;

procedure TDog.SetNomDog(const AValue: Variant);
begin
  if AValue <> fNomDog then
  begin
    fNomDog := AValue;
    Notify('NomDog');
  end;
end;

procedure TDog.ShowEditForm(Aowner: TComponent; aCode: Variant);
var
  F: TDogEditForm;
begin
  F := TDogEditForm.Create(Aowner, aCode);
  if (F.ShowModal = mrOk) then
      DataManager.DogList.Refresh;
end;

end.
