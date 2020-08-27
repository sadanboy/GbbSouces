unit ufraModuleChart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFraModuleBase, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxClasses, dxBar,
  System.Actions, Vcl.ActnList, cxPropertiesStore, cxContainer, cxEdit,
  VclTee.TeeGDIPlus, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireHelper, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDataSet, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, uDmClient,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.WinXCtrls, scControls, scGPControls;

type
  TfraModuleChart = class(TfraModuleBase)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    edtComYear: TcxComboBox;
    edtComMenDian: TcxComboBox;
    edtComGoodsClass: TcxComboBox;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    FireQYearChart: TFireQuery;
    FireQTemp: TFireQuery;
    btnCreateChart: TcxButton;
    actCreateChart: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Panel2: TPanel;
    DBChart2: TDBChart;
    Series2: TPieSeries;
    FireQPieChart: TFireQuery;
    edtComPINLEI: TcxComboBox;
    edtComNIUNAI: TcxComboBox;
    edtComYANGNAI: TcxComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtComZHINIAOKU: TcxComboBox;
    Label7: TLabel;
    edtComPINPAI: TcxComboBox;
    Label8: TLabel;
    edtPINLEI: TcxComboBox;
    edtPINPAI: TcxComboBox;
    Label9: TLabel;
    edtZHINIAOKU: TcxComboBox;
    Label10: TLabel;
    edtYANGNAI: TcxComboBox;
    Label11: TLabel;
    edtNIUNAI: TcxComboBox;
    Label12: TLabel;
    Label13: TLabel;
    btnPieCreate: TcxButton;
    edtGoodsClass: TcxComboBox;
    Label14: TLabel;
    edtYear: TcxComboBox;
    Label16: TLabel;
    actCreatePie: TAction;
    procedure DBChart1GetAxisLabel(Sender: TChartAxis; Series: TChartSeries;
      ValueIndex: Integer; var LabelText: string);
    procedure Series1GetMarkText(Sender: TChartSeries; ValueIndex: Integer;
      var MarkText: string);
    procedure actCreateChartExecute(Sender: TObject);
    procedure edtComGoodsClassPropertiesChange(Sender: TObject);
    procedure edtComPINLEIPropertiesChange(Sender: TObject);
    procedure edtComNIUNAIPropertiesChange(Sender: TObject);
    procedure edtComYANGNAIPropertiesChange(Sender: TObject);
    procedure edtComZHINIAOKUPropertiesChange(Sender: TObject);
    procedure edtComPINPAIPropertiesChange(Sender: TObject);
    procedure btnPieCreateClick(Sender: TObject);
    procedure actCreatePieExecute(Sender: TObject);
  private
    { Private declarations }
    procedure InitYearCom;
    procedure InitStoreCom;
    procedure InitGoodsClassCom;
    procedure InitedtComPINLEI;
    procedure InitedtComNIUNAI;
    procedure InitedtComYANGNAI;
    procedure InitedtComZHINIAOKU ;
    procedure InitedtComPINPAI;
  public
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
  fraModuleChart: TfraModuleChart;

implementation


{$R *.dfm}

{ TfraModuleChart }

procedure TfraModuleChart.actCreateChartExecute(Sender: TObject);
const
  StrSql:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
  StrSql1:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE ' + #13#10 +
                     '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s '+ #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
  StrSql2:string = 'SELECT ' + #13#10 +
                  '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE [门店] = %s	AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4) = %s' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
  StrSql3:string = 'SELECT ' + #13#10 +
                  '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE ([商品分类]=%s ) AND ([门店] = %s)	AND (LEFT(CONVERT(VARCHAR(10), [日期], 120), 4) = %s )' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
  StrSql4:string = 'SELECT ' + #13#10 +
                  '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE ([商品分类]= %s ) AND ([门店] = %s)	' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
   StrSql5:string = 'SELECT ' + #13#10 +
                  '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE ([商品分类]= %s ) AND (LEFT(CONVERT(VARCHAR(10), [日期], 120), 4) = %s )' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
   StrSql6:string = 'SELECT ' + #13#10 +
                  '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		  SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE ([门店]=%s )' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
   StrSql7:string = 'SELECT ' + #13#10 +
                  '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM' + #13#10 +
                  '    dbo.ViewSale ' + #13#10 +
                  'WHERE ([商品分类]= %s )' + #13#10 +
                  'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
