unit OrderDocReport;

interface

uses
  Windows, Messages, SysUtils, Classes, BoundHelpers, DbDataHelpers, Data.DB,
  System.Variants, Vcl.Dialogs, System.IOUtils,
  // FastReport
   frxClass, frxDBSet, frxRich,
  //
  Vcl.Forms;

  type
{ TOrderDocReport }

  TOrderDocReport = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;
    procedure PrintReport(aCode: Variant);
  published

  end;


implementation

{ TOrderDocReport }

uses ReportUnit, AppUtils;

constructor TOrderDocReport.Create;
begin
  ReportModule.Report_OrderDoc.LoadFromFile(IncludeTrailingBackslash(ExtractFilePath(Application.ExeName))+'rep\orderdoc.fr3');

end;

destructor TOrderDocReport.Destroy;
begin
  ReportModule.ds_ReportOrderDoc.Close;
  inherited;
end;

procedure TOrderDocReport.PrintReport(aCode: Variant);
var
  Q: TDataSet;
  aSQL: string;
begin
  aSQL:= 'select O.CODE, O.STATE, O.DOCUMDATE, O.OPERATOR, O.OPERTYPE,'+#10#13+
          '       O.WORKER, O.NOTE, O.DOGDOP, O.ARCOBJECT, A.NAME, O.MOVESTATE'+#10#13+
          'from ORDERDOC O'+#10#13+
          'left outer join ARCOBJECT A on A.CODE = O.ARCOBJECT'+#10#13+
          'where (O.CODE = :CODE)';
  Q:= DataManager.SelectData(aSQL, [aCode]);
  try
    with ReportModule.ds_ReportOrderDoc do begin
      Close;
      ParamByName('DOCCODE').Value:= Q.FieldByName('CODE').AsVariant;
      Open;
    end;
    //set variables
    ReportModule.Report_OrderDoc.Variables['varDocCode'] := Q.FieldByName('CODE').AsVariant;
    case Q.FieldByName('STATE').AsVariant of
      0: ReportModule.Report_OrderDoc.Variables['varState']:= #39'не проведен'#39;
      1: ReportModule.Report_OrderDoc.Variables['varState']:= #39'проведен'#39;
    end;
    ReportModule.Report_OrderDoc.Variables['varExecutor']:= #39+GetKontrName(1)+#39;
    ReportModule.Report_OrderDoc.Variables['varWorker']:= #39+GetWorkerName(Q.FieldByName('OPERATOR').AsVariant)+#39;
    ReportModule.Report_OrderDoc.Variables['varWorkerGet']:= #39+GetWorkerName(Q.FieldByName('WORKER').AsVariant)+#39;
    case Q.FieldByName('OPERTYPE').AsVariant of
      0: ReportModule.Report_OrderDoc.Variables['varOperType']:= #39'передача документов в архив'#39;
      1: ReportModule.Report_OrderDoc.Variables['varOperType']:= #39'выдача документов из архива'#39;
      2: ReportModule.Report_OrderDoc.Variables['varOperType']:= #39'возврат документов заказчику'#39;
    end;
    ReportModule.Report_OrderDoc.Variables['varObject']:= #39+Q.FieldByName('NAME').AsVariant+#39;
    ReportModule.Report_OrderDoc.Variables['varNote']:= #39+Q.FieldByName('NOTE').AsVariant+#39;
    ReportModule.Report_OrderDoc.Variables['varNumDoc']:= Q.FieldByName('CODE').AsVariant;
    ReportModule.Report_OrderDoc.Variables['varDateDoc']:= #39+VarToStr(Q.FieldByName('DOCUMDATE').AsVariant)+#39;
    ReportModule.Report_OrderDoc.ShowReport;
  finally
    FreeAndNil(Q);
  end;
end;

end.
