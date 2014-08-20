unit AppUtils;

interface
  uses
    Classes, Forms,
    cxGridCustomView, cxGrid,
    dxBar,
    cxPropertiesStore, System.SysUtils, dxLayoutLookAndFeels, dxLayoutControl,
    cxGridCustomTableView,  cxGridDBTableView, dxmdaset,
    FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DbDataHelpers;

  type

  TGridHelper = class helper for  TcxGridDBTableView
    function FN(FName: string) :TcxGridDBColumn;

  end;

  TMemDataHelper = class helper for TdxMemData
    ///	<summary>
    ///	  процедура удаляет все имеющиеся поля из временной таблицы
    ///	</summary>
    procedure ClearField;
    ///	<summary>
    ///	  процедура создания поля во временной таблице
    ///	</summary>
    procedure AddField(aFieldName: string; aFieldType: TFieldType = ftString;
                       aDisplayName: string =''; AFieldSize: Integer = 0;
                       aVisible: Boolean = true; aIndex: Integer = 0);
    ///	<summary>
    ///	  <para>
    ///	    упрощенная функция возврата значения поля таблицы.
    ///	  </para>
    ///	  <para>
    ///	    аналог стандартной функции FieldByName
    ///	  </para>
    ///	</summary>
    function FN(const FieldName: string): TField;
    procedure ClearData;
  end;

    TFDQueryHelper = class helper for TFDQuery
    procedure SetWriteOpt(dsOpen: Boolean = true; fSQL: string = '';
     Table: string = ''; KeyFields: string = 'CODE'; GeneratorName: string = '');
    function FN(const FieldName: string): TField;
  end;

  procedure LoadForm(prop: TcxPropertiesStore; FName: string);
  procedure SetFormOptions(multiform :boolean);
  function FindChild(AName: string): TForm;

  function GetWord(S: String; Nomer: integer; Ch: char): String;
  function CreateForm(AForm: string; AHelpIndex: integer): TForm;
  procedure SetSkin(AForm: TForm);
  procedure IncPopMenu(Form :TForm);
  procedure CloseAllForm;
  procedure AddButton(AForm :TForm);
  procedure RemoveBtn (AName :string);


  function GetKontrName(code: Variant): string;
  function GetWorkerName(code: Variant): string;

var
  BaseNameStr :AnsiString;
  ServName: AnsiString;
  mform :boolean = false;
  //NativeFormat: Boolean = True;
  LSkin: TdxLayoutLookAndFeelList;
  LCxSkin: TdxLayoutCxLookAndFeel;
  AppPath: AnsiString;
  currKontr: Variant;

implementation

uses MainFrm, cmDBUnit;

function GetKontrName(code: Variant): string;
begin
  try
    Result:= DataManager.ExecuteScalar('select name from kontragent where code=:code',[code]);
  finally

  end;
end;

function GetWorkerName(code: Variant): string;
begin
  try
    Result:= DataManager.ExecuteScalar('select FIOSHORT FIO from WORKER where code = :code',[code]);;
  finally
  end;
end;

procedure LoadForm(prop: TcxPropertiesStore; FName: string);
var
  path: string;
