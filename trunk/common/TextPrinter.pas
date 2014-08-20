unit TextPrinter;

interface

uses
  SysUtils, Windows;

type
  TTextPrinter = class(TObject)
  private
    FNumberOfBytesWritten: cardinal;
    FHandle: THandle;
    FPrinterOpen: Boolean;
    FErrorString: PChar;
    procedure SetErrorString;
  public
    constructor Create(PortName: string);
    procedure Write(const Str: string);
    destructor Destroy; override;
    property NumberOfBytesWritten: cardinal read FNumberOfBytesWritten;
  end;

//прямая отправка строки в принтер
function WriteTextToPrinter(PortName, Str: string): integer;
//Перекодировка
function Code866(S: string): string;


implementation

function WriteTextToPrinter(PortName,Str: string): integer;
 var Prn: TTextPrinter;
begin
 Prn:=TTextPrinter.Create(PortName);
 Prn.Write(Str);
 Result:=Prn.NumberOfBytesWritten;
 Prn.Free;
end;

function Code866(S: string): string;
 const Shb='АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя';
   var i,Poz: integer;
begin
 for i:=0 to Length(S) do
  begin
   Poz:=Pos(S[i],Shb);
   if Poz<>0 then S[i]:=Chr(175+Poz);
  end;
 Result:=S;
end;

constructor TTextPrinter.Create(PortName: string);
begin
  FHandle := CreateFile(PChar(PortName), GENERIC_READ or GENERIC_WRITE, FILE_SHARE_READ
    or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0);
  if FHandle = INVALID_HANDLE_VALUE then
  begin
    SetErrorString;
    raise Exception.Create(FErrorString);
  end
  else
    FPrinterOpen := True;
  end;

procedure TTextPrinter.SetErrorString;
begin
  if FErrorString <> nil then
  LocalFree(Integer(FErrorString));
  FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER or FORMAT_MESSAGE_FROM_SYSTEM,
    nil,
    GetLastError(),
    LANG_USER_DEFAULT,
    @FErrorString,
    0,
    nil
    );
end;

procedure TTextPrinter.Write(const Str: string);
var
  OEMStr: PAnsiChar;
  NumberOfBytesToWrite: Integer;
begin
  if not FPrinterOpen then Exit;
  NumberOfBytesToWrite := Length(Str);
  OEMStr := PAnsiChar(LocalAlloc(LMEM_FIXED, NumberOfBytesToWrite + 1));
  try
    CharToOem(PWideChar(Str), OEMStr);
    if not WriteFile( FHandle, OEMStr^, NumberOfBytesToWrite,
      FNumberOfBytesWritten, nil) then
    begin
      SetErrorString;
      raise Exception.Create(FErrorString);
    end;
  finally
    LocalFree(Integer(OEMStr));
  end;
end;

destructor TTextPrinter.Destroy;
begin
  CloseHandle(FHandle);
  if FErrorString <> nil then
    LocalFree(Integer(FErrorString));
end;

end.


