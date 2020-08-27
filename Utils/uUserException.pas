{*******************************************************}
{                                                       }
{       �û��Զ����쳣����ϵͳ�쳣��������            }
{                                                       }
{       ���ߣ������                                    }
{                                                       }
{*******************************************************}

unit uUserException;

interface

uses
  SysUtils, Forms, Classes, uConst;
  
type

{EUserException �û��Զ����쳣��}

  TErrLevel = (elWarning, elStop);

  EUserException = class(Exception)
  private
    FErrLevel: TErrLevel;
    FErrNumber: Integer;
  protected
    procedure WriteLog(const LogFileName, LogMsg: string);  //��Ϣд��־
  public
    constructor CreateProgramError(const UserInfo: string;
      ErrMsg: string = ''; ErrNumber: Integer = 1);
      //Ӧ�ó���������һ���ǳ��򿪷������д���������Ϣ������־����ֹ����(�� Application.OnException �¼��ж�)
    constructor CreateApplicationError(const UserInfo: string;
      ErrMsg: string = ''; ErrNumber: Integer = 1);
      //Ӧ�ó���������һ�������ݿ⻷���д���������Ϣ������־
    constructor CreateWriteLogWithClose(ErrMsg: string = '');
    property ErrLevel: TErrLevel read FErrLevel;  //���󼶱�
    property ErrNumber: Integer read FErrNumber;  //�����
  end;

implementation

{ EUserException }

constructor EUserException.CreateApplicationError(const UserInfo: string;
  ErrMsg: string; ErrNumber: Integer);
begin
  if ErrMsg <> '' then
    WriteLog(SYS_ERRORLOG_FILE, '���ݴ���' + ErrMsg);  //������Ϣд����־

  FErrLevel := elWarning;
  FErrNumber := ErrNumber;
  inherited Create(UserInfo);  //��ʾ�������û�
end;

constructor EUserException.CreateProgramError(const UserInfo: string;
  ErrMsg: string; ErrNumber: Integer);
var
  sUserInfo: string;
begin
  if ErrMsg <> '' then
    WriteLog(SYS_ERRORLOG_FILE, '�������' + ErrMsg);  //������Ϣд����־

  FErrLevel := elStop;  //��ֹ����
  FErrNumber := ErrNumber;
  inherited Create(UserInfo);  //��ʾ�������û�
end;

constructor EUserException.CreateWriteLogWithClose(ErrMsg: string);
begin
  if ErrMsg <> '' then
    WriteLog(SYS_ERRORLOG_FILE, '���ݴ���' + ErrMsg);  //������Ϣд����־

  Application.Terminate;
end;

procedure EUserException.WriteLog(const LogFileName, LogMsg: string);
{var
  P_File: TextFile;
}
var
  lstFile: TStrings;
begin
{  if not FileExists(ExtractFilePath(Application.ExeName) + Trim(LogFileName)) then
    FileClose(FileCreate(ExtractFilePath(Application.ExeName) + Trim(LogFileName)));

  AssignFile(P_File, ExtractFilePath(Application.ExeName) + Trim(LogFileName));
  try
    Append(P_File);
    Writeln(P_File, FormatDateTime('yyyy-mm-dd HH:mm:ss ', Now) + LogMsg + #13#10);
    Flush(P_File);
  finally
    CloseFile(P_File);
  end;
  }
  lstFile := TStringList.Create;
  try
    if FileExists(ExtractFilePath(Application.ExeName) + Trim(LogFileName)) then
      lstFile.LoadFromFile(ExtractFilePath(Application.ExeName) + Trim(LogFileName));
    lstFile.Insert(0, FormatDateTime('yyyy-mm-dd HH:mm:ss ', Now) + LogMsg + #13#10);
    lstFile.SaveToFile(ExtractFilePath(Application.ExeName) + Trim(LogFileName));
  finally
    lstFile.Free;
  end;
end;

end.
