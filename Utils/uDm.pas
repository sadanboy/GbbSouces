unit uDm;

interface

uses
  System.SysUtils, System.Classes, cxLookAndFeelPainters, cxGraphics,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, acAlphaHints, Vcl.Controls, acAlphaImageList,
  cxLookAndFeels, dxSkinsForm, dxAlertWindow, System.ImageList, Vcl.ImgList,
  cxImageList, cxClasses, cxContainer, cxEdit, dxSkiniMaginary,
  dxSkinOffice2019Colorful, dxSkinsDefaultPainters;

type
  TDm = class(TDataModule)
    Label_BlueStyleController: TcxEditStyleController;
    cxImageList1: TcxImageList;
    Tip: TdxAlertWindowManager;
    dxSkin: TdxSkinController;
    sAlphaImageList2: TsAlphaImageList;
    sAlphaImageList1: TsAlphaImageList;
    MyHint: TsAlphaHints;
    Img16: TcxImageList;
    Edit_onlyReadStyleController: TcxEditStyleController;
    Img24: TcxImageList;
    Label_GlayStyleController: TcxEditStyleController;
    Edit_StyleController: TcxEditStyleController;
    img24_Bar: TcxImageList;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;
  MyPath: string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  MyPath:=ExtractFileDir(ParamStr(0))+'\';
end;

end.