var
  vSql:string;
  SqlYear,SqlMenDian,SqlGoodsClass:string;
begin
  inherited;
  SqlYear:=Trim(edtComYear.Text);
  SqlMenDian:=Trim(edtComMenDian.Text);
  SqlGoodsClass:=Trim(edtComGoodsClass.Text);
  //无条件
  if (edtComYear.ItemIndex=0) and (edtComMenDian.ItemIndex=0) and (edtComGoodsClass.ItemIndex=0) then
    vSql:=StrSql;
  //年
  if (edtComYear.ItemIndex<>0) and (edtComMenDian.ItemIndex=0) and (edtComGoodsClass.ItemIndex=0) then
    vSql:=Format(StrSql1,[SqlYear.QuotedString]);
  //年/门店
  if (edtComYear.ItemIndex<>0) and (edtComMenDian.ItemIndex<>0) and (edtComGoodsClass.ItemIndex=0) then
    vSql:=Format(StrSql2,[SqlMenDian.QuotedString,SqlYear.QuotedString]);
  //年/门店/分类
  if (edtComYear.ItemIndex<>0) and (edtComMenDian.ItemIndex<>0) and (edtComGoodsClass.ItemIndex<>0) then
    vSql:=Format(StrSql3,[SqlGoodsClass.QuotedString,SqlMenDian.QuotedString,SqlYear.QuotedString]);
  //年/分类
  if (edtComYear.ItemIndex<>0) and (edtComMenDian.ItemIndex=0) and (edtComGoodsClass.ItemIndex<>0) then
    vSql:=Format(StrSql5,[SqlGoodsClass.QuotedString,SqlYear.QuotedString]);
  // 门店
  if (edtComYear.ItemIndex=0) and (edtComMenDian.ItemIndex<>0) and (edtComGoodsClass.ItemIndex=0) then
    vSql:=Format(StrSql6,[SqlMenDian.QuotedString]);
  // 分类/门店
  if (edtComYear.ItemIndex=0) and (edtComMenDian.ItemIndex<>0) and (edtComGoodsClass.ItemIndex<>0) then
    vSql:=Format(StrSql4,[SqlGoodsClass.QuotedString,SqlMenDian.QuotedString]);
  // 分类
  if (edtComYear.ItemIndex=0) and (edtComMenDian.ItemIndex=0) and (edtComGoodsClass.ItemIndex<>0) then
    vSql:=Format(StrSql7,[SqlGoodsClass.QuotedString]);
  FireQYearChart.Close;
  FireQYearChart.DataInfo.SQL.Clear;
  FireQYearChart.DataInfo.SQL.Text:=vSql;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('数据集打开失败');
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年份%s门店%s商品销售统计',[edtComYear.Text,edtComMenDian.Text,edtComGoodsClass.Text]);
end;

procedure TfraModuleChart.CloseData;
begin
  inherited;

end;

constructor TfraModuleChart.Create(AOwner: TComponent);
begin
  inherited;
//  scGPPanel1.BringToFront;
//  //ActivityIndicator1.BringToFront;
//  ActivityIndicator1.Animate:=True;
//  ActivityIndicator1.Enabled:=True;
  if AppInfo.DianPu<>0 then
  begin
    cxTabSheet2.Enabled:=False;
    cxTabSheet2.Visible:=False;
  end;
  FireQTemp.DataInfo.Connection:=DmClient.FireConMain;
  FireQTemp.DataInfo.DatabaseCode:='GBB';
  cxPageControl1.ActivePageIndex:=0;
end;

