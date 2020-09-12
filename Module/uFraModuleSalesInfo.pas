unit uFraModuleSalesInfo;

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
  System.ImageList, Vcl.ImgList, cxImageList, cxClasses, dxBar, System.Actions,
  Vcl.ActnList, cxPropertiesStore, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, scControls,
  scGPControls, Vcl.StdCtrls, Vcl.Mask, scGPExtControls, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireHelper, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDataSet,
  Vcl.WinXCtrls, dxSkinsDefaultPainters;
const
  StrSql:string='SELECT' +
                '   [销售单据明细].[流水号],' +
                '   [销售单据明细].[会员],' +
                '   [销售单据明细].[商品信息],' +
                '   [销售单据明细].[日期],' +
                '   [销售单据明细].[门店],' +
                '   [销售单据明细].[商品条码],' +
                '    SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' +
                '    SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' +
                '    SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' +
                '    SUM ( [销售单据明细].[折让金额] ) AS [折让金额], ' +
                '    SUM ( [销售单据明细].[利润]     ) AS [利润],' +
                '    [销售单据明细].[导购员],' +
                '    [商品分类].[分类],' +
                '    [商品分类].[单价],' +
                '    [会员档案].[导购员] AS [会员负责人]' +
                'FROM' +
                '    dbo.[销售单据明细]' +
                'LEFT JOIN' +
                '    dbo.[商品分类]' +
                '	ON ' +
                '	 [销售单据明细].[商品信息]=[商品分类].[名称（必填）]' +
                'LEFT JOIN' +
                '	dbo.[会员档案]' +
                '	ON ' +
                '	dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' +
                'WHERE (([会员]<>''-'')or([会员]<>NULL))	';

  StrSqlEnd:string ='GROUP BY' +
                '         [销售单据明细].[流水号],' +
                '         [销售单据明细].[会员],' +
                '         [销售单据明细].[日期],' +
                '         [销售单据明细].[商品信息],' +
                '         [销售单据明细].[日期],' +
                '         [销售单据明细].[门店],' +
                '         [销售单据明细].[商品条码],'+
                '         [销售单据明细].[导购员],' +
                '	 [销售单据明细].[折让金额], ' +
                '	 [销售单据明细].[利润],' +
                '	 [商品分类].[分类],' +
                '         [商品分类].[单价],' +
                '         [会员档案].[导购员]' +
                '      ORDER BY' +
                '         [会员],' +
                '         [日期] ';
type
  TFraModuleSalesInfo = class(TFraModuleBaseList)
    btnHomePage: TscGPButton;
    btnPriorPage: TscGPButton;
    btnNextPage: TscGPButton;
    btnLastPage: TscGPButton;
    labTotalPage: TscGPLabel;
    GridViewListColumn1: TcxGridDBColumn;
    GridViewListColumn2: TcxGridDBColumn;
    GridViewListColumn3: TcxGridDBColumn;
    GridViewListColumn4: TcxGridDBColumn;
    GridViewListColumn5: TcxGridDBColumn;
    GridViewListColumn6: TcxGridDBColumn;
    GridViewListColumn7: TcxGridDBColumn;
    GridViewListColumn8: TcxGridDBColumn;
    GridViewListColumn9: TcxGridDBColumn;
    GridViewListColumn10: TcxGridDBColumn;
    GridViewListColumn11: TcxGridDBColumn;
    edtPageSize: TscGPComboEdit;
    edtPageIndex: TscGPEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtEndDate: TcxDateEdit;
    edtBeginDate: TcxDateEdit;
    Label3: TLabel;
    chk1: TCheckBox;
    btnSeach: TscGPButton;
    edtGoodsName: TcxTextEdit;
    actSeach: TAction;
    edtMember: TcxTextEdit;
    edtComMenDian: TcxComboBox;
    FireQTemp: TFireQuery;
    scGPButton1: TscGPButton;
    scGPPanel1: TscGPPanel;
    ActivityIndicator1: TActivityIndicator;
    Label4: TLabel;
    procedure btnPriorPageClick(Sender: TObject);
    procedure btnNextPageClick(Sender: TObject);
    procedure btnHomePageClick(Sender: TObject);
    procedure btnLastPageClick(Sender: TObject);
    procedure actSeachExecute(Sender: TObject);
    procedure GridViewListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GridViewListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    FPageSize:Integer;
    FPageIndex:Integer;
    FPageTotal:Integer;
  public
    procedure InitedtDate;
    procedure InitedtComMenDian;
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
  FraModuleSalesInfo: TFraModuleSalesInfo;

