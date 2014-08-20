unit ScanBlobFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  FileCtrl,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxLayoutContainer, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses,BaseForm,
  cxGridCustomView, cxGrid, dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, DogDocUnit;

type
  TScanBlobForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;

    src_SCANLIST: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1DOGDOC: TcxGridDBColumn;
    clv1NOMER: TcxGridDBColumn;
    clv1DATAPATH: TcxGridDBColumn;
    grplc1Group1: TdxLayoutGroup;
    btn_SaveScan: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    btnDelete: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    procedure btn_SaveScanClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fDogDoc: TDogDoc;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; aCode: Variant; ds: TDataSet);
  end;

var
  ScanBlobForm: TScanBlobForm;

implementation

{$R *.dfm}

uses AppUtils, cmDBUnit, DogDocPartial, DbDataHelpers;

{ TScanBlobForm }

procedure TScanBlobForm.btnDeleteClick(Sender: TObject);
begin
  fDogDoc.ScanList.Delete(v1.FN('CODE').EditValue);
  src_SCANLIST.DataSet.Refresh;
end;

procedure TScanBlobForm.btn_SaveScanClick(Sender: TObject);
begin
  fDogDoc.ScanList.DownLoadScan(v1.FN('CODE').EditValue);
end;

constructor TScanBlobForm.Create(AOwner: TComponent; aCode: Variant; ds: TDataSet);
begin
  inherited Create(AOwner);
  fDogDoc:= TDogDoc.Create;
  fDogDoc.Code:= aCode;
  //
  src_SCANLIST.DataSet:= ds;
  grplc1Group1.Visible:= not ds.IsEmpty;
end;

procedure TScanBlobForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(fDogDoc) then
    FreeAndNil(fDogDoc);
end;

end.
