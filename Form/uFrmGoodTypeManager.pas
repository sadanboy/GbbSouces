unit uFrmGoodTypeManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  cxImageList, cxGraphics, Vcl.ComCtrls, scControls, scGPControls, FireHelper,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDataSet,
  FireClientConnect, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsDefaultPainters, Vcl.Menus,
  System.Generics.Collections, cxDBLookupComboBox, dxDBSparkline, XLSSheetData5,
  XLSReadWriteII5, Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TFrmGoodTypeManager = class(TForm)
    scGPGroupBox1: TscGPGroupBox;
    scGPGroupBox2: TscGPGroupBox;
    TreeGoodType: TscTreeView;
    Img20: TcxImageList;
    FireQGoodType: TFireQuery;
    scGPPanel1: TscGPPanel;
    scGPGroupBox3: TscGPGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    DS1: TDataSource;
    FireqGoods: TFireQuery;
    FireqGoodsID: TStringField;
    FireqGoodsMC: TStringField;
    FireqGoodsTM: TStringField;
    FireqGoodsFID: TStringField;
    FireQGoodTypeID: TStringField;
    FireQGoodTypeFID: TStringField;
    FireQGoodTypeMC: TStringField;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton5: TscGPButton;
    scGPButton1: TscGPButton;
    Img16: TcxImageList;
    PopupMenu1: TPopupMenu;
    y1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    PopupMenu2: TPopupMenu;
    SingleAddItem: TMenuItem;
    BatchAddItem: TMenuItem;
    OpenDialogExcel: TOpenDialog;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    FireQGoodsImport: TFireQuery;
    ActionList1: TActionList;
    actSingleAdd: TAction;
    actBatchAdd: TAction;
    procedure FormCreate(Sender: TObject);
    procedure TreeGoodTypeClick(Sender: TObject);
    procedure TreeGoodTypeContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure y1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SingleAddItemClick(Sender: TObject);
    procedure BatchAddItemClick(Sender: TObject);
    procedure scGPButton2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure actSingleAddExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTreeList: TDictionary<string, TTreeNode>;

    procedure AddCategory(AName: string; isChild: Boolean);
    procedure InitTreeViewFromDB;
  end;

var
  FrmGoodTypeManager: TFrmGoodTypeManager;

implementation
uses
  MyLib.scTreeView,FireFunction,uDmClient,uFrmGoodTypeEdit,uWinPublic;
{$R *.dfm}

{ TForm1 }

procedure TFrmGoodTypeManager.actSingleAddExecute(Sender: TObject);
var
  AForm:TFrmGoodTypeEdit;
begin
  AForm:=TFrmGoodTypeEdit.Create(nil);
  try
    with AForm do
    begin
      FFormState:=fesadd;
      Acd:=FireqGoods;
      Ads:=DS1;
      if FireqGoods.Active then
      begin
        FireqGoods.DataInfo.TableName:='GOODS';
        FireqGoods.DataInfo.PrimaryKey:='ID';
        FireqGoods.Append;
        FireqGoods.FieldByName('ID').AsString:=CreateSortID;
        ShowModal;
        if ModalResult=mrOk then
        begin
          //得到商品名称的拼音码
          FireqGoods.FieldByName('PINYINCODE').AsString:=GetPYFirst(edtDBMC.Text);
          //根据条码得到条码的前7位做位货号
          FireqGoods.FieldByName('').AsString:='';
        end;
      end;
    end;
  finally
    AForm.Free;
  end;
end;

procedure TFrmGoodTypeManager.AddCategory(AName: string; isChild: Boolean);
const
  StrSql:string='SELECT * FROM [dbo].[GOODTYPE] ';
