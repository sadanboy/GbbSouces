unit uHuiFangFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxMemo, cxDBEdit, cxImageComboBox,
  cxRichEdit, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckComboBox,
  cxDBCheckComboBox,cxDBExtLookupComboBox, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireHelper, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDataSet,uDmClient;

type
  TFormEditState=(ftEdit,ftAdd);
  TReturnViewFrom = class(TForm)
    GroupBoxCustomer: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    btnCancel: TButton;
    Button1: TButton;
    Label11: TLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ReturnVisitdate: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    edtDBCardNum: TcxDBTextEdit;
    edtDBName: TcxDBTextEdit;
    edtDBAge: TcxDBTextEdit;
    edtDBPhone: TcxDBTextEdit;
    edtDBCharge: TcxDBTextEdit;
    edtDBFoodCycle: TcxDBTextEdit;
    edtDBUpdateDateTime: TcxDBTextEdit;
    edtDBMemo: TcxDBMemo;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    FDQCustomerWH: TFireQuery;
    DSCustomerWH: TDataSource;
    FDQCustomerWHX: TFireQuery;
    DSCustomerWHX: TDataSource;
    FDQTemp: TFireQuery;
    FireQHUIYUAN: TFireQuery;

    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FValueName:string;
    FValueCardNum:string;
  public
    { Public declarations }
    Acd: TDataSet;
    Ads: TDataSource;
    procedure SetDs(myc: TCustomControl; ds: TDataSource);
    property ValueName:string  read FValueName write FValueName;
    property ValueCardNum:string read FValueCardNum write FValueCardNum;
  end;

var
  ReturnViewFrom: TReturnViewFrom;

implementation
uses
  udm,uFrmHuiFangEdit,System.DateUtils;
{$R *.dfm}

procedure TReturnViewFrom.Button1Click(Sender: TObject);
const
  SqlStr:string ='SELECT * FROM [dbo].tab_CustomerWH WHERE CardNum = %s ';
  SqlStrWHX:string='SELECT CardNumId,ReturnVisitdate,mendian,Record,CreateDateTime FROM [dbo].[tab_CustomerWHX] where CardNumId = %s ';
  sqlMax:string ='SELECT MAX([日期]) as 最近日期 from dbo.[销售单据明细] LEFT JOIN '+
  '[商品分类]' +
	'ON '+
		'[销售单据明细].[商品信息] = [商品分类].[名称（必填）] where [销售单据明细].[会员] = %s AND [商品分类].[分类]= %s ' ;
  sqlMax1:string ='SELECT [商品信息] as 商品名称, [门店] as 销售门店,[日期] from dbo.[销售单据明细] LEFT JOIN '+
	'[商品分类]' +
	'ON '+
		'[销售单据明细].[商品信息] = [商品分类].[名称（必填）] where [销售单据明细].[会员] like %s AND [商品分类].[分类]= %s AND [销售单据明细].[日期] LIKE %s GROUP BY [商品数量],[商品信息],[门店],[日期] ';
var
  vsql:string;
  BForm:TReturnEditFrom;
  //age:Integer;
  {value,}valueTimeStr:Variant;
  //values:Variant;
  //valueTime:TDateTime;
  //num:Float32;
  //vSqlWHX:string;
  strFenLei:string;//分类变量
  MaxTimeStr:string;//最新日期变量
  ShangPinName:string;
  mendianname:string ;
