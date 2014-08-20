unit OrderDocUnit;

interface

uses
  Windows, Messages, SysUtils, BoundHelpers, Classes, Graphics, Controls, Forms,
  SingletonTemplate, System.Variants,
  DbDataHelpers, Data.DB, UsersInfo, OrderDocReport, OrderDocSpecUnit;

  type
{ TOrderDoc }

  TOrderDoc = class(TBoundObject)
  private
    fCode: Variant;
    fState: Variant;
    fDogDop: Variant;
    fDocumDate: Variant;
    fOperator: Variant;
    fOperType: Variant;
    fArcObject: Variant;
    fWorker: Variant;
    fNote: Variant;
    fMoveState: Variant;
    fReport: TOrderDocReport;
    fDetails: TOrderDocSpec;
  protected
    procedure SetCode(const AValue: Variant);
    procedure SetState(const AValue: Variant);
    procedure SetDogDop(const AValue: Variant);
    procedure SetDocumDate(const AValue: Variant);
    procedure SetOperator(const AValue: Variant);
    procedure SetOperType(const AValue: Variant);
    procedure SetArcObject(const AValue: Variant);
    procedure SetWorker(const AValue: Variant);
    procedure SetNote(const AValue: Variant);
    procedure SetMoveState(const AValue: Variant);
    procedure PrepareDS;
    procedure CloseDS;
  public
    constructor Create;
    destructor Destroy; override;
    //
    procedure CreateAutoDoc(aDogDop, aNote: Variant);
    procedure LoadRec(aCode: Variant);
    procedure CreateRec;
    procedure EditRec(aCode: Variant);
    procedure DeleteRec(aCode: Variant);
    procedure ShowEditForm(AOwner: TComponent; aCode: Variant);
    procedure ChangeStateDoc(aCode: Variant; aState: Integer);
  published
    property Code: Variant read fCode write SetCode;
    property State: Variant read fState write SetState;
    property DogDop: Variant read fDogDop write SetDogDop;
    property DocumDate: Variant read fDocumDate write SetDocumDate;
    property Oper: Variant read fOperator write SetOperator;
    property OperType: Variant read fOperType write SetOperType;
    property ArcObject: Variant read fArcObject write SetArcObject;
    property Worker: Variant read fWorker write SetWorker;
    property Note: Variant read fNote write SetNote;
    property MoveState: Variant read fMoveState write SetMoveState;
    property Report: TOrderDocReport read fReport;
    property Details: TOrderDocSpec read fDetails;
  end;


implementation

{ TOrderDoc }

uses OrderDocEditFrm;

