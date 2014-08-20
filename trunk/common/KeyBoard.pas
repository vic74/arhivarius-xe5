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
  CNT_LAYOUT = 2; // количество известных раскладок
  ENGLISH = $409;
  RUSSIAN = $419;

  TKbdValue : array [1..CNT_LAYOUT] of LongWord =
                ( ENGLISH,
                  RUSSIAN
                );
  TKbdDisplayNames : array [1..CNT_LAYOUT] of string =
                ('English',
                 'Русский'
                );

{----- собственно сами процедури и функции -----}

{получаем название раскладки}
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

{активная раскладка в своей программе}
function GetActiveKbdLayout : LongWord;
begin
  result:= GetKeyboardLayout(0) shr $10;
end;
//***************** end of GetActiveKbdLayot ****************************

{активная раскладка в активном окне}
function GetActiveKbdLayoutWnd : LongWord;
var
  hWindow,idProcess : THandle;
begin
  // получить handle активного окна чужой программы
  hWindow := GetForegroundWindow;
  // Получить идентификатор чужого процесса
  idProcess := GetWindowThreadProcessId(hWindow,nil);
  // Получить текущую раскладку в чужой программе
  Result:=(GetKeyboardLayout(idProcess) shr $10);
end;
//***************** end of GetActiveKbdLayotWnd **************************

{установить раскладку в своей программе}
procedure SetKbdLayout(kbLayout : LongWord);
var
  Layout: HKL;
begin
  // Получить ссылку на раскладку
  Layout:=LoadKeyboardLayout(PChar(IntToStr(kbLayout)), 0);
  // Переключить раскладку на русскую
  ActivateKeyboardLayout(Layout,KLF_ACTIVATE);
end;
//****************** end of SetKbdLayot **********************************


{установить раскладку в активном окне}
procedure SetLayoutActiveWnd(kbLayout : LongWord);
var
  Layout: HKL;
  hWindow{, idProcess} : THandle; // ION T: не используется
begin
  // получить handle активного окна чужой программы
  hWindow := GetForegroundWindow;
  // Получить ссылку на раскладку
  Layout:=LoadKeyboardLayout(PChar(IntToStr(kbLayout)), 0);
  // посылаем сообщение о смене раскладки
  sendMessage(hWindow,WM_INPUTLANGCHANGEREQUEST,1,Layout);
end;
end.