procedure TfraModuleChart.actCreatePieExecute(Sender: TObject);
const
  SqlStr:string='select t1.[年], t1.[门店], t1.实收金额/t2.总实收金额 as [占比] from' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], [门店],sum([实收金额]) [实收金额] ' + #13#10 +
                '	from [dbo].[ViewSale] t1' + #13#10 +
                '               WHERE year([日期])= %s ' + #13#10 +
                '	group by year([日期]), [门店]' + #13#10 +
                ') t1' + #13#10 +
                'inner join ' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], sum([实收金额]) [总实收金额] from [dbo].[ViewSale]' + #13#10 +
                '                WHERE year([日期])=%s ' + #13#10 +
                '	group by year([日期])' + #13#10 +
                ') t2' + #13#10 +
                'on t1.[年] = t2.[年]' ;
  SqlStr1:string=
                'select t1.[年], t1.[门店], t1.实收金额/t2.总实收金额 as [占比] from' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], [门店], sum([实收金额]) [实收金额] ' + #13#10 +
                '	from [dbo].[ViewSale] t1' + #13#10 +
                '               WHERE year([日期])= %s AND ([品类]= %s OR [牛奶品牌] = %s OR [羊奶品牌]= %s or [纸尿裤]= %s OR [品牌]=%s )'  + #13#10 +
                '	group by year([日期]), [门店]' + #13#10 +
                ') t1' + #13#10 +
                'inner join ' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], sum([实收金额]) [总实收金额] from [dbo].[ViewSale]' + #13#10 +
                '                WHERE year([日期])= %s AND ([品类]= %s OR [牛奶品牌] = %s OR [羊奶品牌]= %s or [纸尿裤]= %s OR [品牌]=%s )' + #13#10 +
                '	group by year([日期])' + #13#10 +
                ') t2' + #13#10 +
                'on t1.[年] = t2.[年]';
var
  vsql:string;
  tempstr:string;
  YearStr:string;
begin
  inherited;
  YearStr:=edtYear.Text;
  tempstr:=(Sender as TcxComboBox).Text;

  if tempstr<>'全部' then
     vsql:=Format(SqlStr1,[YearStr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,
                  YearStr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,tempstr.QuotedString,tempstr.QuotedString])
  else
     vsql:=Format(SqlStr,[YearStr.QuotedString,YearStr.QuotedString]);
  FireQPieChart.Close;
  FireQPieChart.DataInfo.SQL.Clear;
  FireQPieChart.DataInfo.SQL.Text:=vsql;
  if not FireQPieChart.OpenData then
  begin
    ShowMessage('亲，打开数据集失败了……haha'+FireQPieChart.DataInfo.ErrMsg);
  end;
end;

procedure TfraModuleChart.btnPieCreateClick(Sender: TObject);
const
  SqlStr:string=
    'select t1.[年], t1.门店, t1.实收金额/t2.总实收金额 as [占比] from' + #13#10 +
    '(' + #13#10 +
    '	select year([日期]) [年],[门店], sum([实收金额]) [实收金额] ' + #13#10 +
    '	from [dbo].[ViewSale] t1' + #13#10 +
    '               WHERE year([日期])= %s ' + #13#10 +
    '	group by year([日期]), [门店]' + #13#10 +
    ') t1' + #13#10 +
    'inner join ' + #13#10 +
    '(' + #13#10 +
    '	select year([日期]) [年], sum([实收金额]) [总实收金额] from [dbo].[ViewSale]' + #13#10 +
    '                WHERE year([日期])=%s ' + #13#10 +
    '	group by year([日期])' + #13#10 +
    ') t2' + #13#10 +
    'on t1.[年] = t2.[年]' ;
  SqlStr1:string=
                'select t1.[年], t1.门店, t1.实收金额/t2.总实收金额 as [占比] from' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], [门店], sum([实收金额]) [实收金额] ' + #13#10 +
                '	from [dbo].[ViewSale] t1' + #13#10 +
                '               WHERE year([日期])=%s AND  [商品分类]= %s' + #13#10 +
                '	group by year([日期]), [门店]' + #13#10 +
                ') t1' + #13#10 +
                'inner join ' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], sum([实收金额]) [总实收金额] from [dbo].[ViewSale]' + #13#10 +
                '                WHERE year([日期])=%s AND  [商品分类]=%s ' + #13#10 +
                '	group by year([日期])' + #13#10 +
                ') t2' + #13#10 +
                'on t1.[年] = t2.[年]';
var
  yearStr,fenlei,vsql:string;
