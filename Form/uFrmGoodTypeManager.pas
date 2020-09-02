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
  System.Generics.Collections;

type
  TTFrmGoodTypeManager = class(TForm)
    scGPGroupBox1: TscGPGroupBox;
    scGPGroupBox2: TscGPGroupBox;
    TreeGoodType: TscTreeView;
    Img20: TcxImageList;
    FireConnection1: TFireConnection;
    FireQGoodType: TFireQuery;
    scGPPanel1: TscGPPanel;
    scGPGroupBox3: TscGPGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
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
  private
    { Private declarations }
  public
    { Public declarations }
    FTreeList: TDictionary<string, TTreeNode>;

    procedure AddCategory(AName: string; isChild: Boolean);
    procedure InitTreeViewFromDB;
  end;

var
  TFrmGoodTypeManager: TTFrmGoodTypeManager;

implementation
uses
  MyLib.scTreeView,FireFunction;
{$R *.dfm}

{ TForm1 }

procedure TTFrmGoodTypeManager.AddCategory(AName: string; isChild: Boolean);
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
    ShowMessage('���ݼ�δ�򿪣����ɱ༭��');
    exit;
  end;
  lPTreeNode := nil;
  FPModuleID := '';
  lPTreeNode := TreeGoodType.Selected;
  if (lPTreeNode <> nil) and (lPTreeNode.Data <> nil) then
  begin
    tempP := lPTreeNode.Data;
    if isChild then //�¼��ڵ㣬ѡ��ǰ�ڵ��ID������ȡ��ǰ�ڵ��PID
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
        ShowMessage('�������ݱ���ʧ�ܣ�'+FireQGoodType.DataInfo.ErrMsg);
      end;
    FireQGoodType.ApplyUpdates;
    FireQGoodType.CommitUpdates;
  end;
end;

procedure TTFrmGoodTypeManager.FormCreate(Sender: TObject);
begin
  FTreeList:=TDictionary<string,TTreeNode>.Create;
  FireConnection1.DoConnect;
  FireQGoodType.OpenData;
  InitTreeViewFromDB;
end;

procedure TTFrmGoodTypeManager.FormDestroy(Sender: TObject);
begin
  FTreeList.Clear;
  FTreeList.Free;
end;

procedure TTFrmGoodTypeManager.InitTreeViewFromDB;
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

procedure TTFrmGoodTypeManager.N1Click(Sender: TObject);
var
  str: string;
begin
  str := '�ҵ���Ʒ����';
  if InputQuery('��Ʒ����༭', '������', str) then
  begin
    AddCategory(str, false);
  end;
end;

procedure TTFrmGoodTypeManager.N2Click(Sender: TObject);
var
  str: string;
begin
  str := '�ҵ���Ʒ����';
  if InputQuery('��Ʒ����༭', '������', str) then
    AddCategory(str, True);
end;

procedure TTFrmGoodTypeManager.N4Click(Sender: TObject);
var
  str: string;
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  if not FireQGoodType.OpenData then
  begin
    ShowMessage('���ݼ�δ��,���ɱ༭');
    exit;
  end;
  lPTreeNode := nil;
  FPModuleID := '';
  lPTreeNode := TreeGoodType.Selected;
  if (lPTreeNode <> nil) and (lPTreeNode.Data <> nil) then
  begin
    tempP := lPTreeNode.Data;
    str := PMyNodeInfo(tempP)^.MC;
    if InputQuery('��Ʒ����༭', '������', str) then
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

procedure TTFrmGoodTypeManager.N5Click(Sender: TObject);
var
  str: string;
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  if not FireQGoodType.OpenData then
  begin
    ShowMessage('���ݼ�δ��,����ɾ��');
    exit;
  end;
  lPTreeNode := nil;
  FPModuleID := '';
  lPTreeNode := TreeGoodType.Selected;
  if (lPTreeNode <> nil) and (lPTreeNode.Data <> nil) then
  begin
    if FireqGoods.RecordCount > 0 then
    begin
      ShowMessage('��ǰ��������ݲ�Ϊ�գ��޷�ɾ��');
      exit;
    end;

    if lPTreeNode.HasChildren then
    begin
      ShowMessage('��ǰ����°���������޷�ɾ��');
      exit;
    end;
    if Application.MessageBox('ȷ��Ҫɾ����ǰ������', '��ʾ', MB_OKCANCEL + MB_DEFBUTTON2) = IDOK then
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
      ShowMessage('ɾ���ɹ���');
    end;
  end;

end;

procedure TTFrmGoodTypeManager.TreeGoodTypeClick(Sender: TObject);
const
  StrSql:string='SELECT * FROM [dbo].[GOODS] WHERE FENLEIID IN (SELECT ID FROM [dbo].[GOODTYPE] WHERE ID IN( %s ))';
var
  vSql:string;
begin
  vSql:=Format(StrSql,[TreeGoodType.GetNodeAndChildAllIdListStr(TreeGoodType.Selected)]);
  FireqGoods.DataInfo.SQL.Clear;
  FireqGoods.DataInfo.SQL.Text:=vSql;
  FireqGoods.OpenData;
end;

procedure TTFrmGoodTypeManager.TreeGoodTypeContextPopup(Sender: TObject; MousePos: TPoint;
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
  //��û��ѡ��ĳ���ڵ�ʱ���������Ի���
  if TreeGoodType.Selected=nil then
  begin
    Handled:=False;
  end;
end;

procedure TTFrmGoodTypeManager.y1Click(Sender: TObject);
var
  str: string;
  lPTreeNode, lTreeNode: TTreeNode;
  FModuleID, FPModuleID: string;
  tempP: PWideString;
  ChildNodeInfo: PMyNodeInfo;
begin
  //
  str:='�ҵ���Ʒ����';
  if InputQuery('��Ʒ����༭','������',str) then
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
      ShowMessage('�������ݱ���ʧ�ܣ�'+FireQGoodType.DataInfo.ErrMsg);
    end;
    FireQGoodType.ApplyUpdates;
  end;

end;

end.
