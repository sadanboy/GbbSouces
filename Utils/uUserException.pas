{*******************************************************}
{                                                       }
{       用户自定义异常（与系统异常区别开来）            }
{                                                       }
{       作者：董振洪                                    }
{                                                       }
{*******************************************************}

unit uUserException;

interface

uses
  SysUtils, Forms, Classes, uConst;
  
type

{EUserException 用户自定义异常类}

  TErrLevel = (elWarning, elStop);

  EUserException = class(Exception)
  private
    FErrLevel: TErrLevel;
    FErrNumber: Integer;
  protected
    procedure WriteLog(const LogFileName, LogMsg: string);  //信息写日志
  public
    constructor CreateProgramError(const UserInfo: string;
      ErrMsg: string = ''; ErrNumber: Integer = 1);
      //应用程序发生错误（一般是程序开发环节有错），错误信息记入日志并中止程序(由 Application.OnException 事件判断)
    constructor CreateApplicationError(const UserInfo: string;
      ErrMsg: string = ''; ErrNumber: Integer = 1);
      //应用程序发生错误（一般是数据库环节有错），错误信息记入日志
    constructor CreateWriteLogWithClose(ErrMsg: string = '');
    property ErrLevel: TErrLevel read FErrLevel;  //错误级别
    property ErrNumber: Integer read FErrNumber;  //错误号
  end;

implementation

{ EUserException }

constructor EUserException.CreateApplicationError(const UserInfo: string;
  ErrMsg: string; ErrNumber: Integer);
begin
  if ErrMsg <> '' then
    WriteLog(SYS_ERRORLOG_FILE, '数据错误：' + ErrMsg);  //错误信息写入日志

  FErrLevel := elWarning;
  FErrNumber := ErrNumber;
  inherited Create(UserInfo);  //提示弹出给用户
end;

constructor EUserException.CreateProgramError(const UserInfo: string;
  ErrMsg: string; ErrNumber: Integer);
var
  sUserInfo: string;
begin
  if ErrMsg <> '' then
    WriteLog(SYS_ERRORLOG_FILE, '代码错误：' + ErrMsg);  //错误信息写入日志

  FErrLevel := elStop;  //中止程序
  FErrNumber := ErrNumber;
  inherited Create(UserInfo);  //提示弹出给用户
end;

constructor EUserException.CreateWriteLogWithClose(ErrMsg: string);
begin
  if ErrMsg <> '' then
    WriteLog(SYS_ERRORLOG_FILE, '数据错误：' + ErrMsg);  //错误信息写入日志

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
