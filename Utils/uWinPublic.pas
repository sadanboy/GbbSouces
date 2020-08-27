unit uWinPublic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Buttons, ActiveX, StrUtils, sqlexpr, simpleDS, TypInfo, System.Win.ComObj,
  Dialogs, shellAPI, winsock, inifiles, DBClient, DB, Registry, ADODB, Math,
  DateUtils, Nb30 {机器MAC地址用} , SHLObj, uMyInputBox, System.RegularExpressions,
  Vcl.ExtCtrls, IdStack; // Uni,

type
  TDateArray = array[0..1] of TDateTime; // 起始时间

  TMonthArray = array[0..1] of Word;

  TDllRegisterServer = function: HResult; stdcall;

  TCPUID = array[1..4] of Longint;

  TMyMsgBox = class
  public
     // 报一个错误信息
    class procedure Error(M: string);
    // 报一个警告信息
    class procedure Warning(M: string);
    // 报一个可选择的信息
    class function Message(M: string): Integer;
    class procedure Info(M: string);
    class function InputBox(fCaption, lCaption, dValue: string): string;
  end;

  // 连接字符串列表
function Join(mylist: TStrings; seperatorStr: string): string;

// 在IE中打开
procedure OpenInIE(url: string);

function MyInputBox(fCaption, lCaption, dValue: string): string;
// 日期字符串

function GetDateStr(myd: TDateTime = 0): string;

// 图片格式大小处理
function FormatMyImage(FileName: string; FImageWidth: Integer): TMemoryStream; overload;

function FormatMyImage(FileName: string; myFormat: TWICImageFormat): TMemoryStream; overload;

function FormatMyImage(iBitMap: TBitmap; FImageWidth: Integer): TMemoryStream; overload;

function FormatMyImage(iBitMap: TBitmap; myFormat: TWICImageFormat): TMemoryStream; overload;

function FormatMyImage(iBitMap: TBitmap; myFN: string; myFormat: TWICImageFormat): Boolean; overload;

function FormatMyImage(iStream: TMemoryStream; FImageWidth: Integer; myFormat: TWICImageFormat): TWICImage; overload;

// 获取闪盘列表
function GetFlashDisks: TStrings;

function GetCharSpellCode(cnStr: string): string; // 单汉字拼音首字母

function GetPYFirst(cnStr: string): string; // 得到字符串拼音首字母
// ****************日期操作***********************

function dateLeapYear(D: TDateTime): Boolean; // 判断闰年还是平年

function WeekDay(const CuDate: TDateTime): string; // 得到汉文周几

function getThisWeekBEDate: TDateArray;

function getNextWeekBEDate: TDateArray;

function getPriorWeekBEDate: TDateArray;

function GetJiDuDate(dd: TDateTime): TDateArray; // 得到季度的起止日期
// ***********对话框****************************
// 报一个错误信息

procedure Myerror(M: string);
// 报一个警告信息

procedure MyWarning(M: string);
// 报一个可选择的信息
//function MyMessage(M: string): Integer;

procedure MyInfo(M: string);

// 取得执行文件所在目录
function GetAppPath: string;
// 运行一个程序

procedure RunPro(ProName: string);

// ******************数据库操作*************************************
// 获取机器MAC地址
function GetMacAddress(nIndex: Integer = 1; strFlag: string = ':'): string;

function GetHDCode(Drv: string): string;

function GetCPUCode: string;
// 产生可排序的记录ID

function CreateSortID: string; overload;

function CreateSortID(ii: Integer): string; overload;
// 从GUID生成固定长度的字符串

function CreateID(ll: Integer): string; // overload;
// 保存数据集

procedure postDataset(MyDataset: TDataset);
// 删除数据集记录

function DeleteRecord(MyDataset: TDataset): Boolean;

procedure DeleteRecordCD(MyCD: TClientDataSet);

procedure ClearDataSet(dt: TDataset);
// 过滤数据集

procedure filterDataSet(MyDataset: TDataset; FilterStr: string);
// 执行sql语句

procedure ExecSqlStr(MyQY: TADOQuery; sqlStr: string); overload;

procedure ExecSqlStr(MyDT: TSimpleDataset; sqlStr: string); overload;

procedure ExecSimpleDT(MyDT: TSimpleDataset; sqlStr: string); overload;

procedure OpenSqlStr(MyDT: TSimpleDataset; sqlStr: string); overload;
// 打开query数据集

procedure OpenSqlStr(MyQY: TADOQuery; sqlStr: string); overload;

procedure OpenSqlStr(MyQY: TSQLQuery; sqlStr: string); overload;
// procedure OpenSqlStr(MyQY: TUniQuery; sqlStr: string); overload;

// 移动数据

procedure MoveRecord(dt: TDataset; mType: Integer; NeedApply: Boolean = True); overload;

procedure MoveRecord(dt: TDataset; mType: Integer; mFields: array of string; NeedApply: Boolean = True); overload;

// 针对ClientDataSet组件操作
procedure ApplyUpdatesCD(MyCD: TClientDataSet);

procedure ApplyUpdatesSQLDT(MyDT: TSimpleDataset);

function OpenClientDataSet(cd: TClientDataSet; sqlStr: string): Boolean;

function execSqlCD(cd: TClientDataSet; sqlStr: string): Boolean;

// 临时表, ClientDataSet操作,需要在工程中引用MidasLib
procedure InitCDFieldDefs(cd: TClientDataSet; fDef: string); // fDef:定义字段的字符串

procedure ClearCDStructure(cd: TClientDataSet); // 清除cd的字段结构

procedure CDLoadFromDataSet(cd: TClientDataSet; srcDT: TDataset; ReDef: Boolean = False); // 装载数据集中的数据

// *****************************************************************************

// ***************************目录操作*****************************************
// 删除一个目录

procedure DelDir(Dir: string);
// 获取指定目录中所有子目录 或指定格式文件名称列表

function FindDF(Dir: string; FindAtrr: Integer; AddDir: Boolean = False): TStringList;
// 获取指定目录及子目录中所有指定格式文件列表

procedure FindFiles(APath, AFileName: string; var Files: TStringList);

function GetFileLastAccessTime(FileName: string; AFlag: Integer): TDateTime;
// ****************************************************************************

// ****************************注册表操作**************************************
// 读注册表键值

function htwReadRegisry(RegKey: string; Default: string; MyRootKey: Hkey; MyOpenKey: string): string;
// 写注册表键值

procedure htwWriteRegisry(RegKey: string; asValueTobewrited: string; MyRootKey: Hkey; MyOpenKey: string);
// 关联文件与指定程序

procedure RegisterFileType(cMyExt, cMyFileType, cMyDescription, ExeName: string; IcoIndex: Integer; DoUpdate: Boolean = False);
// 系统启动时加载程序

procedure RunAtStartup(keyName, AppPathName: string);
// 删除键值

procedure csDeleteKey(keyName: string; MyRootKey: Hkey);

function formatMyStr(oStr, iStr: string; sl, Pos: Integer): string;
// Pos字符串放置位置 0-前面 1-后面
// 加密解密字符串函数

function Encryp(Src: AnsiString; Key: AnsiString): string;

function UncrypKey(Src: AnsiString; Key: AnsiString): string;

// 向画布上画横纵向渐变色
procedure GradHorizontal(Canvas: TCanvas; Rect: TRect; FromColor, ToColor: TColor);

procedure GradVertical(Canvas: TCanvas; Rect: TRect; FromColor, ToColor: TColor);