procedure TOrderDoc.ChangeStateDoc(aCode: Variant; aState: Integer);
var
  newState: Integer;
  fSQL: string;
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не определен код записи!');
  if aState = 1 then
  if Application.MessageBox
      ('Вы действительно хотите отменить проведение документа?', 'Внимание!',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> IDYES then Exit;
  case aState of
    0: newState:= 1;
    1: newState:=0;
    else
      raise Exception.Create('Статус документа не определен!');
  end;
  try
    DataManager.ExecSQL('update ORDERDOC set STATE = :STATE where (CODE = :CODE);',[newState, aCode]);
    DataManager.OrderDocList.Refresh;
  except
    on E: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TOrderDoc.CloseDS;
begin
  DataManager.OrderDocList.Close;
  DataManager.OrderDocSpecList.Close;
end;

constructor TOrderDoc.Create;
begin
  inherited;
  fReport:= TOrderDocReport.Create;
  fDetails:= TOrderDocSpec.Create;
  //PrepareDS;
end;

procedure TOrderDoc.CreateAutoDoc(aDogDop, aNote: Variant);
begin
  if Application.MessageBox('Вы действительно хотите создать документ внутреннего перемещения?',
    'Внимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    try
      DataManager.ExecSQL('execute procedure MAKEORDERDOC(:DOGDOP, :DOCUMDATE, :OPERATOR, :WORKER, :NOTE)',
                      [aDogDop,Date,UserInfo.Code,UserInfo.Code,aNote]);
      if not (DataManager.OrderDocList.State in [dsInactive]) then
         DataManager.OrderDocList.Refresh;
    finally

    end;
  end;
end;

procedure TOrderDoc.CreateRec;
var
  fSQL: string;
begin
  fSQL:= 'insert into ORDERDOC (STATE, DOGDOP, DOCUMDATE, OPERATOR, OPERTYPE, ARCOBJECT, WORKER, NOTE, MOVESTATE)'+#10#13+
         'values (:STATE, :DOGDOP, :DOCUMDATE, :OPERATOR, :OPERTYPE, :ARCOBJECT,:WORKER, :NOTE, :MOVESTATE);';
  try
    DataManager.ExecSQL(fSQL,
                [fState, fDogDop, fDocumDate, fOperator, fOperType, fArcObject, fWorker, fNote, fMoveState]);
    DataManager.OrderDocList.Refresh;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TOrderDoc.DeleteRec(aCode: Variant);
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не выбрана запись!');
  if Application.MessageBox('Вы действительно хотите удалить документ?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    DataManager.ExecSQL('DELETE FROM ORDERDOC where (CODE = :CODE)',[aCode]);
    DataManager.OrderDocList.Refresh;
  end;
end;

destructor TOrderDoc.Destroy;
begin
  //CloseDS;
  if Assigned(fReport) then
     FreeAndNil(fReport);
  if Assigned(fDetails) then
     FreeAndNil(fDetails);
  inherited;
end;

procedure TOrderDoc.EditRec(aCode: Variant);
var
  fSQL: string;
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не выбрана запись!');
  fSQL := 'update ORDERDOC'+#10#13+
          'set STATE = :STATE,'+#10#13+
          '    DOGDOP = :DOGDOP,'+#10#13+
          '    DOCUMDATE = :DOCUMDATE,'+#10#13+
          '    OPERATOR = :OPERATOR,'+#10#13+
          '    OPERTYPE = :OPERTYPE,'+#10#13+
          '    ARCOBJECT = :ARCOBJECT,'+#10#13+
          '    WORKER = :WORKER,'+#10#13+
          '    NOTE = :NOTE,'+#10#13+
          '    MOVESTATE = :MOVESTATE'+#10#13+
          'where (CODE = :CODE);';
   try
     DataManager.ExecSQL(fSQL,
     [fState, fDogDop, fDocumDate, fOperator, fOperType, fArcObject, fWorker, fNote, fMoveState, aCode]);
     DataManager.OrderDocList.Refresh;
   except
     on e: Exception do
       raise Exception.Create(e.Message);
   end;
end;

procedure TOrderDoc.LoadRec(aCode: Variant);
var
  fSQL: string;
  Q: TDataSet;
begin
  fSQL:= 'SELECT * FROM ORDERDOC WHERE CODE = :CODE';
  try
    Q:= DataManager.SelectData(fSQL,[aCode]);
    while not Q.Eof do begin
      fCode:= Q.FieldByName('CODE').AsVariant;
      fState:= Q.FieldByName('STATE').AsVariant;
      fDogDop:= Q.FieldByName('DOGDOP').AsVariant;
      fDocumDate:= Q.FieldByName('DOCUMDATE').AsVariant;
      fNote:= Q.FieldByName('NOTE').AsVariant;
      fOperType:= Q.FieldByName('OPERTYPE').AsVariant;
      fOperator:= Q.FieldByName('OPERATOR').AsVariant;
      fArcObject:= Q.FieldByName('ARCOBJECT').AsVariant;
      fWorker:= Q.FieldByName('WORKER').AsVariant;
      fMoveState:= Q.FieldByName('MOVESTATE').AsVariant;
      Q.Next;
    end;
  finally
    FreeAndNil(Q);
  end;
end;

procedure TOrderDoc.PrepareDS;
begin
  DataManager.OrderDocList.SetWriteOpt(False);
  DataManager.OrderDocSpecList.SetWriteOpt(False);
end;

procedure TOrderDoc.SetArcObject(const AValue: Variant);
begin
  if AValue <> fArcObject then
  begin
    fArcObject := AValue;
    Notify('ArcObject');
  end;
end;

procedure TOrderDoc.SetCode(const AValue: Variant);
begin
  if AValue <> fCode then
  begin
    fCode := AValue;
    Notify('Code');
  end;
end;

procedure TOrderDoc.SetDocumDate(const AValue: Variant);
begin
  if AValue <> fDocumDate then
  begin
    fDocumDate := AValue;
    Notify('DocumDate');
  end;
end;

procedure TOrderDoc.SetDogDop(const AValue: Variant);
begin
  if AValue <> fDogDop then
  begin
    fDogDop := AValue;
    Notify('DogDop');
  end;
end;

procedure TOrderDoc.SetMoveState(const AValue: Variant);
begin
  if AValue <> fMoveState then
  begin
    fMoveState := AValue;
    Notify('MoveState');
  end;
end;

procedure TOrderDoc.SetNote(const AValue: Variant);
begin
  if AValue <> fNote then
  begin
    fNote := AValue;
    Notify('Note');
  end;
end;

procedure TOrderDoc.SetOperator(const AValue: Variant);
begin
  if AValue <> fOperator then
  begin
    fOperator := AValue;
    Notify('Oper');
  end;
end;

procedure TOrderDoc.SetOperType(const AValue: Variant);
begin
  if AValue <> fOperType then
  begin
    fOperType := AValue;
    Notify('OperType');
  end;
end;

procedure TOrderDoc.SetState(const AValue: Variant);
begin
  if AValue <> fState then
  begin
    fState := AValue;
    Notify('State');
  end;
end;

procedure TOrderDoc.SetWorker(const AValue: Variant);
begin
  if AValue <> fWorker then
  begin
    fWorker := AValue;
    Notify('Worker');
  end;
end;

procedure TOrderDoc.ShowEditForm(AOwner: TComponent; aCode: Variant);
var
  F: TOrderDocEditForm;
begin
  F:= TOrderDocEditForm.Create(AOwner, aCode);
  F.ShowModal;
end;

end.
