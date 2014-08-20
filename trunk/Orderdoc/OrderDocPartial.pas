unit OrderDocPartial;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  SingletonTemplate,
  //firedac
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  //
  Data.DB, AppUtils, DbDataHelpers;

type
{ TOrderDoc }
{$M+}
  TOrderDocConst = class(TSingleton)
  private

  protected
    constructor Create; override;

  public

    destructor Destroy; override;
  published
    procedure CreateDoc(AOwner: TComponent; ds: TFDQuery; isNew: Boolean = false);
    procedure CreateAutoDoc(dogdop, note: Variant);
  end;
 {$M-}
  function OrderDoc: TOrderDocConst;

implementation

{ TOrderDoc }

uses {OrderDocEditFrm,} cmDBUnit, UsersInfo;
function OrderDoc: TOrderDocConst;
begin
  Result:= TOrderDocConst.GetInstance;
end;

constructor TOrderDocConst.Create;
begin
  inherited;

end;

procedure TOrderDocConst.CreateAutoDoc(dogdop, note: Variant);
begin
  if Application.MessageBox('¬ы действительно хотите создать документ внутреннего перемещени€?',
    '¬нимание!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    try
      DataManager.ExecSQL('execute procedure MAKEORDERDOC(:DOGDOP, :DOCUMDATE, :OPERATOR, :WORKER, :NOTE)',
                      [dogdop,Date,UserInfo.Code,UserInfo.Code,note]);
    finally

    end;
  end;
end;

procedure TOrderDocConst.CreateDoc(AOwner: TComponent; ds: TFDQuery; isNew: Boolean);
//var
//  F: TOrderDocEditForm;
begin
  //F:= TOrderDocEditForm.Create(AOwner, ds, isNew);
  //F.ShowModal;
end;

destructor TOrderDocConst.Destroy;
begin

  inherited;
end;

end.
