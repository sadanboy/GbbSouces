unit uFraModuleWHX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufraModuleBaseList, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, System.ImageList, Vcl.ImgList, cxImageList,
  cxClasses, dxBar, System.Actions, Vcl.ActnList, cxPropertiesStore,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireHelper, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDataSet;

type
  TFraModuleWHX = class(TFraModuleBaseList)
    FireQViewCustomerWHX: TFireQuery;
    FireQViewCustomerWHXCardNum: TStringField;
    FireQViewCustomerWHXName: TStringField;
    FireQViewCustomerWHXage: TStringField;
    FireQViewCustomerWHXIphone: TStringField;
    FireQViewCustomerWHXfuzeren: TStringField;
    FireQViewCustomerWHXShiyongzhouqi: TStringField;
    FireQViewCustomerWHXWchat: TSmallintField;
    FireQViewCustomerWHXRemark: TStringField;
    FireQViewCustomerWHXReturnVisitdate: TStringField;
    FireQViewCustomerWHXCreateDateTime: TStringField;
    FireQViewCustomerWHXCardNumId: TStringField;
    FireQViewCustomerWHXRecord: TStringField;
    FireQViewCustomerWHXShangPinXinXi: TStringField;
    FireQViewCustomerWHXmendian: TStringField;
    dsViewCustomerWHX: TDataSource;
    GridViewListCardNum: TcxGridDBColumn;
    GridViewListName: TcxGridDBColumn;
    GridViewListage: TcxGridDBColumn;
    GridViewListIphone: TcxGridDBColumn;
    GridViewListfuzeren: TcxGridDBColumn;
    GridViewListShiyongzhouqi: TcxGridDBColumn;
    GridViewListWchat: TcxGridDBColumn;
    GridViewListRemark: TcxGridDBColumn;
    GridViewListReturnVisitdate: TcxGridDBColumn;
    GridViewListCreateDateTime: TcxGridDBColumn;
    GridViewListRecord: TcxGridDBColumn;
    GridViewListShangPinXinXi: TcxGridDBColumn;
    GridViewListmendian: TcxGridDBColumn;
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
  FraModuleWHX: TFraModuleWHX;

implementation
uses
  uDmClient;
{$R *.dfm}

{ TFraModuleWHX }

procedure TFraModuleWHX.CloseData;
begin
  inherited;

end;

constructor TFraModuleWHX.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TFraModuleWHX.Destroy;
begin

  inherited;
end;

procedure TFraModuleWHX.GetData;
begin
  inherited;
  if not FireQViewCustomerWHX.OpenData then
  begin
    ShowMessage('亲，数据集打开错误');
  end;
end;

procedure TFraModuleWHX.InitModuleLayout;
begin
  inherited;

end;

procedure TFraModuleWHX.InitShortCut;
begin
  inherited;

end;

procedure TFraModuleWHX.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TFraModuleWHX.RemoveShortCut;
begin
  inherited;

end;

procedure TFraModuleWHX.SetDetailPrivilege;
begin
  inherited;

end;
initialization
  RegisterClass(TFraModuleWHX);
end.
