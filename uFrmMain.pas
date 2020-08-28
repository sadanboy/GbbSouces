unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxPC, cxStyles, cxLocalization,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, cxImageList,
  dxNavBarCollns, dxNavBarBase, dxNavBar, dxRibbonGallery, dxSkinChooserGallery,
  dxBar, dxBarExtItems, cxClasses,uFraModuleBase, Vcl.ExtCtrls, cxTrackBar,
  cxBarEditItem, dxSkinsForm, Vcl.Menus, dxSkiniMaginary,
  dxSkinOffice2019Colorful, scControls, scGPControls, dxGalleryControl,uDmClient,
  Vcl.WinXCtrls, Vcl.StdCtrls, dxRibbon;
const
  WM_RESTOREWINDOW = WM_USER+1209;  //�Զ�����ʾ��Ϣ
type
  TIconFlag = (ifWarning, ifInformation, ifQuestion, ifError);

  TFrameClass = class of TFrame;

  TFrmMain = class(TForm)
    barMgrMain: TdxBarManager;
    barMgrMainBar2: TdxBar;
    barMgrMainBar3: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarButton3: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    BtnVer: TdxBarStatic;
    btnQiyeMc: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    barBtnUserInfo: TdxBarStatic;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    btnTimer: TdxBarStatic;
    dxBarButton48: TdxBarButton;
    NavBarMenu: TdxNavBar;
    NavBarMenuGroup1: TdxNavBarGroup;
    NavBarMenuGroup2: TdxNavBarGroup;
    NavBarMenuGroup3: TdxNavBarGroup;
    NavBarMenuGroup4: TdxNavBarGroup;
    NavBarMenuGroup7: TdxNavBarGroup;
    NavBarMenuGroup8: TdxNavBarGroup;
    NavBarMenuItem1: TdxNavBarItem;
    NavBarMenuItem3: TdxNavBarItem;
    NavBarMenuItem4: TdxNavBarItem;
    NavBarMenuItem5: TdxNavBarItem;
    NavBarMenuItem6: TdxNavBarItem;
    NavBarMenuItem7: TdxNavBarItem;
    NavBarMenuItem8: TdxNavBarItem;
    NavBarMenuItem9: TdxNavBarItem;
    NavBarMenuItem10: TdxNavBarItem;
    NavBarMenuItem11: TdxNavBarItem;
    Img16: TcxImageList;
    ActionList1: TActionList;
    actSalesInfo: TAction;
    actImportDemo: TAction;
    cxLocalizer1: TcxLocalizer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    pcMain: TcxPageControl;
    dxBarButton49: TdxBarButton;
    MainTimer: TTimer;
    cxBarEditItem1: TcxBarEditItem;
    dxBarSubItem11: TdxBarSubItem;
    TrayIcon1: TTrayIcon;
    HookMenu: TPopupMenu;
    pmiShowMain: TMenuItem;
    HookCloseMain: TMenuItem;
    Image24: TImageList;
    scGalleryMenu1: TscGalleryMenu;
    dxBarButton50: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    dxBarInPlaceSubItem1: TdxBarInPlaceSubItem;
    dxBarButton51: TdxBarButton;
    actMembersAdd: TAction;
    actDataManipulation: TAction;
    actSalesData: TAction;
    btnCurrentUser: TdxBarStatic;
    actWHX: TAction;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    Image32: TImageList;
    Img24: TcxImageList;
    Img32: TcxImageList;
    dxBarPopupMenu1: TdxBarPopupMenu;
    btnUserName: TdxBarButton;
    btnReLogin: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    MenuGoddclass: TdxNavBarItem;
    Action1: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MainTimerTimer(Sender: TObject);
    procedure dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;
      const ASkinName: string);
    procedure TrayIcon1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pmiShowMainClick(Sender: TObject);
    procedure HookCloseMainClick(Sender: TObject);
    procedure actSalesInfoExecute(Sender: TObject);
    procedure actMembersAddExecute(Sender: TObject);
    procedure actDataManipulationExecute(Sender: TObject);
    procedure actSalesDataExecute(Sender: TObject);
    procedure actWHXExecute(Sender: TObject);
    procedure NavBarMenuItem6Click(Sender: TObject);
    procedure btnReLoginClick(Sender: TObject);
    procedure MenuGoddclassClick(Sender: TObject);
  private
    FbHostFree: Boolean;  //�㴰��ر�,���ش��嵽���½�
    function CallModule(moduleSymbol, moduleCaption: string; AllowMultiInstance: Boolean = False): TFrame;

    { Private declarations }
    procedure ShowTip(AMessages:string;ATile:string='��ʾ');
    procedure AppException(Sender: TObject; E: Exception); // �쳣����
  public
    FExePath:string;
    fraMap:TFrame;
    procedure InitStatusInfo;
    procedure InitFormLayout;
    procedure CloseModule;
    function CreateModule(moduleClassName: string; myts: TcxTabSheet; iIsNew: Boolean = True): TFrame; overload;
    function CreateModule(moduleClassName: string; myts: TcxTabSheet; iid: string): TFrame; overload;
    { Public declarations }
    function ShowMsg(ErrMsg: string; IconFlag: TIconFlag = ifError): Integer; // ��ʾ��ʾ��
    procedure FormRestoreWindow(var Message: TMessage); message WM_RESTOREWINDOW;  //������Ϣ���շ���
  end;

