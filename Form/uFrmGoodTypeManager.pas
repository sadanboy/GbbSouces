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
  XLSReadWriteII5, Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,System.StrUtils,
  cxContainer, cxTextEdit, Vcl.Mask;

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
    NodeAdd: TMenuItem;
    SameLevelNodeAdd: TMenuItem;
    LowerLeveNodeAdd: TMenuItem;
    N3: TMenuItem;
    NodeEdit: TMenuItem;
    NodeDelete: TMenuItem;
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
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    actEdit: TAction;
    btnFind: TscGPButton;
    Label2: TLabel;
    actFind: TAction;
    scEdit1: TscEdit;
    DSViewGoods: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure TreeGoodTypeClick(Sender: TObject);
    procedure TreeGoodTypeContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure NodeAddClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SameLevelNodeAddClick(Sender: TObject);
    procedure LowerLeveNodeAddClick(Sender: TObject);
    procedure NodeEditClick(Sender: TObject);
    procedure NodeDeleteClick(Sender: TObject);
    procedure SingleAddItemClick(Sender: TObject);
    procedure BatchAddItemClick(Sender: TObject);
    procedure scGPButton2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure actSingleAddExecute(Sender: TObject);
    procedure actBatchAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
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

procedure TFrmGoodTypeManager.actBatchAddExecute(Sender: TObject);
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
      FireQGoodsImport.DataInfo.SQL.Text:='INSERT INTO dbo.GOODS(ID,MC,FID,) VALUES (:ID,:MC,:FID)';
      FireQGoodsImport.DataInfo.ActiveDesign:=True;
      DmClient.FireqGoods.DisableControls;
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
            FireQGoodsImport.ParamByName('ARTICLENUMBER').AsString:=LeftStr(WorkSheet.AsString[1,i],7);
            FireQGoodsImport.ParamByName('PINYINCODE').AsString:=ChnToPY(WorkSheet.AsString[0,i]);
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
        DmClient.FireqGoods.EnableConstraints;
        DmClient.FireqGoods.Refresh;
      end;
    end;
  finally
    XLSII.Free;
  end;
  //
  //ShowMessage('功能添加中，敬请期待……');
end;

procedure TFrmGoodTypeManager.actEditExecute(Sender: TObject);
var
  AForm:TFrmGoodTypeEdit;
  PID:string;
  vNode:TTreeNode;
begin
  //
  ShowMessage('正在开发中请耐心等待');
end;

procedure TFrmGoodTypeManager.actFindExecute(Sender: TObject);
begin
  ShowMessage('亲，功能正在开发中请耐心等待……');
end;

procedure TFrmGoodTypeManager.actSingleAddExecute(Sender: TObject);
var
  AForm:TFrmGoodTypeEdit;
  PID:string;
  vNode:TTreeNode;
  //TMstr:string;
begin
  vNode:=TreeGoodType.Selected;
  if (vNode=nil) or (vNode.Data=nil)or(vNode.HasChildren) then
  begin
    ShowMessage('请先选择分类……');
    exit;
  end;
  PID:=PMyNodeInfo(vNode.Data)^.ID;

  AForm:=TFrmGoodTypeEdit.Create(nil);
  try
    with AForm do
    begin
      FFrmState:=fesadd;
      Acd:=DmClient.FireqGoods;
      Ads:=DS1;
      DmClient.FireqGoods.DataInfo.TableName:='GOODS';
      DmClient.FireqGoods.DataInfo.PrimaryKey:='ID';
      ShowModal;
      if ModalResult=mrOk then
      begin
        if DmClient.FireqGoods.Locate('TM',Trim(edtTM.Text),[loCaseInsensitive]) then
        begin
          ShowMessage('该条码的商品已经存在，请重新输入……');
          Exit;
        end
        else
        begin
          DmClient.FireqGoods.Append;
          DmClient.FireqGoods.FieldByName('ID').AsString:=CreateSortID;
          DmClient.FireqGoods.FieldByName('FID').AsString:=PID;
          DmClient.FireqGoods.FieldByName('TM').AsString:=Trim(edtTM.Text);
          DmClient.FireqGoods.FieldByName('MC').AsString:=Trim(edtMC.Text);
          //得到商品名称的拼音码
          //DmClient.FireqGoods.FieldByName('PINYINCODE').AsString:=GetPYFirst(edtMC.Text);
          DmClient.FireqGoods.FieldByName('PINYINCODE').AsString:=ChnToPY(edtMC.Text);
          //根据条码得到条码的前7位做位货号
          DmClient.FireqGoods.FieldByName('ARTICLENUMBER').AsString:=LeftStr(Trim(edtTM.Text),7);
          if not DmClient.FireqGoods.SaveData then
          begin
             ShowMessage('数据保存失败，失败原因：'+DmClient.FireqGoods.DataInfo.ErrMsg);
          end;
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

