unit DbDataHelpers;

interface
uses
  Windows, Messages, SysUtils, SingletonTemplate, Data.DB,
  //firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cmDBUnit;
  //
  type
{ TDataManager }

  TDataManager = class(TSingleton)
  private
    fDB: TFDConnection;
    fWTR: TFDTransaction;
    fDogList: TFDQuery;
    fDogDopList: TFDQuery;
    fDogDocList: TFDQuery;
    fOrderDocList: TFDQuery;
    fOrderDocSpecList: TFDQuery;
    fDocTypeList: TFDQuery;
    fKontragentList: TFDQuery;
    fComplectDocList: TFDQuery;
    fDogDocReport: TFDQuery;
    fWorkerList: TFDQuery;
    fWorkerStateList: TFDQuery;
    fMoveStateList: TFDQuery;
    fArcObjectList: TFDQuery;
    fArcPlaceList: TFDQuery;
    fDog_OrderDoc: TFDQuery;
    fContactList: TFDQuery;
    fArcRoomList: TFDQuery;
    fArcRackList: TFDQuery;
  protected
    constructor Create; override;
  public

    destructor Destroy; override;
    //
    function ExecuteScalar(const ASQL: string; const AParams: array of Variant): Variant;
    function ExecSQL(const ASQL: String; const AParams: array of Variant): LongInt;
    function GetQueryForUse(const ASQL: String): TFDQuery;
    function SelectData(const ASQL: String; const AParams: array of Variant): TFDQuery;
  published
    property db: TFDConnection read FDB;
    property DogList: TFDQuery read fDogList;
    property DogDopList: TFDQuery read fDogDopList;
    property DogDocumList: TFDQuery read fDogDocList;
    property OrderDocList: TFDQuery read fOrderDocList;
    property OrderDocSpecList: TFDQuery read fOrderDocSpecList;
    property DocTypeList: TFDQuery read fDocTypeList;
    property KontragentList: TFDQuery read fKontragentList;
    property ComplectDocList: TFDQuery read fComplectDocList;
    property DogDocReport: TFDQuery read fDogDocReport;
    property WorkerList: TFDQuery read fWorkerList;
    property WorkerStateList: TFDQuery read fWorkerStateList;
    property MoveStateList: TFDQuery read fMoveStateList;
    property ArcObjectList: TFDQuery read fArcObjectList;
    property ArcPlaceList: TFDQuery read fArcPlaceList;
    property Dog_OrderDoc: TFDQuery read fDog_OrderDoc;
    property ContactList: TFDQuery read fContactList;
    property ArcRoomList: TFDQuery read fArcRoomList;
    property ArcRackList: TFDQuery read fArcRackList;
  end;

  TFDQueryHelper = class helper for TFDQuery
    procedure SetWriteOpt(dsOpen: Boolean = true; fSQL: string = '';
     Table: string = ''; KeyFields: string = 'CODE'; GeneratorName: string = '');
    function FN(const FieldName: string): TField;
  end;

  function DataManager: TDataManager;

implementation

{ TDataManager }

uses AppUtils;

function DataManager: TDataManager;
begin
  Result:= TDataManager.GetInstance;
end;

constructor TDataManager.Create;
begin
  inherited;
  fDB:= cmDB.fdb;
  fWTR:= cmDB.TRW;
  //DataSets
  fDogList:= cmDB.ds_DOG;
  fKontragentList:= cmDB.ds_KONTRAGENT;
  fDogDopList:= cmDB.ds_DOGDOP;
  fDogDocList:= cmDB.ds_DOGDOC;
  fOrderDocList:= cmDB.ds_ORDERDOC;
  fOrderDocSpecList:= cmDB.ds_ORDERSPEC;
  fDocTypeList:= cmDB.ds_DOCTYPE;
  fComplectDocList:= cmDB.ds_COMPLECTDOC;
  fDogDocReport:= cmDB.ds_DgDocReport;
  fWorkerList:= cmDB.ds_WORKER;
  fWorkerStateList:= cmDB.ds_WORKERSTATE;
  fMoveStateList:= cmDB.ds_MOVESTATE;
  fArcObjectList:= cmDB.ds_ARCOBJECT;
  fArcPlaceList:= cmDB.ds_ARCPLACE;
  fDog_OrderDoc:= cmDB.ds_DogOrderDoc;
  fContactList:= cmDB.ds_CONTACTS;
  fArcRoomList:= cmDB.ds_ARCROOM;
  fArcRackList:= cmDB.ds_ARCRACK;
end;

destructor TDataManager.Destroy;
begin

  inherited;
end;

function TDataManager.ExecSQL(const ASQL: String;
  const AParams: array of Variant): LongInt;
begin
  try
    fWTR.StartTransaction;
    Result:= fDB.ExecSQL(ASQL, AParams);
    fDB.Commit;
  except
    on e: Exception do begin
      fDB.Rollback;
      raise Exception.Create(e.Message);
    end;
  end;

end;

function TDataManager.ExecuteScalar(const ASQL: string;
  const AParams: array of Variant): Variant;
begin
  try
    fWTR.StartTransaction;
    Result:= fDB.ExecSQLScalar(ASQL, AParams);
    fDB.Commit;
  except
    on e: Exception do begin
      fDB.Rollback;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TDataManager.GetQueryForUse(const ASQL: String): TFDQuery;
var
  Q: TFDQuery;
begin
  Q:= TFDQuery.Create(nil);
  Q.Connection:= fDB;
  Q.SQL.Text:= ASQL;
  Result:= Q;
end;

function TDataManager.SelectData(const ASQL: String;
  const AParams: array of Variant): TFDQuery;
var
  Q: TFDQuery;
begin
  Q:= TFDQuery.Create(nil);
  Q.Connection:= fDB;
  Q.Open(ASQL,AParams);
  Result:= Q;
end;

{ TFDQueryHelper }

function TFDQueryHelper.FN(const FieldName: string): TField;
begin
    Result := Self.FieldByName(FieldName);
end;

procedure TFDQueryHelper.SetWriteOpt(dsOpen: Boolean; fSQL, Table, KeyFields,
  GeneratorName: string);
begin
  if fSQL <> '' then
     SQL.Text := fSQL;
  if (KeyFields='') then KeyFields := 'CODE';
  UpdateOptions.AutoIncFields:= KeyFields;
  if (Table='') then
    Table:= GetWord(self.Name,2,'_');
  if (GeneratorName='') then GeneratorName:=GetWord(Self.Name,2,'_')+'_GEN';
    UpdateOptions.KeyFields := KeyFields;
    UpdateOptions.GeneratorName := GeneratorName;
    UpdateOptions.UpdateTableName := Table;
    UpdateOptions.UpdateMode:= upWhereChanged;
    UpdateOptions.CheckRequired:= False;
    if dsOpen = true then
     Open;
end;

end.
