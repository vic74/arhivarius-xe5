unit LoadingSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxLabel, ExtCtrls, cxGraphics,
  cxLookAndFeelPainters, dxSkinsCore, cxLookAndFeels,
  dxGDIPlusClasses, dxSkinOffice2013White;

type
  TfrmLoading = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Image1: TImage;
    procedure FormDeactivate(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

  procedure SplashVisibility(AVisible: Boolean; const ACaption: string = '');
  procedure SetCapt(ACaption :string ='');

implementation

{$R *.dfm}

var
  ASplash: TfrmLoading;

procedure SplashVisibility(AVisible: Boolean; const ACaption: string = '');
begin
  if AVisible then
  begin
    ASplash := TfrmLoading.Create(Application);
    ASplash.cxLabel1.Caption := Format(' %s', [ACaption]);
    ASplash.Caption := Format(' %s', [ACaption]);
    ASplash.Show;
    ASplash.Update;
  end
  else begin
    if Assigned(ASplash) then

    ASplash.Free;
  end;
end;

procedure SetCapt(ACaption :string ='');
begin
  ASplash.cxLabel2.Caption := Format(' %s', [ACaption]);
  ASplash.Update;
  Application.ProcessMessages;
end;

procedure TfrmLoading.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    ExStyle := ExStyle OR WS_EX_APPWINDOW;
end;

procedure TfrmLoading.FormCreate(Sender: TObject);
begin
   // ShowWindow(Handle, SW_SHOWNA);
end;

procedure TfrmLoading.FormDeactivate(Sender: TObject);
begin
   SetActiveWindow(FindWindow('TfrmLoading',nil));
   Cursor:=crArrow;
   Application.ProcessMessages;
end;

end.