procedure TFrmGoodTypeManager.SameLevelNodeAddClick(Sender: TObject);
var
  str: string;
begin
  str := '我的商品分类';
  if InputQuery('商品分类编辑', '请输入', str) then
  begin
    AddCategory(str, false);
  end;
end;

procedure TFrmGoodTypeManager.LowerLeveNodeAddClick(Sender: TObject);
var
  str: string;
begin
  str := '我的商品分类';
  if InputQuery('商品分类编辑', '请输入', str) then
    AddCategory(str, True);
end;

procedure TFrmGoodTypeManager.NodeEditClick(Sender: TObject);
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

procedure TFrmGoodTypeManager.NodeDeleteClick(Sender: TObject);
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
    if DmClient.FireqGoods.RecordCount > 0 then
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
      DmClient.FireqGoods.DisableControls;
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
            FireQGoodsImport.ParamByName('ARTICLENUMBER').AsString:=LeftStr(WorkSheet.AsString[1,i],7);
            FireQGoodsImport.ParamByName('PINYINCODE').AsString:=ChnToPY(WorkSheet.AsString[0,i]);
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
        DmClient.FireqGoods.EnableConstraints;
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
    if DmClient.FireqGoods.Locate('MC',str,[]) then
    begin
      ShowMessage('你输入的商品名称已经存在');
      exit;
    end else
    begin
      DmClient.FireqGoods.Append;
      DmClient.FireqGoods.FieldByName('ID').AsString:=FModuleID;
      DmClient.FireqGoods.FieldByName('MC').AsString:= str;
      DmClient.FireqGoods.FieldByName('FID').AsString:=PID;
      DmClient.FireqGoods.DataInfo.TableName:='GOODS';
      DmClient.FireqGoods.DataInfo.PrimaryKey:='ID';
      if not DmClient.FireqGoods.SaveData then
      begin
        ShowMessage('数据保存失败'+DmClient.FireqGoods.DataInfo.ErrMsg);
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

procedure TFrmGoodTypeManager.scGPButton3Click(Sender: TObject);
const
  SQLstr:string = 'update ';
var
  vNode:TTreeNode;

begin
   //
end;

procedure TFrmGoodTypeManager.TreeGoodTypeClick(Sender: TObject);
const
  StrSql:string='SELECT GOODS.MC AS MC,GOODS.TM AS TM, GOODS.ARTICLENUMBER AS ARTICLENUMBER,GOODS.PINYINCODE AS PINYINCODE,GOODTYPE.MC AS TYPEMC FROM [dbo].[GOODS] LEFT JOIN GOODTYPE	ON GOODS.FID = GOODTYPE.ID WHERE GOODS.FID IN ( %s ) ';
var
  vSql:string;
begin
  vSql:=Format(StrSql,[TreeGoodType.GetNodeAndChildAllIdListStr(TreeGoodType.Selected)]);
  DmClient.FireQViewGoods.DataInfo.SQL.Clear;
  DmClient.FireQViewGoods.DataInfo.SQL.Text:=vSql;
  DmClient.FireQViewGoods.OpenData;
end;

procedure TFrmGoodTypeManager.TreeGoodTypeContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  lPTreeNode : TTreeNode;
begin
  lPTreeNode:=TreeGoodType.Selected;
  //当树为空是只弹出增加节点的菜单
  if TreeGoodType.Items.Count = 0 then
  begin
    NodeAdd.Visible := True;
    SameLevelNodeAdd.Visible := false;
    LowerLeveNodeAdd.Visible := false;
    N3.Visible := False;
    NodeEdit.Visible := false;
    NodeDelete.Visible := false;
    exit;
  end;
  //当节点为根节点是不弹出增加节点菜单
  if PMyNodeInfo(TreeGoodType.Selected.Data)^.ID = '0' then
  begin
    NodeAdd.Visible := False;
    SameLevelNodeAdd.Visible := False;
    LowerLeveNodeAdd.Visible := True;
    N3.Visible := True;
    NodeEdit.Visible := True;
    NodeDelete.Visible := True;
    Exit;
  end;

  NodeAdd.Visible := false;
  SameLevelNodeAdd.Visible := True;
  LowerLeveNodeAdd.Visible := True;
  N3.Visible := True;
  NodeEdit.Visible := True;
  NodeDelete.Visible := True;
  //当没有选中某个节点时，不弹出对话框
  if TreeGoodType.Selected=nil then
  begin
    Handled:=False;
  end;
end;

procedure TFrmGoodTypeManager.NodeAddClick(Sender: TObject);
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