var
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  //
  if not FireQGoodType.OpenData then
  begin
    ShowMessage('数据集未打开，不可编辑！');
    exit;
  end;
  lPTreeNode := nil;
  FPModuleID := '';
  lPTreeNode := TreeGoodType.Selected;
  if (lPTreeNode <> nil) and (lPTreeNode.Data <> nil) then
  begin
    tempP := lPTreeNode.Data;
    if isChild then //下级节点，选当前节点的ID，否则取当前节点的PID
      FPModuleID := PMyNodeInfo(tempP)^.ID
    else
      FPModuleID := PMyNodeInfo(tempP)^.FID;

    FModuleID := FireFunction.GetGUID;
    New(ChildNodeInfo);
    ChildNodeInfo^.ID := FModuleID;
    ChildNodeInfo^.FID := FPModuleID;
    ChildNodeInfo^.MC := AName;
    if isChild then
      lTreeNode := TreeGoodType.Items.AddChildObject(lPTreeNode, (ChildNodeInfo^.MC), ChildNodeInfo)
    else
      lTreeNode := TreeGoodType.Items.AddObject(lPTreeNode, (ChildNodeInfo^.MC), ChildNodeInfo);
    lTreeNode.SelectedIndex := 0;
    lTreeNode.ImageIndex := 1;
    lTreeNode.Selected := True;

    FTreeList.Add(FModuleID, lTreeNode);
    FireQGoodType.Append;
    FireQGoodType.FieldByName('ID').AsString:= FModuleID;
    FireQGoodType.FieldByName('FID').AsString:= FPModuleID;
    FireQGoodType.FieldByName('MC').AsString:=AName;
    FireQGoodType.DataInfo.TableName:='GOODTYPE';
    FireQGoodType.DataInfo.PrimaryKey:='ID';
    if not FireQGoodType.SaveData then
      begin
        ShowMessage('分类数据保存失败！'+FireQGoodType.DataInfo.ErrMsg);
      end;
    FireQGoodType.ApplyUpdates;
    FireQGoodType.CommitUpdates;
  end;
end;

procedure TFrmGoodTypeManager.FormCreate(Sender: TObject);
begin
  FTreeList:=TDictionary<string,TTreeNode>.Create;
  //FireConnection1.DoConnect;
  FireQGoodType.DataInfo.Connection:=DmClient.FireConMain;

  //FireQGoodType.OpenData;
  InitTreeViewFromDB;
end;

procedure TFrmGoodTypeManager.FormDestroy(Sender: TObject);
begin
  FTreeList.Clear;
  FTreeList.Free;
end;

procedure TFrmGoodTypeManager.InitTreeViewFromDB;
const
  StrSql:string='SELECT * FROM [dbo].[GOODTYPE] ';
begin
  FireQGoodType.DataInfo.SQL.Clear;
  FireQGoodType.DataInfo.SQL.Text:=StrSql;
  if not FireQGoodType.OpenData then
  begin
    ShowMessage(FireQGoodType.DataInfo.ErrMsg);
  end;
  TreeGoodType.CreateTreeViewFromDataSet(FireQGoodType);
  FireQGoodType.Filtered:=False;
end;

procedure TFrmGoodTypeManager.N1Click(Sender: TObject);
var
  str: string;
begin
  str := '我的商品分类';
  if InputQuery('商品分类编辑', '请输入', str) then
  begin
    AddCategory(str, false);
  end;
end;

procedure TFrmGoodTypeManager.N2Click(Sender: TObject);
var
  str: string;
begin
  str := '我的商品分类';
  if InputQuery('商品分类编辑', '请输入', str) then
    AddCategory(str, True);
end;

procedure TFrmGoodTypeManager.N4Click(Sender: TObject);
var
  str: string;
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  if not FireQGoodType.OpenData then
  begin
    ShowMessage('数据集未打开,不可编辑');
    exit;
  end;
  lPTreeNode := nil;
  FPModuleID := '';
  lPTreeNode := TreeGoodType.Selected;
  if (lPTreeNode <> nil) and (lPTreeNode.Data <> nil) then
  begin
    tempP := lPTreeNode.Data;
    str := PMyNodeInfo(tempP)^.MC;
    if InputQuery('商品分类编辑', '请输入', str) then
    begin
      PMyNodeInfo(tempP)^.MC := str;
      lPTreeNode.Text := str;
      if FireQGoodType.Locate('ID', PMyNodeInfo(tempP)^.ID) then
      begin
        FireQGoodType.Edit;
        FireQGoodType.FieldByName('MC').AsString := str;
        FireQGoodType.DataInfo.TableName:='GOODTYPE';
        FireQGoodType.DataInfo.PrimaryKey:='ID';
        FireQGoodType.SaveData;
        FireQGoodType.ApplyUpdates;
      end;
    end;
  end;

end;