implementation

{$R *.dfm}
uses
   uDmClient,uHuiFangFrm;
{ TFraModuleSalesInfo }

procedure TFraModuleSalesInfo.actSeachExecute(Sender: TObject);
const
  Sqlstr: string = 'SELECT' + #13#10 +
                '   [销售单据明细].[流水号],' + #13#10 +
                '   [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品信息],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[日期],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品条码],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                '    SUM ( [销售单据明细].[折让金额] ) AS [折让金额], ' + #13#10 +
                '    SUM ( [销售单据明细].[利润]     ) AS [利润],' + #13#10 +
                '	 ' + #13#10 +
                '    [销售单据明细].[导购员],' + #13#10 +
                '	' + #13#10 +
                '    [商品分类].[分类],' + #13#10 +
                '    [商品分类].[单价],' + #13#10 +
                '    [会员档案].[导购员] AS [会员负责人]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[销售单据明细]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[商品分类]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [销售单据明细].[商品信息] = [商品分类].[名称（必填）]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[会员档案]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' + #13#10 +
                'WHERE (([会员]<>''-'')or([会员]<>NULL))	' + #13#10 +
                'AND ([日期] BETWEEN %s AND %s) '+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[流水号],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品信息],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品条码],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[导购员],' + #13#10 +
                '	 [销售单据明细].[折让金额], ' + #13#10 +
                '	 [销售单据明细].[利润],' + #13#10 +
                '	 [商品分类].[分类],' + #13#10 +
                '         [商品分类].[单价],' + #13#10 +
                '         [会员档案].[导购员]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [会员],' + #13#10 +
                '         [日期] ';
  Sqlstr1: string = 'SELECT' + #13#10 +
                '   [销售单据明细].[流水号],' + #13#10 +
                '   [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品信息],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[日期],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品条码],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                '    SUM ( [销售单据明细].[折让金额] ) AS [折让金额], ' + #13#10 +
                '    SUM ( [销售单据明细].[利润]     ) AS [利润],' + #13#10 +
                '	 ' + #13#10 +
                '    [销售单据明细].[导购员],' + #13#10 +
                '	' + #13#10 +
                '    [商品分类].[分类],' + #13#10 +
                '    [商品分类].[单价],' + #13#10 +
                '    [会员档案].[导购员] AS [会员负责人]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[销售单据明细]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[商品分类]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [销售单据明细].[商品信息] = [商品分类].[名称（必填）]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[会员档案]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' + #13#10 +
                'WHERE (([会员]<>''-'')or([会员]<>NULL))	' + #13#10 +
                'AND ([日期] BETWEEN %s AND %s) '+
                'AND ([门店]= %s )'+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[流水号],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品信息],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品条码],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[导购员],' + #13#10 +
                '	 [销售单据明细].[折让金额], ' + #13#10 +
                '	 [销售单据明细].[利润],' + #13#10 +
                '	 [商品分类].[分类],' + #13#10 +
                '         [商品分类].[单价],' + #13#10 +
                '         [会员档案].[导购员]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [会员],' + #13#10 +
                '         [日期] ';
  Sqlstr2: string = 'SELECT' + #13#10 +
                  '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                  '	SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                  '	SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[折让金额] ) AS [折让金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[利润] ) AS [利润],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[会员档案].[导购员] AS [会员负责人],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[销售单据明细]' + #13#10 +
                  '	LEFT JOIN [商品分类] ON [销售单据明细].[商品信息] = [商品分类].[名称（必填）] ' + #13#10 +
                  'LEFT JOIN dbo.[会员档案]	ON ' + #13#10 +
                  '	     dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' +
                  'WHERE' + #13#10 +
                  '	[会员] IN ( SELECT [会员] FROM dbo.[销售单据明细] WHERE (([商品信息] LIKE %s) or([商品条码] like %s)) AND ([日期] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([日期] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([会员]<>''-'')or([会员]<>NULL)) ' +
                  'AND ([门店]= %s )'+
                  'GROUP BY' + #13#10 + '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[销售单据明细].[折让金额],' + #13#10 +
                  '	[销售单据明细].[利润],' + #13#10 +
                  '	[会员档案].[导购员],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[会员],' + #13#10 +
                  '	[日期] ';
  Sqlstr3: string = 'SELECT' + #13#10 +
                  '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                  '	SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                  '	SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[折让金额] ) AS [折让金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[利润] ) AS [利润],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[会员档案].[导购员] AS [会员负责人],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[销售单据明细]' + #13#10 +
                  '	LEFT JOIN [商品分类] ON [销售单据明细].[商品信息] = [商品分类].[名称（必填）] ' + #13#10 +
                  'LEFT JOIN dbo.[会员档案]	ON ' + #13#10 +
                  '	     dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' +
                  'WHERE' + #13#10 +
                  '	[会员] IN ( SELECT [会员] FROM dbo.[销售单据明细] WHERE (([商品信息] LIKE %s) or([商品条码] like %s)) AND ([日期] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([日期] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([会员]<>''-'')or([会员]<>NULL)) ' +
                  //'AND ([门店]= %s )'+ {选全部门店时不需要这句sql}
                  'GROUP BY' + #13#10 + '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[销售单据明细].[折让金额],' + #13#10 +
                  '	[销售单据明细].[利润],' + #13#10 +
                  '	[会员档案].[导购员],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[会员],' + #13#10 +
                  '	[日期] ';
