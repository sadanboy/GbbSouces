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
                '   [���۵�����ϸ].[��ˮ��],' +
                '   [���۵�����ϸ].[��Ա],' +
                '   [���۵�����ϸ].[��Ʒ��Ϣ],' +
                '   [���۵�����ϸ].[����],' +
                '   [���۵�����ϸ].[�ŵ�],' +
                '   [���۵�����ϸ].[��Ʒ����],' +
                '    SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' +
                '    SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' +
                '    SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' +
                '    SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��], ' +
                '    SUM ( [���۵�����ϸ].[����]     ) AS [����],' +
                '    [���۵�����ϸ].[����Ա],' +
                '    [��Ʒ����].[����],' +
                '    [��Ʒ����].[����],' +
                '    [��Ա����].[����Ա] AS [��Ա������]' +
                'FROM' +
                '    dbo.[���۵�����ϸ]' +
                'LEFT JOIN' +
                '    dbo.[��Ʒ����]' +
                '	ON ' +
                '	 [���۵�����ϸ].[��Ʒ��Ϣ]=[��Ʒ����].[���ƣ����]' +
                'LEFT JOIN' +
                '	dbo.[��Ա����]' +
                '	ON ' +
                '	dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' +
                'WHERE (([��Ա]<>''-'')or([��Ա]<>NULL))	';

  StrSqlEnd:string ='GROUP BY' +
                '         [���۵�����ϸ].[��ˮ��],' +
                '         [���۵�����ϸ].[��Ա],' +
                '         [���۵�����ϸ].[����],' +
                '         [���۵�����ϸ].[��Ʒ��Ϣ],' +
                '         [���۵�����ϸ].[����],' +
                '         [���۵�����ϸ].[�ŵ�],' +
                '         [���۵�����ϸ].[��Ʒ����],'+
                '         [���۵�����ϸ].[����Ա],' +
                '	 [���۵�����ϸ].[���ý��], ' +
                '	 [���۵�����ϸ].[����],' +
                '	 [��Ʒ����].[����],' +
                '         [��Ʒ����].[����],' +
                '         [��Ա����].[����Ա]' +
                '      ORDER BY' +
                '         [��Ա],' +
                '         [����] ';
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
    procedure InitShortCut; override; // ��ʼ����ݼ�
    procedure SetDetailPrivilege; override;
    // �Ƴ���ݼ�
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
                '   [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '   [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[����],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                '    SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��], ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[����]     ) AS [����],' + #13#10 +
                '	 ' + #13#10 +
                '    [���۵�����ϸ].[����Ա],' + #13#10 +
                '	' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ա����].[����Ա] AS [��Ա������]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[���۵�����ϸ]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[��Ʒ����]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[��Ա����]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' + #13#10 +
                'WHERE (([��Ա]<>''-'')or([��Ա]<>NULL))	' + #13#10 +
                'AND ([����] BETWEEN %s AND %s) '+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����Ա],' + #13#10 +
                '	 [���۵�����ϸ].[���ý��], ' + #13#10 +
                '	 [���۵�����ϸ].[����],' + #13#10 +
                '	 [��Ʒ����].[����],' + #13#10 +
                '         [��Ʒ����].[����],' + #13#10 +
                '         [��Ա����].[����Ա]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [��Ա],' + #13#10 +
                '         [����] ';
  Sqlstr1: string = 'SELECT' + #13#10 +
                '   [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '   [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[����],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                '    SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��], ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[����]     ) AS [����],' + #13#10 +
                '	 ' + #13#10 +
                '    [���۵�����ϸ].[����Ա],' + #13#10 +
                '	' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ա����].[����Ա] AS [��Ա������]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[���۵�����ϸ]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[��Ʒ����]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[��Ա����]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' + #13#10 +
                'WHERE (([��Ա]<>''-'')or([��Ա]<>NULL))	' + #13#10 +
                'AND ([����] BETWEEN %s AND %s) '+
                'AND ([�ŵ�]= %s )'+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����Ա],' + #13#10 +
                '	 [���۵�����ϸ].[���ý��], ' + #13#10 +
                '	 [���۵�����ϸ].[����],' + #13#10 +
                '	 [��Ʒ����].[����],' + #13#10 +
                '         [��Ʒ����].[����],' + #13#10 +
                '         [��Ա����].[����Ա]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [��Ա],' + #13#10 +
                '         [����] ';
  Sqlstr2: string = 'SELECT' + #13#10 +
                  '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[����] ) AS [����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[��Ա����].[����Ա] AS [��Ա������],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[���۵�����ϸ]' + #13#10 +
                  '	LEFT JOIN [��Ʒ����] ON [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����] ' + #13#10 +
                  'LEFT JOIN dbo.[��Ա����]	ON ' + #13#10 +
                  '	     dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' +
                  'WHERE' + #13#10 +
                  '	[��Ա] IN ( SELECT [��Ա] FROM dbo.[���۵�����ϸ] WHERE (([��Ʒ��Ϣ] LIKE %s) or([��Ʒ����] like %s)) AND ([����] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([����] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([��Ա]<>''-'')or([��Ա]<>NULL)) ' +
                  'AND ([�ŵ�]= %s )'+
                  'GROUP BY' + #13#10 + '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[���۵�����ϸ].[���ý��],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[��Ա����].[����Ա],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[��Ա],' + #13#10 +
                  '	[����] ';
  Sqlstr3: string = 'SELECT' + #13#10 +
                  '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[����] ) AS [����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[��Ա����].[����Ա] AS [��Ա������],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[���۵�����ϸ]' + #13#10 +
                  '	LEFT JOIN [��Ʒ����] ON [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����] ' + #13#10 +
                  'LEFT JOIN dbo.[��Ա����]	ON ' + #13#10 +
                  '	     dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' +
                  'WHERE' + #13#10 +
                  '	[��Ա] IN ( SELECT [��Ա] FROM dbo.[���۵�����ϸ] WHERE (([��Ʒ��Ϣ] LIKE %s) or([��Ʒ����] like %s)) AND ([����] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([����] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([��Ա]<>''-'')or([��Ա]<>NULL)) ' +
                  //'AND ([�ŵ�]= %s )'+ {ѡȫ���ŵ�ʱ����Ҫ���sql}
                  'GROUP BY' + #13#10 + '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[���۵�����ϸ].[���ý��],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[��Ա����].[����Ա],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[��Ա],' + #13#10 +
                  '	[����] ';
