unit ArcObjectListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppUtils, BaseForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue, dxSkinscxPCPainter,
  cxPropertiesStore, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl,
  dxSkinOffice2013White, cxClasses, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, DbDataHelpers;

type
  TArcObjectListForm = class(TDezForm)
    lf1: TdxLayoutLookAndFeelList;
    lcf1: TdxLayoutCxLookAndFeel;
    prop1: TcxPropertiesStore;
    src_ARCRACK: TDataSource;
    src_ARCROOM: TDataSource;
    src_ARCOBJECT: TDataSource;
    lc1: TdxLayoutControl;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1ADDR: TcxGridDBColumn;
    l1: TcxGridLevel;
    grd2: TcxGrid;
    v2: TcxGridDBTableView;
    clv2CODE: TcxGridDBColumn;
    clv2ARCOBJECT: TcxGridDBColumn;
    clv2NOTE: TcxGridDBColumn;
    l2: TcxGridLevel;
    grd3: TcxGrid;
    v3: TcxGridDBTableView;
    clv3CODE: TcxGridDBColumn;
    clv3ARCROOM: TcxGridDBColumn;
    clv3NOMER: TcxGridDBColumn;
    clv3SHELFCOUNT: TcxGridDBColumn;
    clv3CELLCOUNT: TcxGridDBColumn;
    clv3PLACECOUNT: TcxGridDBColumn;
    l3: TcxGridLevel;
    grp1: TdxLayoutGroup;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    grplc1Group3: TdxLayoutGroup;
    grplc1Group4: TdxLayoutGroup;
    split1: TdxLayoutSplitterItem;
    split2: TdxLayoutSplitterItem;
    itmlc1Item1: TdxLayoutItem;
    itmlc1Item11: TdxLayoutItem;
    itmlc1Item12: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure clv1NAMEPropertiesEditValueChanged(Sender: TObject);
    procedure clv1ADDRPropertiesEditValueChanged(Sender: TObject);
    procedure clv2NOTEPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure PrepareDS;
    procedure ARCRACK_BeforePost(DataSet: TDataSet);
    procedure ARCROOM_BeforePost(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  ArcObjectListForm: TArcObjectListForm;

implementation

uses cmDBUnit;

{$R *.dfm}


procedure TArcObjectListForm.ARCRACK_BeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ARCROOM').AsVariant = null then
     DataSet.FieldByName('ARCROOM').AsVariant:= v2.FN('CODE').EditValue;
end;

procedure TArcObjectListForm.ARCROOM_BeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ARCOBJECT').AsVariant = null then
     DataSet.FieldByName('ARCOBJECT').AsVariant:= v1.FN('CODE').EditValue;
end;

procedure TArcObjectListForm.clv1ADDRPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post(True);
end;

procedure TArcObjectListForm.clv1NAMEPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post(True);
end;

procedure TArcObjectListForm.clv2NOTEPropertiesEditValueChanged(
  Sender: TObject);
begin
  v1.DataController.Post(True);
end;

procedure TArcObjectListForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TArcObjectListForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1,Self.Name);
  PrepareDS;
end;

procedure TArcObjectListForm.PrepareDS;
begin
  DataManager.ArcObjectList.SetWriteOpt;
  src_ARCOBJECT.DataSet:= DataManager.ArcObjectList;
  //
  with DataManager.ArcRoomList do begin
    SetWriteOpt(False);
    MacroByName('Where').AsRaw:='WHERE ARCOBJECT = :CODE';
    MasterSource:= src_ARCOBJECT;
    MasterFields:='CODE';
    DetailFields:= 'ARCOBJECT';
    Open;
  end;
  DataManager.ArcRoomList.BeforePost:= ARCROOM_BeforePost;
  src_ARCROOM.DataSet:= DataManager.ArcRoomList;
  //
  with DataManager.ArcRackList do begin
    SetWriteOpt(False);
    MacroByName('Where').AsRaw:='WHERE ARCROOM = :CODE';
    MasterSource:= src_ARCROOM;
    MasterFields:='CODE';
    DetailFields:= 'ARCROOM';
    Open;
  end;
  DataManager.ArcRackList.BeforePost:= ARCRACK_BeforePost;
  src_ARCRACK.DataSet:= DataManager.ArcRackList;
end;

initialization
 RegisterClass(TArcObjectListForm);
end.