Sqlstr4: string = 'SELECT' + #13#10 +
                  '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                  '	SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                  '	SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[折让金额] ) AS [折让金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[利润] ) AS [利润],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[会员档案].[导购员] AS [会员负责人],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[销售单据明细]' + #13#10 +
                  '	LEFT JOIN [商品分类] ON [销售单据明细].[商品信息] = [商品分类].[名称（必填）] ' + #13#10 +
                  'LEFT JOIN dbo.[会员档案]	ON ' + #13#10 +
                  '	     dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' +
                  'WHERE' + #13#10 +
                  '	[会员] IN ( SELECT [会员] FROM dbo.[销售单据明细] WHERE (([商品信息] LIKE %s) or([商品条码] like %s)) AND ([日期] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([日期] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([会员]<>''-'')or([会员]<>NULL)) ' +
                  'AND ([门店]= %s )'+
                  'AND ([会员] like %s )'+
                  'GROUP BY' + #13#10 + '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[销售单据明细].[折让金额],' + #13#10 +
                  '	[销售单据明细].[利润],' + #13#10 +
                  '	[会员档案].[导购员],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[会员],' + #13#10 +
                  '	[日期] ';

Sqlstr5: string = 'SELECT' + #13#10 +
                '   [销售单据明细].[流水号],' + #13#10 +
                '   [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品信息],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[日期],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品条码],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                '    SUM ( [销售单据明细].[折让金额] ) AS [折让金额], ' + #13#10 +
                '    SUM ( [销售单据明细].[利润]     ) AS [利润],' + #13#10 +
                '	 ' + #13#10 +
                '    [销售单据明细].[导购员],' + #13#10 +
                '	' + #13#10 +
                '    [商品分类].[分类],' + #13#10 +
                '    [商品分类].[单价],' + #13#10 +
                '    [会员档案].[导购员] AS [会员负责人]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[销售单据明细]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[商品分类]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [销售单据明细].[商品信息] = [商品分类].[名称（必填）]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[会员档案]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' + #13#10 +
                'WHERE (([会员]<>''-'')or([会员]<>NULL))	' + #13#10 +
                'AND ([日期] BETWEEN %s AND %s) '+
                'AND ([门店]= %s )'+
                'AND ([会员] like %s )'+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[流水号],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品信息],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品条码],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[导购员],' + #13#10 +
                '	 [销售单据明细].[折让金额], ' + #13#10 +
                '	 [销售单据明细].[利润],' + #13#10 +
                '	 [商品分类].[分类],' + #13#10 +
                '         [商品分类].[单价],' + #13#10 +
                '         [会员档案].[导购员]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [会员],' + #13#10 +
                '         [日期] ';