Sqlstr4: string = 'SELECT' + #13#10 +
                  '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[����] ) AS [����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[��Ա����].[����Ա] AS [��Ա������],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[���۵�����ϸ]' + #13#10 +
                  '	LEFT JOIN [��Ʒ����] ON [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����] ' + #13#10 +
                  'LEFT JOIN dbo.[��Ա����]	ON ' + #13#10 +
                  '	     dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' +
                  'WHERE' + #13#10 +
                  '	[��Ա] IN ( SELECT [��Ա] FROM dbo.[���۵�����ϸ] WHERE (([��Ʒ��Ϣ] LIKE %s) or([��Ʒ����] like %s)) AND ([����] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([����] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([��Ա]<>''-'')or([��Ա]<>NULL)) ' +
                  'AND ([�ŵ�]= %s )'+
                  'AND ([��Ա] like %s )'+
                  'GROUP BY' + #13#10 + '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[���۵�����ϸ].[���ý��],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[��Ա����].[����Ա],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[��Ա],' + #13#10 +
                  '	[����] ';

Sqlstr5: string = 'SELECT' + #13#10 +
                '   [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '   [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[����],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                '    SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��], ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[����]     ) AS [����],' + #13#10 +
                '	 ' + #13#10 +
                '    [���۵�����ϸ].[����Ա],' + #13#10 +
                '	' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ա����].[����Ա] AS [��Ա������]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[���۵�����ϸ]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[��Ʒ����]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[��Ա����]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' + #13#10 +
                'WHERE (([��Ա]<>''-'')or([��Ա]<>NULL))	' + #13#10 +
                'AND ([����] BETWEEN %s AND %s) '+
                'AND ([�ŵ�]= %s )'+
                'AND ([��Ա] like %s )'+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����Ա],' + #13#10 +
                '	 [���۵�����ϸ].[���ý��], ' + #13#10 +
                '	 [���۵�����ϸ].[����],' + #13#10 +
                '	 [��Ʒ����].[����],' + #13#10 +
                '         [��Ʒ����].[����],' + #13#10 +
                '         [��Ա����].[����Ա]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [��Ա],' + #13#10 +
                '         [����] ';
