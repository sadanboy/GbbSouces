unit FireFunction;

interface

uses
  shellapi, System.Classes, System.JSON, Idhttp, Vcl.Dialogs, System.UITypes,
  System.SysUtils, System.StrUtils, Data.DB, System.TypInfo, System.DateUtils,
  Winapi.Windows, Vcl.Forms;

function YesNoMsg(Qmsg: string; QType: Integer = 0): Boolean;

procedure OkMsg(Qmsg: string);

function GetExeName: string;

function GetGUID: string;

function GetFieldPrecisionSize(QField: TField): Integer;

function GetFieldTypeStr(QField: TField): string;

function GetDateStr(QVarDateType: string; QiStep: Integer = 0): string;

function GetApplicationVersion: string; // 取得程序版本号

procedure SetFormatSettings;

function BytesToStr(const i64Size: Int64): string;

function StrGetNumber(QStr: string): string;

//获取外网IP，群友提供
function GetNetIp(): string;
//默认浏览器打开网址（线程打开）
procedure OpenUrl(AUrl: string);

implementation

procedure OpenUrl(AUrl: string);
var
  AProc: TProc;

  function LoadUrl(Url: string): TProc;
  begin
    Result :=
      procedure
      begin
        ShellExecute(Application.Handle, 'open', PChar(Url), '', nil, SW_SHOWNORMAL);
      end;
  end;

begin
  AProc := LoadUrl(AUrl);
  TThread.CreateAnonymousThread(AProc).Start;
end;

function GetNetIp(): string;
var
  url: string;
  myIdHttp: TIdHTTP;
  Jsonstr: TJsonObject;
begin
  result := '';
  myIdHttp := TIdHTTP.Create(nil);
  myIdHttp.Request.UserAgent := ' Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Maxthon)';
  myIdHttp.HandLeRedirects := true;
  try
    try
      url := myIdHttp.Get('http://pv.sohu.com/cityjson?ie=utf-8');
      url := url.Replace('var returnCitySN = ', '');
      url := url.Replace(';', '');
      Jsonstr := TJSONObject.ParseJSONValue(url) as TJSONObject;
      myIdHttp.ConnectTimeout := 6000;
      result := Jsonstr.GetValue('cip').Value;
    except
      //
    end;

  finally
    Jsonstr.Free;
    myIdHttp.Free;
  end;
end;

function GetApplicationVersion: string; // 取得程序版本号
var
  FileName: string;
  InfoSize, Wnd: DWORD;
  VerBuf: Pointer;
  VerInfo: ^VS_FIXEDFILEINFO;
begin
  Result := '0.0.0'; // '0.0.0.0';
  FileName := Application.ExeName;
  InfoSize := GetFileVersionInfoSize(PChar(FileName), Wnd);
  if InfoSize <> 0 then
  begin
    GetMem(VerBuf, InfoSize);
    try
      if GetFileVersionInfo(PChar(FileName), Wnd, InfoSize, VerBuf) then
      begin
        VerInfo := nil;
        VerQueryValue(VerBuf, '\', Pointer(VerInfo), Wnd);
        if VerInfo <> nil then
          // Result := Format('%d.%d.%d.%d', [VerInfo^.dwFileVersionMS shr 16,
          // VerInfo^.dwFileVersionMS and $0000ffff, VerInfo^.dwFileVersionLS shr 16,
          // VerInfo^.dwFileVersionLS and $0000ffff]);
          Result := Format('%d.%d.%d', [VerInfo^.dwFileVersionMS shr 16, VerInfo^.dwFileVersionMS and $0000FFFF, VerInfo^.dwFileVersionLS shr 16]);
      end;
    finally
      FreeMem(VerBuf, InfoSize);
    end;
  end;
end;

function BytesToStr(const i64Size: Int64): string;
const
  i64GB = 1024 * 1024 * 1024;
  i64MB = 1024 * 1024;
  i64KB = 1024;
begin
  if i64Size div i64GB > 0 then
    Result := Format('%.2f GB ', [i64Size / i64GB])
  else if i64Size div i64MB > 0 then
    Result := Format('%.2f MB ', [i64Size / i64MB])
  else if i64Size div i64KB > 0 then
    Result := Format('%.2f KB ', [i64Size / i64KB])
  else
    Result := IntToStr(i64Size) + ' Byte';
end;

function YesNoMsg(Qmsg: string; QType: Integer = 0): Boolean;
var
  vHelpContext: LongInt;
begin
  Result := false;
  if QType = 0 then
    Result := (MessageDlg(Qmsg, TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], vHelpContext) = iDYES)
  else
    result := (MessageDlg(Qmsg, TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbNo, TMsgDlgBtn.mbYes], vHelpContext) = iDYES)
end;

procedure OkMsg(Qmsg: string);
begin
  showmessage(Qmsg);
end;

function GetExeName: string;
begin
  Result := GetCurrentDir;
end;

function GetGUID: string;
var
  ii: TGUID;
begin
  CreateGUID(ii);
  Result := Copy(AnsiReplaceStr(GUIDToString(ii), '-', ''), 2, 32);