Sqlstr6: string = 'SELECT' + #13#10 +
                '   [销售单据明细].[流水号],' + #13#10 +
                '   [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品信息],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[日期],' + #13#10 +
                '	' + #13#10 +
                '   [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '   [销售单据明细].[商品条码],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                '    SUM ( [销售单据明细].[折让金额] ) AS [折让金额], ' + #13#10 +
                '    SUM ( [销售单据明细].[利润]     ) AS [利润],' + #13#10 +
                '	 ' + #13#10 +
                '    [销售单据明细].[导购员],' + #13#10 +
                '	' + #13#10 +
                '    [商品分类].[分类],' + #13#10 +
                '    [商品分类].[单价],' + #13#10 +
                '    [会员档案].[导购员] AS [会员负责人]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[销售单据明细]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[商品分类]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [销售单据明细].[商品信息] = [商品分类].[名称（必填）]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[会员档案]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' + #13#10 +
                'WHERE (([会员]<>''-'')or([会员]<>NULL))	' + #13#10 +
                'AND ([日期] BETWEEN %s AND %s) '+
                //'AND ([门店]= %s )'+
                'AND ([会员] like %s )'+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[流水号],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[会员],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品信息],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[日期],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[门店],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[商品条码],' + #13#10 +
                '	 ' + #13#10 +
                '         [销售单据明细].[导购员],' + #13#10 +
                '	 [销售单据明细].[折让金额], ' + #13#10 +
                '	 [销售单据明细].[利润],' + #13#10 +
                '	 [商品分类].[分类],' + #13#10 +
                '         [商品分类].[单价],' + #13#10 +
                '         [会员档案].[导购员]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [会员],' + #13#10 +
                '         [日期] ';
Sqlstr7: string = 'SELECT' + #13#10 +
                  '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	SUM ( [销售单据明细].[商品数量] ) AS 商品数量,' + #13#10 +
                  '	SUM ( [销售单据明细].[商品原价] ) AS 商品原价,' + #13#10 +
                  '	SUM ( [销售单据明细].[实收金额] ) AS [实收金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[折让金额] ) AS [折让金额],' + #13#10 +
                  '	SUM ( [销售单据明细].[利润] ) AS [利润],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[会员档案].[导购员] AS [会员负责人],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[销售单据明细]' + #13#10 +
                  '	LEFT JOIN [商品分类] ON [销售单据明细].[商品信息] = [商品分类].[名称（必填）] ' + #13#10 +
                  'LEFT JOIN dbo.[会员档案]	ON ' + #13#10 +
                  '	     dbo.[销售单据明细].[会员]= dbo.[会员档案].[姓名（必填）]+''（''+dbo.[会员档案].[会员号（必填）]+''）''' +
                  'WHERE' + #13#10 +
                  '	[会员] IN ( SELECT [会员] FROM dbo.[销售单据明细] WHERE (([商品信息] LIKE %s) or([商品条码] like %s)) AND ([日期] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([日期] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([会员]<>''-'')or([会员]<>NULL)) ' +
                  //'AND ([门店]= %s )'+
                  'AND ([会员] like %s )'+
                  'GROUP BY' + #13#10 + '	[销售单据明细].[流水号],' + #13#10 +
                  '	[销售单据明细].[会员],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[商品信息],' + #13#10 +
                  '	[销售单据明细].[日期],' + #13#10 +
                  '	[销售单据明细].[门店],' + #13#10 +
                  '	[销售单据明细].[商品条码],' + #13#10 +
                  '	[销售单据明细].[导购员],' + #13#10 +
                  '	[销售单据明细].[折让金额],' + #13#10 +
                  '	[销售单据明细].[利润],' + #13#10 +
                  '	[会员档案].[导购员],' + #13#10 +
                  '	[商品分类].[分类], ' + #13#10 +
                  '  [商品分类].[单价]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[会员],' + #13#10 +
                  '	[日期] ';