// 复制粘贴记录
{ DT-当前操作的数据集；ExceptFieldStr-不需要复制的字段名称，以半角逗号分隔 }
procedure pasteCurRecord(dt: TDataset; ExceptFieldStr: string);
// 汉化字段,根据一个字符串

procedure SetFieldsDisplayLabels(dt: TDataset; labelStrs: string); overload;

procedure SetFieldsDisplayLabels(dt: TDataset; labelStrs: TStrings); overload;
// ********************************************************
// 初始化文件操作

function IniReadSectionValues(iniFN, SectionName: string): TStrings;

// 检测是否注册
function CheckComObj(progID: string): Boolean;

// 动态注册OCZ
function RegisterOCX(FileName: string): Boolean;

function UnRegisterOCX(FileName: string): Boolean;

// 修改Object的属性值
procedure Change_OBJPropValue(o: TObject; propName: string; newValue: Variant);

function Get_OBJPropValue(o: TObject; propName: string): Variant;

// 动态加载字体
procedure sys_AddFont(fontFileName: string);

procedure sys_RemoveFont(fontFileName: string);

// 取得当前系统的短日期格式；
function GetsysDateFormat: string;

procedure SetSysDateFormat(s: string);

// 处理路径（目录后加|)
function HandleDir(idir: string): string;

// TStrings添加或去除引号
procedure QuotedStrings(iStrings: TStrings; iQuoted: Boolean = True);

// 获取打开文件对话窗的文件名称
function GetOpenDialogFileName(idir, iFilter: string; iFileName: string = string.Empty; iExt: string = string.Empty): string;

function GetSaveDialogFileName(idir, iFilter: string; iFileName: string = string.Empty; iExt: string = string.Empty): string;

// 调整不同分辨率下组件的位置
procedure AdjustControlPosition2Dpi(AOwner: TWinControl);

// 打开文件并显示文件选中状态
procedure OpenDirAndSelectFile(fn: string);

// 拷贝记录
procedure CopyRecord2DataSet(dtSrc, dtDest: TDataset; NeedAppend: Boolean = True);

procedure ComponentControl(Control: TControl; Shift: TShiftState; X, Y, Precision: Integer);

// 取当前电脑所有IP地址
function GetStaticIps: TStrings;

implementation

 // , uIniOptionsClient;

function GetStaticIps: TStrings;
begin
  TIdStack.IncUsage;
  try
    Result := TStringList.Create;
    Result.StrictDelimiter := True;
    GStack.AddLocalAddressesToList(Result);
  finally
    TIdStack.DecUsage;
  end;
end;

procedure ComponentControl(Control: TControl; Shift: TShiftState; X, Y, Precision: Integer);
var
  SC_MANIPULATE: Word;
begin
  if (X <= Precision) and (Y > Precision) and (Y < Control.Height - Precision) then
  begin
    SC_MANIPULATE := $F001;
    Control.Cursor := crSizeWE;
  end
  else if (X >= Control.Width - Precision) and (Y > Precision) and (Y < Control.Height - Precision) then
  begin
    SC_MANIPULATE := $F002;
    Control.Cursor := crSizeWE;
  end
  else if (X > Precision) and (X < Control.Width - Precision) and (Y <= Precision) then
  begin
    SC_MANIPULATE := $F003;
    Control.Cursor := crSizeNS;
  end
  else if (X <= Precision) and (Y <= Precision) then
  begin
    SC_MANIPULATE := $F004;
    Control.Cursor := crSizeNWSE;
  end
  else if (X >= Control.Width - Precision) and (Y <= Precision) then
  begin
    SC_MANIPULATE := $F005;
    Control.Cursor := crSizeNESW;
  end
  else if (X > Precision) and (X < Control.Width - Precision) and (Y >= Control.Height - Precision) then
  begin
    SC_MANIPULATE := $F006;
    Control.Cursor := crSizeNS;
  end
  else if (X <= Precision) and (Y >= Control.Height - Precision) then
  begin
    SC_MANIPULATE := $F007;
    Control.Cursor := crSizeNESW;
  end
  else if (X >= Control.Width - Precision) and (Y >= Control.Height - Precision) then
  begin
    SC_MANIPULATE := $F008;
    Control.Cursor := crSizeNWSE;
  end
  else if (X > 5) and (Y > 5) and (X < Control.Width - 5) and (Y < Control.Height - 5) then
  begin
    SC_MANIPULATE := $F009;
    Control.Cursor := crDefault;
  end
  else
  begin
    SC_MANIPULATE := $F000;
    Control.Cursor := crDefault;
  end;
  if Shift = [ssLeft] then
  begin
    ReleaseCapture; // 释放鼠标的捕获功能，使之能得到所有鼠标输入！
    Control.Perform(WM_SYSCOMMAND, SC_MANIPULATE, 0);
  end;

end;

// 拷贝记录
procedure CopyRecord2DataSet(dtSrc, dtDest: TDataset; NeedAppend: Boolean = True);
var
  i: Integer;
  fieldName: string;
begin
  if NeedAppend then
    dtDest.Append;
  for i := 0 to dtSrc.FieldCount - 1 do
  begin
    fieldName := dtSrc.Fields[i].fieldName;
    if dtDest.FindField(fieldName) <> nil then
      dtDest.FindField(fieldName).AsString := dtSrc.FindField(fieldName).AsString;
  end;
  dtDest.Post;
end;

procedure OpenDirAndSelectFile(fn: string);
begin
  ShellExecute(Application.Handle, 'open', 'Explorer.exe', Pchar('/n,/select,' + fn), nil, 1);
end;

procedure AdjustControlPosition2Dpi(AOwner: TWinControl);
var
  dpi: Integer;
  i: Integer;
begin
  dpi := Screen.PixelsPerInch * 100 div 96;
  for i := 0 to AOwner.ControlCount - 1 do
  begin
    if (AOwner.Controls[i] is TImage) = False then
    begin
      AOwner.Controls[i].Top := AOwner.Controls[i].Top * 100 div dpi;
      AOwner.Controls[i].Left := AOwner.Controls[i].Left * 100 div dpi;
      AOwner.Controls[i].Width := AOwner.Controls[i].Width * 100 div dpi;
    end;
  end;
end;

procedure ClearDataSet(dt: TDataset);
var
  i: Integer;
begin
  for i := 0 to dt.RecordCount - 1 do
  begin
    dt.Delete;
  end;
end;

function GetOpenDialogFileName(idir, iFilter: string; iFileName: string; iExt: string): string;
begin
  Result := string.Empty;
  with TOpenDialog.Create(nil) do
  begin
    Filter := iFilter;
    if iExt <> string.Empty then
      DefaultExt := iExt;
    if iFileName <> string.Empty then
      FileName := iFileName;
    if idir <> string.Empty then
      InitialDir := idir;
    if Execute() then
    begin
      Result := FileName;
    end;
    Free;
  end;
end;

function GetSaveDialogFileName(idir, iFilter: string; iFileName: string; iExt: string): string;
begin
  Result := string.Empty;
  with TSaveDialog.Create(nil) do
  begin
    Filter := iFilter;
    if iExt <> string.Empty then
      DefaultExt := iExt;
    if iFileName <> string.Empty then
      FileName := iFileName;
    if idir <> string.Empty then
      InitialDir := idir;
    if Execute() then
    begin
      Result := FileName;
      if iExt <> string.Empty then
        ChangeFileExt(Result, iExt);
    end;
    Free;
  end;
end;

procedure QuotedStrings(iStrings: TStrings; iQuoted: Boolean = True);
var
  i: Integer;
