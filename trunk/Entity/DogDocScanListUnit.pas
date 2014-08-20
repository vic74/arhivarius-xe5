unit DogDocScanListUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, BoundHelpers, DbDataHelpers, Data.DB,
  System.Variants, Vcl.Dialogs, System.IOUtils, Vcl.Forms, Vcl.FileCtrl;

  type
{ TScanlist }

  TScanList = class(TObject)
  private

  protected

  public
    constructor Create;
    destructor Destroy; override;

    function LoadScans(aCode: Variant): TDataSet;
    procedure OpenScanForm(AOwner: TComponent; aCode: Variant);
    procedure Delete(aCode: Variant);
    procedure DownLoadScan(aCode: Variant);
  published

  end;

implementation

{ TScanList }

uses ScanBlobFrm, LoadingSplash;

constructor TScanList.Create;
begin

end;

procedure TScanList.Delete(aCode: Variant);
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не выбрана запись');
  if Application.MessageBox('Вы действительно хотите удалить файл?',
    'Предупреждение', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin
    DataManager.ExecSQL('DELETE FROM SCANLIST WHERE CODE = :CODE',[aCode]);
  end;
end;

destructor TScanList.Destroy;
begin

  inherited;
end;

procedure TScanList.DownLoadScan(aCode: Variant);
var
  Q: TDataSet;
  FName, FilePath, Dir: string;
begin
  if VarIsType(aCode,[varNull, varEmpty]) then
     raise Exception.Create('Не выбрана запись');
  if SelectDirectory('Выберите каталог', 'C:\', Dir) then begin
    Q:= DataManager.SelectData('SELECT DATAPATH, SCANDATA FROM SCANLIST WHERE CODE = :CODE',[aCode]);

    try
      FName:= Q.FieldByName('DATAPATH').AsString;
      if FName = '' then Exit;
      if not DirectoryExists(Dir) then begin
        MessageDlg('Неверный каталог!', mtError, [mbOK], 0);
        Exit;
      end;
      FilePath:= IncludeTrailingBackslash(Dir)+FName;
      SplashVisibility(True, 'Подождите, идет скачивание файла...');
      TBlobField(Q.FieldByName('SCANDATA')).SaveToFile(FilePath);
    finally
      FreeAndNil(Q);
      SplashVisibility(False);
    end;
  end;
end;

function TScanList.LoadScans(aCode: Variant): TDataSet;
begin
  Result:= DataManager.SelectData('SELECT CODE, DOGDOC, NOMER, DATAPATH FROM SCANLIST WHERE DOGDOC = :DOGDOC',[aCode]);
end;

procedure TScanList.OpenScanForm(AOwner: TComponent; aCode: Variant);
var
  F: TScanBlobForm;
  DS: TDataSet;
begin
  DS:= DataManager.SelectData('SELECT CODE, DOGDOC, NOMER, DATAPATH FROM SCANLIST WHERE DOGDOC = :DOGDOC',[aCode]);
  F := TScanBlobForm.Create(AOwner, aCode, DS);
  F.ShowModal;
end;

end.