var
  InputGoodsStr,InputMemberStr:string;
  vSqlStr:string;
  StartDateTime,EndDateTime:string;
  vPageIndex,vPageSize:Integer;
begin
  if TryStrToInt(edtPageIndex.Text,vPageIndex) then
  begin
    if vPageIndex<=0 then
    begin
      vPageIndex:=1;

    end;
    if vPageIndex<=0 then
      btnPriorPage.Enabled:=False
    else
      btnPriorPage.Enabled:=True;
    FPageIndex:=vPageIndex;
    DmClient.FireQMain.DataInfo.PageIndex:=vPageIndex;
  end;
  if TryStrToInt(edtPageSize.Text,vPageSize) then
  begin
    if vPageSize<=0 then
      vPageSize:=-1;
    FPageSize:=vPageSize;
    DmClient.FireQMain.DataInfo.PageSize:=vPageSize;
  end;
  StartDateTime:=FormatDateTime('YYYY-MM-DD 00:00:00',edtBeginDate.Date);
  EndDateTime:=FormatDateTime('YYYY-MM-DD 23:59:59',edtEndDate.Date);
  InputGoodsStr:=Trim(edtGoodsName.Text);
  InputMemberStr:= Trim(edtMember.Text);
  //如果店铺没选择，商品没输入，会员没输入
  if (edtComMenDian.ItemIndex=0)and(InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
  begin
     vSqlStr:=Format(SqlStr,[StartDateTime.QuotedString,EndDateTime.QuotedString]);
  end else
  begin
  //如果店铺有选择，商品有输入，会员没输入
     if (edtComMenDian.ItemIndex<>0)and(InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
     vSqlStr:=Format(SqlStr1,[StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text)]);
  end;
  //店铺有选择，商品有输入，会员没输入
  if (edtComMenDian.ItemIndex<>0)and(not InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
     vsqlstr:=Format(Sqlstr2,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text)]);
  // 如果店铺没选择，商品有输入，会员没数输入用下面的语句
  if (edtComMenDian.ItemIndex=0)and(not InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
    vSqlStr:=Format(Sqlstr3,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString]);
  // 如果店铺有选择，商品有输入，会员有输入用下面的语句
  if (edtComMenDian.ItemIndex<>0)and(not InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
     vsqlstr:=Format(Sqlstr4,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text),QuotedStr('%'+InputMemberStr+'%')]);
  //店铺有选择，商品未输入，会员有输入
  if (edtComMenDian.ItemIndex<>0)and(InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
   vSqlStr:=Format(SqlStr5,[StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text),QuotedStr('%'+InputMemberStr+'%')]);
  //店铺没选择，商品未输入，会员有输入
  if (edtComMenDian.ItemIndex=0)and(InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
   vSqlStr:=Format(SqlStr6,[StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr('%'+InputMemberStr+'%')]);
  //店铺没选择，商品有输入，会员有输入
  if (edtComMenDian.ItemIndex=0)and(not InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
     vsqlstr:=Format(Sqlstr7,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr('%'+InputMemberStr+'%')]);
  //ShowMessage(vsqlstr);
  DmClient.FireQMain.Close;
  DmClient.FireQMain.DataInfo.SQL.Clear;
  DmClient.FireQMain.DataInfo.SQL.Text:=vSqlStr;
  DmClient.FireQMain.DataInfo.AsynMode:=True;
  //ShowMessage(DmClient.FireQMain.DataInfo.SQL.Text);
//  if StrToInt(edtPageIndex.Text)>=DmClient.FireQMain.DataInfo.PageTotalCount then
//     FPageIndex:=1;
//这里的逻辑是为了解决当输入的页面索引值大于总的页面值显示不正确的问题
  DmClient.FireQMain.OpenDataAsyn(
     procedure(QBool:Boolean;QErrmsg:string)
       begin
         if QBool then
         begin
            if (FPageIndex*FPageSize)>=DmClient.FireQMain.RecordCount then
             begin
               FPageIndex:=1;
               edtPageIndex.Text:=FPageIndex.ToString;
               DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize);
               FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
               labTotalPage.Caption:=Format('共 %s 页',[FPageTotal.ToString]);
             end
         end
         else
         begin
           Showmessage('数据获取失败'+QErrmsg) ;
         end;
       end
  );
