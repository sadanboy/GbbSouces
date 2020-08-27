unit uFraModuleMap;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, uFraModuleBase,
  dxBar, cxGraphics, cxTL, Vcl.StdCtrls, Vcl.ComCtrls, cxTreeView,
  Vcl.Samples.Spin, cxPC, dxSkinsCore, dxSkinLilian, dxSkinsDefaultPainters,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxTextEdit,
  cxTLdxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBarBuiltInMenu, cxInplaceContainer, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, cxContainer, cxEdit, dxBarCode, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinDarkSide, dxSkinDevExpressStyle, dxSkiniMaginary,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxCustomTileControl,
  Vcl.Menus, cxLabel, dxGDIPlusClasses, scControls, scGPControls,
  dxSkinMetropolis, dxSkinOffice2016Dark, dxSkinStardust,
  dxSkinVisualStudio2013Dark, cxCustomData, System.ImageList, Vcl.ImgList,
  cxImageList, cxPropertiesStore, dxSkinBlueprint, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinMetropolisDark, dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfraModuleMap = class(TfraModuleBase)
    Img1: TcxImageList;
    PageControl1: TcxPageControl;
    ts7: TcxTabSheet;
    ts8: TcxTabSheet;
    ts9: TcxTabSheet;
    ts10: TcxTabSheet;
    btn1: TButton;
    Image1: TImage;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitModuleLayout; override;
    procedure GetData; override;
    procedure CloseData; override;
    procedure LockChangeEvent(lType: Integer = 1); override;
    procedure InitShortCut; override; // ³õÊ¼»¯¿ì½Ý¼ü
    procedure SetDetailPrivilege; override;
    // ÒÆ³ý¿ì½Ý¼ü
    procedure RemoveShortCut; override;
  end;

var
  fraModuleMap: TfraModuleMap;

implementation

{$R *.dfm}


{ TfraModuleBase1 }
uses
  uIniOptionsClient, uFrmMain;


procedure TfraModuleMap.CloseData;
begin
  inherited;

end;


procedure TfraModuleMap.GetData;
begin
  inherited;
  // DxMenuToTreeview(frmMain.barMgrMain,tv1);
  // DxMenuTocxTreeList(frmMain.barMgrMain, cxTreeList1);

end;





procedure TfraModuleMap.InitModuleLayout;
begin
  inherited;
  PageControl1.HideTabs := True;
  // PageControl1.ActivePageIndex := 10;
end;

procedure TfraModuleMap.InitShortCut;
begin
  inherited;

end;

procedure TfraModuleMap.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TfraModuleMap.RemoveShortCut;
begin
  inherited;

end;



procedure TfraModuleMap.SetDetailPrivilege;
begin
  inherited;

end;

initialization
  RegisterClass(TfraModuleMap);

end.

