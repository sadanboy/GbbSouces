unit uPublic;

interface

uses
  System.StrUtils, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uFraModuleBase, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinsDefaultPainters, dxSkinsdxBarPainter, dxBar, System.Actions,
  Vcl.ActnList, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxTextEdit, cxCurrencyEdit, cxCalendar,
  cxImageComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.ComCtrls, dxtree, cxSplitter,
  dxBarBuiltInMenu, cxPC, cxContainer, cxDBLookupComboBox, cxMemo, cxLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt, dxLayoutcxEditAdapters, cxDBEdit, cxDropDownEdit, cxCalc,
  dxLayoutContainer, cxMaskEdit, cxSpinEdit, FireDAC.Comp.Client,
  dxLayoutControl, dxLayoutLookAndFeels, cxDBLabel, cxCheckBox, cxBarEditItem,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxButtonEdit,
  cxDBExtLookupComboBox;

type
  TShowType = (asEdit, asAdd, asAddN, asView); // addN代表连续新增

function CallModuleOld(moduleSymbol, moduleCaption: string; AllowMultiInstance: Boolean = False): Boolean;

function CallModule(moduleSymbol, moduleCaption: string; Id: string = ''; Flag: string = 'new'; AllowMultiInstance: Boolean = False): TFrame;

function CreateModule(moduleClassName: string; myts: TcxTabSheet; iIsNew: Boolean = True): TFrame;

procedure SetDs(myc: TCustomControl; ds: TDataSource);

procedure CloseModule;
// 根据数据集和其字段返回+1的编号

function GetBianHaoByField(cd: TDataSet; AField: string): string;

function GetApplicationVersion: string;  //取得程序版本号

implementation

uses
  uWinPublic, uFrmMain, Datasnap.DBClient;

function GetApplicationVersion: string;  //取得程序版本号
var
  FileName: string;
  InfoSize, Wnd: DWORD;
  VerBuf: Pointer;
  VerInfo: ^VS_FIXEDFILEINFO;
begin
  Result := '0.0.0.0';
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
          Result := Format('%d.%d.%d.%d', [VerInfo^.dwFileVersionMS shr 16, VerInfo^.dwFileVersionMS and $0000ffff, VerInfo^.dwFileVersionLS shr 16, VerInfo^.dwFileVersionLS and $0000ffff]);
      end;
    finally
      FreeMem(VerBuf, InfoSize);
    end;
  end;
end;

function GetBianHaoByField(cd: TDataSet; AField: string): string;
var
  mid: string;
  Sn, str, tempstr, BianMa: string;
  n: Integer;
begin

  with cd do
  begin
    if RecordCount > 0 then
    begin
      Last;

      Sn := Trim(FindField(AField).AsString);
      if Length(Sn) > 0 then // 如果不为空
      begin
        str := RightStr(Sn, 1);
        if TryStrToInt(str, n) then // 如果是数字
        begin

          Inc(n);
          tempstr := LeftStr(Sn, Length(Sn) - 1);
        end
        else
        begin
          n := 1;
          tempstr := Sn;
        end;

        Result := tempstr + inttostr(n);

      end
      else
        Result := '1'; // 为空时为1

    end
    else
      Result := '1'; // 无记录时为1
  end;
end;

procedure SetDs(myc: TCustomControl; ds: TDataSource);
var
  i: Integer;
begin
  with myc do
  begin
    for i := 0 to ControlCount - 1 do
    begin
      if (Controls[i] is TcxDBTextEdit) then
      begin
        TcxDBTextEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBSpinEdit) then
      begin
        TcxDBSpinEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBLookupComboBox) then
      begin
        TcxDBLookupComboBox(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBExtLookupComboBox) then
      begin
        TcxDBExtLookupComboBox(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBComboBox) then
      begin
        TcxDBComboBox(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBDateEdit) then
      begin
        TcxDBDateEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBButtonEdit) then
      begin
        TcxDBButtonEdit(Controls[i]).DataBinding.DataSource := ds;

        Continue;
      end;
      if (Controls[i] is TcxDBMemo) then
      begin
        TcxDBMemo(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;
      if (Controls[i] is TcxDBLabel) then
      begin
        TcxDBLabel(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;
    end;
  end;
end;

function CallModule(moduleSymbol, moduleCaption: string; Id: string; Flag: string; AllowMultiInstance: Boolean): TFrame;
var
  ts: TcxTabSheet;
  tsName, moduleClassName: string;
  fra: TFrame;
  frm: TForm;
begin
  moduleClassName := 'TfraModule' + moduleSymbol;
  if AllowMultiInstance = False then
  begin
    tsName := 'ts' + moduleSymbol;
    ts := frmMain.pcMain.FindComponent(tsName) as TcxTabSheet;
    if ts = nil then
    begin
      ts := AddPage(frmMain.pcMain, moduleCaption);
      ts.Name := tsName;
      fra := CreateModule(moduleClassName, ts);

      if moduleSymbol = 'map' then
        ts.AllowCloseButton := False
      else
        ts.AllowCloseButton := True;
    end
    else if ts.ControlCount > 0 then
      if ts.Controls[0] is TfraModuleBase then
        fra := TfraModuleBase(ts.Controls[0]);
    frmMain.pcMain.ActivePage := ts;
  end
  else
  begin
    ts := AddPage(frmMain.pcMain, moduleCaption);
    ts.AllowCloseButton := True;
    fra := CreateModule(moduleClassName, ts);
  end;

  if fra = nil then
    Exit;

  Result := fra;

end;

procedure CloseModule();
begin
  with frmMain do
  begin
    if pcMain.activepageIndex > -1 then
    begin
      if pcMain.ActivePage.Name <> 'tsmap' then
        pcMain.closetab(pcMain.activepageIndex);
    end;
  end;
end;

function CreateModule(moduleClassName: string; myts: TcxTabSheet; iIsNew: Boolean): TFrame;
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
      visible := False;
      name := 'fra' + CreateSortId;
      Parent := myts;
      Align := alClient;
      InitModuleLayout;
      visible := True;
      GetData;
      // OnCloseModule := CloseModule;
    end;
  end;
end;

function CallModuleOld(moduleSymbol, moduleCaption: string; AllowMultiInstance: Boolean): Boolean;
var
  ts: TcxTabSheet;
  tsName, moduleClassName: string;
  fra: TFrame;
  frm: TForm;
begin
  moduleClassName := 'TfraModule' + moduleSymbol;
  if AllowMultiInstance = False then
  begin
    tsName := 'ts' + moduleSymbol;
    ts := frmMain.pcMain.FindComponent(tsName) as TcxTabSheet;
    if ts = nil then
    begin
      ts := AddPage(frmMain.pcMain, moduleCaption);
      ts.Name := tsName;
      fra := CreateModule(moduleClassName, ts);

      if moduleSymbol = 'map' then
        ts.AllowCloseButton := False
      else
        ts.AllowCloseButton := True;
    end
    else if ts.ControlCount > 0 then
      if ts.Controls[0] is TfraModuleBase then
        fra := TfraModuleBase(ts.Controls[0]);
    frmMain.pcMain.ActivePage := ts;
  end
  else
  begin
    ts := AddPage(frmMain.pcMain, moduleCaption);
    ts.AllowCloseButton := True;
    fra := CreateModule(moduleClassName, ts);
  end;

  if fra = nil then
    Exit;
end;

end.

