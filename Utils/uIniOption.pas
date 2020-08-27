unit uIniOption;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniConfigSection = 'Config';

  {Section: Config}
  csIniUserName = 'UserName';
  csIniPassWord = 'PassWord';

type
  TIniOptions = class(TObject)
  private
    {Section: Config}
    FUserName: string;
    FPassWord: string;
  public
    procedure LoadSettings(Ini: TIniFile);
    procedure SaveSettings(Ini: TIniFile);
    
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

    {Section: Config}
    property UserName: string read FUserName write FUserName;
    property PassWord: string read FPassWord write FPassWord;
  end;

var
  IniOptions: TIniOptions = nil;

implementation

procedure TIniOptions.LoadSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: Config}
    FUserName := Ini.ReadString(csIniConfigSection, csIniUserName, '');
    FPassWord := Ini.ReadString(csIniConfigSection, csIniPassWord, '');
  end;
end;

procedure TIniOptions.SaveSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: Config}
    Ini.WriteString(csIniConfigSection, csIniUserName, FUserName);
    Ini.WriteString(csIniConfigSection, csIniPassWord, FPassWord);
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

