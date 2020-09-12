unit uDmClient;

interface

uses
  System.SysUtils, System.Classes, FireHelper, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDataSet, FireClientConnect;

type
  FormEditState = (fesEdit, fesAdd);
  TAppInfo =class
    private
      FUserName:string;
      FUserID: string;
      FDianPu:SmallInt;
      FDianPuName:string;
      FPowerInt: Integer;
    public
      property UserName:string read FuserName write FUserName;
      property UserID:string   read FUserID write FUserID;
      property DianPu:SmallInt   read FDianPu write FDianPu;
      property DianPuName:string  read FDianPuName write FDianPuName;
      property PowerInt:Integer read FPowerInt write FPowerInt;
  end;
  TDmClient = class(TDataModule)
    FireConMain: TFireConnection;
    FireQMain: TFireQuery;
    FireqGoods: TFireQuery;
    FireQViewGoods: TFireQuery;
    FireqGoodsID: TStringField;
    FireqGoodsMC: TStringField;
    FireqGoodsTM: TStringField;
    FireqGoodsFID: TStringField;
    FireqGoodsARTICLENUMBER: TStringField;
    FireqGoodsPINYINCODE: TStringField;
    FireQViewGoodsTYPEMC: TStringField;
    FireQViewGoodsMC: TStringField;
    FireQViewGoodsTM: TStringField;
    FireQViewGoodsARTICLENUMBER: TStringField;
    FireQViewGoodsPINYINCODE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function AppInfo:TAppInfo;
var
  DmClient: TDmClient;
  iAppInfo:TAppInfo;
implementation

{$R *.dfm}

function AppInfo:TAppInfo;
begin
  if iAppInfo=nil then
    iAppInfo:=TAppInfo.Create;
  Result:=iAppInfo;
end;
end.
