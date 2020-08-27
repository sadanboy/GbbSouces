unit uIniOptionsClient;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniSystemSection = 'System';
  csIniConstSection = 'Const';
  csIniConnectionSection = 'Connection';
  csIniImportSection = 'Import';
  csIniJinHuoDDSection = 'JinHuoDD';

  { Section: System }
  csIniSystemName = 'Name';
  csIniSystemContact = 'Contact';
  csIniSystemPWD = 'PWD';
  csIniSystemSaveLoginInfo = 'SaveLoginInfo';
  csIniSystemAutoLogin = 'AutoLogin';
  csIniSystemSkin = 'Skin';
  csIniSystemLeftHand = 'LeftHand';

  { Section: Const }


  { Section: Connection }
  csIniConnectionHost = 'Host';
  csIniConnectionHostName = 'HostName';
  csIniConnectionPort = 'Port';
  csIniZhangTaoDataName = 'ZhangTao';

  { Section: Import }
  csIniImportCurPath = 'CurPath';

  { Section: JinHuoDD }

type
  TIniOptions = class(TObject)
  private
    { Section: System }
    FSystemName: string;
    FSystemContact: string;
    FSystemPWD: string;
    FSystemSaveLoginInfo: Boolean;
    FSystemAutoLogin: Boolean;
    FSystemSkin: string;
    FSystemLeftHand: Boolean;

    { Section: Const }
    FConstGender: string;
    FConstGrade: string;
    FConstTerm: string;
    FConstSubject: string;
    FConstQuestionType: string;
    FConstQuestionKind: string;
    FConstPeriod: string;

    { Section: Connection }
    FConnectionHost: string;
    FConnectionHostName: string;
    FConnectionPort: Integer;

    { Section: Import }
    FImportCurPath: string;

    { Section: JinHuoDD }
    FJinHuoDDWangLaiFLId: string;
    FJinHuoDDWangLaiDWId: string;
    FJinHuoDDCangKuId: string;
    FJinHuoDDBuMenId: string;
    FJinHuoDDYuanGongId: string;
    FZhangTaoDataName: string;
  public
    procedure LoadSettings(Ini: TIniFile);
    procedure SaveSettings(Ini: TIniFile);
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

    { Section: System }
    property SystemName: string read FSystemName write FSystemName;
    property SystemContact: string read FSystemContact write FSystemContact;
    property SystemPWD: string read FSystemPWD write FSystemPWD;
    property SystemSaveLoginInfo: Boolean read FSystemSaveLoginInfo write FSystemSaveLoginInfo;
    property SystemAutoLogin: Boolean read FSystemAutoLogin write FSystemAutoLogin;
    property SystemSkin: string read FSystemSkin write FSystemSkin;
    property SystemLeftHand: Boolean read FSystemLeftHand write FSystemLeftHand;

    { Section: Const }
    property ConstGender: string read FConstGender write FConstGender;
    property ConstGrade: string read FConstGrade write FConstGrade;
    property ConstTerm: string read FConstTerm write FConstTerm;
    property ConstSubject: string read FConstSubject write FConstSubject;
    property ConstQuestionType: string read FConstQuestionType write FConstQuestionType;
    property ConstQuestionKind: string read FConstQuestionKind write FConstQuestionKind;
    property ConstPeriod: string read FConstPeriod write FConstPeriod;

    { Section: Connection }
    property ConnectionHost: string read FConnectionHost write FConnectionHost;
    property ConnectionHostName: string read FConnectionHostName write FConnectionHostName;
    property ConnectionPort: Integer read FConnectionPort write FConnectionPort;
    property ZhangTaoDataName: string read FZhangTaoDataName write FZhangTaoDataName;

    { Section: Import }
    property ImportCurPath: string read FImportCurPath write FImportCurPath;

    { Section: JinHuoDD }
    property JinHuoDDWangLaiFLId: string read FJinHuoDDWangLaiFLId write FJinHuoDDWangLaiFLId;
    property JinHuoDDWangLaiDWId: string read FJinHuoDDWangLaiDWId write FJinHuoDDWangLaiDWId;
    property JinHuoDDCangKuId: string read FJinHuoDDCangKuId write FJinHuoDDCangKuId;
    property JinHuoDDBuMenId: string read FJinHuoDDBuMenId write FJinHuoDDBuMenId;
    property JinHuoDDYuanGongId: string read FJinHuoDDYuanGongId write FJinHuoDDYuanGongId;
  end;