Sqlstr6: string = 'SELECT' + #13#10 +
                '   [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '   [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[����],' + #13#10 +
                '	' + #13#10 +
                '   [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '   [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                '	 ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                '    SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��], ' + #13#10 +
                '    SUM ( [���۵�����ϸ].[����]     ) AS [����],' + #13#10 +
                '	 ' + #13#10 +
                '    [���۵�����ϸ].[����Ա],' + #13#10 +
                '	' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ʒ����].[����],' + #13#10 +
                '    [��Ա����].[����Ա] AS [��Ա������]' + #13#10 +
                'FROM' + #13#10 +
                '	' + #13#10 +
                '    dbo.[���۵�����ϸ]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '    dbo.[��Ʒ����]' + #13#10 +
                '	ON ' + #13#10 +
                '	 [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����]' + #13#10 +
                'LEFT JOIN' + #13#10 +
                '	dbo.[��Ա����]' + #13#10 +
                '	ON ' + #13#10 +
                '	dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' + #13#10 +
                'WHERE (([��Ա]<>''-'')or([��Ա]<>NULL))	' + #13#10 +
                'AND ([����] BETWEEN %s AND %s) '+
                //'AND ([�ŵ�]= %s )'+
                'AND ([��Ա] like %s )'+
                'GROUP BY' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��ˮ��],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ա],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[�ŵ�],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[��Ʒ����],' + #13#10 +
                '	 ' + #13#10 +
                '         [���۵�����ϸ].[����Ա],' + #13#10 +
                '	 [���۵�����ϸ].[���ý��], ' + #13#10 +
                '	 [���۵�����ϸ].[����],' + #13#10 +
                '	 [��Ʒ����].[����],' + #13#10 +
                '         [��Ʒ����].[����],' + #13#10 +
                '         [��Ա����].[����Ա]' + #13#10 +
                '      ORDER BY' + #13#10 +
                '	' + #13#10 +
                '         [��Ա],' + #13#10 +
                '         [����] ';
Sqlstr7: string = 'SELECT' + #13#10 +
                  '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒ����] ) AS ��Ʒ����,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[��Ʒԭ��] ) AS ��Ʒԭ��,' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[ʵ�ս��] ) AS [ʵ�ս��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[���ý��] ) AS [���ý��],' + #13#10 +
                  '	SUM ( [���۵�����ϸ].[����] ) AS [����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[��Ա����].[����Ա] AS [��Ա������],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'FROM' + #13#10 +
                  '	dbo.[���۵�����ϸ]' + #13#10 +
                  '	LEFT JOIN [��Ʒ����] ON [���۵�����ϸ].[��Ʒ��Ϣ] = [��Ʒ����].[���ƣ����] ' + #13#10 +
                  'LEFT JOIN dbo.[��Ա����]	ON ' + #13#10 +
                  '	     dbo.[���۵�����ϸ].[��Ա]= dbo.[��Ա����].[���������]+''��''+dbo.[��Ա����].[��Ա�ţ����]+''��''' +
                  'WHERE' + #13#10 +
                  '	[��Ա] IN ( SELECT [��Ա] FROM dbo.[���۵�����ϸ] WHERE (([��Ʒ��Ϣ] LIKE %s) or([��Ʒ����] like %s)) AND ([����] BETWEEN %s AND %s )) ' + #13#10 +
                  '	AND ([����] BETWEEN %s AND %s )' + #13#10 +
                  'AND (([��Ա]<>''-'')or([��Ա]<>NULL)) ' +
                  //'AND ([�ŵ�]= %s )'+
                  'AND ([��Ա] like %s )'+
                  'GROUP BY' + #13#10 + '	[���۵�����ϸ].[��ˮ��],' + #13#10 +
                  '	[���۵�����ϸ].[��Ա],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ��Ϣ],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[���۵�����ϸ].[�ŵ�],' + #13#10 +
                  '	[���۵�����ϸ].[��Ʒ����],' + #13#10 +
                  '	[���۵�����ϸ].[����Ա],' + #13#10 +
                  '	[���۵�����ϸ].[���ý��],' + #13#10 +
                  '	[���۵�����ϸ].[����],' + #13#10 +
                  '	[��Ա����].[����Ա],' + #13#10 +
                  '	[��Ʒ����].[����], ' + #13#10 +
                  '  [��Ʒ����].[����]' + #13#10 +
                  'ORDER BY' + #13#10 +
                  '	[��Ա],' + #13#10 +
                  '	[����] ';
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
  //�������ûѡ����Ʒû���룬��Աû����
  if (edtComMenDian.ItemIndex=0)and(InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
  begin
     vSqlStr:=Format(SqlStr,[StartDateTime.QuotedString,EndDateTime.QuotedString]);
  end else
  begin
  //���������ѡ����Ʒ�����룬��Աû����
     if (edtComMenDian.ItemIndex<>0)and(InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
     vSqlStr:=Format(SqlStr1,[StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text)]);
  end;
  //������ѡ����Ʒ�����룬��Աû����
  if (edtComMenDian.ItemIndex<>0)and(not InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
     vsqlstr:=Format(Sqlstr2,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text)]);
  // �������ûѡ����Ʒ�����룬��Աû����������������
  if (edtComMenDian.ItemIndex=0)and(not InputGoodsStr.IsEmpty)and(InputMemberStr.IsEmpty) then
    vSqlStr:=Format(Sqlstr3,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString]);
  // ���������ѡ����Ʒ�����룬��Ա����������������
  if (edtComMenDian.ItemIndex<>0)and(not InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
     vsqlstr:=Format(Sqlstr4,[QuotedStr('%'+InputGoodsStr+'%'),QuotedStr('%'+InputGoodsStr+'%'),StartDateTime.QuotedString,EndDateTime.QuotedString,StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text),QuotedStr('%'+InputMemberStr+'%')]);
  //������ѡ����Ʒδ���룬��Ա������
  if (edtComMenDian.ItemIndex<>0)and(InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
   vSqlStr:=Format(SqlStr5,[StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr(edtComMenDian.Text),QuotedStr('%'+InputMemberStr+'%')]);
  //����ûѡ����Ʒδ���룬��Ա������
  if (edtComMenDian.ItemIndex=0)and(InputGoodsStr.IsEmpty)and(not InputMemberStr.IsEmpty) then
   vSqlStr:=Format(SqlStr6,[StartDateTime.QuotedString,EndDateTime.QuotedString,QuotedStr('%'+InputMemberStr+'%')]);
  //����ûѡ����Ʒ�����룬��Ա������
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
//������߼���Ϊ�˽���������ҳ������ֵ�����ܵ�ҳ��ֵ��ʾ����ȷ������
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
               labTotalPage.Caption:=Format('�� %s ҳ',[FPageTotal.ToString]);
             end
         end
         else
         begin
           Showmessage('���ݻ�ȡʧ��'+QErrmsg) ;
         end;
       end
  );
