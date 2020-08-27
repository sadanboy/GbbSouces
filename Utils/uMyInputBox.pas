unit uMyInputBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxLabel, Vcl.Menus, cxButtons,
  Vcl.ExtCtrls, cxTextEdit, dxSkinOffice2013White, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinDarkSide, dxSkinDevExpressStyle, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinMetropolis,
  dxSkinOffice2016Dark, dxSkinStardust, dxSkinVisualStudio2013Dark, Vcl.StdCtrls,
  dxSkinBlueprint, dxSkinCoffee, dxSkinDarkRoom, dxSkinDevExpressDarkStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkinMetropolisDark,
  dxSkinTheBezier;

type
  TfrmMyInputBox = class(TForm)
    lblHint: TcxLabel;
    txtEdtContent: TcxTextEdit;
    bvl1: TBevel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMyInputBox: TfrmMyInputBox;

implementation

{$R *.dfm}
// uses uDmClient;

procedure TfrmMyInputBox.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmMyInputBox.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmMyInputBox.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter;
  txtEdtContent.Text := '';
  lblHint.Caption := '';
  Caption := ' ‰»Î¥∞';
end;

procedure TfrmMyInputBox.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnOK.Click;
    Exit;
  end;

  if Key = #27 then
  begin
    Key := #0;
    btnCancel.Click;
  end;
end;

procedure TfrmMyInputBox.FormShow(Sender: TObject);
begin
  txtEdtContent.SetFocus;
end;

end.