var
  IniOptions: TIniOptions = nil;

implementation

procedure TIniOptions.LoadSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    { Section: System }
    FSystemName := Ini.ReadString(csIniSystemSection, csIniSystemName, '管账星软件');
    FSystemContact := Ini.ReadString(csIniSystemSection, csIniSystemContact, '（客服电话： ）');
    FSystemPWD := Ini.ReadString(csIniSystemSection, csIniSystemPWD, 'aHpqZG1jaGg=');
    FSystemSaveLoginInfo := Ini.ReadBool(csIniSystemSection, csIniSystemSaveLoginInfo, True);
    FSystemAutoLogin := Ini.ReadBool(csIniSystemSection, csIniSystemAutoLogin, False);
    FSystemSkin := Ini.ReadString(csIniSystemSection, csIniSystemSkin, 'Office2013LightGray.skinres');
    FSystemLeftHand := Ini.ReadBool(csIniSystemSection, csIniSystemLeftHand, False);



    { Section: Connection }
    FConnectionHost := Ini.ReadString(csIniConnectionSection, csIniConnectionHost, '本机服务器');
    FConnectionHostName := Ini.ReadString(csIniConnectionSection, csIniConnectionHostName, 'localhost');
    FConnectionPort := Ini.ReadInteger(csIniConnectionSection, csIniConnectionPort, 316);
    FZhangTaoDataName := Ini.ReadString(csIniConnectionSection, csIniZhangTaoDataName, '');

    { Section: Import }
    FImportCurPath := Ini.ReadString(csIniImportSection, csIniImportCurPath, 'C:\Users\caiguanjia2\Desktop\');

  end;
end;

procedure TIniOptions.SaveSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    { Section: System }
    Ini.WriteString(csIniSystemSection, csIniSystemName, FSystemName);
    Ini.WriteString(csIniSystemSection, csIniSystemContact, FSystemContact);
    Ini.WriteString(csIniSystemSection, csIniSystemPWD, FSystemPWD);
    Ini.WriteBool(csIniSystemSection, csIniSystemSaveLoginInfo, FSystemSaveLoginInfo);
    Ini.WriteBool(csIniSystemSection, csIniSystemAutoLogin, FSystemAutoLogin);
    Ini.WriteString(csIniSystemSection, csIniSystemSkin, FSystemSkin);
    Ini.WriteBool(csIniSystemSection, csIniSystemLeftHand, FSystemLeftHand);



    { Section: Connection }
    Ini.WriteString(csIniConnectionSection, csIniConnectionHost, FConnectionHost);
    Ini.WriteString(csIniConnectionSection, csIniConnectionHostName, FConnectionHostName);
    Ini.WriteInteger(csIniConnectionSection, csIniConnectionPort, FConnectionPort);

    { Section: Import }
    Ini.WriteString(csIniImportSection, csIniImportCurPath, FImportCurPath);

  end;
end;

procedure TIniOptions.LoadFromFile(const FileName: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  try
    LoadSettings(Ini);
  finally
    Ini.Free;
  end;
end;

procedure TIniOptions.SaveToFile(const FileName: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  try
    SaveSettings(Ini);
  finally
    Ini.Free;
  end;
end;

initialization
  IniOptions := TIniOptions.Create;

finalization
  IniOptions.Free;

end.

