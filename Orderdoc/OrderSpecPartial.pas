unit OrderSpecPartial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  SingletonTemplate, FibQuery, pFIBCacheQueries, pFIBProps, System.Variants,
  FIBDataSet, pFIBDataSet, Data.DB;

{ TOrderSpec }
type
{$M+}
  TOrderSpec = class(TSingleton)
  private

  protected
    constructor Create; override;
  public

    destructor Destroy; override;
  published
    procedure CreateRec(AOwner: TComponent; ds: TpFIBDataSet; doc: Integer; state: Integer; worker: Variant);
    procedure EditRec(AOwner: TComponent; ds:TpFIBDataSet; state: Integer; worker: Variant);
  end;

{$M-}

 function OrderSpec: TOrderSpec;

implementation

{ TOrderSpec }

uses OrderSpecEditFrm;

function OrderSpec: TOrderSpec;
begin
  Result:= TOrderSpec.GetInstance;
end;

constructor TOrderSpec.Create;
begin
  inherited;

end;

procedure TOrderSpec.CreateRec(AOwner: TComponent; ds: TpFIBDataSet; doc: Integer; state: Integer; worker: Variant);
var
  F: TOrderSpecEditForm;
begin
  F:= TOrderSpecEditForm.Create(AOwner, state, worker, null, true);
  if F.ShowModal = mrOk then
  with ds do begin
    Append;
    FN('ORDERDOC').AsVariant:= doc;
    FN('ARCPLACE').AsVariant:= F.cbb_ARCPLACE.EditValue;
    Post;
  end;
end;

destructor TOrderSpec.Destroy;
begin

  inherited;
end;

procedure TOrderSpec.EditRec(AOwner: TComponent; ds: TpFIBDataSet; state: Integer; worker: Variant);
var
  F: TOrderSpecEditForm;
  arc: Variant;
begin
  arc:= ds.FN('ARCPLACE').AsVariant;
  F:= TOrderSpecEditForm.Create(AOwner, state, worker, arc, false);
  if F.ShowModal = mrOk then
  with ds do begin
    Edit;
    FN('ARCPLACE').AsVariant:= F.cbb_ARCPLACE.EditValue;
    Post;
  end;
end;

end.
