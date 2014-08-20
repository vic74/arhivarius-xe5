unit ArcObjectFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  AppUtils, BaseForm,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, cxPropertiesStore, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit;

type
  TArcObjectForm = class(TDezForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    prop1: TcxPropertiesStore;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    split2: TdxLayoutSplitterItem;
    v1: TcxGridDBTableView;
    l1: TcxGridLevel;
    grd1: TcxGrid;
    itmlc1Item1: TdxLayoutItem;
    v2: TcxGridDBTableView;
    l2: TcxGridLevel;
    grd2: TcxGrid;
    itmlc1Item11: TdxLayoutItem;
    v3: TcxGridDBTableView;
    l3: TcxGridLevel;
    grd3: TcxGrid;
    itmlc1Item12: TdxLayoutItem;
    //ds_ARCOBJECT: TpFIBDataSet;
    src_ARCOBJECT: TDataSource;
    //ds_ARCROOM: TpFIBDataSet;
    src_ARCROOM: TDataSource;
    //ds_ARCRACK: TpFIBDataSet;
    src_ARCRACK: TDataSource;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    clv2CODE: TcxGridDBColumn;
    clv2ARCOBJECT: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    clv3CODE: TcxGridDBColumn;
    clv3ARCROOM: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3SHELFCOUNT: TcxGridDBColumn;
    clv3CELLCOUNT: TcxGridDBColumn;
    clv3PLACECOUNT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ds_ARCROOMBeforePost(DataSet: TDataSet);
    procedure clv1NAMEPropertiesEditValueChanged(Sender: TObject);
    procedure clv1ADDRPropertiesEditValueChanged(Sender: TObject);
    procedure clv2NOTEPropertiesEditValueChanged(Sender: TObject);
    procedure ds_ARCRACKBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OpenDS;
  public
    { Public declarations }
  end;

var
  ArcObjectForm: TArcObjectForm;

implementation

{$R *.dfm}

uses cmDBUnit;

procedure TArcObjectForm.clv1ADDRPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post(True);
end;

procedure TArcObjectForm.clv1NAMEPropertiesEditValueChanged(Sender: TObject);
begin
  v1.DataController.Post(True);
end;

procedure TArcObjectForm.clv2NOTEPropertiesEditValueChanged(Sender: TObject);
begin
  v2.DataController.Post(True);
end;

procedure TArcObjectForm.ds_ARCRACKBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ARCROOM').AsVariant = null then
     DataSet.FieldByName('ARCROOM').AsVariant:= v2.GetColumnByFieldName('CODE').EditValue;
end;

procedure TArcObjectForm.ds_ARCROOMBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ARCOBJECT').AsVariant = null then
     DataSet.FieldByName('ARCOBJECT').AsVariant:= v1.GetColumnByFieldName('CODE').EditValue;
end;

procedure TArcObjectForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TArcObjectForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  OpenDS;
end;

procedure TArcObjectForm.OpenDS;
begin
  {ds_ARCOBJECT.SetWriteOpt(True);
  ds_ARCROOM.SetWriteOpt(True);
  ds_ARCRACK.SetWriteOpt(true);}
end;

initialization
  RegisterClass(TArcObjectForm);
end.
