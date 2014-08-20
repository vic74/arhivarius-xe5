unit docPartial;

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
{ TDog }

  TDog = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
  published

  end;

implementation

{ TDog }

constructor TDog.Create;
begin

end;

destructor TDog.Destroy;
begin

  inherited;
end;

end.