procedure TFrmGoodTypeManager.N5Click(Sender: TObject);
var
  str: string;
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  if not FireQGoodType.OpenData then
  begin
    ShowMessage('数据集未打开,不可删除');
    exit;
  end;
  lPTreeNode := nil;
  FPModuleID := '';
  lPTreeNode := TreeGoodType.Selected;
  if (lPTreeNode <> nil) and (lPTreeNode.Data <> nil) then
  begin
    if FireqGoods.RecordCount > 0 then
    begin
      ShowMessage('当前类别下数据不为空，无法删除');
      exit;
    end;

    if lPTreeNode.HasChildren then
    begin
      ShowMessage('当前类别下包含子类别，无法删除');
      exit;
    end;
    if Application.MessageBox('确定要删除当前分类吗？', '提示', MB_OKCANCEL + MB_DEFBUTTON2) = IDOK then
    begin
      tempP := lPTreeNode.Data;
      FModuleID := PMyNodeInfo(tempP)^.ID;
      if FireQGoodType.Locate('ID', FModuleID) then
      begin
        FireQGoodType.Delete;
        FireQGoodType.ApplyUpdates;
        FireQGoodType.CommitUpdates;
        lPTreeNode.Delete;
        FTreeList.Remove(FModuleID);
      end;
      ShowMessage('删除成功！');
    end;
  end;

end;

procedure TFrmGoodTypeManager.BatchAddItemClick(Sender: TObject);
var
  vNode:TTreeNode;
  PID,str,FModuleID:string;
  FileName:string;
  i,Row:Integer;
  XLSII:TXLSReadWriteII5;
  WorkSheet:TXLSworksheet;
  exited:Boolean;
begin
  vNode:=TreeGoodType.Selected;
  if (vNode=nil) or (vNode.Data=nil)or(vNode.HasChildren) then
  begin
    ShowMessage('请先选择分类……');
    exit;
  end;
  PID:=PMyNodeInfo(vNode.Data)^.ID;
  exited:=False;
  XLSII:=TXLSReadWriteII5.Create(nil);
  try
    if OpenDialogExcel.Execute then
    begin
      XLSII.Filename:=Trim(OpenDialogExcel.FileName);
      XLSII.Read;
      for I := 0 to XLSII.Count-1 do
      begin
        if XLSII.Sheets[i].Name='商品分类' then
        begin
          WorkSheet:=XLSII.Sheets[i];
          exited:=True;
          Break;
        end;
        if not exited then
        begin
          ShowMessage('你导入的表格格式不对');
          exit;
        end;
      end;
      if (WorkSheet.LastRow+1)<2 then
      begin
        ShowMessage('你所导的表格不符合要求，数据行不足！');
        exit;
      end;
      if (WorkSheet.LastCol+1)<1 then
      begin
        ShowMessage('你所导的表格不符合要求，数据列不足！');
        exit;
      end;
      if WorkSheet.AsString[0, 0] <> '商品名称' then
      begin
        ShowMessage('【商品名称】列未发现');
        Exit;
      end;
      ProgressBar1.Max:=WorkSheet.LastRow+1;
      ProgressBar1.Min:=1;
      Panel1.Visible:=True;
      Panel1.BringToFront;
      FireQGoodsImport.DataInfo.Connection:=DmClient.FireConMain;
      FireQGoodsImport.DataInfo.DatabaseCode:='GBB';
      FireQGoodsImport.DataInfo.SQL.Text:='INSERT INTO dbo.GOODS(ID,MC,FID) VALUES (:ID,:MC,:FID)';
      FireQGoodsImport.DataInfo.ActiveDesign:=True;
      FireqGoods.DisableControls;
      try
        for I := 1 to WorkSheet.LastRow  do
        begin
          if FireQGoodsImport.Locate('TM',WorkSheet.AsString[1,i],[]) then
          begin
            Continue;
          end
          else
          begin
            FireQGoodsImport.ParamByName('ID').AsString:= CreateSortID;
            FireQGoodsImport.ParamByName('MC').AsString:= WorkSheet.AsString[0,i];
            FireQGoodsImport.ParamByName('TM').AsString:= WorkSheet.AsString[1,i];
            FireQGoodsImport.ParamByName('FID').AsString:=PID;
          end;
        end;
        if not FireQGoodsImport.ExecDML then
        begin
          ShowMessage('执行失败'+FireQGoodsImport.DataInfo.ErrMsg);
        end;
        Label1.Caption:='正在导入数据……'+Row.ToString+'/'+(WorkSheet.LastRow+1).ToString;
        ProgressBar1.Position:=Row;
        if (Row mod 10)=0 then
          Application.ProcessMessages;
      finally
        Panel1.Visible:=False;
        FireqGoods.EnableConstraints;
      end;
    end;
  finally
    XLSII.Free;
  end;
  //
  //ShowMessage('功能添加中，敬请期待……');
end;

