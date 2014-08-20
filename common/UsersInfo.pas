unit UsersInfo;

interface

uses SingletonTemplate, System.Variants,

     FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
     FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
     FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,

     System.SysUtils, Vcl.Forms, System.IniFiles, System.Classes;

{ UserInfo }
type
{$M+}
  TUserInfo = class(TSingleton)
  private
    fCode: Integer;
    fFIO: string;
    fKontragent: Integer;
    fRole: Integer;
    fPSW: string;
  protected
    constructor Create; override;
    function GetFIO: string;
    function GetPSW: string;
  public

    destructor Destroy; override;
  published
    property Code: Integer read fCode write fCode;
    property Kontragent: Integer read fKontragent write fKontragent;
    property Role: Integer  read fRole write fRole;
    property FIO: string read GetFIO;
    property PSW: string read GetPSW;
  end;
{$M-}

  TConfig = class(TSingleton)
    private
      fBaseName: string;
      fBasePath: string;
      fHostIP: string;
      fHostPort: string;
  protected
    constructor Create; override;
    procedure LoadIni;
  public
    destructor Destroy; override;
  published
    property BaseName: string read fBaseName write fBaseName;
    property BasePath: string read fBasePath write fBasePath;
    property HostIP: string read fHostIP write fHostIP;
    property HostPort: string read fHostPort write fHostPort;
  end;

function UserInfo: TUserInfo;
function Config: TConfig;


implementation

uses cmDBUnit;

function UserInfo: TUserInfo;
begin
  Result := TUserInfo.GetInstance;
end;

function Config: TConfig;
begin
  Result := TConfig.GetInstance;
end;
{ TUserInfo }

constructor TUserInfo.Create;
begin
  inherited;

end;

destructor TUserInfo.Destroy;
begin

  inherited;
end;

function TUserInfo.GetFIO: string;
begin
  if fFIO = '' then begin
    try
      fFIO:= cmDB.fdb.ExecSQLScalar('select FIOSHORT FIO from WORKER where CODE = :code',[fCode]);
    except
      on e: Exception do
      raise Exception.Create(e.Message);
    end;
  end;
  Result:= fFIO;
end;

function TUserInfo.GetPSW: string;
begin
  if fPSW = '' then begin
    try
      fPSW:= cmDB.fdb.ExecSQLScalar('select PSW from WORKER where CODE = :code',[fCode]);
    except
      on e: Exception do
      raise Exception.Create(e.Message);
    end;
  end;
  Result:= fPSW;
end;

{ TConfig }

constructor TConfig.Create;
begin
  inherited;
  LoadIni;
end;

destructor TConfig.Destroy;
begin

  inherited;
end;

procedure TConfig.LoadIni;
var
  Ini: TIniFile;
  FileName: string;
  List: TStringList;
begin
  FileName := ExtractFilePath(Application.ExeName) + 'config\conf.ini';
  if FileExists(FileName) then
  begin
    ini := TIniFile.Create(FileName);
    try
      List:= TStringList.Create;
      //Result := ini.ReadString('Base', Sect, '');
      Ini.ReadSection('Base', List);
      fBaseName := List[0];
      fBasePath :=  AnsiString(ini.ReadString('FBServ', 'BasePath', 'FBServ'));
      fHostIP := AnsiString(ini.ReadString('FBServ', 'ServName', 'localhost'));
      fHostPort :=  AnsiString(ini.ReadString('FBServ', 'ServPort', '7002'));
    finally
      FreeAndNil(List);
      FreeAndNil(Ini);
    end;
  end
end;
end.