//  if DmClient.FireQMain.OpenData then
//  begin
//     //FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//     //labTotalPage.Caption:=Format('�� %s ҳ',[FPageTotal.ToString]);
//     if (FPageIndex*FPageSize)>=DmClient.FireQMain.RecordCount then
//     begin
//       FPageIndex:=1;
//       edtPageIndex.Text:=FPageIndex.ToString;
//       DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize);
//       FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//       labTotalPage.Caption:=Format('�� %s ҳ',[FPageTotal.ToString]);
//     end else
//     begin
//       if DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize) then
//       begin
//         FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//         labTotalPage.Caption:=Format('�� %s ҳ',[FPageTotal.ToString]);
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
    vSql :=StrSql+Format('AND [�ŵ�] like %s ',[QuotedStr('%'+AppInfo.DianPuName+'%')])+StrSqlEnd;
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
            labTotalPage.Caption:=Format('�� %s ҳ',[DmClient.FireQMain.DataInfo.PageTotal.ToString]);
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
           ShowMessage('���ݼ���ʧ��'+QErrmsg);
         end;

         scGPPanel1.Visible:=False;
         scGPPanel1.Enabled:=False;
       end
    );

//  if DmClient.FireQMain.OpenDataByPage(FPageIndex,FPageSize) then
//  begin
//    FPageTotal:=DmClient.FireQMain.DataInfo.PageTotal;
//    labTotalPage.Caption:=Format('�� %s ҳ',[DmClient.FireQMain.DataInfo.PageTotal.ToString]);
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
  Separators:='��';
  if ACellViewInfo.Item.Caption='��Ա' then
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
//   //�ж��ǲ���ĳ��
//   if FieldName='����' then
//   begin
//      //�ж�ĳ�е�ֵ�ǲ��ǿգ���Ϊ���������һ��
//      if not VarIsNull(AViewInfo.Value) then
//      begin
//        //�����е�ֵ����ĳ���������Ʋ�ͬ����ɫ
//        if Abs(VarToDateTime(AViewInfo.Value)-Now)<7 then
//        begin
//           ACanvas.Font.Color := clGreen;    //������ɫ
//           ACanvas.Font.Style:=[fsBold] ;  //�����Ƿ�Ӵ�
//           //AViewInfo.Focused;              //
//           ACanvas.Brush.Color := clYellow; //����ɫ
//        end;
//      end;
//   end;
  cxColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('����');
  cxColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('��Ա');
  cxColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('�ŵ�');
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
  SqlStr = 'SELECT DISTINCT [�ŵ�] FROM dbo.[���۵�����ϸ] WHERE 1=1 ' ;
var
  vSql:string;
  i:Integer;
begin
  if AppInfo.DianPu<>0 then
  begin
    edtComMenDian.Properties.Items.Clear;
    vSql:=SqlStr+Format('AND [�ŵ�] like %s ',[QuotedStr('%'+AppInfo.DianPuName+'%')]);
  end else
  begin
    edtComMenDian.Properties.Items.Clear;
    edtComMenDian.Properties.Items.Add('ȫ���ŵ�');
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
       edtComMenDian.Properties.Items.Add(FireQTemp.FieldByName('�ŵ�').AsString);
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