function SetSysFocus(handle:HWND):Integer;
function AddPage(pc: TcxPageControl; iCaption: string): TcxTabSheet;
var
  FrmMain: TFrmMain;
  mHandle:THandle;
  PreviousInstanceWindow:HWND;
  Project:string;
  AppName:string;
implementation

{$R *.dfm}
uses
  uDm, uWinPublic, uPublic, uLogin, uUserException,{ uGlobal,}uConst,Winapi.ShellAPI;
function SetSysFocus(handle:HWND):Integer;
var
    hOtherWin,OtherTHreadID,hFocusWin:integer;
begin
  hOtherWin:=GetForegroundWindow;
  OtherThreadID:=GetWindowThreadProcessID(hOtherWin,nil);
  if AttachThreadInput(GetcurrentThreadID,OtherThreadID,True) then
  begin
    hFocusWin:=GetFocus;
    SetFocus(handle);
    if hFocusWin<>0 then
    AttachThreadInput(GetCurrentTHreadID,OtherTHreadID,False)
  end
    else result:=SetFocus(handle);
end;

function YesNoMsg(Qmsg:String;QType:Integer=0):Boolean;
var vHelpContext:LongInt;
begin
  Result := false;
  if QType=0  then
    Result :=  (MessageDlg(Qmsg,TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],vHelpContext)=iDYES)
  else
    result := (MessageDlg(Qmsg,TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbNo,TMsgDlgBtn.mbYes],vHelpContext)=iDYES)
end;

function AddPage(pc: TcxPageControl; iCaption: string): TcxTabSheet;
begin
  Result:=TcxTabSheet.Create(pc);
  with Result do
  begin
    PageControl:=pc;
    Caption:=iCaption;
  end;
  pc.ActivePage:=Result;
end;

procedure TFrmMain.actDataManipulationExecute(Sender: TObject);
begin
  CallModule('DataManipulation','���ݵ��뵼��');
end;

procedure TFrmMain.actMembersAddExecute(Sender: TObject);
//var
//  AForm: TFrmImprot;
begin
  //���������Ա������  ����nil������Ҫ�Լ��ֶ��ͷ���Դ
//  AForm := TFrmImprot.Create(nil);
//  try
//    AForm.ShowModal;
//  finally
//    AForm.Free; //�ͷ���Դ
//  end;

end;

procedure TFrmMain.actSalesDataExecute(Sender: TObject);
begin
  
  CallModule('Chart','����ͳ��');
  
end;

procedure TFrmMain.actSalesInfoExecute(Sender: TObject);
begin
  CallModule('SalesInfo','������ϸ');
end;

procedure TFrmMain.actWHXExecute(Sender: TObject);
begin
  CallModule('WHX','��Ա�ط���Ϣ��ѯ');
end;

procedure TFrmMain.AppException(Sender: TObject; E: Exception);
var
  strErrInfo: string;
