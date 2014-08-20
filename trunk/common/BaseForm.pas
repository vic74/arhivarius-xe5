unit BaseForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  dxRibbonForm,
  Dialogs, StdCtrls, ExtCtrls, AppUtils;
 type

{ TDezForm }

  TDezForm = class(TdxRibbonForm)
  private
    fisReadOnly: Boolean;
  protected
    //SFD: TglSmallFontsDefence;
  public
    constructor Create(AOwner: TComponent); override;
    constructor CreateModal(AOwner: TComponent; Modal: Boolean = true);
    destructor Destroy; override;
  published
    property isReadOnly: Boolean read fisReadOnly write fisReadOnly;
  end;

{ TDezModalForm }

  TDezModalForm = class(TdxRibbonForm)
  private

  protected

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published

  end;


implementation


{ TDezForm }

constructor TDezForm.Create(AOwner: TComponent);
begin
  if not mform then   CloseAllForm;
  inherited Create(AOwner);
  if mform then  AddButton(Self);
  BorderStyle:= bsNone;
  //SFD:= TglSmallFontsDefence.Create(self);
  //Scaled:= False;
end;

constructor TDezForm.CreateModal(AOwner: TComponent; Modal: Boolean=true);
begin
  if not modal then
  AddButton(self);
  inherited Create(AOwner);

end;

destructor TDezForm.Destroy;
begin
  if mform then RemoveBtn(Name);
  //Store;
 // if Assigned(SFD) then
 //    FreeAndNil(SFD);
  inherited Destroy;
end;

{ TDezModalForm }

constructor TDezModalForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  //
end;

destructor TDezModalForm.Destroy;
begin
  //Store;
  inherited Destroy;
end;

end.
