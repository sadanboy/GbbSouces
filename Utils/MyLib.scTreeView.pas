unit MyLib.scTreeView;

interface

uses
  scControls, Vcl.ComCtrls, Data.DB, System.SysUtils, Datasnap.DBClient,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.DApt, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.Generics.Collections, System.TypInfo, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

const
  IDFieldName = 'ID';
  FIDFieldName = 'FID';
  MCFieldName = 'MC';

type
  PMyNodeInfo = ^TMyNodeInfo;

  TMyNodeInfo = record
    ID: string;
    MC: string;
    FID: string;
  end;

  TscTreeViewHelper = class Helper for TscTreeView
  public
    procedure CreateTreeViewFromDataSet(ADataSet: TFDMemTable);
    function GetNodeAndChildAllIdListStr(ANode: TTreeNode): string;
  end;

implementation

{ TscTreeViewHelper }

procedure TscTreeViewHelper.CreateTreeViewFromDataSet(ADataSet: TFDMemTable);
var
  BootNode: TTreeNode; // 根结点
  BootNodeInfo: PMyNodeInfo; // 根结点信息

  procedure CreateChildTree(ParentNode: TTreeNode);
  var
    ChildNode: TTreeNode; // 孩子结点
    ChildNodeInfo: PMyNodeInfo; // 孩子结点信息
    ACd: TFDMemTable;
  begin
    ACd := TFDMemTable.Create(nil);
    try
      with ACd do
      begin
        ACd.CloneCursor(ADataSet);
        Filtered := False;
        Filter := FIDFieldName + '=' + QuotedStr(PMyNodeInfo(ParentNode.Data)^.ID);
        // 获取孩子结点信息
        Filtered := True;
        First;
        while not Eof do
        begin
          New(ChildNodeInfo);
          ChildNodeInfo^.ID := FieldByName(IDFieldName).AsString;
          ChildNodeInfo^.FID := FieldByName(FIDFieldName).AsString;
          ChildNodeInfo^.MC := FieldByName(MCFieldName).AsString;
          ChildNode := Self.Items.AddChildObject(ParentNode, (ChildNodeInfo^.MC), ChildNodeInfo);
          ChildNode.SelectedIndex := 0;
          ChildNode.ImageIndex := 1;
          CreateChildTree(ChildNode); // 进行递归
          Next;
        end;
      end;
    finally
      ACd.Free;
    end;
  end;

begin
  Self.Items.BeginUpdate;
  try
    Self.Items.Clear;
    New(BootNodeInfo);
    BootNodeInfo^.ID := '0';
    BootNodeInfo^.FID := '-1';
    BootNodeInfo^.MC := '所有分类';
    BootNode := Self.Items.AddChildObject(nil, (BootNodeInfo^.MC), BootNodeInfo);
    BootNode.SelectedIndex := 0;
    BootNode.ImageIndex := 1;
    CreateChildTree(BootNode); // 进行递归
    Self.FullExpand; // 展开所有树结点
  finally
    Self.Items.EndUpdate;
  end;
end;

function TscTreeViewHelper.GetNodeAndChildAllIdListStr(ANode: TTreeNode): string;
var
  ChildNode: TTreeNode; // 孩子结点
  Ids, MC: string;

  function GetAllChildID(ANode: TTreeNode): string;
  var
    AChildNode: TTreeNode;
    AId: string;
  begin
    AChildNode := ANode.getFirstChild;
    while AChildNode <> nil do
    begin
      AId := QuotedStr(PMyNodeInfo(AChildNode.Data)^.ID);
      Ids := Ids + ',' + AId;
      GetAllChildID(AChildNode); // 递归调用
      AChildNode := ANode.GetNextChild(AChildNode);
    end;
  end;

begin
  Result := '';
  Ids := QuotedStr(PMyNodeInfo(ANode.Data)^.ID);
  GetAllChildID(ANode);
  Result := Ids;
end;

end.

