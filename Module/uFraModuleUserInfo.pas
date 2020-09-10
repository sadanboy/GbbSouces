unit uFraModuleUserInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufraModuleBaseList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireHelper, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDataSet,
  System.ImageList, Vcl.ImgList, cxImageList, cxClasses, dxBar, System.Actions,
  Vcl.ActnList, cxPropertiesStore, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, scControls, scGPControls, cxTextEdit, cxContainer,
  dxSkinsDefaultPainters;

type
  TFraModuleUserInfo = class(TFraModuleBaseList)
    FireQUser: TFireQuery;
    GridViewListUserName: TcxGridDBColumn;
    GridViewListPassWord: TcxGridDBColumn;
    GridViewListDianPuName: TcxGridDBColumn;
    GridViewListPower: TcxGridDBColumn;
    GridViewListState: TcxGridDBColumn;
    btnAdd: TscGPButton;
    btnEdit: TscGPButton;
    btnDeltete: TscGPButton;
    btnFind: TscGPButton;
    btnExprot: TscGPButton;
    scGPButton6: TscGPButton;
    actAdd: TAction;
    FireQUserUserName: TStringField;
    FireQUserPassword: TStringField;
    FireQUserDianPuBM: TSmallintField;
    FireQUserPower: TSmallintField;
    FireQUserState: TSmallintField;
    FireQUserUserID: TStringField;
    FireQUserBZ: TStringField;
    actEdit: TAction;
    GridViewListBZ: TcxGridDBColumn;
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
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
  FraModuleUserInfo: TFraModuleUserInfo;

implementation
uses
  uDmClient,ufrmEditUserInfo,uWinPublic;
{$R *.dfm}

{ TFraModuleUserInfo }

procedure TFraModuleUserInfo.actAddExecute(Sender: TObject);
var
  AForm:TfrmEditUserInfo;
begin
  AForm:=TfrmEditUserInfo.Create(Self);
  try
    with AForm do
    begin
      Caption:='用户管理[增加]';
      Acd:=FireQUser;
      Ads:=DS1;
      if FireQUser.Active then
      begin
        FireQUser.DataInfo.TableName:='tab_User';
        FireQUser.DataInfo.PrimaryKey:='UserID';
        FireQUser.Append;
        FireQUser.FieldByName('UserID').AsString:= CreateSortID;
        FireQUser.FieldByName('State').AsInteger:=1;
        ShowModal;
        if ModalResult=mrOk then
        begin
          if not FireQUser.SaveData then
          begin
            ShowMessage('数据保存失败'+FireQUser.DataInfo.ErrMsg);
          end;
        end;
      end;
    end;
  finally
    FreeAndNil(AForm);
  end;
end;

procedure TFraModuleUserInfo.actEditExecute(Sender: TObject);
var
  AForm:TfrmEditUserInfo;
begin
  AForm:=TfrmEditUserInfo.Create(Self);
  try
    with AForm do
    begin
      Caption:='用户管理[编辑]';
      Acd:=FireQUser;
      Ads:=DS1;
      if FireQUser.Active then
      begin
        FireQUser.DataInfo.TableName:='tab_User';
        FireQUser.DataInfo.PrimaryKey:='UserID';
        FireQUser.Edit;
        //FireQUser.FieldByName('UserID').AsString:= CreateSortID;
        ShowModal;
        if ModalResult=mrOk then
        begin
          if not FireQUser.SaveData then
          begin
            ShowMessage('数据保存失败'+FireQUser.DataInfo.ErrMsg);
          end;
        end;
      end;
    end;
  finally
    FreeAndNil(AForm);
  end;

end;

procedure TFraModuleUserInfo.CloseData;
begin
  inherited;

end;

constructor TFraModuleUserInfo.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TFraModuleUserInfo.Destroy;
begin

  inherited;
end;

procedure TFraModuleUserInfo.GetData;
begin
  inherited;
  if not FireQUser.OpenData then
  ShowMessage('用户数据打开失败！'+FireQUser.DataInfo.ErrMsg);

end;

procedure TFraModuleUserInfo.InitModuleLayout;
begin
  inherited;

end;

procedure TFraModuleUserInfo.InitShortCut;
begin
  inherited;

end;

procedure TFraModuleUserInfo.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TFraModuleUserInfo.RemoveShortCut;
begin
  inherited;

end;

procedure TFraModuleUserInfo.SetDetailPrivilege;
begin
  inherited;

end;
initialization
  RegisterClass(TFraModuleUserInfo);
end.