end;

function GetFieldPrecisionSize(QField: TField): Integer;
begin
  Result := 0;
  case QField.DataType of
    TFieldType.ftCurrency:
      Result := TCurrencyField(QField).Precision;
    TFieldType.ftFMTBcd:
      Result := TFMTBCDField(QField).Precision;
    TFieldType.ftFloat:
      Result := TFloatField(QField).Precision;
    TFieldType.ftBCD:
      Result := TBCDField(QField).Precision;
    TFieldType.ftSingle:
      Result := TSingleField(QField).Precision;
    TFieldType.ftExtended:
      Result := TExtendedField(QField).Precision;
  end;
end;

function GetFieldTypeStr(QField: TField): string;
begin
  result := GetEnumName(TypeInfo(TFieldType), Ord(QField.DataType))
end;

function GetDateStr(QVarDateType: string; QiStep: Integer = 0): string;
begin
  if QVarDateType = 'VAR_DATE' then
    Result := FormatDateTime('yyyy-mm-dd', Now)
  else if QVarDateType = 'VAR_DATETIME' then
    Result := FormatDateTime('yyyy-MM-dd hh:mm:ss', Now)
  else if QVarDateType = 'VAR_DATESTART' then
    Result := FormatDateTime('yyyy-MM-dd', StartOfTheDay(Now))
  else if QVarDateType = 'VAR_DATEEND' then
    Result := FormatDateTime('yyyy-MM-dd', EndOfTheDay(Now))
  else if QVarDateType = 'VAR_MONTHSTART' then
    Result := FormatDateTime('yyyy-MM-dd', startofTheMonth(Now) + QiStep)
  else if QVarDateType = 'VAR_MONTHEND' then
    Result := FormatDateTime('yyyy-MM-dd', EndOfTheMonth(Now) + QiStep)
  else if QVarDateType = 'VAR_YEAR' then
    Result := (YearOf(Now) + QiStep).ToString
  else if QVarDateType = 'VAR_MONTH' then
    Result := (MonthOf(Now) + QiStep).ToString
  else if QVarDateType = 'VAR_DAY' then
    Result := (DayOf(Now) + QiStep).ToString
  else
    Result := '';
end;

procedure SetFormatSettings;
begin
  FormatSettings.LongDateFormat := 'yyyy-MM-dd';
  FormatSettings.ShortDateFormat := 'yyyy-MM-dd';
  FormatSettings.LongTimeFormat := 'hh:nn:ss';
  FormatSettings.ShortTimeFormat := 'hh:nn:ss';
  FormatSettings.DateSeparator := '-';
  FormatSettings.timeSeparator := ':';
  FormatSettings.ShortMonthNames[1] := '01';
  FormatSettings.ShortMonthNames[2] := '02';
  FormatSettings.ShortMonthNames[3] := '03';
  FormatSettings.ShortMonthNames[4] := '04';
  FormatSettings.ShortMonthNames[5] := '05';
  FormatSettings.ShortMonthNames[6] := '06';
  FormatSettings.ShortMonthNames[7] := '07';
  FormatSettings.ShortMonthNames[8] := '08';
  FormatSettings.ShortMonthNames[9] := '09';
  FormatSettings.ShortMonthNames[10] := '10';
  FormatSettings.ShortMonthNames[11] := '11';
  FormatSettings.ShortMonthNames[12] := '12';
  FormatSettings.LongMonthNames[1] := '01';
  FormatSettings.LongMonthNames[2] := '02';
  FormatSettings.LongMonthNames[3] := '03';
  FormatSettings.LongMonthNames[4] := '04';
  FormatSettings.LongMonthNames[5] := '05';
  FormatSettings.LongMonthNames[6] := '06';
  FormatSettings.LongMonthNames[7] := '07';
  FormatSettings.LongMonthNames[8] := '08';
  FormatSettings.LongMonthNames[9] := '09';
  FormatSettings.LongMonthNames[10] := '10';
  FormatSettings.LongMonthNames[11] := '11';
  FormatSettings.LongMonthNames[12] := '12';
  FormatSettings.ShortDayNames[1] := '日';
  FormatSettings.ShortDayNames[2] := '一';
  FormatSettings.ShortDayNames[3] := '二';
  FormatSettings.ShortDayNames[4] := '三';
  FormatSettings.ShortDayNames[5] := '四';
  FormatSettings.ShortDayNames[6] := '五';
  FormatSettings.ShortDayNames[7] := '六';
  FormatSettings.LongDayNames[1] := '日';
  FormatSettings.LongDayNames[2] := '一';
  FormatSettings.LongDayNames[3] := '二';
  FormatSettings.LongDayNames[4] := '三';
  FormatSettings.LongDayNames[5] := '四';
  FormatSettings.LongDayNames[6] := '五';
  FormatSettings.LongDayNames[7] := '六';
end;

function StrGetNumber(QStr: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := Low(QStr) to High(QStr) do
  begin
    case QStr[i] of
      '0'..'9':
        begin
          Result := Result + QStr[i];
        end;
    end;
  end;
end;

end.