begin
  prop.StorageName := ExtractFilePath(Application.ExeName) + 'config\' + FName;
  if FileExists(ExtractFilePath(Application.ExeName) + 'config\' + FName) then
    prop.RestoreFrom;
end;

procedure SetFormOptions(multiform :boolean);
begin
  //MDI стиль с кнопками для всех форм
  //mform:=true;
  //exit;

  if multiform then
    mform:=true
  else
    mform:=False;
end;

{ -------------------------------------------------------------------------------
  FindChild|Поиск дочерней формы
  ------------------------------------------------------------------------------- }
function FindChild(AName: string): TForm;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Application.mainform.MDIChildCount - 1 do
  begin
    if Application.mainform.MDIChildren[i].Name = AName then
      Result := Application.mainform.MDIChildren[i];
  end;
end;

function GetWord(S: String; Nomer: integer; Ch: char): String;
var
  WPoz,i: integer;
begin
  WPoz:=1; Result:='';
  for i:=1 to Length(S) do
  begin
    if S[i]=Ch then begin
            {if not SetFlag then} Inc(WPoz);
                       //SetFlag:=true;
                    end
     else if WPoz=Nomer then begin
             Result:=Result+S[i];
            //SetFlag:=false;
             end {else SetFlag:=false};
     if WPoz>Nomer then Break;
  end;
end;

{ -------------------------------------------------------------------------------
  CreateForm|Создание дочерней формы
  ------------------------------------------------------------------------------- }
function CreateForm(AForm: string; AHelpIndex: integer): TForm;
var
  FClass: TFormClass;
begin
  Result:=nil;
  if FindChild(AForm) <> nil then
  begin
    FindChild(AForm).BringToFront;
  end
  else
  begin
    try
      FClass := TFormClass(FindClass('T' + AForm));
    except
      on E: EClassNotFound do
        Exit;
    end;
    //CloseAllForm;
    try
      //SplashVisibility(true, 'Загружаются данные');
      //SetCapt('подождите...');
      Result := FClass.Create(Application);
      Result.BorderStyle:= bsNone;
      Result.BorderIcons:=[];
      Result.FormStyle := fsMDIChild;
      Result.WindowState := wsMaximized;
      if AHelpIndex<>0 then
        Result.HelpContext:=AHelpIndex;
      //AddButton(Form);
      //SetSkin(Result);
      IncPopMenu(Result);
    finally
      //SplashVisibility(false);
    end;
  end;
end;

{ -------------------------------------------------------------------------------
  SetSkin|Устанавливаем скин для формы
  ------------------------------------------------------------------------------- }
procedure SetSkin(AForm: TForm);
var
  i: Integer;
begin
  for i := 0 to AForm.ComponentCount - 1 do
  begin
    if AForm.Components[i].ClassType = TdxLayoutControl then
    begin
      TdxLayoutControl(AForm.Components[i]).LookAndFeel := LCxSkin;
    end;
  end;
end;

procedure IncPopMenu(Form :TForm);
var
  i :integer;
begin
  for i:=0 to Form.ComponentCount-1 do
  with Form do begin
    if Components[i].ClassType=TcxGrid then
    begin
      (Components[i] as TcxGrid).OnEnter:=MainForm.GrdEnter;
    end;
  end;
end;

procedure CloseAllForm;
var
  i: Integer;
begin
  for i := 0 to Application.mainform.MDIChildCount - 1 do
  begin
    Application.mainform.MDIChildren[i].Close;
  end;
end;

procedure AddButton(AForm :TForm);
var
  i :Integer;
  form :TForm;
begin
 with MainForm do
 begin
  with bm1 do
  begin
    BeginUpdate;
    try
      for I := 0 to br_tool.ItemLinks.AvailableItemCount - 1 do
      begin
       (br_tool.ItemLinks.Items[i].Item as TdxBarButton).Lowered:=False;
      end;

      with br_tool.ItemLinks.AddButton do
      begin
        if Length(Aform.Caption)>19 then
        Item.Caption := Copy(Aform.Caption,0,15)+'...' else
        Item.Caption := Aform.Caption;
        Item.Hint := Aform.Caption;
        Item.Glyph:=GetFormImage;
        Item.Description:=AForm.Name;
        (Item as TdxBarButton).PaintStyle:=psCaption;
        (Item as TdxBarButton).Lowered:=True;
        UserPaintStyle :=psCaption;
        //(Item as TdxBarButton).OnClick:=btn1Click;
      end;
    finally
      EndUpdate;
    end;
  end;
 end;
 //form:=(FindComponent(Aname) as TForm);
 SetSkin(AForm);
end;

procedure RemoveBtn (AName :string);
 var i :Integer;
 s :string;
begin
 with MainForm do
 begin
  with bm1 do
  begin
    BeginUpdate;
    try
     for I := 0 to br_tool.ItemLinks.VisibleItemCount - 1 do
     begin
       s:=br_tool.ItemLinks.Items[i].Item.Description;
       if br_tool.ItemLinks.Items[i].Item.Description=AName then
       begin
        br_tool.ItemLinks.Delete(i);
        Break;
       end;
     end;
    finally
      EndUpdate;
    end;
  end;
 end;
end;

{ TFDQueryHelper }

function TFDQueryHelper.FN(const FieldName: string): TField;
begin
  Result := FieldByName(FieldName);
end;

procedure TFDQueryHelper.SetWriteOpt(dsOpen: Boolean; fSQL, Table, KeyFields,
  GeneratorName: string);
begin
  if fSQL <> '' then
     SQL.Text := fSQL;
  if (KeyFields='') then KeyFields := 'CODE';
  if (Table='') then
    Table:= GetWord(self.Name,2,'_');
  if (GeneratorName='') then GeneratorName:=GetWord(Self.Name,2,'_')+'_GEN';
    UpdateOptions.KeyFields := KeyFields;
    UpdateOptions.AutoIncFields:= KeyFields;
    UpdateOptions.GeneratorName := GeneratorName;
    UpdateOptions.UpdateTableName := Table;
    if dsOpen = true then
     Open;
end;

{ TGridHelper }

function TGridHelper.FN(FName: string): TcxGridDBColumn;
begin
  Result := TcxGridDBColumn(DataController.GetItemByFieldName(FName));
end;

{ TMemDataHelper }

procedure TMemDataHelper.AddField(aFieldName: string; aFieldType: TFieldType;
  aDisplayName: string; AFieldSize: Integer; aVisible: Boolean;
  aIndex: Integer);
var
  AField : TField;
begin
  if FindField(aFieldName) = nil then
  if SupportedFieldType(aFieldType) then
  begin
    if aIndex = 0 then
        aIndex := FieldCount;

    AField:= DefaultFieldClasses[aFieldType].Create(nil);
    AField.Name := Name + aFieldName;
    AField.FieldName := aFieldName;
    AField.DisplayLabel :=aDisplayName;
    if AField is TStringField then
        TStringField(AField).Size := AFieldSize;
    if AField is TBlobField then
        TBlobField(AField).Size := AFieldSize;
    if AField is TFloatField then
    begin
      TFloatField(AField).Currency := false;
      TFloatField(AField).Precision := 2
    end;
    AField.DataSet := self;
    AField.Calculated := False;
    AField.Lookup := False;
    AField.Visible := aVisible;
  end;
end;

procedure TMemDataHelper.ClearData;
begin
  Close;
  Open;
end;

procedure TMemDataHelper.ClearField;
var
  i: Integer;
begin
  Close;
  for i := 0 to FieldCount - 1 do
    Fields[0].Free;
  FieldDefs.Update;
end;

function TMemDataHelper.FN(const FieldName: string): TField;
begin
  Result := FieldByName(FieldName);
end;

end.