begin
  strFenLei:='奶粉';
  Self.Visible:=False;
  vsql:=Format(SqlStr,[Trim(ValueCardNum).QuotedString]);
  BForm:=TReturnEditFrom.Create(nil);
  try
    with BForm do
    begin
      try
        with FDQCustomerWH do
        begin
          Close;
          DataInfo.SQL.Clear;
          DataInfo.SQL.Text:=vsql;
          if OpenData then
          begin
            edtCardNum.Text:=FieldByName('CardNum').AsString;
            edtAge.Text:=FieldByName('age').AsString;
            edtName.Text:= FieldByName('Name').AsString ;
            edtphone.Text:=FieldByName('Iphone').AsString;
            edtFuzeren.Text:=FieldByName('fuzeren').AsString;
            RemarkMemo.Text:=FieldByName('remark').AsString;
            edtComWeChat.ItemIndex:=FieldByName('Wchat').AsInteger;
          end
          else
          begin
            ShowMessage('数据集打开失败'+FDQCustomerWH.DataInfo.ErrMsg);
            Exit;
          end;

        end;
      except on E: Exception do
         Dm.Tip.Show('警告！','CustomerWH数据集无法打开，因为：'+e.Message);
      end;
      ShowModal;
      if ModalResult=mrOk then
      begin
        try
          with FDQCustomerWH do
          begin
            if not Locate('CardNum',edtCardNum.Text,[]) then
            begin
                Append;
                FieldByName('CardNum').AsString:=edtCardNum.Text;
                FieldByName('Name').AsString:=edtName.Text;
                FieldByName('fuzeren').AsString:=edtFuzeren.Text;
                FieldByName('age').AsString:=edtAge.Text;
                FieldByName('Shiyongzhouqi').AsString:=edtFoodCycle.Text;
                FieldByName('Wchat').AsInteger:=edtComWeChat.ItemIndex;
                FieldByName('Remark').AsString:=RemarkMemo.Text;
                FieldByName('Iphone').AsString:=edtphone.Text;
                FieldByName('CreateDateTime').AsString:=FormatDateTime('yyyy-mm-dd hh:mm:ss',now);
                Post;
            end
            else
            begin
                Edit;
                FieldByName('Name').AsString:=edtName.Text;
                FieldByName('fuzeren').AsString:=edtFuzeren.Text;
                FieldByName('age').AsString:=edtAge.Text;
                FieldByName('Shiyongzhouqi').AsString:=edtFoodCycle.Text;
                FieldByName('Wchat').AsInteger:=edtComWeChat.ItemIndex;
                FieldByName('Remark').AsString:=RemarkMemo.Text;
                FieldByName('Iphone').AsString:=edtphone.Text;
                FieldByName('UpdateDateTime').AsString:=FormatDateTime('yyyy-mm-dd hh:mm:ss',now);
                Post;
            end;
          end;
        except on E: Exception do
          Dm.Tip.Show('警告！','CustomerWH数据写入数据库失败！原因：'+E.Message);
        end;
        try
          with FDQCustomerWHX do
          begin
            try
               Close;
               Open;

               //ShowMessage(ValueName);
               vsql:=Format(sqlMax,[QuotedStr(ValueName),strFenLei.QuotedString]) ;
               FDQTemp.Close;
               FDQTemp.DataInfo.SQL.Clear;
               FDQTemp.DataInfo.SQL.Text:=vsql;
               if FDQTemp.OpenData then

                 valueTimeStr:=FDQTemp.FieldByName('最近日期').Value;

               if  VarIsNull(valueTimeStr) then
               begin
                  ShowMessage('没有查找到关于最近购买奶粉的信息');
               end
               else
                  MaxTimeStr:=FormatDateTime('yyyy-mm-dd',VarToDateTime(valueTimeStr));
               //ShowMessage('取到的最新的关于奶粉的时间是：'+MaxTimeStr);
               vsql:=Format(sqlMax1,[QuotedStr('%'+Trim(ValueName)+'%'),strFenLei.QuotedString,QuotedStr('%'+MaxTimeStr+'%')]);
               //ShowMessage(VarToStr(valueTimeStr));

               FDQTemp.Close;
               FDQTemp.DataInfo.SQL.Clear;
               FDQTemp.DataInfo.SQL.Text:=vsql;
               if FDQTemp.OpenData then
               begin
                 ShangPinName:=FDQTemp.FieldByName('商品名称').AsString;
                 mendianname:= FDQTemp.FieldByName('销售门店').AsString;
                 //ShowMessage(mendianname);
               end;

               //valueTimeStr:=Dm.FDQTemp.FieldByName('[日期]').AsString;
               //values:=VarArrayOf([ValueName,valuetimestr,strFenLei]);
               //value:= Dm.FDQMain.Lookup('会员;日期;分类',values,'门店');
               //ShowMessage(VarToStr(value));
               //ShowMessage(num.ToString);
              // value:=Dm.FDQMain.LookupEx('会员;日期',values,'分类') ;
            except on E: Exception do
               Dm.Tip.Show('这里有错误','错误原因是：'+E.Message);
            end;
            try
              Append;
//              if VarToStr(value)='奶粉' then
//                 begin
//                   if Trim(edtFoodCycle.Text)='' then
//                       edtFoodCycle.Text:='7';
//
//                   valueTime :=VarToDateTime(valueTimeStr)+(StrToInt(Trim(edtFoodCycle.Text))*num-2);//*3600*24 ;
//                   FieldByName('ReturnVisitdate').AsString:=FormatDateTime('yyyy-mm-dd hh:mm:ss',valueTime);
//
//                 end
//              else
               FieldByName('ReturnVisitdate').Value:=FormatDateTime('yyyy-mm-dd hh:mm:ss',ScedtDate.Date);
               FieldByName('CardNumId').AsString:=edtCardNum.Text;
               FieldByName('Record').AsString:=RecordMemo.Text;
               FieldByName('ShangPinXinXi').AsString:= ShangPinName ;
               FieldByName('mendian').AsString:=mendianname;
               FieldByName('CreateDateTime').AsString:= FormatDateTime('yyyy-mm-dd hh:mm:ss',now);
               Post;
            except on E: Exception do
               //ShowMessage('这里出了重大错误'+E.Message);
            end;

          end;
        except on E: Exception do
          Dm.Tip.Show('警告！','CustomerWHX数据写入数据库失败！原因：'+E.Message);
        end;
      end;
    end;
  finally

    FDQCustomerWH.Refresh;
    FDQCustomerWHX.Refresh;
    //FDQViewCustomerHX.Refresh;
    Self.Visible:=True;
    BForm.Free;
  end;
