unit ReportUnit;

interface

uses
  System.SysUtils, System.Classes, DbDataHelpers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet,
  frxRich;

type
  TReportModule = class(TDataModule)
    RichObject1: TfrxRichObject;
    Report: TfrxReport;
    frDS: TfrxDBDataset;
    ds1: TFDQuery;
    Report1: TfrxReport;
    frDS1: TfrxDBDataset;
    ds: TFDQuery;
    Report_OrderDoc: TfrxReport;
    frds_OrderDoc: TfrxDBDataset;
    ds_ReportOrderDoc: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportModule: TReportModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses cmDBUnit;

{$R *.dfm}

end.
