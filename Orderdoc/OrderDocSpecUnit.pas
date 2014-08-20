unit OrderDocSpecUnit;

interface
uses
  Windows, Messages, SysUtils, BoundHelpers, Classes, Graphics, Controls, Forms,
  SingletonTemplate, System.Variants,
  DbDataHelpers, Data.DB, UsersInfo, OrderDocReport;

  type
{ TOrderDocSpec }

  TOrderDocSpec = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
    procedure CreateRec(AOwner: TComponent;aCode: Variant; aOrderDocCode: Variant);
    procedure EditRec(AOwner: TComponent; aCode: Variant; aOrderDocCode: Variant);
    procedure DeleteRec(aCode: Variant);
  published

  end;


implementation


uses OrderSpecEditFrm;
{ TOrderDocSpec }

constructor TOrderDocSpec.Create;
begin

end;

procedure TOrderDocSpec.CreateRec(AOwner: TComponent; aCode: Variant; aOrderDocCode: Variant);
var
  F: TOrderSpecEditForm;
begin
  if VarIsType(aOrderDocCode,[varNull, varEmpty]) then
     raise Exception.Create('Не определен код документа!');
  F:= TOrderSpecEditForm.Create(AOwner, aCode, aOrderDocCode);
  if F.ShowModal = mrOk then begin
    if DataManager.OrderDocSpecList.State in [dsInactive] then
       DataManager.OrderDocSpecList.Open;
    with DataManager.OrderDocSpecList do begin
      Append;
      FN('ORDERDOC').AsVariant:= aOrderDocCode;
      FN('ARCPLACE').AsVariant:= F.cbb_ARCPLACE.EditValue;
      Post;
    end;
  end;
end;

procedure TOrderDocSpec.DeleteRec(aCode: Variant);
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не определен код записи!');
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Внимание!', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    DataManager.ExecSQL('DELETE FROM ORDERSPEC WHERE (CODE = :CODE)',[aCode]);
    DataManager.OrderDocSpecList.Refresh;
  end;
end;

destructor TOrderDocSpec.Destroy;
begin

  inherited;
end;

procedure TOrderDocSpec.EditRec(AOwner: TComponent; aCode: Variant; aOrderDocCode: Variant);
var
  F: TOrderSpecEditForm;
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не определен код записи!');
  F:= TOrderSpecEditForm.Create(AOwner, aCode, aOrderDocCode);
  if F.ShowModal = mrOk then begin
    if DataManager.OrderDocSpecList.State in [dsInactive] then
       DataManager.OrderDocSpecList.Open;
    with DataManager.OrderDocSpecList do begin
      Edit;
      FN('ARCPLACE').AsVariant:= F.cbb_ARCPLACE.EditValue;
      Post;
    end;
  end;
end;

end.
