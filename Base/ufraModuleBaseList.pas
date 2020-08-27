unit ufraModuleBaseList;

interface

uses

  uDevPublic, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uFraModuleBase, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinDarkSide, dxSkinDevExpressStyle, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, cxPropertiesStore, System.ImageList, Vcl.ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Datasnap.DBClient,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxCalloutPopup, dxSkinMetropolis, dxSkinOffice2016Dark, dxSkinStardust,
  dxSkinVisualStudio2013Dark, cxCustomData, cxFilter, cxData, dxSkinBlueprint,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkinMetropolisDark, dxDateRanges,
  dxSkinTheBezier, Vcl.ExtCtrls, dxSkinOffice2019Colorful{,uDmClient};

const
  sql_t: string = 'select * from %s';

type
  TFraModuleBaseList = class(TfraModuleBase)
    img24: TcxImageList;
    cxGrid1: TcxGrid;
    GridViewList: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ToolPanel: TPanel;
    DS1: TDataSource;
    BottomPanel: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }


    DevInFo: string;
    procedure InitModuleLayout; override;
    procedure GetData; override;
    procedure CloseData; override;
    procedure LockChangeEvent(lType: Integer = 1); override;
    procedure InitShortCut; override; // 初始化快捷键
    procedure SetDetailPrivilege; override;
    // 移除快捷键
    procedure RemoveShortCut; override;
    // 创建与销毁
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  FraModuleBaseList: TFraModuleBaseList;

implementation

{$R *.dfm}

{ TfraModuleBaseList }
uses
  cxGridExportLink, uWinPublic;

procedure TFraModuleBaseList.CloseData;
begin
  inherited;

end;

constructor TFraModuleBaseList.Create(AOwner: TComponent);
begin
  inherited;
  DevInFo := '请对Devinfo 变量赋值';
end;

destructor TFraModuleBaseList.Destroy;
begin

  inherited;
end;

procedure TFraModuleBaseList.GetData;
begin
  inherited;

end;

procedure TFraModuleBaseList.InitModuleLayout;
begin
  inherited;
  cxGrid1.Align := alClient;
  InitGridView(GridViewList, False, 40, False, 28, 30, true);
end;

procedure TFraModuleBaseList.InitShortCut;
begin
  inherited;
end;

procedure TFraModuleBaseList.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TFraModuleBaseList.RemoveShortCut;
begin
  inherited;

end;

procedure TFraModuleBaseList.SetDetailPrivilege;
begin
  inherited;

end;

end.

