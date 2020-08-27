unit wdRunOnce;

{*******************************************
 * brief: �ó���ֻ����һ��
 * autor: linzhenqun
 * date: 2005-12-28
 * email: linzhengqun@163.com
 * blog: http://blog.csdn.net/linzhengqun
********************************************}

interface

(* �����Ƿ��Ѿ����У���������򼤻��� *)
function AppHasRun(AppHandle: THandle): Boolean;


implementation
uses
  Windows, Messages;

const
  MapFileName = '{CAF49BBB-AF40-4FDE-8757-51D5AEB5BBBF}';

type
  //�����ڴ�
  PShareMem = ^TShareMem;
  TShareMem = record
    AppHandle: THandle;  //�������ľ��
  end;

var
  hMapFile: THandle;
  PSMem: PShareMem;

procedure CreateMapFile;
begin
  hMapFile := OpenFileMapping(FILE_MAP_ALL_ACCESS, False, PChar(MapFileName));
  if hMapFile = 0 then
  begin
    hMapFile := CreateFileMapping($FFFFFFFF, nil, PAGE_READWRITE, 0,
      SizeOf(TShareMem), MapFileName);
    PSMem := MapViewOfFile(hMapFile, FILE_MAP_WRITE or FILE_MAP_READ, 0, 0, 0);
    if PSMem = nil then
    begin
      CloseHandle(hMapFile);
      Exit;
    end;
    PSMem^.AppHandle := 0;
  end
  else begin
    PSMem := MapViewOfFile(hMapFile, FILE_MAP_WRITE or FILE_MAP_READ, 0, 0, 0);
    if PSMem = nil then
    begin
      CloseHandle(hMapFile);
    end
  end;
end;

procedure FreeMapFile;
begin
  UnMapViewOfFile(PSMem);
  CloseHandle(hMapFile);
end;

function AppHasRun(AppHandle: THandle): Boolean;
var
  TopWindow: HWnd;
begin
  Result := False;
  if PSMem <> nil then
  begin
    if PSMem^.AppHandle <> 0 then
    begin
      SendMessage(PSMem^.AppHandle, WM_SYSCOMMAND, SC_RESTORE, 0);
      TopWindow := GetLastActivePopup(PSMem^.AppHandle);
      if (TopWindow <> 0) and (TopWindow <> PSMem^.AppHandle) and
        IsWindowVisible(TopWindow) and IsWindowEnabled(TopWindow) then
        SetForegroundWindow(TopWindow);
      Result := True;
    end
    else
      PSMem^.AppHandle := AppHandle;
  end;
end;

initialization
  CreateMapFile;

finalization
  FreeMapFile;

end.
