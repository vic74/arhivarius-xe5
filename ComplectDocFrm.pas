unit ComplectDocFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxLayoutContainer, dxLayoutControlAdapters, Vcl.Menus,
  dxLayoutLookAndFeels, Vcl.StdCtrls, cxButtons, cxGridLevel, BaseForm,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutControl, DbDataHelpers;

type
  TComplectDocForm = class(TDezModalForm)
    grp1: TdxLayoutGroup;
    lc1: TdxLayoutControl;
    grplc1Group1: TdxLayoutGroup;
    grplc1Group2: TdxLayoutGroup;
    src_COMPLECTDOC: TDataSource;
    grd1: TcxGrid;
    v1: TcxGridDBTableView;
    clv1CODE: TcxGridDBColumn;
    clv1NAME: TcxGridDBColumn;
    clv1KONTRAGENT: TcxGridDBColumn;
    l1: TcxGridLevel;
    itmlc1Item1: TdxLayoutItem;
    btnSelect: TcxButton;
    itmlc1Item11: TdxLayoutItem;
    btnCancel: TcxButton;
    itmlc1Item12: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    procedure btnSelectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure COMPLECTDOC_BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PrepareDS;
  public
    { Public declarations }
  end;

var
  ComplectDocForm: TComplectDocForm;

implementation

{$R *.dfm}

uses cmDBUnit, AppUtils;

procedure TComplectDocForm.btnSelectClick(Sender: TObject);
var
  code : Variant;
begin
  code:= v1.GetColumnByFieldName('CODE').EditValue;
  if code = Unassigned then
     code := null;
  if code = null then begin
    ShowMessage('Не выбрано наименование папки!');
    ModalResult:= mrNone;
  end else
    ModalResult:= mrOk;

end;

procedure TComplectDocForm.COMPLECTDOC_BeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('KONTRAGENT').AsVariant = null then
     DataSet.FieldByName('KONTRAGENT').AsVariant := currKontr;
end;

procedure TComplectDocForm.FormCreate(Sender: TObject);
begin
  PrepareDS;
end;

procedure TComplectDocForm.PrepareDS;
begin
   with DataManager.ComplectDocList do begin
    DataManager.ComplectDocList.SetWriteOpt(False);
    Close;
    MacroByName('Where').AsRaw:= 'WHERE KONTRAGENT =:KONTRAGENT';
    ParamByName('KONTRAGENT').Value:= currKontr;
    Open;
  end;
  DataManager.ComplectDocList.BeforePost:= COMPLECTDOC_BeforePost;
  src_COMPLECTDOC.DataSet:= DataManager.ComplectDocList;
end;

end.