begin
  if not(E is EUserException) then
  begin
    strErrInfo := E.Message;
    ShowMsg(strErrInfo);
  end
  else
  begin
    case EUserException(E).ErrNumber of
      11:
        begin
          //GlobalValue.WriteToIni(wrCache);
          strErrInfo := E.Message + #13#10 + #13#10 + '��ǰ״̬�����ñ��ػ��棡';
        end;
    else
      strErrInfo := E.Message;
    end;
    if EUserException(E).ErrLevel <> elStop then
    begin
      strErrInfo := strErrInfo + #13#10 + #13#10 + '������޷��ų������뼼����Ա��ϵ��';
      ShowMsg(strErrInfo);
    end
    else
    begin
      strErrInfo := '���ؾ��棺���򼴽�����ֹ��' + #13#10 + #13#10 + '������ʾ��' + strErrInfo +
        #13#10 + #13#10 + '������޷��ų������뼼����Ա��ϵ��';
      ShowMsg(strErrInfo);
      Application.Terminate;
    end;
  end;

end;

procedure TFrmMain.btnReLoginClick(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
  Application.Terminate; // or, if this is the main form, simply Close;
end;

function TFrmMain.CallModule(moduleSymbol, moduleCaption: string;
  AllowMultiInstance: Boolean): TFrame;
var
  ts:TcxTabSheet;
  tsName,ModuleClassName:string;
  Fra:TFrame;
  //Frm:TForm;
begin
  ModuleClassName:='TFraModule'+moduleSymbol;
  LockWindowUpdate(pcMain.Handle);
  //SendMessage(pcMain.Handle,WM_SETREDRAW,0,0) ;
  if not AllowMultiInstance then
  begin
    tsName:= 'ts' + moduleSymbol;
    ts:=pcMain.FindComponent(tsName) as TcxTabSheet;
    if ts=nil then
    begin
      ts := AddPage(pcMain,Format('  %s  ',[moduleCaption]));
      pcMain.Properties.ActivateFocusedTab:=False;
      ts.Name:=tsName;
      Fra:= CreateModule(ModuleClassName,ts);
      if moduleSymbol = 'map' then
        ts.AllowCloseButton:=False
      else
        ts.AllowCloseButton:=True;
    end
    else if ts.ControlCount>0 then
         if ts.Controls[0] is TfraModuleBase then
         Fra:=TfraModuleBase(ts.Controls[0]);
    pcMain.ActivePage:=ts;
  end
  else
  begin
    ts := AddPage(pcMain, Format('  %s  ', [moduleCaption]));
    ts.AllowCloseButton := True;
    Fra := CreateModule(moduleClassName, ts);
  end;
  LockWindowUpdate(0);
  //SendMessage(pcMain.Handle,WM_SETREDRAW,1,0);
  if moduleSymbol = 'map' then
     fraMap :=Fra;
  if Fra = nil then
    Exit;
  Result := Fra;
  if TfraModuleBase(Fra).FocusControl<>nil then
     TfraModuleBase(Fra).FocusControl.SetFocus();
end;

procedure TFrmMain.CloseModule;
begin
  if pcMain.ActivePageIndex > -1 then
  begin
    if pcMain.ActivePage.Name <> 'tsmap' then
      pcMain.CloseTab(pcMain.ActivePageIndex);
  end;
end;

function TFrmMain.CreateModule(moduleClassName: string; myts: TcxTabSheet;
  iIsNew: Boolean): TFrame;
var
  fraClass:TFrameClass;
  aClass:TPersistentClass;
  //t1, t2, T3, T4, GetDataTime, GetDataTime2: int64;
begin
  //
  //t1 := GetTickCount;
  aClass := GetClass(moduleClassName);
  if Assigned(aClass) then
  begin
    fraClass := TFrameClass(aClass);
    Result := fraClass.Create(myts);
    with TfraModuleBase(Result) do
    begin
      //LockWindowUpdate(Result.Handle);
      SendMessage(Result.Handle,WM_SETREDRAW,0,0);
      Visible := False;
      name := 'Fra' + CreateSortId;
      Align := alClient;
      InitModuleLayout;
      Parent := myts;
      //LockWindowUpdate(0);
      SendMessage(Result.Handle,WM_SETREDRAW,1,0);
      ReDrawWindow(Result.Handle,nil,0,RDW_INVALIDATE or RDW_ALLCHILDREN);
      Visible := True;
      //T3 := GetTickCount;
      GetData;
      //T4 := GetTickCount;
      //GetDataTime2 := T4 - T3;
      OnCloseModule := CloseModule;
    end;
  end;
  //t2 := GetTickCount;
  //GetDataTime := t2 - t1;
end;

function TFrmMain.CreateModule(moduleClassName: string; myts: TcxTabSheet;
  iid: string): TFrame;
var
  fraClass: TFrameClass;
  aClass: TPersistentClass;
begin
  aClass := GetClass(moduleClassName);
  if Assigned(aClass) then
  begin
    fraClass := TFrameClass(aClass);
    Result := fraClass.Create(myts);
    with TfraModuleBase(Result) do
    begin
      Visible := False;
      name := 'Fra' + CreateSortId;
      Parent := myts;
      Align := alClient;
      InitModuleLayout;
      Visible := True;
      GetData;
      OnCloseModule := CloseModule;
    end;
  end;
end;

procedure TFrmMain.dxSkinChooserGalleryItem1SkinChanged(Sender: TObject;
  const ASkinName: string);
begin
  //
  dm.dxSkin.BeginUpdate;
  //LockWindowUpdate(self.Handle);
  SendMessage(Self.Handle,WM_SETREDRAW,0,0);
  barMgrMain.BeginUpdate;
  dm.dxSkin.SkinName := ASkinName;
  dm.Edit_onlyReadStyleController.Style.Color := dm.Edit_onlyReadStyleController.Style.LookAndFeel.SkinPainter.DefaultControlColor;
  barMgrMain.EndUpdate;
  dm.dxSkin.EndUpdate;
  //LockWindowUpdate(0);
  SendMessage(Self.Handle,WM_SETREDRAW,1,0);
  ReDrawWindow(Self.Handle,nil,0,RDW_INVALIDATE or RDW_ALLCHILDREN);
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not FbHostFree then
  begin
    Action := caNone;
    self.Hide;
    ShowTip('�ף�����С����������Ŷ��');
  end
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  oForm: TFrmLogin;
  //i: Integer;
  //isEnable:Boolean;
begin
  

  FbHostFree := False;
  FExePath:= ExtractFilePath(Application.ExeName);
  if not DirectoryExists(FExePath+'ExcelFile') then
    CreateDir(FExePath+'ExcelFile');
  Application.OnException:=AppException;
  if not DmClient.FireConMain.DoConnect then
  begin
    Dm.Tip.Show('����','�м��������δ���ӣ����飡',0);
    Exit;
  end;
//  isEnable:=True;
//  with dmclient do
//  begin
//    try
//      conMain.Connected:=True;
//    except
//      dmClient.Tip.Show('��ʾ','���ݿ��޷�����');
//      Application.Terminate;
//     // isEnable:=False;
//      Exit;
//    end;
//  end;
  dm.dxSkin.UseSkins := false;
  oForm := TFrmLogin.Create(self);
  oForm.BringToFront;
  if oForm.ShowModal <> mrOk then
  begin
    Application.Terminate;
    exit;
  end;
  oForm.free;
  dm.dxSkin.UseSkins := true;
  Application.MainFormOnTaskbar := True;
  InitFormLayout;
  InitStatusInfo;
  SetForegroundWindow(GetLastActivePopup(Self.Handle));
end;

procedure TFrmMain.FormRestoreWindow(var Message: TMessage);
begin
  //��ʾ�������
  Visible := True;
  Application.Restore;
  Application.BringToFront;
  Application.MainFormOnTaskbar := True;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  //InitFormLayout;
  //InitStatusInfo;
  if AppInfo.PowerInt<>0 then
  begin
    //ShowMessage(AppInfo.PowerInt.ToString);
    NavBarMenuItem11.Enabled:=False;
    NavBarMenuItem6.Enabled:=False;
  end;
end;

procedure TFrmMain.HookCloseMainClick(Sender: TObject);
begin
  if YesNoMsg('�Ƿ����Ҫ�˳�����ϵͳ��') then
  try
    FbHostFree := True;
    TrayIcon1.Visible:=False;
    TrayIcon1.Refresh;
    self.Close;
  finally
    if Boolean(DebugHook) then
      //dubBugģʽҪ�鿴�ڴ�©��

    else
    begin
      Application.Terminate;
      ExitProcess(0);
    end;
  end;
end;

procedure TFrmMain.InitFormLayout;
begin
  with pcMain do
  begin
    Align := alClient;
  end;
  Position := poScreenCenter;
  //InitNavBarMenu;
  fraMap := CallModule('map', '  ��ҳ  ');
end;

procedure TFrmMain.InitStatusInfo;
var
  DianPuName:string;
begin
  case AppInfo.DianPu of
    0:DianPuName:='�칫��';
    1:DianPuName:='��һ';
    2:DianPuName:='�ض�';
    3:DianPuName:='��¡';
    4:DianPuName:='��կ';
    5:DianPuName:='����';
    6:DianPuName:='����';
    7:DianPuName:='��ɭ';
    8:DianPuName:='Τ��';
    9:DianPuName:='�ǻ�';
    10:DianPuName:='���';
    11:DianPuName:='�ͷ�';
    12:DianPuName:='���';
    13:DianPuName:='����';
    14:DianPuName:='����';
  end;
  btnQiyeMc.Caption:=Format('��ǰ���̣�%s',[DianPuName]);
  BtnVer.Caption:=Format('�汾 %s',[GetApplicationVersion]);
  btnUserName.Caption:= Format('��ǰ��¼��Ա�� %s',[AppInfo.UserName]);
  barBtnUserInfo.Caption := Format('����Ա�� %s',[AppInfo.UserName]) ;
  btnTimer.Caption:=FormatDateTime('YYYY��MM��DD�� hh:mm:ss',Now);
end;

procedure TFrmMain.MainTimerTimer(Sender: TObject);
var
  Days:array[1..7] of string;
begin
  days[1]:='������';
  days[2]:='����һ';
  days[3]:='���ڶ�';
  days[4]:='������';
  days[5]:='������';
  days[6]:='������';
  days[7]:='������';

  btnTimer.Caption:='��ǰʱ�䣺'+FormatDateTime('YYYY��MM��DD�� hh:mm:ss',Now)+#32+days[DayOfWeek(now)];
end;

procedure TFrmMain.MenuGoddclassClick(Sender: TObject);
begin
  CallModule('GoodClass','��Ʒ������Ϣ');
end;

procedure TFrmMain.NavBarMenuItem6Click(Sender: TObject);
begin
  CallModule('UserInfo','�û�����');
end;

procedure TFrmMain.pmiShowMainClick(Sender: TObject);
begin
  if not self.Visible then
    Self.Visible := true;
end;

function TFrmMain.ShowMsg(ErrMsg: string; IconFlag: TIconFlag): Integer;
begin
  case IconFlag of
    ifWarning:
      Result := Application.MessageBox(PWideChar(ErrMsg), MESSAGEBOX_TITLE,
        MB_ICONWARNING + MB_YESNO);
    ifQuestion:
      Result := Application.MessageBox(PWideChar(ErrMsg), MESSAGEBOX_TITLE,
        MB_ICONQUESTION + MB_YESNO);
    ifInformation:
      Result := Application.MessageBox(PWideChar(ErrMsg), MESSAGEBOX_TITLE,
        MB_ICONINFORMATION + MB_OK);
    ifError:
      Result := Application.MessageBox(PWideChar(ErrMsg), MESSAGEBOX_TITLE,
        MB_ICONERROR + MB_OK);
  else
    Result := Application.MessageBox(PWideChar(ErrMsg), MESSAGEBOX_TITLE,
      MB_ICONERROR + MB_OK);
  end;
end;

procedure TFrmMain.ShowTip(AMessages, ATile: string);
begin
  TrayIcon1.BalloonHint:=AMessages;
  TrayIcon1.BalloonTitle:=ATile;
  TrayIcon1.ShowBalloonHint;
end;

procedure TFrmMain.TrayIcon1Click(Sender: TObject);
begin
  if WindowState = wsMinimized then
     Application.Restore;
  if Visible then
     setsysFocus(handle)
  else
    Visible := True;
  BringToFront;
end;
initialization
  Project:='RunOnlyOnce_MyProject';
  mHandle:=CreateMutex(nil,True,PChar(Project));
  if GetLastError=ERROR_ALREADY_EXISTS then
  begin
    //ShowMessage('�Ѿ���һ���ĳ����ʵ��������');
    AppName:=Application.Title;
    Application.ShowMainForm:=False;
    Application.Title:='destroy me';
    PreviousInstanceWindow:=FindWindow(PChar('TFrmMain'),PChar(AppName));
    if PreviousInstanceWindow<>0 then
      if IsIconic(PreviousInstanceWindow) then
      begin
        //OpenIcon(PreviousInstanceWindow);
        ShowWindow(PreviousInstanceWindow,SW_RESTORE)
      end
      else
         SetForegroundWindow(PreviousInstanceWindow);
    Application.Terminate;
  end;
finalization
  if mHandle<>0 then
    CloseHandle(mHandle);
end.