begin
  for i := 0 to iStrings.Count - 1 do
  begin
    if iQuoted then
      iStrings[i] := QuotedStr(iStrings[i])
    else
      iStrings[i] := AnsiReplaceStr(iStrings[i], '''', '');
  end;
end;

function Join(mylist: TStrings; seperatorStr: string): string;
var
  i: Integer;
begin
  Result := string.Empty;
  for i := 0 to mylist.Count - 1 do
  begin
    Result := Result + mylist[i];
    if i < mylist.Count - 1 then
      Result := Result + ' ' + seperatorStr + ' ';
  end;
end;

procedure MoveRecord(dt: TDataset; mType: Integer; mFields: array of string; NeedApply: Boolean = True);
var
  oid, nid: string;
  oValues, nValues: array of string;
  i: Integer;
begin
  SetLength(oValues, Length(mFields));
  SetLength(nValues, Length(mFields));
  dt.DisableControls;
  try
    // 记录下当前的Id
    oid := dt.FindField('Id').AsString;
    // 记录老记录的值
    for i := Low(mFields) to High(mFields) do
    begin
      oValues[i] := dt.FindField(mFields[i]).AsString;
    end;
    dt.MoveBy(mType);
    nid := dt.FindField('Id').AsString;
    if oid = nid then
      Exit;
    // 记录新记录的值
    for i := Low(mFields) to High(mFields) do
    begin
      nValues[i] := dt.FindField(mFields[i]).AsString;
    end;

    with dt do
    begin
      Edit;
      for i := Low(mFields) to High(mFields) do
        FindField(mFields[i]).AsString := oValues[i];
      Post;

      if locate('Id', oid, []) then
      begin
        Edit;
        for i := Low(mFields) to High(mFields) do
          FindField(mFields[i]).AsString := nValues[i];
        Post;
      end;
    end;
    if (dt is TClientDataSet) and (NeedApply) then
      TClientDataSet(dt).ApplyUpdates(-1);
  finally
    SetLength(oValues, 0);
    SetLength(nValues, 0);
    dt.locate('id', nid, []);
    dt.EnableControls;
  end;
end;

procedure MoveRecord(dt: TDataset; mType: Integer; NeedApply: Boolean = True);
var
  oPos, nPos, oid, nid: string;
begin
  with dt do
  begin
    DisableControls;
    try
      oid := FindField('Id').AsString;
      oPos := FindField('Position_Id').AsString;
      MoveBy(mType);
      nid := FindField('Id').AsString;
      nPos := FindField('Position_Id').AsString;

      if oid = nid then
        Exit;
      Edit;
      FindField('Position_Id').AsString := oPos;
      Post;

      if locate('id', oid, []) then
      begin
        Edit;
        FindField('Position_Id').AsString := nPos;
        Post;
      end;
      if (dt is TClientDataSet) and (NeedApply) then
        TClientDataSet(dt).ApplyUpdates(-1);
    finally
      EnableControls;
    end;
  end;
end;

procedure OpenInIE(url: string);
var
  IE: OleVariant;
begin
  // IE := CoInternetExplorer.Create;
  // IE.Visible := True;
  // IE.Navigate2(url);
  IE := CreateOleObject('InternetExplorer.Application');
  IE.visible := True;
  IE.Navigate(url);
end;

function GetCPUID: TCPUID; assembler; register;
asm
        PUSH    EBX { Save affected register }
        PUSH    EDI
        MOV     EDI, EAX
        MOV     EAX, 1
        DW      $A20F { CPUID Command }
        STOSD { CPUID[1] }
        MOV     EAX, EBX
        STOSD { CPUID[2] }
        MOV     EAX, ECX
        STOSD { CPUID[3] }
        MOV     EAX, EDX
        STOSD { CPUID[4] }
        POP     EDI { Restore registers }
        POP     EBX
end;

function HandleDir(idir: string): string;
begin
  Result := idir;
  if not AnsiEndsStr('\', Result) then
  begin
    Result := Result + '\';
  end;
end;

function GetCPUCode: string;
var
  v: TCPUID;
begin
  v := GetCPUID;
  // ShowMessage(IntToStr(v[1]) +#13+ IntToStr(v[2]) +#13+ IntToStr(v[3]) +#13+ IntToStr(v[4]));
  Result := IntToStr(Abs(v[3])); // + IntToStr(v[4]);
end;

function MyInputBox(fCaption, lCaption, dValue: string): string;
begin
  Result := string.Empty;
  frmMyInputBox := TfrmMyInputBox.Create(nil);
  with frmMyInputBox do
  begin
    Caption := fCaption;
    lblHint.Caption := lCaption;
    txtEdtContent.Text := dValue;
    txtEdtContent.SelectAll;
    ShowModal;
    if ModalResult = mrOK then
      Result := trim(txtEdtContent.Text);
    Free;
  end;
end;

function GetDateStr(myd: TDateTime = 0): string;
begin
  Result := FormatDateTime('yyyy-MM-dd', Date);
  if myd > 0 then
    Result := FormatDateTime('yyyy-MM-dd', myd);
end;

function CheckComObj(progID: string): Boolean;
var
  myGuid: TGUID;
begin
  Result := False;
  try
    OleCheck(CLSIDFromProgID(Pchar(progID), myGuid));
    if IsEqualGUID(myGuid, GUID_NULL) = False then
      Result := True;
  except
    Result := False;
  end;
end;

procedure RegisterFileType(cMyExt, cMyFileType, cMyDescription, ExeName: string; IcoIndex: Integer; DoUpdate: Boolean = False);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CLASSES_ROOT;
    Reg.OpenKey(cMyExt, True);
    // 写入自定义文件后缀
    Reg.WriteString('', cMyFileType);
    Reg.CloseKey;
    // 写入自定义的文件类型
    // 格式为：HKEY_CLASSES_ROOT\cMyExt\(Default) = 'cMyFileType'

    // 下面为该文件类型创建关联
    Reg.OpenKey(cMyFileType, True);
    Reg.WriteString('', cMyDescription);
    // 写入文件类型的描述信息
    Reg.CloseKey;

    // 下面为自定义文件类型选择图标
    // 加入键格式为 HKEY_CLASSES_ROOT\cMyFileType\DefaultIcon
    // \(Default) = 'Application Dir\Project1.exe,0'
    Reg.OpenKey(cMyFileType + '\DefaultIcon', True);
    Reg.WriteString('', ExeName + ',' + IntToStr(IcoIndex));
    Reg.CloseKey;

    // 下面注册在资源管理器中打开文件的程序
    Reg.OpenKey(cMyFileType + '\Shell\Open', True);
    Reg.WriteString('', '&Open');
    Reg.CloseKey;

    // 格式：HKEY_CLASSES_ROOT\Project1.FileType\Shell\Open\Command
    // (Default) = '"Application Dir\Project1.exe" "%1"'
    Reg.OpenKey(cMyFileType + '\Shell\Open\Command', True);
    Reg.WriteString('', '"' + ExeName + '" "%1"');
    Reg.CloseKey;

    // 最后，让资源管理器实现我们加入的文件类型，只需调用SHChangeNotify即可
    if DoUpdate then
      SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
  finally
    Reg.Free;
  end;
end;

// 取得当前系统的短日期格式；
function GetsysDateFormat: string;
var
  sgs: string;
begin
  SetLength(sgs, 12);
  GetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, Pchar(sgs), 12);
  Result := string(Pchar(sgs));
end;

// 设定系日期格式；
procedure SetSysDateFormat(s: string);
begin
  SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE, Pchar(s));
end;

function FormatMyImage(iBitMap: TBitmap; myFN: string; myFormat: TWICImageFormat): Boolean;
var
  oWic: TWICImage;
  ratio: Double;
begin
  Result := False;
  oWic := TWICImage.Create;
  oWic.Assign(iBitMap);
  oWic.ImageFormat := myFormat;
  oWic.SaveToFile(myFN);
  oWic.Free;
  Result := True;
end;

function FormatMyImage(iBitMap: TBitmap; myFormat: TWICImageFormat): TMemoryStream;
var
  oWic: TWICImage;
  ratio: Double;
begin
  Result := TMemoryStream.Create;
  oWic := TWICImage.Create;
  oWic.Assign(iBitMap);
  oWic.ImageFormat := myFormat;
  oWic.SaveToStream(Result);
  oWic.Free;
end;

function FormatMyImage(FileName: string; FImageWidth: Integer): TMemoryStream;
// 保持比例只需要一个宽度
var
  oWic: TWICImage;
  bmp: TBitmap;
  ratio: Double;
begin
  Result := TMemoryStream.Create;
  bmp := TBitmap.Create;
  oWic := TWICImage.Create;
  oWic.LoadFromFile(FileName);
  ratio := oWic.Height / oWic.Width;
  bmp.Width := FImageWidth;
  bmp.Height := Round(FImageWidth * ratio);
  bmp.Canvas.StretchDraw(Rect(0, 0, bmp.Width, bmp.Height), oWic);
  oWic.Assign(bmp);
  oWic.ImageFormat := TWICImageFormat.wifJpeg;
  oWic.SaveToStream(Result);
  bmp.Free;
  oWic.Free;
end;

function FormatMyImage(iBitMap: TBitmap; FImageWidth: Integer): TMemoryStream;
var
  oWic: TWICImage;
  bmp: TBitmap;
  ratio: Double;
begin
  Result := TMemoryStream.Create;
  bmp := TBitmap.Create;
  oWic := TWICImage.Create;
  oWic.Assign(iBitMap);
  ratio := oWic.Height / oWic.Width;
  bmp.Width := FImageWidth;
  bmp.Height := Round(FImageWidth * ratio);
  bmp.Canvas.StretchDraw(Rect(0, 0, bmp.Width, bmp.Height), oWic);
  oWic.Assign(bmp);
  oWic.ImageFormat := TWICImageFormat.wifJpeg;
  oWic.SaveToStream(Result);
  bmp.Free;
  oWic.Free;
end;

function FormatMyImage(iStream: TMemoryStream; FImageWidth: Integer; myFormat: TWICImageFormat): TWICImage; overload;
var
  oWic: TWICImage;
  bmp: TBitmap;
  ratio: Double;
begin
  bmp := TBitmap.Create;
  oWic := TWICImage.Create;
  oWic.LoadFromStream(iStream);
  ratio := oWic.Height / oWic.Width;
  bmp.Width := FImageWidth;
  bmp.Height := Round(FImageWidth * ratio);
  bmp.Canvas.StretchDraw(Rect(0, 0, bmp.Width, bmp.Height), oWic);
  oWic.Assign(bmp);
  oWic.ImageFormat := myFormat;
  bmp.Free;
  Result := oWic;
end;

function FormatMyImage(FileName: string; myFormat: TWICImageFormat): TMemoryStream;
var
  oWic: TWICImage;
  bmp: TBitmap;
  ratio: Double;
begin
  Result := TMemoryStream.Create;
  bmp := TBitmap.Create;
  bmp.LoadFromFile(FileName);
  oWic := TWICImage.Create;
  oWic.Assign(bmp);
  oWic.ImageFormat := myFormat;
  oWic.SaveToStream(Result);
  bmp.Free;
  oWic.Free;
end;

function GetFlashDisks: TStrings;
var
  buf: array[0..MAX_PATH - 1] of Char;
  M_Result: Integer;
  i: Integer;
  tmpStr: string;
begin
  Result := TStringList.Create;
  M_Result := GetLogicalDriveStrings(MAX_PATH, buf);
  for i := 0 to (M_Result div 4) do
  begin
    tmpStr := string(buf[i * 4] + buf[i * 4 + 1] + buf[i * 4 + 2]);
    if GetDriveType(Pchar(tmpStr)) = DRIVE_REMOVABLE then
    begin
      Result.Add(tmpStr);
    end;
  end;
end;

// procedure OpenSqlStr(MyQY: TUniQuery; sqlStr: string);
// begin
// with MyQY do
// begin
// DisableControls;
// Close;
// SQL.Text := sqlStr;
// Open;
// EnableControls;
// end;
// end;

function GetPYFirst(cnStr: string): string;
var
  i: Integer;
  p: string[4];
  tmpStr: string;
begin
  Result := '';
  for i := 0 to Length(cnStr) - 1 do
  begin
    tmpStr := AnsiRightStr(cnStr, Length(cnStr) - i);
    p := AnsiLeftStr(tmpStr, 1);

    // ShowMessage(p);
    Result := Result + GetCharSpellCode(p);
  end;
end;

function GetCharSpellCode(cnStr: string): string;
var
  buf: TBytes;
  i: Integer;
  icnStrCount: Int64;
  i1, i2: Integer;
  tmpStr: string[4];
begin
  Result := '';
  // TODO -cMM: TForm1.GetCharSpellCode default body inserted
  SetLength(buf, 4);
  //
  tmpStr := cnStr;
  for i := 0 to 3 do
    buf[i] := Byte(tmpStr[i]);

  i1 := int16(buf[1]);
  i2 := int16(buf[2]);
  icnStrCount := i1 * 256 + i2;
  if (icnStrCount >= 45217) and (icnStrCount <= 45252) then
  begin
    Result := 'A';
    Exit;
  end;
  if (icnStrCount >= 45253) and (icnStrCount <= 45760) then
  begin
    Result := 'B';
    Exit;
  end;

  if (icnStrCount >= 45761) and (icnStrCount <= 46317) then
  begin
    Result := 'C';
    Exit;
  end;

  if (icnStrCount >= 46318) and (icnStrCount <= 46825) then
  begin
    Result := 'D';
    Exit;
  end;

  if (icnStrCount >= 46826) and (icnStrCount <= 47009) then
  begin
    Result := 'E';
    Exit;
  end;

  if (icnStrCount >= 47010) and (icnStrCount <= 47296) then
  begin
    Result := 'F';
    Exit;
  end;

  if (icnStrCount >= 47297) and (icnStrCount <= 47613) then
  begin
    Result := 'G';
    Exit;
  end;

  if (icnStrCount >= 47614) and (icnStrCount <= 48118) then
  begin
    Result := 'H';
    Exit;
  end;

  if (icnStrCount >= 48119) and (icnStrCount <= 49061) then
  begin
    Result := 'J';
    Exit;
  end;

  if (icnStrCount >= 49062) and (icnStrCount <= 49323) then
  begin
    Result := 'K';
    Exit;
  end;

  if (icnStrCount >= 49324) and (icnStrCount <= 49895) then
  begin
    Result := 'L';
    Exit;
  end;
  if (icnStrCount >= 49896) and (icnStrCount <= 50370) then
  begin
    Result := 'M';
    Exit;
  end;
  if (icnStrCount >= 50371) and (icnStrCount <= 50613) then
  begin
    Result := 'N';
    Exit;
  end;
  if (icnStrCount >= 50614) and (icnStrCount <= 50621) then
  begin
    Result := 'O';
    Exit;
  end;
  if (icnStrCount >= 50622) and (icnStrCount <= 50905) then
  begin
    Result := 'P';
    Exit;
  end;
  if (icnStrCount >= 50906) and (icnStrCount <= 51386) then
  begin
    Result := 'Q';
    Exit;
  end;
  if (icnStrCount >= 51387) and (icnStrCount <= 51445) then
  begin
    Result := 'R';
    Exit;
  end;
  if (icnStrCount >= 51446) and (icnStrCount <= 52217) then
  begin
    Result := 'S';
    Exit;
  end;
  if (icnStrCount >= 52218) and (icnStrCount <= 52697) then
  begin
    Result := 'T';
    Exit;
  end;
  if (icnStrCount >= 52698) and (icnStrCount <= 52979) then
  begin
    Result := 'W';
    Exit;
  end;
  if (icnStrCount >= 52980) and (icnStrCount <= 53688) then
  begin
    Result := 'X';
    Exit;
  end;
  if (icnStrCount >= 53689) and (icnStrCount <= 54480) then
  begin
    Result := 'Y';
    Exit;
  end;
  if (icnStrCount >= 54481) and (icnStrCount <= 55289) then
  begin
    Result := 'Z';
    Exit;
  end;
  Result := UpperCase(cnStr);
end;

function GetJiDuDate(dd: TDateTime): TDateArray;
var
  Y, M: Word;
begin
  Y := yearof(dd);
  M := MonthOf(dd);
  Dec(M, (M - 1) mod 3);
  Result[0] := DateOf(StartOfAMonth(Y, M));
  Result[1] := DateOf(EndOfAMonth(Y, M + 2));
end;

function GetHDCode(Drv: string): string;
var
  VolumeSerialNumber: DWORD;
  MaximumComponentLength: DWORD;
  FileSystemFlags: DWORD;
begin
  if Drv[Length(Drv)] = ':' then
    Drv := Drv + '\';
  GetVolumeInformation(Pchar(Drv), nil, 0, @VolumeSerialNumber, MaximumComponentLength, FileSystemFlags, nil, 0);
  Result := IntToStr(VolumeSerialNumber);
end;

procedure sys_AddFont(fontFileName: string);
begin
  AddFontResource(Pchar(fontFileName));
  SendMessage(Application.Handle, WM_FONTCHANGE, 0, 0);
end;

procedure sys_RemoveFont(fontFileName: string);
begin
  RemoveFontResource(Pchar(fontFileName));
  SendMessage(Application.Handle, WM_FONTCHANGE, 0, 0);
end;

procedure Change_OBJPropValue(o: TObject; propName: string; newValue: Variant);
var
  myClassInfo: PTypeInfo;
  myPropInfo: PPropInfo;
begin
  myClassInfo := o.ClassInfo;
  myPropInfo := GetPropInfo(o, propName);
  if Assigned(myPropInfo) then
    SetPropValue(o, propName, newValue)
  else
    Myerror('指定属性不存在！');
end;

function Get_OBJPropValue(o: TObject; propName: string): Variant;
begin
  Result := GetPropValue(o, propName);
end;

function RegisterOCX(FileName: string): Boolean;
var
  OCXHand: THandle;
  RegFunc: TDllRegisterServer;
begin
  OCXHand := LoadLibrary(Pchar(FileName));
  RegFunc := GetProcAddress(OCXHand, 'DllRegisterServer');
  if @RegFunc <> nil then
    Result := RegFunc = S_OK
  else
    Result := False;
  FreeLibrary(OCXHand);
end;

function UnRegisterOCX(FileName: string): Boolean;
var
  OCXHand: THandle;
  RegFunc: TDllRegisterServer;
begin
  OCXHand := LoadLibrary(Pchar(FileName));
  RegFunc := GetProcAddress(OCXHand, 'DllUnregisterServer');
  if @RegFunc <> nil then
    Result := RegFunc = S_OK
  else
    Result := False;
  FreeLibrary(OCXHand);
end;

function GetFileLastAccessTime(FileName: string; AFlag: Integer): TDateTime;
var
  WFD: TWin32FindData;
  FileTime: TFileTime;
  hFile: THandle;
  DFT: DWORD;
begin
  hFile := FindFirstFile(Pchar(FileName), WFD);
  if hFile <> INVALID_HANDLE_VALUE then
  begin
    // FindClose(hFile);
    case AFlag of
      1:
        FileTimeToLocalFileTime(WFD.ftCreationTime, FileTime);
      2:
        FileTimeToLocalFileTime(WFD.ftLastAccessTime, FileTime);
      3:
        FileTimeToLocalFileTime(WFD.ftLastWriteTime, FileTime);
    end;
    FileTimeToDosDateTime(FileTime, LongRec(DFT).HI, LongRec(DFT).LO);
    Result := FileDateToDateTime(DFT);
  end;
end;

procedure ApplyUpdatesSQLDT(MyDT: TSimpleDataset);
begin
  postDataset(MyDT);
  if MyDT.ChangeCount > 0 then
    MyDT.ApplyUpdates(-1);
end;

procedure ExecSimpleDT(MyDT: TSimpleDataset; sqlStr: string);
begin
  MyDT.Close;
  MyDT.Dataset.CommandText := sqlStr;
  MyDT.Dataset.Prepared := True;
  MyDT.Execute;
end;

procedure OpenSqlStr(MyDT: TSimpleDataset; sqlStr: string);
begin
  MyDT.Close;
  MyDT.Dataset.CommandText := sqlStr;
  MyDT.Open;
end;

procedure ExecSqlStr(MyDT: TSimpleDataset; sqlStr: string);
begin
  MyDT.Close;
  MyDT.Dataset.CommandText := sqlStr;
  MyDT.Dataset.Prepared := True;
  MyDT.Execute;
end;

procedure OpenSqlStr(MyQY: TSQLQuery; sqlStr: string);
begin
  MyQY.Close;
  MyQY.SQL.Text := sqlStr;
  MyQY.Open;
end;

function IniReadSectionValues(iniFN, SectionName: string): TStrings;
var
  ini: TIniFile;
begin
  Result := TStringList.Create;
  ini := TIniFile.Create(iniFN);

  ini.ReadSectionValues(SectionName, Result);
  ini.Free;
end;

procedure CDLoadFromDataSet(cd: TClientDataSet; srcDT: TDataset; ReDef: Boolean = False { 重新构建数据结构 } ); // 装载数据集中的数据
var
  i: Integer;
begin
  if ReDef then
    ClearCDStructure(cd);
  for i := 0 to srcDT.FieldDefs.Count - 1 do
  begin
    with srcDT.FieldDefs[i].FieldClass.Create(cd) do
    begin
      fieldName := srcDT.FieldDefs[i].Name;
      Size := srcDT.FieldDefs[i].Size;
      FieldKind := fkData;
      DisplayLabel := srcDT.FieldDefs[i].DisplayName;
      Dataset := cd;
    end;
  end;
  cd.CreateDataSet;
  // 加载数据
  if srcDT.Active = False then
  begin
    Myerror('加载的数据集没有打开,请检查!');
    Exit;
  end;
  srcDT.First;
  while not srcDT.Eof do
  begin
    cd.Append;
    for i := 0 to srcDT.FieldCount - 1 do
    begin
      if srcDT.Fields[i].DataType <> ftAutoInc then
      begin
        if cd.FieldByName(srcDT.Fields[i].fieldName) <> nil then
          cd.FieldByName(srcDT.Fields[i].fieldName).Value := srcDT.Fields[i].Value;
      end;
    end;
    srcDT.Next;
  end;
  postDataset(cd);
end;

procedure ClearCDStructure(cd: TClientDataSet); // 清除cd的字段结构
begin
  // 清空原有数据
  if cd.Active then
  begin
    cd.EmptyDataSet;
    // 清空定义的字段
    cd.FieldDefs.Clear;
  end;
  // 清空所有字段
  cd.Close;
  cd.Fields.Clear;
end;

procedure InitCDFieldDefs(cd: TClientDataSet; fDef: string); // fDef:定义字段的字符串
var
  i: Integer;
  tmpStrs, Items: TStrings;
  myF: TField;
  myfieldType: TFieldType;

  function GetFieldClass(cN: string): TFieldClass; // tmpStrs[1]
  begin
    Result := nil;
    case StrToInt(cN) of
      0:
        begin
          Result := TStringField;
        end;

      1:
        begin
          Result := TIntegerField;
        end;
      2:
        begin
          Result := TFloatField;
        end;
    end;
  end;

begin
  // TODO -cMM: TStat.InitDataSet default body inserted
  tmpStrs := TStringList.Create;
  Items := TStringList.Create;
  ExtractStrings([','], [], Pchar(fDef), Items);
  ClearCDStructure(cd);
  for i := 0 to Items.Count - 1 do
  begin
    tmpStrs.Clear;
    ExtractStrings(['|'], [], Pchar(Items[i]), tmpStrs);
    // 初始化数据表
    myF := GetFieldClass(tmpStrs[1]).Create(cd);
    with myF do
    begin
      fieldName := tmpStrs[0];

      DisplayLabel := tmpStrs[4];

      if myF is TStringField then
        Size := StrToInt(tmpStrs[2]);
      Name := tmpStrs[0];
      myF.Dataset := cd;
      if tmpStrs[3] = '0' then
        FieldKind := fkData
      else
        FieldKind := fkCalculated;
    end;
    // showmessage(tmpStrs.Text);
  end;
  cd.CreateDataSet; // 创建数据集

  Items.Free;
  tmpStrs.Free;
end;

procedure SetFieldsDisplayLabels(dt: TDataset; labelStrs: TStrings); overload;
var
  fIndex: Integer;
  fn: string;
  i: Integer;
begin
  for i := 0 to dt.FieldCount - 1 do
  begin
    fn := dt.Fields[i].fieldName;
    fIndex := labelStrs.IndexOfName(fn);
    if fIndex > -1 then
      dt.Fields[i].DisplayLabel := labelStrs.values[fn];
    // tempStrs.ValueFromIndex[fIndex];
  end;
end;

procedure SetFieldsDisplayLabels(dt: TDataset; labelStrs: string);
var
  fn: string;
  i, fIndex: Integer;
  tempStrs: TStrings;
begin
  tempStrs := TStringList.Create;
  tempStrs.StrictDelimiter := True;
  ExtractStrings([','], [], Pchar(labelStrs), tempStrs);
  for i := 0 to dt.FieldCount - 1 do
  begin
    fn := dt.Fields[i].fieldName;
    // fIndex := tempStrs.IndexOfName(fn);
    // if fIndex > -1 then
    dt.Fields[i].DisplayLabel := tempStrs.values[fn];
    // tempStrs.ValueFromIndex[fIndex];
  end;
  tempStrs.Free;
end;

function CreateID(ll: Integer): string; // overload;
const
  pattern: string = '[-|{|}]';
var
  MyIDStr: string;
begin
  MyIDStr := CreateClassID;
  MyIDStr := TRegEx.Replace(MyIDStr, pattern, '');
  // MyIDStr := ansiReplaceStr(MyIDStr, '-', '');
  // MyIDStr := ansiReplaceStr(MyIDStr, '{', '');
  Result := AnsiRightStr(MyIDStr, ll);
end;

function CreateSortID: string; overload;
begin
  Result := FormatDateTime('yyyyMMddhhmmsszzz', now) + CreateID(13);
end;

function CreateSortID(ii: Integer): string; overload;
var
  ss: string;
begin
  ss := Format('%.3d', [StrToInt(RightStr(ii.ToString, 3))]);
  Result := FormatDateTime('yyyyMMddhhmmsszzz', now) + ss + CreateID(10);
end;

// 获取机器MAC地址
function GetMacAddress(nIndex: Integer = 1; strFlag: string = ':'): string;
var
  NCB: TNCB; // Netbios   control   block   //NetBios控制块
  ADAPTER: TADAPTERSTATUS; // Netbios   adapter   status//取网卡状态
  LANAENUM: TLANAENUM; // Netbios   lana
  intIdx: Integer; // Temporary   work   value//临时变量
  cRC: AnsiChar; // Netbios   return   code//NetBios返回值
  strTemp: string; // Temporary   string//临时变量
begin
  Result := '';
  try
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBENUM);
    cRC := NetBios(@NCB);
    NCB.ncb_buffer := @LANAENUM;
    NCB.ncb_length := SizeOf(LANAENUM);
    cRC := NetBios(@NCB);
    if Ord(cRC) <> 0 then
      Exit;
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBRESET);
    NCB.ncb_lana_num := LANAENUM.lana[nIndex];
    cRC := NetBios(@NCB);
    if Ord(cRC) <> 0 then
      Exit;
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := Chr(NCBASTAT);
    NCB.ncb_lana_num := LANAENUM.lana[nIndex];
    StrPCopy(NCB.ncb_callname, '*');
    NCB.ncb_buffer := @ADAPTER;
    NCB.ncb_length := SizeOf(ADAPTER);
    cRC := NetBios(@NCB);
    strTemp := InttoHex(Integer(ADAPTER.adapter_address[0]), 2);
    for intIdx := 1 to 5 do
      strTemp := strTemp + strFlag + InttoHex(Integer(ADAPTER.adapter_address[intIdx]), 2);
  except
    strTemp := '';
  end;
  Result := strTemp;
end;

procedure pasteCurRecord(dt: TDataset; ExceptFieldStr: string);
var
  tempList: TStringList;
  i: Integer;
  recordValues: Variant;
begin
  // TODO -cMM: TfrmLR_FangRen.pasteCurRecord default body inserted
  if dt.RecordCount > 0 then
  begin
    tempList := TStringList.Create;
    tempList.CommaText := ExceptFieldStr;
    recordValues := VarArrayCreate([0, dt.FieldCount - 1], varVariant);
    for i := 0 to dt.FieldCount - 1 do
    begin
      recordValues[i] := dt.Fields[i].Value;
    end;
    // 新增记录 ,并给各个字段赋值
    dt.Append;
    for i := 0 to dt.FieldCount - 1 do
    begin
      if tempList.IndexOf(dt.Fields[i].fieldName) = -1 then
        dt.Fields[i].Value := recordValues[i];
    end;
    tempList.Free;
  end
  else
    dt.Append;
end;

procedure ApplyUpdatesCD(MyCD: TClientDataSet);
begin
  if MyCD.Active = False then
    Exit;
  postDataset(MyCD);
  if MyCD.ChangeCount > 0 then
    MyCD.ApplyUpdates(-1);
end;

procedure GradHorizontal(Canvas: TCanvas; Rect: TRect; FromColor, ToColor: TColor);
var
  X: Integer;
  dr, dg, DB: Extended;
  C1, C2: TColor;
  r1, r2, g1, g2, b1, b2: Byte;
  R, G, B: Byte;
  cnt: Integer;
begin
  C1 := FromColor;
  r1 := GetRValue(C1);
  g1 := GetGValue(C1);
  b1 := GetBValue(C1);

  C2 := ToColor;
  r2 := GetRValue(C2);
  g2 := GetGValue(C2);
  b2 := GetBValue(C2);

  dr := (r2 - r1) / (Rect.Right - Rect.Left);
  dg := (g2 - g1) / (Rect.Right - Rect.Left);
  DB := (b2 - b1) / (Rect.Right - Rect.Left);

  cnt := 0;
  for X := Rect.Left to Rect.Right - 1 do
  begin
    R := r1 + Ceil(dr * cnt);
    G := g1 + Ceil(dg * cnt);
    B := b1 + Ceil(DB * cnt);

    Canvas.Pen.Color := RGB(R, G, B);
    Canvas.MoveTo(X, Rect.Top);
    Canvas.LineTo(X, Rect.Bottom);
    inc(cnt);
  end;
end;

procedure GradVertical(Canvas: TCanvas; Rect: TRect; FromColor, ToColor: TColor);
var
  Y: Integer;
  dr, dg, DB: Extended;
  C1, C2: TColor;
  r1, r2, g1, g2, b1, b2: Byte;
  R, G, B: Byte;
  cnt: Integer;
begin
  C1 := FromColor;
  r1 := GetRValue(C1);
  g1 := GetGValue(C1);
  b1 := GetBValue(C1);

  C2 := ToColor;
  r2 := GetRValue(C2);
  g2 := GetGValue(C2);
  b2 := GetBValue(C2);

  dr := (r2 - r1) / (Rect.Bottom - Rect.Top);
  dg := (g2 - g1) / (Rect.Bottom - Rect.Top);
  DB := (b2 - b1) / (Rect.Bottom - Rect.Top);

  cnt := 0;
  for Y := Rect.Top to Rect.Bottom - 1 do
  begin
    R := r1 + Ceil(dr * cnt);
    G := g1 + Ceil(dg * cnt);
    B := b1 + Ceil(DB * cnt);

    Canvas.Pen.Color := RGB(R, G, B);
    Canvas.MoveTo(Rect.Left, Y);
    Canvas.LineTo(Rect.Right, Y);
    inc(cnt);
  end;
end;

function UncrypKey(Src: AnsiString; Key: AnsiString): string;
var
  idx: Integer;
  KeyLen: Integer;
  KeyPos: Integer;
  offset: Integer;
  dest: AnsiString;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  KeyLen := Length(Key);
  if KeyLen = 0 then
    Key := 'Think   Space';
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  offset := StrToInt('$' + Copy(Src, 1, 2));
  SrcPos := 3;
  repeat
    SrcAsc := StrToInt('$' + Copy(Src, SrcPos, 2));
    if KeyPos < KeyLen then
      KeyPos := KeyPos + 1
    else
      KeyPos := 1;
    TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
    if TmpSrcAsc <= offset then
      TmpSrcAsc := 255 + TmpSrcAsc - offset
    else
      TmpSrcAsc := TmpSrcAsc - offset;
    dest := dest + Chr(TmpSrcAsc);
    offset := SrcAsc;
    SrcPos := SrcPos + 2;
  until SrcPos >= Length(Src);
  Result := string(dest);
end;

function Encryp(Src: AnsiString; Key: AnsiString): string;
var
  idx: Integer;
  KeyLen: Integer;
  KeyPos: Integer;
  offset: Integer;
  dest: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  KeyLen := Length(Key);
  if KeyLen = 0 then
    Key := 'Think   Space';
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;

  Randomize;
  offset := Random(Range);
  dest := Format('%1.2x', [offset]);
  for SrcPos := 1 to Length(Src) do
  begin
    SrcAsc := (Ord(Src[SrcPos]) + offset) mod 255;
    if KeyPos < KeyLen then
      KeyPos := KeyPos + 1
    else
      KeyPos := 1;
    SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
    dest := dest + Format('%1.2x', [SrcAsc]);
    offset := SrcAsc;
  end;
  Result := dest;
end;

// 取得本周起止日期

function getThisWeekBEDate: TDateArray;
var
  tdArray: TDateArray;
  td: TDateTime;
  s: Integer;
begin
  td := Date;
  s := DayOfWeek(td);
  tdArray[0] := td + 2 - s;
  tdArray[1] := tdArray[0] + 4;
  Result := tdArray;
end;
// 下周

function getNextWeekBEDate: TDateArray;
var
  tdArray: TDateArray;
  td: TDateTime;
  s: Integer;
begin
  td := Date;
  s := DayOfWeek(td);
  tdArray[0] := td + 9 - s;
  tdArray[1] := tdArray[0] + 4;
  Result := tdArray;
end;
// 上周

function getPriorWeekBEDate: TDateArray;
var
  tdArray: TDateArray;
  td: TDateTime;
  s: Integer;
begin
  td := Date;
  s := DayOfWeek(td);
  tdArray[0] := td - 5 - s;
  tdArray[1] := tdArray[0] + 4;
  Result := tdArray;
end;

// 取得汉文星期几

function WeekDay(const CuDate: TDateTime): string;
begin
  Result := Copy('日一二三四五六', DayOfWeek(CuDate) * 2 - 1, 2);
end;
// 闰年

function dateLeapYear(D: TDateTime): Boolean;
var
  Year, Month, Day: Word;
begin
  DecodeDate(D, Year, Month, Day);
  Result := (Year mod 4 = 0) and ((Year mod 100 <> 0) or (Year mod 400 = 0));
end;

// ***************************************************************

procedure OpenSqlStr(MyQY: TADOQuery; sqlStr: string);
begin
  MyQY.Close;
  MyQY.SQL.Text := sqlStr;
  MyQY.Open;
end;

procedure ExecSqlStr(MyQY: TADOQuery; sqlStr: string);
begin
  MyQY.Close;
  MyQY.SQL.Text := sqlStr;
  MyQY.ExecSQL;
end;

procedure csDeleteKey(keyName: string; MyRootKey: Hkey);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create();
  Reg.RootKey := MyRootKey;
  if not Reg.DeleteKey(keyName) then
    ShowMessage('删除键值错误!');
  Reg.Free;
end;

procedure RunAtStartup(keyName, AppPathName: string);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run', False);
  Reg.WriteString(keyName, AppPathName);
  Reg.CloseKey;
  Reg.Free;
end;

procedure DelDir(Dir: string);
var
  shFileOpStruct: TSHFileOpStruct;
begin
  with shFileOpStruct do
  begin
    Wnd := 0;
    WFunc := FO_DELETE;
    pFrom := Pchar(Dir);
    pTo := nil;
    fFlags := FOF_NOCONFIRMATION + FOF_NOERRORUI;
    // 标志表明允许恢复，无须确认并不显示出错信息
    hNameMappings := nil;
    lpszProgressTitle := '正在删除文件夹';
    fAnyOperationsAborted := False;
  end;
  SHFileOperation(shFileOpStruct);
end;

procedure filterDataSet(MyDataset: TDataset; FilterStr: string);
begin
  MyDataset.Filtered := False;
  MyDataset.Filter := FilterStr;
  MyDataset.Filtered := True;
end;

function DeleteRecord(MyDataset: TDataset): Boolean;
begin
  Result := False;
  if MyDataset.RecordCount > 0 then
  begin
    if TMyMsgBox.Message('是否确认要删除当前记录?') = IDYES then
    begin
      MyDataset.Delete;
      Result := True;
    end;
  end;
end;

procedure DeleteRecordCD(MyCD: TClientDataSet);
begin
  if MyCD.RecordCount > 0 then
  begin
    if TMyMsgBox.Message('是否确认要删除当前记录?') = IDYES then
    begin
      MyCD.Delete;
      try
        MyCD.ApplyUpdates(-1);
      except

      end;
    end;
  end;
end;

procedure postDataset(MyDataset: TDataset);
begin
  if (MyDataset.State = dsedit) or (MyDataset.State = dsInsert) then
  begin
    MyDataset.Post;
  end;
end;

function GetAppPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

procedure Myerror(M: string);
begin
  Application.MessageBox(Pchar(M), '错误', MB_OK + MB_IconError);
end;

procedure MyWarning(M: string);
begin
  Application.MessageBox(Pchar(M), '提示', MB_OK + MB_Iconwarning);
end;

procedure MyInfo(M: string);
begin
  Application.MessageBox(Pchar(M), '提示', MB_OK + MB_IconInformation);
end;

function MyMessage(M: string): Integer;
begin
  Result := Application.MessageBox(Pchar(M), '提示', MB_YesNo + MB_Iconwarning);
end;

procedure RunPro(ProName: string); // 打开一个文件
begin
  ShellExecute(Application.Handle, 'open', Pchar(ProName), nil, nil, SW_SHOWNORMAL);
end;

function htwReadRegisry(RegKey: string; Default: string; MyRootKey: Hkey; MyOpenKey: string): string;
var
  Registry: TRegistry;
  s: string;
begin
  Registry := TRegistry.Create;
  try
    begin
      Registry.RootKey := MyRootKey; // HKEY_CURRENT_USER;
      Registry.OpenKey(MyOpenKey, False);
      // Registry.OpenKey('\Software\MachineAdministrator',false);
      s := Registry.ReadString(RegKey);
    end
  finally
    begin
      Registry.CloseKey;
      Registry.Free;
    end;
    if trim(s) = '' then
      Result := Default
    else
      Result := s;
  end;

end;

procedure htwWriteRegisry(RegKey: string; asValueTobewrited: string; MyRootKey: Hkey; MyOpenKey: string);
var
  Registry: TRegistry;
begin
  Registry := TRegistry.Create;
  try
    begin
      Registry.RootKey := MyRootKey; // HKEY_CURRENT_USER;
      Registry.OpenKey(MyOpenKey, True);
      // Registry.OpenKey('\Software\MachineAdministrator',true);
      Registry.WriteString(RegKey, asValueTobewrited);
    end
  finally
    begin
      Registry.CloseKey;
      Registry.Free;
    end;
  end;
end;

// 查找所有文件及子目录中符合条件的文档
procedure FindFiles(APath, AFileName: string; var Files: TStringList);
var
  FSearchRec, DSearchRec: TSearchRec;
  FindResult: Integer;
  subdirName: string;

  function IsDirNotition(ADirName: string): Boolean;
  begin
    Result := (ADirName = '.') or (ADirName = '..');
  end;

  function getDirName(ADirName: string): string;
  begin
    if ADirName[Length(ADirName)] <> '\' then
      Result := ADirName + '\'
    else
      Result := ADirName;
  end;

begin
  APath := getDirName(APath);
  FindResult := FindFirst(APath + AFileName, faAnyFile, FSearchRec);
  try
    // 当前目录中查找
    while FindResult = 0 do
    begin
      if IsDirNotition(FSearchRec.Name) = False then
        Files.Add(APath + FSearchRec.Name);
      FindResult := FindNext(FSearchRec);
    end;
    // 在子目录中查找
    FindResult := FindFirst(APath + '*.*', faDirectory, DSearchRec);
    while FindResult = 0 do
    begin
      if (DSearchRec.Attr = 16) and (IsDirNotition(DSearchRec.Name) = False) then
      begin
        subdirName := getDirName(APath + DSearchRec.Name);
        // ShowMessage(subdirName);
        FindFiles(subdirName, AFileName, Files);
      end;
      FindResult := FindNext(DSearchRec)
    end;
  finally
    FindClose(FSearchRec);
  end;
end;

// 获取指定目录中所有子目录 或指定格式文件名称列表
// 搜索多扩展名时以path+'*.jpg;*.jpeg;*.gif;*.png;*.bmp;*.tiff;*.emf'
function FindDF(Dir: string; FindAtrr: Integer; AddDir: Boolean = False): TStringList;
var
  i: Integer;
  f: TSearchRec;
  fList: TStringList;
begin
  { aReadOnly	Read-only files
    faHidden	Hidden files
    faSysFile	System files
    faVolumeID	Volume ID files
    faDirectory	Directory files
    faArchive	Archive files
    faAnyFile	所有文件加入文件后缀 }
  fList := TStringList.Create;
  i := FindFirst(Dir, FindAtrr, f);
  while i = 0 do
  begin
    if (f.Name <> '.') and (f.Name <> '..') then
      case FindAtrr of
        faDirectory:
          if (f.Attr = 16) and (AddDir) then
            fList.Add(f.Name);
        faAnyFile:
          fList.Add(f.Name);
      end;
    i := FindNext(f);
  end;
  FindClose(f);
  Result := fList;
end;

function formatMyStr(oStr { 原始字符串 } , iStr { 插入的字符 } : string;sl { 字符串位数 } , Pos: Integer): string;
// oStr-原始字串 iStr-填充的字符 sl-格式长度
var
  i: Integer;
  tempStr: string;
begin
  // TODO -cMM: formatMyStr default body inserted
  tempStr := oStr;
  for i := 1 to sl - Length(oStr) do
  begin
    case Pos of
      0:
        tempStr := iStr + tempStr;
      1:
        tempStr := tempStr + iStr;
    end;
  end;
  Result := tempStr;
end;

function OpenClientDataSet(cd: TClientDataSet; sqlStr: string): Boolean;
begin
  // TODO -cMM: OpenClientDataSet default body inserted
  Result := False;
  cd.Close;
  try
    cd.CommandText := sqlStr;
    cd.Open;
    Result := True;
  except
    Myerror('打开数据集出错！');
  end;

end;

function execSqlCD(cd: TClientDataSet; sqlStr: string): Boolean;
begin
  // TODO -cMM: execSqlCD default body inserted
  Result := False;
  try
    cd.Close;
    cd.CommandText := sqlStr;
    cd.Execute;
    Result := True;
  except
    Myerror('执行SQL语句出错！');
  end;
end;

{ TMsgBox }

class procedure TMyMsgBox.error(M: string);
begin
  Application.MessageBox(Pchar(M), '错误', MB_OK + MB_IconError);
end;

class procedure TMyMsgBox.Info(M: string);
begin
  Application.MessageBox(Pchar(M), '提示', MB_OK + MB_IconInformation);
end;

class function TMyMsgBox.InputBox(fCaption, lCaption, dValue: string): string;
begin
  Result := string.Empty;
  frmMyInputBox := TfrmMyInputBox.Create(nil);
  with frmMyInputBox do
  begin
    Caption := fCaption;
    lblHint.Caption := lCaption;
    txtEdtContent.Text := dValue;
    txtEdtContent.SelectAll;
    ShowModal;
    if ModalResult = mrOK then
      Result := trim(txtEdtContent.Text);
    Free;
  end;
end;

class function TMyMsgBox.Message(M: string): Integer;
begin
  Application.MessageBox(Pchar(M), '提示', MB_OK + MB_Iconwarning);
end;

class procedure TMyMsgBox.Warning(M: string);
begin
  Application.MessageBox(Pchar(M), '提示', MB_OK + MB_Iconwarning);
end;

end.