end;

procedure TReturnViewFrom.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
   CheckValue: TDateTime;
   cxColumn: TcxGridColumn;
begin
   try
      cxColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ReturnVisitdate');

      if (cxColumn = nil) then
         Exit;
      if SameText(AViewInfo.item.Name,cxColumn.Name){or SameText(AViewInfo.item.Name,cxColumn1.Name)or(SameText(AViewInfo.item.Name,cxColumn2.Name))}then
      begin
         if VarIsNull(AViewInfo.GridRecord.Values[ReturnVisitdate.Index]) then
         begin
           Exit;
         end
         else
         begin
           CheckValue:=VarToDateTime(AViewInfo.GridRecord.Values[ReturnVisitdate.Index]);
           if Abs(Now-CheckValue)<14 then
           begin
              ACanvas.Font.Color := clRed;
              ACanvas.Font.Style:=[fsBold] ;
              AViewInfo.Focused;
              ACanvas.Brush.Color := $00BDFDD9;
           end;
         end;
      end ;
   except on E: Exception do
      //
   end;

end;

procedure TReturnViewFrom.FormCreate(Sender: TObject);
begin
  FValueCardNum:='';
  FDQCustomerWH.DataInfo.DatabaseCode:='GBB';
  FDQCustomerWH.DataInfo.Connection:=DmClient.FireConMain;
  FDQCustomerWHX.DataInfo.DatabaseCode:='GBB';
  FDQCustomerWHX.DataInfo.Connection:=DmClient.FireConMain;
end;

procedure TReturnViewFrom.FormShow(Sender: TObject);
const
  sqlMax: string = 'SELECT MAX(日期) as date,[商品信息] from dbo.ViewSale where [会员] LIKE %s AND [分类]= %s ';
  SqlStr:string ='SELECT * FROM [dbo].tab_CustomerWH WHERE CardNum = %s ';
  SqlStr1:string ='SELECT * FROM [dbo].tab_CustomerWHX WHERE CardNumId = %s ';
  sqlHuiyuan: string = 'SELECT [会员号（必填）],[姓名（必填）],[地址],[会员等级（必填）],[开卡日期],[备注],[电话（必填）],[生日] FROM [dbo].[会员档案] where [会员号（必填）]= %s ';
var
  vSql:string;
  fenleistr:string;
  valueTimeStr:string;
  GoodsName:string;
begin
  fenleistr:='奶粉';
  FDQTemp.Close;
  FDQTemp.DataInfo.SQL.Text:=Format(sqlMax,[FValueCardNum.QuotedString,fenleistr.QuotedString]);
  if FDQTemp.OpenData then
  begin
    valueTimeStr:=FDQTemp.FieldByName('date').AsString;
    GoodsName:=FDQTemp.FieldByName('商品信息').AsString;
  end;
  vSql:=Format(SqlStr,[FValueCardNum.QuotedString]);
  FDQCustomerWH.DataInfo.SQL.Text:=vSql;
  ShowMessage(vSql);
  if not FDQCustomerWH.OpenData then
  begin
    ShowMessage('数据集没有打开哦，亲……');
  end else
  begin

  end;
  FDQCustomerWHX.DataInfo.SQL.Text:=Format(SqlStr1,[FValueCardNum.QuotedString]);
  if FDQCustomerWHX.OpenData then
  begin
    ShowMessage('数据集已经打开哦，亲……');
  end;
end;

procedure TReturnViewFrom.SetDs(myc: TCustomControl; ds: TDataSource);
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

      if (Controls[i] is TcxDBCheckBox) then
      begin
        TcxDBCheckBox(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBLookupComboBox) then
      begin
        TcxDBLookupComboBox(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBExtLookupComboBox) then
      begin
        TcxDBCurrencyEdit(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

      if (Controls[i] is TcxDBImageComboBox) then
      begin
        TcxDBImageComboBox(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;

    end;
  end;

end;

end.