begin
  inherited;
  yearStr:=edtYear.Text;
  fenlei:=edtGoodsClass.Text;
  if fenlei='全部' then
     vsql:=Format(SqlStr,[yearStr.QuotedString,yearStr.QuotedString])
  else
     vsql:=Format(SqlStr1,[yearStr.QuotedString,fenlei.QuotedString,yearStr.QuotedString,fenlei.QuotedString]);
  FireQPieChart.Close;
  FireQPieChart.DataInfo.SQL.Clear;
  FireQPieChart.DataInfo.SQL.Text:=vsql;
  if not FireQPieChart.OpenData then
  begin
    ShowMessage('数据集打开失败，原因：'+FireQPieChart.DataInfo.ErrMsg);
  end;
  DBChart2.Title.Caption:=Format('乖宝贝%s年度%s商品销售占比统计',[edtYear.Text,edtGoodsClass.text]);
end;

procedure TfraModuleChart.DBChart1GetAxisLabel(Sender: TChartAxis;
  Series: TChartSeries; ValueIndex: Integer; var LabelText: string);
begin
  inherited;
  LabelText:=LabelText+'月';
end;

destructor TfraModuleChart.Destroy;
begin

  inherited;
end;

procedure TfraModuleChart.edtComGoodsClassPropertiesChange(Sender: TObject);
begin
  inherited;
//  if edtComGoodsClass.Text='奶粉' then
//     edtComNIYNAI.Enabled:=True
//  else
//     edtComNIYNAI.Enabled:=False;
end;

{牛奶粉品牌变换}
procedure TfraModuleChart.edtComNIUNAIPropertiesChange(Sender: TObject);
const
  StrSqlbase:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM dbo.ViewSale ';
  StrSql:string = 'WHERE [牛奶品牌]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s AND [门店]= %s ';
  StrSql1:string ='WHERE [牛奶品牌]= %s AND [门店] = %s ';
  StrSql2:string ='WHERE [牛奶品牌]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql3:string ='WHERE [门店] = %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql4:string ='WHERE [牛奶品牌]= %s ';
  StrSql5:string ='WHERE LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql6:string ='WHERE [门店]= %s ';
  StrSqlGROUPStr:string= 'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
var
  vsql:string;
  pinlei,YearStr,mendianstr:string;
