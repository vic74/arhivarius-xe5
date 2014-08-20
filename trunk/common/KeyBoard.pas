unit KeyBoard;

interface
 uses Classes, Forms, SysUtils, Variants,Controls, Windows, Winapi.Messages;

   function NameKeyboardLayout(layout : LongWord) : string;
   function GetActiveKbdLayout : LongWord;
   function GetActiveKbdLayoutWnd : LongWord;
   procedure SetKbdLayout(kbLayout : LongWord);
   procedure SetLayoutActiveWnd(kbLayout : LongWord);

implementation
const
  CNT_LAYOUT = 2; // ���������� ��������� ���������
  ENGLISH = $409;
  RUSSIAN = $419;

  TKbdValue : array [1..CNT_LAYOUT] of LongWord =
                ( ENGLISH,
                  RUSSIAN
                );
  TKbdDisplayNames : array [1..CNT_LAYOUT] of string =
                ('English',
                 '�������'
                );

{----- ���������� ���� ��������� � ������� -----}

{�������� �������� ���������}
function NameKeyboardLayout(layout : LongWord) : string;
var
  i: integer;
begin
  Result:='';
  try
    for i:=1 to CNT_LAYOUT do
      if TKbdValue[i]=layout then Result:= TKbdDisplayNames[i];
  except
    Result:='';
  end;
end;
//**************** end of NameKeyboardLayot ***************************

{�������� ��������� � ����� ���������}
function GetActiveKbdLayout : LongWord;
begin
  result:= GetKeyboardLayout(0) shr $10;
end;
//***************** end of GetActiveKbdLayot ****************************

{�������� ��������� � �������� ����}
function GetActiveKbdLayoutWnd : LongWord;
var
  hWindow,idProcess : THandle;
begin
  // �������� handle ��������� ���� ����� ���������
  hWindow := GetForegroundWindow;
  // �������� ������������� ������ ��������
  idProcess := GetWindowThreadProcessId(hWindow,nil);
  // �������� ������� ��������� � ����� ���������
  Result:=(GetKeyboardLayout(idProcess) shr $10);
end;
//***************** end of GetActiveKbdLayotWnd **************************

{���������� ��������� � ����� ���������}
procedure SetKbdLayout(kbLayout : LongWord);
var
  Layout: HKL;
begin
  // �������� ������ �� ���������
  Layout:=LoadKeyboardLayout(PChar(IntToStr(kbLayout)), 0);
  // ����������� ��������� �� �������
  ActivateKeyboardLayout(Layout,KLF_ACTIVATE);
end;
//****************** end of SetKbdLayot **********************************


{���������� ��������� � �������� ����}
procedure SetLayoutActiveWnd(kbLayout : LongWord);
var
  Layout: HKL;
  hWindow{, idProcess} : THandle; // ION T: �� ������������
begin
  // �������� handle ��������� ���� ����� ���������
  hWindow := GetForegroundWindow;
  // �������� ������ �� ���������
  Layout:=LoadKeyboardLayout(PChar(IntToStr(kbLayout)), 0);
  // �������� ��������� � ����� ���������
  sendMessage(hWindow,WM_INPUTLANGCHANGEREQUEST,1,Layout);
end;
end.
