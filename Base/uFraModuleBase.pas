unit uFraModuleBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxBarPainter, dxBar,
  System.Actions, Vcl.ActnList, cxClasses, cxPropertiesStore, Vcl.Menus,
  dxSkinBlue, dxSkinOffice2007Blue, cxPC, cxBarEditItem, dxSkinLilian,
  dxSkinDevExpressStyle, dxSkinBlack, dxSkinCaramel, dxSkinDarkSide,
  dxSkiniMaginary, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis,
  dxSkinOffice2016Dark, dxSkinStardust, dxSkinVisualStudio2013Dark,
  dxSkinBlueprint, dxSkinCoffee, dxSkinDarkRoom, dxSkinDevExpressDarkStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkinMetropolisDark,
  dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TCloseModuleEvent = procedure() of object;

  TfraModuleBase = class(TFrame)
    propertiesStoreModule: TcxPropertiesStore;
    actlstModule: TActionList;
    barMgrModule: TdxBarManager;
    actModule_Close: TAction;
    procedure barMgrModuleShowToolbarsPopup(Sender: TdxBarManager; PopupItemLinks: TdxBarItemLinks);
    procedure barMgrModuleShowCustomizingPopup(Sender: TdxBarManager; PopupItemLinks: TdxBarItemLinks);
    procedure actModule_CloseExecute(Sender: TObject);
  private
    FHasData: Boolean;
    FDmModule: TDataModule;
    FOnCloseModule: TCloseModuleEvent;
    FFocusControl: TcxBarEditItem;
    { Private declarations }
    procedure SaveProperties;
    procedure SetHasData(const Value: Boolean);
    procedure SetDmModul(const Value: TDataModule);
    procedure SetFocusControl(const Value: TcxBarEditItem); // 保存界面元素
  public
    property OnCloseModule: TCloseModuleEvent read FOnCloseModule write FOnCloseModule;
    property HasData: Boolean read FHasData write SetHasData;
    property dmModule: TDataModule read FDmModule write SetDmModul; // 用于多界面启动
    property FocusControl: TcxBarEditItem read FFocusControl write SetFocusControl;
    { Public declarations }
    procedure InitModuleLayout; virtual; abstract;
    procedure GetData; virtual;
    procedure CloseData; virtual;
    procedure LockChangeEvent(lType: Integer = 1); virtual;
    procedure InitShortCut; virtual; // 初始化快捷键
    procedure SetDetailPrivilege; virtual;
    // 移除快捷键
    procedure RemoveShortCut; virtual;
    // 创建与销毁
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

uses
  uConst, uDm;
{ TfraModuleBase }

procedure TfraModuleBase.actModule_CloseExecute(Sender: TObject);
begin
  RemoveShortCut;
  OnCloseModule;
end;

procedure TfraModuleBase.barMgrModuleShowCustomizingPopup(Sender: TdxBarManager; PopupItemLinks: TdxBarItemLinks);
begin
  PopupItemLinks.Clear;
end;

procedure TfraModuleBase.barMgrModuleShowToolbarsPopup(Sender: TdxBarManager; PopupItemLinks: TdxBarItemLinks);
begin
  PopupItemLinks.Clear;
end;

procedure TfraModuleBase.CloseData;
begin
  RemoveShortCut; // 单独使用快捷键移除，本系统切换模块不关闭数据集
  HasData := False;
end;

constructor TfraModuleBase.Create(AOwner: TComponent);
var
  i: Integer;
begin
  inherited Create(AOwner);
  with propertiesStoreModule do
  begin
    Active := False;
    StorageName := MyPath + LayoutDir + Self.Name; // 不需要每个模块赋值
  end;
  for i := 0 to barMgrModule.Bars.Count - 1 do
  begin
    with barMgrModule.Bars[i] do
    begin
      AllowCustomizing := False;
      AllowReset := False;
      AllowClose := False;
      AllowQuickCustomizing := False;
    end;
  end;

  SetDetailPrivilege;
end;

destructor TfraModuleBase.Destroy;
begin
  LockChangeEvent();
  try
    CloseData;
  finally
    LockChangeEvent(0);
  end;
  SaveProperties;
  inherited;
end;

procedure TfraModuleBase.GetData;
begin
  HasData := True;
  InitShortCut;
end;

procedure TfraModuleBase.InitShortCut;
begin

end;

procedure TfraModuleBase.LockChangeEvent(lType: Integer);
begin

end;

procedure TfraModuleBase.RemoveShortCut;
var
  i: Integer;
begin
  for i := 0 to actlstModule.ActionCount - 1 do
  begin
    TCustomAction(actlstModule.Actions[i]).ShortCut := TextToShortCut(string.Empty);
  end;
end;

procedure TfraModuleBase.SaveProperties;
begin
  if propertiesStoreModule.StorageName <> 'propertiesStoreModule' then
    propertiesStoreModule.StoreTo();
end;

procedure TfraModuleBase.SetDetailPrivilege;
begin

end;

procedure TfraModuleBase.SetDmModul(const Value: TDataModule);
begin
  FDmModule := Value;
end;

procedure TfraModuleBase.SetFocusControl(const Value: TcxBarEditItem);
begin
  FFocusControl := Value;
end;

procedure TfraModuleBase.SetHasData(const Value: Boolean);
begin
  FHasData := Value;
end;

end.

