unit ufrmEditBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinDarkSide, dxSkinDevExpressStyle,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxLabel, Data.DB, cxMaskEdit, cxDropDownEdit,
  cxDBLookupComboBox, cxClasses, cxImageComboBox, cxDBExtLookupComboBox,
  cxCheckBox, dxSkinMetropolis, dxSkinOffice2016Dark, dxSkinStardust,
  dxSkinVisualStudio2013Dark, dxSkinBlueprint, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDevExpressDarkStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinMetropolisDark, dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfrmEditBase = class(TForm)
    P1: TPanel;
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    btnOKAndAppend: TcxButton;
    btnOk: TcxButton;
    btnDevInfo: TcxButton;
    procedure btnOKAndAppendClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDevInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    Acd: TDataSet;
    Ads: TDataSource;
    TableName: string;
    DevInfo: string;
    { Public declarations }
    procedure SetDataSource; virtual;
    procedure SetControlOnlyRead;
    procedure SetDs(myc: TCustomControl; ds: TDataSource);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
  end;

var
  frmEditBase: TfrmEditBase;

implementation

{$R *.dfm}

uses
  uDm, uWinPublic;

procedure TfrmEditBase.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
var
  i: Integer;
begin

end;

procedure TfrmEditBase.SetDs(myc: TCustomControl; ds: TDataSource);
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
      if (Controls[i] is TcxDBSpinEdit) then
      begin
        TcxDBSpinEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;
      if (Controls[i] is TcxDBCurrencyEdit) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBCurrencyEdit) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBCheckBox) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBLookupComboBox) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBExtLookupComboBox) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBImageComboBox) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;
      if (Controls[i] is TcxDBDateEdit) then
      begin
        TcxDBDateEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

    end;
  end;

end;

procedure TfrmEditBase.btnDevInfoClick(Sender: TObject);
begin
  TMyMsgBox.info(DevInfo);
end;

procedure TfrmEditBase.btnOKAndAppendClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmEditBase.btnOkClick(Sender: TObject);
begin

  ModalResult := mrok;
end;

procedure TfrmEditBase.FormCreate(Sender: TObject);
begin
  DevInfo := '憨土豆工作室开发V1.0';
end;

procedure TfrmEditBase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  intTop, intLeft: Integer;
begin
  case Key of
    VK_RETURN:
      begin
        if Shift = [ssShift] then
          Perform(WM_NEXTDLGCTL, 1, 0)
        else
          Perform(WM_NEXTDLGCTL, 0, 0);
      end;
  end;


  // if Shift = [ssCtrl] then
  // begin
  // case Key of
  // VK_PRIOR:
  // DBNavigator1.BtnClick(nbFirst);
  // VK_NEXT:
  // DBNavigator1.BtnClick(nbLast);
  // VK_UP:
  // DBNavigator1.BtnClick(nbPrior);
  // VK_DOWN:
  // DBNavigator1.BtnClick(nbNext);
  // end;

end;

procedure TfrmEditBase.FormKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  // if key = #13 then
  // begin
  // i := ActiveControl.ComponentIndex + 1;
  // if (i = ComponentCount) then
  // i := 0;
  // TWinControl(Controls[i]).SetFocus;
  // end;

end;

procedure TfrmEditBase.SetControlOnlyRead;
begin

end;

procedure TfrmEditBase.SetDataSource;
begin

end;

end.

