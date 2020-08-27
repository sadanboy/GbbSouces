unit uLogin;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, scGPControls, dxImageSlider, scControls,
  Vcl.Mask, scGPExtControls, dxGDIPlusClasses, Vcl.ExtCtrls, dxBarBuiltInMenu,
  cxPC, cxClasses, Vcl.ComCtrls, scExtControls, scAdvancedPager, Vcl.ActnMan,
  Vcl.ActnMenus, System.Actions, Vcl.ActnList, scStyledForm, dxSkinMetropolis,
  dxSkinOffice2016Dark, dxSkinStardust, dxSkinVisualStudio2013Dark,
  System.ImageList, Vcl.ImgList, cxImageList, Vcl.StdCtrls, dxSkinBlueprint,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkinMetropolisDark, dxSkinTheBezier,
  dxSkinOffice2019Colorful, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireHelper, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDataSet,uDmClient, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TFrmLogin = class(TForm)
    dxImageSlider1: TdxImageSlider;
    scGPPanel3: TscGPPanel;
    scGPPanel2: TscGPPanel;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    cxImageCollection1: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    cxImageCollection1Item3: TcxImageCollectionItem;
    scAdvancedPager1: TscAdvancedPager;
    scAdvancedPagerPage2: TscAdvancedPagerPage;
    scAdvancedPagerPage1: TscAdvancedPagerPage;
    scGPPanel1: TscGPPanel;
    Image1: TImage;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    edtUserBM: TscGPEdit;
    edtPassWord2: TscGPEdit;
    btnOk: TscGPButton;
    scGPLabel3: TscGPLabel;
    scGPLabel4: TscGPLabel;
    scGPCheckBox1: TscGPCheckBox;
    scGPLabel5: TscGPLabel;
    scGPLabel6: TscGPLabel;
    scGPPanel4: TscGPPanel;
    scGPLabel7: TscGPLabel;
    scGPLabel8: TscGPLabel;
    scGPEdit3: TscGPEdit;
    scGPEdit4: TscGPEdit;
    scGPButton2: TscGPButton;
    scGPEdit5: TscGPEdit;
    cxImageList1: TcxImageList;
    scGPLabel9: TscGPLabel;
    Timer1: TTimer;
    scStyledForm1: TscStyledForm;
    scGPGlyphButton2: TscGPGlyphButton;
    scGalleryMenu1: TscGalleryMenu;
    edtQiYeBm: TscGPEdit;
    FireQUserInfo: TFireQuery;
    edtPassWord: TscGPPasswordEdit;
    edtDianPuBM: TcxImageComboBox;
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure scGPLabel4Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure scGPGlyphButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function Login:Boolean;
var
  FrmLogin: TFrmLogin;
  //UserName:string;
  //PassWord:string;
implementation

{$R *.dfm}
uses
  uWinPublic, uDm;
function Login:Boolean;
var
  Frm:TFrmLogin;
begin
  Frm := TFrmLogin.Create(Application);
  //
end;
procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  scAdvancedPager1.TabHeight := 0;
end;

procedure TFrmLogin.btnOkClick(Sender: TObject);
const
  SQLStr:string='select * from tab_User where DianPuBM = %s and UserName = %s and Password = %s ';
var
  vSql:string;
  UserName,Password:string;
  DianPu:SmallInt;
  powerInt:Integer;
begin
  UserName:= Trim(edtUserBM.Text);
  DianPu:=edtDianPuBM.ItemIndex;
  Password:=Trim(edtPassWord.Text);
//  if DianPu.IsEmpty then
//  begin
//    ShowMessage('亲，店铺名不能为空!');
//    edtQiYeBm.SetFocus;
//    Exit;
//  end;
  if UserName.IsEmpty then
  begin
    ShowMessage('亲，用户名不能为空!');
    edtUserBM.SetFocus;
    Exit;
  end;
  vSql:=Format(SQLStr,[DianPu.ToString,UserName.QuotedString,Password.QuotedString]);
  FireQUserInfo.Close;
  FireQUserInfo.DataInfo.SQL.Clear;
  FireQUserInfo.DataInfo.SQL.Text:=vSql;
  FireQUserInfo.OpenData;
  if FireQUserInfo.RecordCount=0 then
  begin
    ShowMessage('亲，用户名或密码错误');
    exit;
  end ;
  if FireQUserInfo.FieldByName('State').AsInteger=0 then
  begin
    ShowMessage('对不起，你的账号已经被禁用了，如有疑问请联系管理员！');
    exit;
  end;

  powerInt:=FireQUserInfo.FieldByName('Power').AsInteger;
  AppInfo.UserName:= edtUserbm.text;
  AppInfo.DianPU:=edtDianPuBM.ItemIndex;
  AppInfo.DianPuName:=edtDianPuBM.Text;
  AppInfo.powerint:=powerint;
  ModalResult := mrok;
end;

procedure TFrmLogin.scGPButton2Click(Sender: TObject);
begin
  scAdvancedPager1.ActivePage := scAdvancedPagerPage1;
end;

procedure TFrmLogin.scGPGlyphButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmLogin.scGPGlyphButton3Click(Sender: TObject);
begin
  Application.MessageBox('QQ16643506制作，官网www.xuexidashi.vip', '提示', MB_OK + MB_ICONINFORMATION + MB_TOPMOST);
end;

procedure TFrmLogin.scGPLabel4Click(Sender: TObject);
begin
  scAdvancedPager1.ActivePage := scAdvancedPagerPage2;
end;

procedure TFrmLogin.Timer1Timer(Sender: TObject);
begin
  if dxImageSlider1.CanGoToNextImage then
    dxImageSlider1.GoToNextImage
  else
    dxImageSlider1.GoToImage(0);
end;

end.


