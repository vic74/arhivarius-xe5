unit DogDocReport;

interface

uses
  Windows, Messages, SysUtils, Classes, BoundHelpers, DbDataHelpers, Data.DB,
  System.Variants, Vcl.Dialogs, System.IOUtils,
  // FastReport
   frxClass, frxDBSet, frxRich,
  //
  Vcl.Forms;

  type
{ Treport }

  TReport = class(TObject)
  private

    fIsFirst: Boolean;
  protected

    procedure GetReestrDoc(aCode, aArcPlace: Variant);
  public
    constructor Create;
    destructor Destroy; override;

    procedure PrintReestrDoc(aCode: Variant);
  published

  end;


implementation

{ Treport }

uses UsersInfo, ReportUnit;

constructor TReport.Create;
begin
  ReportModule.Report.LoadFromFile(IncludeTrailingBackslash
    (ExtractFilePath(Application.ExeName)) + 'rep\reestrdoc.fr3');
  ReportModule.Report.Variables['varWorker'] := #39 + UserInfo.FIO + #39;
end;

destructor TReport.Destroy;
begin
  ReportModule.ds1.Close;
  inherited;
end;

procedure TReport.GetReestrDoc(aCode, aArcPlace: Variant);
begin
  with ReportModule.ds1 do begin
    Close;
    ParamByName('CODE').Value:= aCode;
    ParamByName('ARCPLACE').Value:= aArcPlace;
    Open;
  end;

  if ReportModule.ds1.IsEmpty then
    Exit;

  ReportModule.Report.PrepareReport(fIsFirst);
end;

procedure TReport.PrintReestrDoc(aCode: Variant);
var
  Q: TDataSet;
begin
  Q:= DataManager.SelectData('SELECT DISTINCT(ARCPLACE) FROM DOGDOC where DOPDOG = :CODE',[aCode]);
  try
    fIsFirst:=True;
    while not Q.Eof do
    begin
      GetReestrDoc(aCode, Q.FieldByName('ARCPLACE').AsVariant);
      fIsFirst:= False;
      Q.Next;
    end;

    ReportModule.Report.ShowPreparedReport;
  finally
    FreeAndNil(Q);
  end;
end;

end.