//  if DmClient.FireQMain.OpenData then
//  begin
//     //FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//     //labTotalPage.Caption:=Format('共 %s 页',[FPageTotal.ToString]);
//     if (FPageIndex*FPageSize)>=DmClient.FireQMain.RecordCount then
//     begin
//       FPageIndex:=1;
//       edtPageIndex.Text:=FPageIndex.ToString;
//       DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize);
//       FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//       labTotalPage.Caption:=Format('共 %s 页',[FPageTotal.ToString]);
//     end else
//     begin
//       if DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize) then
//       begin
//         FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//         labTotalPage.Caption:=Format('共 %s 页',[FPageTotal.ToString]);
//       end;
//     end;
//
//  end;


end;

procedure TFraModuleSalesInfo.btnHomePageClick(Sender: TObject);
begin
  inherited;
  DmClient.FireQMain.DataInfo.AsynMode:=False;
  if DmClient.FireQMain.OpenDataByPage(1,FPageSize)then
  begin
    FPageIndex:=1;
    edtPageIndex.Text:=IntToStr(FPageIndex);
    if btnPriorPage.Enabled then
       btnPriorPage.Enabled:=False;
    if not btnNextPage.Enabled then
       btnNextPage.Enabled:=True;
  end;
end;

procedure TFraModuleSalesInfo.btnLastPageClick(Sender: TObject);
var
  i:Integer;
begin
  DmClient.FireQMain.DataInfo.AsynMode:=False;
  if DmClient.FireQMain.OpenDataByPage(FPageTotal,FPageSize) then
  begin
    FPageIndex:=FPageTotal;
    edtPageIndex.Text:= IntToStr(FPageIndex);
    if btnNextPage.Enabled then
       btnNextPage.Enabled:=False;
    if not btnPriorPage.Enabled then
       btnPriorPage.Enabled:=True;
    if TryStrToInt(edtPageIndex.Text,i) then
    begin
      if i>=FPageTotal then
      btnNextPage.Enabled:=False;
    end;
  end;
end;

procedure TFraModuleSalesInfo.btnNextPageClick(Sender: TObject);
begin
  DmClient.FireQMain.DataInfo.AsynMode:=False;
  if DmClient.FireQMain.NextPage then
  begin
    FPageIndex:=FPageIndex+1;
    edtPageIndex.Text:=IntToStr(FPageIndex);
    if not btnPriorPage.Enabled then
       btnPriorPage.Enabled:=True;
    if FPageIndex>=FPageTotal then
       btnNextPage.Enabled:=False;
  end;
