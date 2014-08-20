unit LofinFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinLondonLiquidSky, dxSkinscxPCPainter, cxContainer, cxEdit,

  dxLayoutcxEditAdapters, dxLayoutControl, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, IniFiles, cxPropertiesStore,
  dxLayoutLookAndFeels, dxSkinMcSkin, dxSkinsDefaultPainters,
  cmDBUnit,
  dxSkinOffice2010Blue, cxLabel, dxLayoutControlAdapters, dxLayoutContainer,
  dxSkinDevExpressStyle, cxCheckBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdTelnet, dxSkinOffice2013White, UsersInfo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, cxClasses,
  FireDAC.Comp.DataSet;

type
  TLoginForm = class(TForm)
    lGrp: TdxLayoutGroup;
    lcontr1: TdxLayoutControl;
    lGrp1: TdxLayoutGroup;
    lGrp2: TdxLayoutGroup;
    cbb_user: TcxLookupComboBox;
    Item_cbUser: TdxLayoutItem;
    edt_pass: TcxTextEdit;
    Item_pass: TdxLayoutItem;
    btn_Ok: TcxButton;
    Item_bntOk: TdxLayoutItem;
    btn_cancel: TcxButton;
    Item_btnCancel: TdxLayoutItem;
    lGrp3: TdxLayoutGroup;
    ds2: TDataSource;
    cbb_base: TcxComboBox;
    ItemBase: TdxLayoutItem;
    prop1: TcxPropertiesStore;
    LaFls1: TdxLayoutLookAndFeelList;
    LafScin1: TdxLayoutSkinLookAndFeel;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    txt_usr: TcxTextEdit;
    Itm_usr: TdxLayoutItem;
    grp4: TdxLayoutGroup;
    cbb_kontr: TcxLookupComboBox;
    litlcontr1Item1: TdxLayoutItem;
    ds_KONTR: TDataSource;
    cbb_PIPLE: TcxLookupComboBox;
    litlcontr1Item11: TdxLayoutItem;
    chk_pswd: TcxCheckBox;
    litlcontr1Item12: TdxLayoutItem;
    grplcontr1Group1: TdxLayoutGroup;
    grplcontr1Group2: TdxLayoutGroup;
    idtl1: TIdTelnet;
    ds_WORKER: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_passKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_kontrPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_PIPLEPropertiesEditValueChanged(Sender: TObject);
    procedure chk_pswdPropertiesEditValueChanged(Sender: TObject);
    procedure cbb_userPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    // SFD: TglSmallFontsDefence;
    currRole, currWorker: Variant;
    currPass: Variant;
    procedure CreateParams(var Params: TCreateParams); override;
    function GetDbName(Sect: string): string;
    procedure LoadSettings(ini: TIniFile);
    function ConnectDb(basename: string; user: string = 'sysdba';
      pass: string = 'victris'): boolean;
    //
    procedure PrepareDS;
    procedure LoadConfig;
    function CheckUser: boolean;
  public
    { Public declarations }
    ini: TIniFile;
  end;

var
  LoginForm: TLoginForm;

implementation

//uses VersionInfo, ApplicationVersionHelper,


uses AppUtils;//  LoadingSplash;

{$R *.dfm}

procedure TLoginForm.btn_cancelClick(Sender: TObject);
begin
  ModalResult := 2;
end;

procedure TLoginForm.btn_OkClick(Sender: TObject);
begin
  currWorker := cbb_user.EditValue;
  with UserInfo do
  begin
    Code := currWorker;
    Role := currRole;
    currPass:= PSW;
  end;
  if not CheckUser then
    raise Exception.Create('Не возможно подключится к базе данных!'#10#13 +
          'Проверьте правильность ввода '#10#13 +
          'имени пользователя или пароля.');
  //SplashVisibility(True, 'запуск приложения...');
  ModalResult := 1;
  BaseNameStr := cbb_base.Text;

end;

procedure TLoginForm.cbb_kontrPropertiesEditValueChanged(Sender: TObject);
begin
  with cbb_kontr.Properties.Grid.DataController do
  begin
    currRole := Values[FocusedRecordIndex, 1]; // AROLE
  end;
end;

procedure TLoginForm.cbb_PIPLEPropertiesEditValueChanged(Sender: TObject);
begin
  cbb_PIPLE.PostEditValue;
  with cbb_PIPLE.Properties.Grid.DataController do
  begin
    currPass := Values[FocusedRecordIndex, 2]; // pswd
  end;
end;

procedure TLoginForm.cbb_userPropertiesEditValueChanged(Sender: TObject);
begin
  cbb_user.PostEditValue;
  with cbb_user.Properties.Grid.DataController do
    currPass := Values[FocusedRecordIndex, 2];
end;

procedure TLoginForm.edt_passKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_OkClick(nil);
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ini.Free;
end;

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  LoadForm(prop1, Self.Name);
  cbb_base.ItemIndex := 0;
  LoadConfig;
end;

function TLoginForm.CheckUser: boolean;
begin
  Result := currPass = edt_pass.Text;
end;

procedure TLoginForm.chk_pswdPropertiesEditValueChanged(Sender: TObject);
begin
  if chk_pswd.Checked then
    edt_pass.Properties.EchoMode := eemNormal
  else
    edt_pass.Properties.EchoMode := eemPassword;
end;

function TLoginForm.ConnectDb(basename: string; user: string = 'sysdba';
  pass: string = 'victris'): boolean;
var
  DBName: string;
begin
  Result := false;
  if basename <> '' then
  begin
    DBName := GetDbName(basename);
    try
      cmDB.ConnectDB(DBName,user,pass);
      Result := cmDb.fdb.connected;
    Except
      on E: Exception do
      begin
        raise Exception.Create('Не возможно подключится к базе данных!'#10#13 +
          'Проверьте правильность ввода '#10#13 +
          'имени пользователя или пароля.'#10#13 +e.Message);
        btn_Ok.Enabled := false;
        Result := false;
      end;
    end;
  end;
end;

procedure TLoginForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    ExStyle := ExStyle OR WS_EX_APPWINDOW;
end;

procedure TLoginForm.PrepareDS;
begin
  cmDB.ds_Worker.Open;
end;

function TLoginForm.GetDbName(Sect: string): string;
var
  FileName: string;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'config\conf.ini';
  if FileExists(FileName) then
  begin
    ini := TIniFile.Create(FileName);
    try
      Result := ini.ReadString('Base', Sect, '');
      ServName := AnsiString(ini.ReadString('FBServ', 'ServName', 'localhost'));
      if ini.ReadInteger('FormOptions', 'MultiForm', 0) = 1 then
        SetFormOptions(True)
      else
        SetFormOptions(false);
    finally

    end;
  end
  else
    Result := '';
end;

procedure TLoginForm.LoadConfig;
var
  FileName, DBName: string;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'config\conf.ini';
  if FileExists(FileName) then
  begin
    ini := TIniFile.Create(FileName);
    try

      LoadSettings(ini);
      cbb_base.ItemIndex :=0;
      DBName := VarToStrDef(cbb_base.EditValue, '');
      if ConnectDb(DBName) then
      begin
        PrepareDS;
        LoadForm(prop1, self.Name);
      end;
    finally
       //Ini.Free;
    end;
  end
  else
  begin
    ShowMessage('Не найден файл конфигурации!');
    ModalResult := 2;
  end;
end;

procedure TLoginForm.LoadSettings(ini: TIniFile);
begin
  ini.ReadSection('Base', cbb_base.Properties.Items);
end;

end.
