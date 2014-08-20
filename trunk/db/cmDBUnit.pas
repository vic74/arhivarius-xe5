unit cmDBUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.ImgList, Vcl.Controls, cxGraphics;

type
  TcmDB = class(TDataModule)
    fdb: TFDConnection;
    TR: TFDTransaction;
    TRW: TFDTransaction;
    FBDriverLink: TFDPhysFBDriverLink;
    fWaitCursor: TFDGUIxWaitCursor;
    ds_WORKER: TFDQuery;
    ds_KONTRAGENT: TFDQuery;
    ds_WORKERSTATE: TFDQuery;
    iml1: TcxImageList;
    ds_DOG: TFDQuery;
    ds_DOGDOP: TFDQuery;
    ds_ORDERDOC: TFDQuery;
    ds_DOGDOC: TFDQuery;
    ds_DOCTYPE: TFDQuery;
    ds_COMPLECTDOC: TFDQuery;
    ds_SCANLIST: TFDQuery;
    ds_DgDocReport: TFDQuery;
    ds_ORDERSPEC: TFDQuery;
    ds_MOVESTATE: TFDQuery;
    ds_ARCOBJECT: TFDQuery;
    ds_ARCPLACE: TFDQuery;
    ds_DogOrderDoc: TFDQuery;
    ds_CONTACTS: TFDQuery;
    ds_ARCROOM: TFDQuery;
    ds_ARCRACK: TFDQuery;
    il24: TcxImageList;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectDB(dbName, userName, pass: string);
  end;

var
  cmDB: TcmDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TcmDB }

procedure TcmDB.ConnectDB(dbName, userName, pass: string);
begin
  with fdb do begin
    if Connected then
       Close;
    with Params do begin
      Clear;
      Add('Database='+dbName);
      Add('User_Name='+userName);
      Add('Password='+pass);
      Add('DriverID=FB');
    end;
    try
      Connected:= True;
    except
      on E: Exception do
      raise Exception.Create(e.Message);
    end;
  end;
end;

end.
