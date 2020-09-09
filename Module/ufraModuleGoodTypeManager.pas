unit ufraModuleGoodTypeManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFraModuleBase, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxBar, System.Actions, Vcl.ActnList,
  cxPropertiesStore, Vcl.ExtCtrls;

type
  TfraModuleGoodTypeManager = class(TfraModuleBase)
    MainPanel: TPanel;
  private
    { Private declarations }
    procedure InitGoodTypeManager;
  public
    { Public declarations }
    procedure InitModuleLayout; override;
    procedure GetData; override;
    procedure CloseData; override;
    procedure LockChangeEvent(lType: Integer = 1); override;
    procedure InitShortCut; override; // 初始化快捷键
    procedure SetDetailPrivilege; override;
    // 移除快捷键
    procedure RemoveShortCut; override;
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  fraModuleGoodTypeManager: TfraModuleGoodTypeManager;

implementation

{$R *.dfm}
uses
  uFrmGoodTypeManager;
{ TfraModuleGoodTypeManager }

procedure TfraModuleGoodTypeManager.CloseData;
begin
  inherited;

end;

constructor TfraModuleGoodTypeManager.Create(AOwner: TComponent);
begin
  inherited;
  InitGoodTypeManager;
end;

destructor TfraModuleGoodTypeManager.Destroy;
begin

  inherited;
end;

procedure TfraModuleGoodTypeManager.GetData;
begin
  inherited;

end;

procedure TfraModuleGoodTypeManager.InitGoodTypeManager;
begin
   //调用分类窗口
   FrmGoodTypeManager:=TFrmGoodTypeManager.Create(Application);
   //是分类窗口最大化
   FrmGoodTypeManager.Align:=alClient;
   FrmGoodTypeManager.ManualDock(MainPanel);
   FrmGoodTypeManager.Show;
end;

procedure TfraModuleGoodTypeManager.InitModuleLayout;
begin
  inherited;

end;

procedure TfraModuleGoodTypeManager.InitShortCut;
begin
  inherited;

end;

procedure TfraModuleGoodTypeManager.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TfraModuleGoodTypeManager.RemoveShortCut;
begin
  inherited;

end;

procedure TfraModuleGoodTypeManager.SetDetailPrivilege;
begin
  inherited;

end;
initialization
  RegisterClass(TfraModuleGoodTypeManager);

end.
