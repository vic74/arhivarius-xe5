program arh;

uses
  Vcl.Forms,
  MainFrm in 'MainFrm.pas' {MainForm},
  cmDBUnit in 'db\cmDBUnit.pas' {cmDB: TDataModule},
  LofinFrm in 'common\LofinFrm.pas' {LoginForm},
  UsersInfo in 'common\UsersInfo.pas',
  SingletonTemplate in 'common\SingletonTemplate.pas',
  AppUtils in 'common\AppUtils.pas',
  BaseForm in 'common\BaseForm.pas',
  KontragentFrm in 'KontragentFrm.pas' {KontragentForm},
  WorkerFrm in 'WorkerFrm.pas' {WorkerForm},
  LoadingSplash in 'common\LoadingSplash.pas' {frmLoading},
  DogDocPartial in 'DogDocPartial.pas',
  DogDocAddFrm in 'DogDocAddFrm.pas' {DogDocAddForm},
  OrderDocPartial in 'Orderdoc\OrderDocPartial.pas',
  DocUnit in 'Entity\DocUnit.pas',
  DogDocUnit in 'Entity\DogDocUnit.pas',
  BoundHelpers in 'Helpers\BoundHelpers.pas',
  DbDataHelpers in 'Helpers\DbDataHelpers.pas',
  DogEditFrm in 'DogEditFrm.pas' {DogEditForm},
  DogDopEditFrm in 'DogDopEditFrm.pas' {DogDopEditForm},
  DogDopUnit in 'Entity\DogDopUnit.pas',
  OrderDocUnit in 'Entity\OrderDocUnit.pas',
  ScanBlobFrm in 'ScanBlobFrm.pas' {ScanBlobForm},
  DogDocScanListUnit in 'Entity\DogDocScanListUnit.pas',
  DogDocReport in 'Entity\DogDocReport.pas',
  ComplectDocFrm in 'ComplectDocFrm.pas' {ComplectDocForm},
  ReportUnit in 'db\ReportUnit.pas' {ReportModule: TDataModule},
  TextPrinter in 'common\TextPrinter.pas',
  DogListFrm in 'DogListFrm.pas' {DogListForm},
  OrderDocEditFrm in 'Orderdoc\OrderDocEditFrm.pas' {OrderDocEditForm},
  OrderDocReport in 'Orderdoc\OrderDocReport.pas',
  OrderSpecEditFrm in 'Orderdoc\OrderSpecEditFrm.pas' {OrderSpecEditForm},
  OrderDocSpecUnit in 'Orderdoc\OrderDocSpecUnit.pas',
  KeyBoard in 'common\KeyBoard.pas',
  OrdersDocFrm in 'Orderdoc\OrdersDocFrm.pas' {OrdersDocForm},
  ArcObjectListFrm in 'ArcObjectListFrm.pas' {ArcObjectListForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Icon:=nil;
  Application.CreateForm(TcmDB, cmDB);
  Application.CreateForm(TReportModule, ReportModule);
  LoginForm := TLoginForm.Create(Application);
  LoginForm.ShowModal;
  if LoginForm.ModalResult = 1 then
  begin
    LoginForm.Free;
    Application.CreateForm(TMainForm, MainForm);
    Application.Run;
  end
  else
  begin
    LoginForm.Free;
    Application.Run;
  end;
end.