begin
  inherited;
  YearStr:=edtComYear.Text;
  pinlei:=edtComNIUNAI.Text;
  mendianstr:=edtComMenDian.Text;
  if (YearStr='全部') and (pinlei='全部')and(mendianstr='全部') then
  begin
    vsql:=StrSqlbase+StrSqlGROUPStr;
  end;
  if (YearStr='全部')and(mendianstr='全部') and(pinlei <>'全部') then
    vsql:=StrSqlbase+Format(StrSql4,[pinlei.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql2,[pinlei.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql5,[YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql3,[mendianstr.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql6,[mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql1,[pinlei.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql,[pinlei.QuotedString,YearStr.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  FireQYearChart.DataInfo.SQL.Text:=vsql;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('品类数据集打开失败');
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年%s门店%s牛奶粉销售统计',[YearStr,mendianstr,pinlei]);
end;

{品类变化时，要根据商品分类中的进行更改，比如奶粉}
procedure TfraModuleChart.edtComPINLEIPropertiesChange(Sender: TObject);
const
  StrSqlbase:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM dbo.ViewSale ';
  StrSql:string = 'WHERE [品类]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s AND [门店]= %s ';
  StrSql1:string ='WHERE [品类]= %s AND [门店] = %s ';
  StrSql2:string ='WHERE [品类]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql3:string ='WHERE [门店] = %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql4:string ='WHERE [品类]= %s ';
  StrSql5:string ='WHERE LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql6:string ='WHERE [门店]= %s ';
  StrSqlGROUPStr:string= 'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
var
  vsql:string;
  pinlei,YearStr,mendianstr:string;
begin
  inherited;
  YearStr:=edtComYear.Text;
  pinlei:=edtComPINLEI.Text;
  mendianstr:=edtComMenDian.Text;
  if (YearStr='全部') and (pinlei='全部')and(mendianstr='全部') then
  begin
    vsql:=StrSqlbase+StrSqlGROUPStr;
  end;
  if (YearStr='全部')and(mendianstr='全部') and(pinlei <>'全部') then
    vsql:=StrSqlbase+Format(StrSql4,[pinlei.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql2,[pinlei.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql5,[YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql3,[mendianstr.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql6,[mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql1,[pinlei.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql,[pinlei.QuotedString,YearStr.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  FireQYearChart.DataInfo.SQL.Text:=vsql;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('品类数据集打开失败');
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年度%s门店%s品类销售统计',[YearStr,mendianstr,pinlei]);
end;

procedure TfraModuleChart.edtComPINPAIPropertiesChange(Sender: TObject);
const
  StrSqlbase:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM dbo.ViewSale ';
  StrSql:string = 'WHERE [品牌]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s AND [门店]= %s ';
  StrSql1:string ='WHERE [品牌]= %s AND [门店] = %s ';
  StrSql2:string ='WHERE [品牌]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql3:string ='WHERE [门店] = %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql4:string ='WHERE [品牌]= %s ';
  StrSql5:string ='WHERE LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql6:string ='WHERE [门店]= %s ';
  StrSqlGROUPStr:string= 'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
var
  vsql:string;
  pinlei,YearStr,mendianstr:string;
begin
  inherited;
  YearStr:=edtComYear.Text;
  pinlei:=edtComPINPAI.Text;
  mendianstr:=edtComMenDian.Text;
  if (YearStr='全部') and (pinlei='全部')and(mendianstr='全部') then
  begin
    vsql:=StrSqlbase+StrSqlGROUPStr;
  end;
  if (YearStr='全部')and(mendianstr='全部') and(pinlei <>'全部') then
    vsql:=StrSqlbase+Format(StrSql4,[pinlei.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql2,[pinlei.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql5,[YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql3,[mendianstr.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql6,[mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql1,[pinlei.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql,[pinlei.QuotedString,YearStr.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  FireQYearChart.DataInfo.SQL.Text:=vsql;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('品类数据集打开失败');
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年度%s门店%s品牌销售统计',[YearStr,mendianstr,pinlei]);
end;

procedure TfraModuleChart.edtComYANGNAIPropertiesChange(Sender: TObject);
const
  StrSqlbase:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM dbo.ViewSale ';
  StrSql:string = 'WHERE [羊奶品牌]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s AND [门店]= %s ';
  StrSql1:string ='WHERE [羊奶品牌]= %s AND [门店] = %s ';
  StrSql2:string ='WHERE [羊奶品牌]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql3:string ='WHERE [门店] = %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql4:string ='WHERE [羊奶品牌]= %s ';
  StrSql5:string ='WHERE LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql6:string ='WHERE [门店]= %s ';
  StrSqlGROUPStr:string= 'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
var
  vsql:string;
  pinlei,YearStr,mendianstr:string;
begin
  inherited;
  YearStr:=edtComYear.Text;
  pinlei:=edtComYANGNAI.Text;
  mendianstr:=edtComMenDian.Text;
  if (YearStr='全部') and (pinlei='全部')and(mendianstr='全部') then
  begin
    vsql:=StrSqlbase+StrSqlGROUPStr;
  end;
  if (YearStr='全部')and(mendianstr='全部') and(pinlei <>'全部') then
    vsql:=StrSqlbase+Format(StrSql4,[pinlei.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql2,[pinlei.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql5,[YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql3,[mendianstr.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql6,[mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql1,[pinlei.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql,[pinlei.QuotedString,YearStr.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  FireQYearChart.DataInfo.SQL.Text:=vsql;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('品类数据集打开失败');
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年度%s门店%s羊奶粉销售统计',[YearStr,mendianstr,pinlei]);
end;

procedure TfraModuleChart.edtComZHINIAOKUPropertiesChange(Sender: TObject);
const
  StrSqlbase:string = 'SELECT ' + #13#10 +
                  '    LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                  '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                  'FROM dbo.ViewSale ';
  StrSql:string = 'WHERE [纸尿裤]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s AND [门店]= %s ';
  StrSql1:string ='WHERE [纸尿裤]= %s AND [门店] = %s ';
  StrSql2:string ='WHERE [纸尿裤]= %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql3:string ='WHERE [门店] = %s AND LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql4:string ='WHERE [纸尿裤]= %s ';
  StrSql5:string ='WHERE LEFT(CONVERT(VARCHAR(10), [日期], 120), 4)= %s ';
  StrSql6:string ='WHERE [门店]= %s ';
  StrSqlGROUPStr:string= 'GROUP BY  ' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
var
  vsql:string;
  pinlei,YearStr,mendianstr:string;
begin
  inherited;
  YearStr:=edtComYear.Text;
  pinlei:=edtComZHINIAOKU.Text;
  mendianstr:=edtComMenDian.Text;
  if (YearStr='全部') and (pinlei='全部')and(mendianstr='全部') then
  begin
    vsql:=StrSqlbase+StrSqlGROUPStr;
  end;
  if (YearStr='全部')and(mendianstr='全部') and(pinlei <>'全部') then
    vsql:=StrSqlbase+Format(StrSql4,[pinlei.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql2,[pinlei.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr='全部') then
    vsql:=StrSqlbase+Format(StrSql5,[YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql3,[mendianstr.QuotedString,YearStr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei ='全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql6,[mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr='全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql1,[pinlei.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  if (YearStr<>'全部')and (pinlei <>'全部')and(mendianstr<>'全部') then
    vsql:=StrSqlbase+Format(StrSql,[pinlei.QuotedString,YearStr.QuotedString,mendianstr.QuotedString])+StrSqlGROUPStr;
  FireQYearChart.DataInfo.SQL.Text:=vsql;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('品类数据集打开失败');
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年度%s门店%s纸尿裤销售统计',[YearStr,mendianstr,pinlei]);
end;

procedure TfraModuleChart.GetData;
const
  sqlbarstr:string ='SELECT ' + #13#10 +
                    '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 7) AS [月份], ' + #13#10 +
                    '		 SUM([实收金额]) AS [销售统计]' + #13#10 +
                    'FROM' + #13#10 +
                    '   dbo.ViewSale ' + #13#10 +
                    'GROUP BY  ' + #13#10 +
                    '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)' + #13#10 +
                    'ORDER BY' + #13#10 +
                    '   LEFT(CONVERT(VARCHAR(10), [日期], 120), 7)';
  sqlPiestr:string='select t1.[年], t1.门店, t1.实收金额/t2.总实收金额 as [占比] from' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], [门店], sum([实收金额]) [实收金额] ' + #13#10 +
                '	from [dbo].[ViewSale] t1' + #13#10 +
                '               WHERE year([日期])= %s ' + #13#10 +
                '	group by year([日期]), [门店]' + #13#10 +
                ') t1' + #13#10 +
                'inner join ' + #13#10 +
                '(' + #13#10 +
                '	select year([日期]) [年], sum([实收金额]) [总实收金额] from [dbo].[ViewSale]' + #13#10 +
                '                WHERE year([日期])=%s ' + #13#10 +
                '	group by year([日期])' + #13#10 +
                ') t2' + #13#10 +
                'on t1.[年] = t2.[年]';
begin
  //inherited;
  FireQYearChart.Close;
  FireQYearChart.DataInfo.SQL.Clear;
  FireQYearChart.DataInfo.SQL.Text:=sqlbarstr;
  if not FireQYearChart.OpenData then
  begin
    ShowMessage('你查询的柱状图数据集打开失败'+FireQYearChart.DataInfo.ErrMsg);
  end;
  DBChart1.Title.Caption:=Format('乖宝贝%s年度%s门店%s商品销售统计',[edtComYear.Text,edtComMenDian.Text,edtComGoodsClass.Text]);

  FireQPieChart.Close;
  FireQPieChart.DataInfo.SQL.Clear;
  FireQPieChart.DataInfo.SQL.Text:=Format(sqlPiestr,[QuotedStr(edtYear.Text),QuotedStr(edtYear.Text)]);
  //ShowMessage(FireQPieChart.DataInfo.SQL.Text);
  if not FireQPieChart.OpenData then
  begin
    ShowMessage('你查询的饼状图数据集打开失败'+FireQPieChart.DataInfo.ErrMsg);
  end;
  DBChart2.Title.Caption:=Format('乖宝贝%s年度%s商品销售占比统计',[edtYear.Text,edtGoodsClass.text]);
//  scGPPanel1.Visible:=False;
//  scGPPanel1.Enabled:=False;
end;

procedure TfraModuleChart.InitModuleLayout;
begin
  inherited;
  InitYearCom;
  InitStoreCom;
  InitGoodsClassCom;
  InitedtComPINLEI;
  InitedtComNIUNAI;
  InitedtComYANGNAI;
  InitedtComZHINIAOKU ;
  InitedtComPINPAI;
end;

procedure TfraModuleChart.InitShortCut;
begin
  inherited;

end;

procedure TfraModuleChart.InitedtComNIUNAI;
//const
//  SqlStr:string ='SELECT DISTINCT ' + #13#10 +
//                    ' [牛奶品牌]' + #13#10 +
//                    'FROM' + #13#10 +
//                    '    dbo.[GoodsClass]'+
//                    'where [商品分类]= %s ';
var
  i:Integer;
  //vSql:string;
begin
  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    ' [牛奶品牌]' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[GoodsClass]';
  edtComNIUNAI.Properties.Items.Clear;
  edtComNIUNAI.Properties.Items.Add('全部');
  edtNIUNAI.Properties.Items.Clear;
  edtNIUNAI.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComNIUNAI.Properties.Items.Add(FireQTemp.FieldByName('牛奶品牌').AsString);
      edtNIUNAI.Properties.Items.Add(FireQTemp.FieldByName('牛奶品牌').AsString);
      FireQTemp.Next;
    end;
    edtComNIUNAI.ItemIndex:=0;
    edtNIUNAI.ItemIndex:=0;
  end;
end;

procedure TfraModuleChart.InitedtComPINLEI;
var
  i:Integer;
begin

  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    ' [品类]' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[GoodsClass]' ;
  edtComPINLEI.Properties.Items.Clear;
  edtComPINLEI.Properties.Items.Add('全部');
  edtPINLEI.Properties.Items.Clear;
  edtPINLEI.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComPINLEI.Properties.Items.Add(FireQTemp.FieldByName('品类').AsString);
      edtPINLEI.Properties.Items.Add(FireQTemp.FieldByName('品类').AsString);
      FireQTemp.Next;
    end;
    edtComPINLEI.ItemIndex:=0;
    edtPINLEI.ItemIndex:=0;
  end;
end;

procedure TfraModuleChart.InitedtComPINPAI;
var
  i:Integer;
begin

  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    ' [品牌]' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[GoodsClass]' ;
  edtComPINPAI.Properties.Items.Clear;
  edtComPINPAI.Properties.Items.Add('全部');
  edtPINPAI.Properties.Items.Clear;
  edtPINPAI.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComPINPAI.Properties.Items.Add(FireQTemp.FieldByName('品牌').AsString);
      edtPINPAI.Properties.Items.Add(FireQTemp.FieldByName('品牌').AsString);
      FireQTemp.Next;
    end;
    edtComPINPAI.ItemIndex:=0;
    edtPINPAI.ItemIndex:=0;
  end;
end;

procedure TfraModuleChart.InitedtComYANGNAI;
var
  i:Integer;
begin

  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    ' [羊奶品牌]' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[GoodsClass]' ;
  edtComYANGNAI.Properties.Items.Clear;
  edtComYANGNAI.Properties.Items.Add('全部');
  edtYANGNAI.Properties.Items.Clear;
  edtYANGNAI.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComYANGNAI.Properties.Items.Add(FireQTemp.FieldByName('羊奶品牌').AsString);
      edtYANGNAI.Properties.Items.Add(FireQTemp.FieldByName('羊奶品牌').AsString);
      FireQTemp.Next;
    end;
    edtComYANGNAI.ItemIndex:=0;
    edtYANGNAI.ItemIndex:=0;
  end;

end;

procedure TfraModuleChart.InitedtComZHINIAOKU;
var
  i:Integer;
begin

  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    ' [纸尿裤]' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[GoodsClass]' ;
  edtComZHINIAOKU.Properties.Items.Clear;
  edtComZHINIAOKU.Properties.Items.Add('全部');
  edtZHINIAOKU.Properties.Items.Clear;
  edtZHINIAOKU.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComZHINIAOKU.Properties.Items.Add(FireQTemp.FieldByName('纸尿裤').AsString);
      edtZHINIAOKU.Properties.Items.Add(FireQTemp.FieldByName('纸尿裤').AsString);
      FireQTemp.Next;
    end;
    edtComZHINIAOKU.ItemIndex:=0;
    edtZHINIAOKU.ItemIndex:=0;
  end;
end;

procedure TfraModuleChart.InitGoodsClassCom;
var
  i:Integer;
begin

  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    ' [商品分类]' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[GoodsClass]' ;
  edtComGoodsClass.Properties.Items.Clear;
  edtComGoodsClass.Properties.Items.Add('全部');
  edtGoodsClass.Properties.Items.Clear;
  edtGoodsClass.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComGoodsClass.Properties.Items.Add(FireQTemp.FieldByName('商品分类').AsString);
      edtGoodsClass.Properties.Items.Add(FireQTemp.FieldByName('商品分类').AsString);
      FireQTemp.Next;
    end;
    edtComGoodsClass.ItemIndex:=0;
    edtGoodsClass.ItemIndex:=0;
  end;
end;


procedure TfraModuleChart.InitStoreCom;
const
  SqlStr = 'SELECT DISTINCT [门店] FROM dbo.[销售单据明细] WHERE 1=1 ' ;
var
  vSql:string;
  i:Integer;
begin
  if AppInfo.DianPu<>0 then
  begin
    edtComMenDian.Properties.Items.Clear;
    vSql:=SqlStr+Format('AND [门店] like %s ',[QuotedStr('%'+AppInfo.DianPuName+'%')]);
  end else
  begin
    edtComMenDian.Properties.Items.Clear;
    edtComMenDian.Properties.Items.Add('全部门店');
    vSql:=SqlStr;
  end;
  FireQTemp.DataInfo.Connection:=DmClient.FireConMain;
  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:=vSql;

  if FireQTemp.OpenData then
  begin
     for I := 0 to FireQTemp.RecordCount-1 do
     begin
       edtComMenDian.Properties.Items.Add(FireQTemp.FieldByName('门店').AsString);
       FireQTemp.Next;
     end;
  end else
     ShowMessage(FireQTemp.DataInfo.ErrMsg);
  edtComMenDian.ItemIndex:=0;
end;

procedure TfraModuleChart.InitYearCom;
var
  i:Integer;
begin

  FireQTemp.Close;
  FireQTemp.DataInfo.SQL.Clear;
  FireQTemp.DataInfo.SQL.Text:='SELECT DISTINCT ' + #13#10 +
                    '     LEFT(CONVERT(VARCHAR(10), [日期], 120), 4) AS [年份] ' + #13#10 +
                    'FROM' + #13#10 +
                    '    dbo.[销售单据明细]';
  edtComYear.Properties.Items.Clear;
  edtYear.Properties.Items.Clear;
  edtComYear.Properties.Items.Add('全部');
  //edtYear.Properties.Items.Add('全部');
  if not FireQTemp.OpenData then
  begin
    Exit;
  end
  else
  begin
    for I := 0 to FireQTemp.RecordCount-1 do
    begin
      edtComYear.Properties.Items.Add(FireQTemp.FieldByName('年份').AsString);
      edtYear.Properties.Items.Add(FireQTemp.FieldByName('年份').AsString);
      FireQTemp.Next;
    end;
    edtComYear.ItemIndex:=0;
    edtYear.ItemIndex:=0;
  end;
end;

procedure TfraModuleChart.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TfraModuleChart.RemoveShortCut;
begin
  inherited;

end;

procedure TfraModuleChart.Series1GetMarkText(Sender: TChartSeries;
  ValueIndex: Integer; var MarkText: string);
begin
  inherited;
  MarkText:=MarkText+'元';
end;

procedure TfraModuleChart.SetDetailPrivilege;
begin
  inherited;

end;

initialization
  RegisterClass(TfraModuleChart);

end.
