program GBB;

uses
  Winapi.Windows,
  Winapi.Messages,
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uDm in 'Utils\uDm.pas' {Dm: TDataModule},
  uLogin in 'Form\uLogin.pas' {FrmLogin},
  uFraModuleBase in 'Base\uFraModuleBase.pas' {fraModuleBase: TFrame},
  uConst in 'Utils\uConst.pas',
  uDevPublic in 'Utils\uDevPublic.pas',
  uIniOptionsClient in 'Utils\uIniOptionsClient.pas',
  uMyInputBox in 'Utils\uMyInputBox.pas' {frmMyInputBox},
  uPublic in 'Utils\uPublic.pas',
  uUserException in 'Utils\uUserException.pas',
  uWinPublic in 'Utils\uWinPublic.pas',
  uFraModuleMap in 'Module\uFraModuleMap.pas' {fraModuleMap: TFrame},
  ufraModuleBaseList in 'Base\ufraModuleBaseList.pas' {FraModuleBaseList: TFrame},
  uFraModuleSalesInfo in 'Module\uFraModuleSalesInfo.pas' {FraModuleSalesInfo: TFrame},
  uDmClient in 'uDmClient.pas' {DmClient: TDataModule},
  uIniOption in 'Utils\uIniOption.pas',
  uFrmDataImport in 'uFrmDataImport.pas' {Form1},
  ufraModuleDataManipulation in 'Module\ufraModuleDataManipulation.pas' {fraModuleDataManipulation: TFrame},
  ufrmHuiFangVist in 'Form\ufrmHuiFangVist.pas' {frmHuiFangVist},
  ufraModuleChart in 'Module\ufraModuleChart.pas' {fraModuleChart: TFrame},
  uFrmHuiFangEdit in 'Form\uFrmHuiFangEdit.pas',
  uHuiFangFrmbase in 'Form\uHuiFangFrmbase.pas' {ReturnViewFrombase},
  wdRunOnce in 'Utils\wdRunOnce.pas',
  uFraModuleWHX in 'Module\uFraModuleWHX.pas' {FraModuleWHX: TFrame},
  uFraModuleUserInfo in 'Module\uFraModuleUserInfo.pas' {FraModuleUserInfo: TFrame},
  ufrmEditBase in 'Base\ufrmEditBase.pas' {frmEditBase},
  ufrmEditUserInfo in 'Form\ufrmEditUserInfo.pas' {frmEditUserInfo},
  uHuiFangFrm in 'Form\uHuiFangFrm.pas' {ReturnViewFrom},
  uFraModuleGoodClass in 'Module\uFraModuleGoodClass.pas' {FraModuleGoodClass: TFrame},
  Snowflake in 'Snowflake.pas',
  uFrmGoodTypeManager in 'Form\uFrmGoodTypeManager.pas' {TFrmGoodTypeManager},
  FireFunction in 'Utils\FireFunction.pas',
  MyLib.scTreeView in 'Utils\MyLib.scTreeView.pas';

{$R *.res}
var
  mymutex: THandle;
begin
  mymutex:=CreateMutex(nil,True,'Demo程序');
  if GetLastError<>ERROR_ALREADY_EXISTS then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := False;
    Application.CreateForm(TDm, Dm);
  Application.CreateForm(TDmClient, DmClient);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TReturnViewFrom, ReturnViewFrom);
  Application.CreateForm(TTFrmGoodTypeManager, TFrmGoodTypeManager);
  Application.Run;
  end else
  begin
    hPrevInst := FindWindow(PChar('TFrmMain'), nil); //获取程序句柄
    if (hPrevInst <> 0) then
    begin
      PostMessage(hPrevInst,WM_RESTOREWINDOW, 0, 0);  //给程序发送消息
      Application.ShowMainForm := False;
      Application.Terminate;
      Exit;
    end;
  end;
end.