end;

procedure TFraModuleSalesInfo.btnPriorPageClick(Sender: TObject);
begin
  DmClient.FireQMain.DataInfo.AsynMode:=False;
  if DmClient.FireQMain.PriorPage then
  begin
    FPageIndex:=FPageIndex-1;
    edtPageIndex.Text:=IntToStr(FPageIndex);
    if not btnNextPage.Enabled then
       btnNextPage.Enabled:=True;
    if FPageIndex<=1 then
       btnPriorPage.Enabled:=False;
  end;
end;

procedure TFraModuleSalesInfo.CloseData;
begin
  inherited;
  DmClient.FireQMain.Close;
end;

constructor TFraModuleSalesInfo.Create(AOwner: TComponent);
var
  i:Integer;
begin
  inherited;
  scGPPanel1.BringToFront;
  //ActivityIndicator1.BringToFront;
  ActivityIndicator1.Animate:=True;
  ActivityIndicator1.Enabled:=True;
  if TryStrToInt(edtPageIndex.Text,i) then
  begin
    if i<=0 then
    begin
      i:=1;
      btnPriorPage.Enabled:=False;
    end;

    FPageIndex:=i;
    DmClient.FireQMain.DataInfo.PageIndex:=i;
  end;
  if TryStrToInt(edtPageSize.Text,i) then
  begin
    if i<=0 then
      i:=-1;
    FPageSize:=i;
    DmClient.FireQMain.DataInfo.PageSize:=i;
  end;
//   CircledProgressBar.Activate;
//  CircledProgressBar.AnimationAcceleration:=False;
//  CircledProgressBar.Visible:=False;
end;

destructor TFraModuleSalesInfo.Destroy;
begin

  inherited;
end;

procedure TFraModuleSalesInfo.GetData;
var
  vSql:string;
  StartDateTime,EndDateTime:string;
begin
  inherited;

//  StartDateTime:=FormatDateTime('YYYY-MM-DD HH:MM:SS',edtBeginDate.Date);
//  EndDateTime:=FormatDateTime('YYYY-MM-DD HH:MM:SS',edtEndDate.Date);
  if AppInfo.DianPu<>0 then
  begin
    vSql :=StrSql+Format('AND [门店] like %s ',[QuotedStr('%'+AppInfo.DianPuName+'%')])+StrSqlEnd;
  end else
  begin
    vSql:= StrSql+StrSqlEnd;
  end;

  //DS1.DataSet:=DmClient.FireQMain;
  DmClient.FireQMain.DataInfo.SQL.Clear;
  DmClient.FireQMain.DataInfo.SQL.Text:=vSql;
  //ShowMessage(DmClient.FireQMain.DataInfo.PageSize.ToString);
  DmClient.FireQMain.DataInfo.AsynMode:=True;
  DmClient.FireQMain.OpenDataAsyn(
       procedure(QBool:Boolean;QErrmsg:string)
       begin
         if QBool then
         begin
            FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
            labTotalPage.Caption:=Format('共 %s 页',[DmClient.FireQMain.DataInfo.PageTotal.ToString]);
            if FPageIndex<=1 then
            begin
              btnPriorPage.Enabled:=False;
              btnNextPage.Enabled:=True;
            end;
            if FPageIndex>=FPageTotal then
            begin
              btnPriorPage.Enabled:=True;
              btnNextPage.Enabled:=False;
            end;
         end else
         begin
           ShowMessage('数据集打开失败'+QErrmsg);
         end;

         scGPPanel1.Visible:=False;
         scGPPanel1.Enabled:=False;
       end
    );

//  if DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize) then
//  begin
//    FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//    labTotalPage.Caption:=Format('共 %s 页',[DmClient.FireQMain.DataInfo.PageTotal.ToString]);
//  end;
//  if FPageIndex<=1 then
//  begin
//    btnPriorPage.Enabled:=False;
//    btnNextPage.Enabled:=True;
//  end;
//  if FPageIndex>=FPageTotal then
//  begin
//    btnPriorPage.Enabled:=True;
//    btnNextPage.Enabled:=False;
//  end;
end;