procedure TFrmGoodTypeManager.SingleAddItemClick(Sender: TObject);
var
  vNode:TTreeNode;
  PID,str,FModuleID:string;
begin
  vNode:= TreeGoodType.Selected;
  if (vNode =nil) or (vNode.Data=nil)or (vNode.HasChildren) then
  begin
    ShowMessage('请先选择分类……');
    exit;
  end;
  PID:= PMyNodeInfo(vNode.Data)^.ID;
  str:='我要输入的商品名称';
  if InputQuery('商品名称输入','请输入',str) then
  begin
    FModuleID:=CreateSortID;
    if FireqGoods.Locate('MC',str,[]) then
    begin
      ShowMessage('你输入的商品名称已经存在');
      exit;
    end else
    begin
      FireqGoods.Append;
      FireqGoods.FieldByName('ID').AsString:=FModuleID;
      FireqGoods.FieldByName('MC').AsString:= str;
      FireqGoods.FieldByName('FID').AsString:=PID;
      FireqGoods.DataInfo.TableName:='GOODS';
      FireqGoods.DataInfo.PrimaryKey:='ID';
      if not FireqGoods.SaveData then
      begin
        ShowMessage('数据保存失败'+FireqGoods.DataInfo.ErrMsg);
      end;
    end;
  end;
end;

procedure TFrmGoodTypeManager.scGPButton2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var
  vNode:TTreeNode;
begin
//  vNode:=TreeGoodType.Selected;
//  if True then

end;

procedure TFrmGoodTypeManager.TreeGoodTypeClick(Sender: TObject);
const
  StrSql:string='SELECT * FROM [dbo].[GOODS] WHERE FID IN (SELECT ID FROM [dbo].[GOODTYPE] WHERE ID IN( %s ))';
var
  vSql:string;
begin
  vSql:=Format(StrSql,[TreeGoodType.GetNodeAndChildAllIdListStr(TreeGoodType.Selected)]);
  FireqGoods.DataInfo.SQL.Clear;
  FireqGoods.DataInfo.SQL.Text:=vSql;
  FireqGoods.OpenData;
end;

procedure TFrmGoodTypeManager.TreeGoodTypeContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  lPTreeNode : TTreeNode;
begin
  lPTreeNode:=TreeGoodType.Selected;
  if TreeGoodType.Items.Count = 0 then
  begin
    y1.Visible := True;
    N1.Visible := false;
    N2.Visible := false;
    N3.Visible := False;
    N4.Visible := false;
    N5.Visible := false;
    exit;
  end;

  if PMyNodeInfo(TreeGoodType.Selected.Data)^.ID = '0' then
  begin
    y1.Visible := False;
    N1.Visible := False;
    N2.Visible := True;
    N3.Visible := True;
    N4.Visible := True;
    N5.Visible := True;
    Exit;
  end;

  y1.Visible := false;
  N1.Visible := True;
  N2.Visible := True;
  N3.Visible := True;
  N4.Visible := True;
  N5.Visible := True;
  //当没有选中某个节点时，不弹出对话框
  if TreeGoodType.Selected=nil then
  begin
    Handled:=False;
  end;
end;

procedure TFrmGoodTypeManager.y1Click(Sender: TObject);
var
  str: string;
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  //
  str:='我的商品分类';
  if InputQuery('商品分类编辑','请输入',str) then
  begin
    FModuleID := FireFunction.GetGUID;
    New(ChildNodeInfo);
    ChildNodeInfo^.ID := FModuleID;
    ChildNodeInfo^.FID := '-1';
    ChildNodeInfo^.MC := str;
    lTreeNode := TreeGoodType.Items.AddChildObject(nil, (ChildNodeInfo^.MC), ChildNodeInfo);
    lTreeNode.SelectedIndex := 0;
    lTreeNode.ImageIndex := 1;
    lTreeNode.Selected := True;

    FTreeList.Add(FModuleID, lTreeNode);
    FireQGoodType.Append;
    FireQGoodType.FieldByName('ID').AsString:= FModuleID;
    FireQGoodType.FieldByName('FID').AsString:='-1';
    FireQGoodType.FieldByName('MC').AsString:=str;

    FireQGoodType.DataInfo.TableName:='GOODTYPE';
    FireQGoodType.DataInfo.PrimaryKey:='ID';
    if not FireQGoodType.SaveData then
    begin
      ShowMessage('分类数据保存失败！'+FireQGoodType.DataInfo.ErrMsg);
    end;
    FireQGoodType.ApplyUpdates;
  end;

end;

end.
