unit uFraModuleGoodClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufraModuleBaseList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireHelper, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDataSet, System.ImageList, Vcl.ImgList, cxImageList,
  cxClasses, dxBar, System.Actions, Vcl.ActnList, cxPropertiesStore,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, scControls, scGPControls,
  dxSkinsDefaultPainters;

type
  TFraModuleGoodClass = class(TFraModuleBaseList)
    FireQGoodClass: TFireQuery;
    GridViewListColumn1: TcxGridDBColumn;
    GridViewListColumn2: TcxGridDBColumn;
    GridViewListColumn3: TcxGridDBColumn;
    GridViewListColumn4: TcxGridDBColumn;
    GridViewListColumn5: TcxGridDBColumn;
    GridViewListColumn6: TcxGridDBColumn;
    GridViewListColumn7: TcxGridDBColumn;
    FireQGoodClass商品名称: TWideStringField;
    FireQGoodClass商品分类: TWideStringField;
    FireQGoodClass品类: TWideStringField;
    FireQGoodClass牛奶品牌: TWideStringField;
    FireQGoodClass羊奶品牌: TWideStringField;
    FireQGoodClass纸尿裤: TWideStringField;
    FireQGoodClass品牌: TWideStringField;
    btnAdd: TscGPButton;
    btnEdit: TscGPButton;
    btnDeltete: TscGPButton;
    btnFind: TscGPButton;
    btnExprot: TscGPButton;
    scGPButton6: TscGPButton;
  private
    { Private declarations }
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
  FraModuleGoodClass: TFraModuleGoodClass;

implementation
uses
  uDmClient;
{$R *.dfm}

{ TFraModuleGoodClass }

procedure TFraModuleGoodClass.CloseData;
begin
  inherited;

end;

constructor TFraModuleGoodClass.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TFraModuleGoodClass.Destroy;
begin

  inherited;
end;

procedure TFraModuleGoodClass.GetData;
begin
  inherited;
  FireQGoodClass.DataInfo.Connection:=DmClient.FireConMain;
  if not FireQGoodClass.OpenData then
  begin
    ShowMessage('商品分类数据集打开失败'+FireQGoodClass.DataInfo.ErrMsg);
  end;
end;

procedure TFraModuleGoodClass.InitModuleLayout;
begin
  inherited;

end;

procedure TFraModuleGoodClass.InitShortCut;
begin
  inherited;

end;

procedure TFraModuleGoodClass.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TFraModuleGoodClass.RemoveShortCut;
begin
  inherited;

end;

procedure TFraModuleGoodClass.SetDetailPrivilege;
begin
  inherited;

end;
initialization
  RegisterClass(TFraModuleGoodClass);
end.