procedure TFraModuleSalesInfo.GridViewListCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AHitTest:TcxCustomGridHitTest;
  memberCardNum:string;
  Separators:string;
  AForm:TReturnViewFrom;
begin
  inherited;
  Separators:='（';
  if ACellViewInfo.Item.Caption='会员' then
  begin
    if VarIsNull(ACellViewInfo.Value) or (VarToStr(ACellViewInfo.Value).IsEmpty) or (VarToStr(ACellViewInfo.Value) = '-') then
      begin
        Exit;
      end else
    begin
      memberCardNum:=VarToStr(ACellViewInfo.Value);
      memberCardNum:= Copy(memberCardNum, pos(Separators, memberCardNum) + 1, Length(memberCardNum) - pos(Separators, memberCardNum) - 1);
    end;
    //ShowMessage(memberName);
    AForm:=TReturnViewFrom.Create(Self);
    with AForm do
    begin
      ValueCardNum:=memberCardNum;
      ShowModal;
    end;
  end;
end;

procedure TFraModuleSalesInfo.GridViewListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  CheckValue: TDateTime;
  cxColumn, cxColumn1, cxColumn2: TcxGridColumn;
   //FieldName:string;
begin
//   FieldName:=TcxGridDBColumn(AViewInfo.Item).DataBinding.FieldName;
//   //判断是不是某列
//   if FieldName='日期' then
//   begin
//      //判断某列的值是不是空，不为空则进行下一步
//      if not VarIsNull(AViewInfo.Value) then
//      begin
//        //根据列的值符合某种条件绘制不同的颜色
//        if Abs(VarToDateTime(AViewInfo.Value)-Now)<7 then
//        begin
//           ACanvas.Font.Color := clGreen;    //字体颜色
//           ACanvas.Font.Style:=[fsBold] ;  //字体是否加粗
//           //AViewInfo.Focused;              //
//           ACanvas.Brush.Color := clYellow; //背景色
//        end;
//      end;
//   end;
  cxColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('日期');
  cxColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('会员');
  cxColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('门店');
  if cxColumn = nil then
    Exit;
  if SameText(AViewInfo.item.Name, cxColumn.Name) or SameText(AViewInfo.item.Name, cxColumn1.Name) or (SameText(AViewInfo.item.Name, cxColumn2.Name)) then
  begin
    if VarIsNull(AViewInfo.GridRecord.Values[GridViewListColumn1.Index]) then
    begin
      Exit;
    end
    else
    begin
      CheckValue := VarToDateTime(AViewInfo.GridRecord.Values[GridViewListColumn1.Index]);
      if Abs(now - CheckValue) > 14 then
      begin
        ACanvas.Font.Color := clGreen;
        ACanvas.Font.Style := [fsBold];
          //AViewInfo.Focused;
        ACanvas.Brush.Color := $00BDFDD9;
      end;
    end;
  end;
end;

procedure TFraModuleSalesInfo.InitedtComMenDian;
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

procedure TFraModuleSalesInfo.InitedtDate;
begin
  edtBeginDate.Date:=Now;
  edtEndDate.Date:=Now;
end;

procedure TFraModuleSalesInfo.InitModuleLayout;
begin
  inherited;
  InitedtComMenDian;
  InitedtDate;

end;

procedure TFraModuleSalesInfo.InitShortCut;
begin
  inherited;

end;

procedure TFraModuleSalesInfo.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TFraModuleSalesInfo.RemoveShortCut;
begin
  inherited;

end;

procedure TFraModuleSalesInfo.SetDetailPrivilege;
begin
  inherited;

end;

initialization
  RegisterClass(TFraModuleSalesInfo);

end.
