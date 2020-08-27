unit uDevPublic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, uWinPublic, cxDataStorage, cxEdit,
  DB, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBTL, cxGridDBChartView, ExtCtrls, cxTL, ActnList,
  cxLookAndFeelPainters, dxRibbon, dxBar, System.StrUtils, cxCheckGroup, cxPC,
  cxClasses, cxSplitter, cxButtonEdit, cxTextEdit, cxDBVGrid, cxInplaceContainer,
  cxPropertiesStore, cxRadioGroup, cxCheckComboBox, cxBarEditItem, System.Types,
  cxCustomPivotGrid, dxmdaset, System.Generics.Collections, cxDBEdit,
  cxDBLookupComboBox, cxGridBandedTableView,cxFindPanel;

type
  TcxGridTableControllerAccess = class(TcxGridTableController);

  TMyDev = class
    class procedure InitGridView(MyView: TcxGridTableView; iFindPanel: Boolean = True; iIndicatorWidth: Integer = 48; iGroupByBox: Boolean = False; iDataRowHeight: Integer = 28; iHeaderHeight: Integer = 38; iColumAutoWidth: Boolean = True);
  end;

  TMyCxGrid = class(TcxGrid)
    class procedure DrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    class procedure SelectionChanged(Sender: TcxCustomGridTableView);
    // 选择列为1，使用该方法必须把checkbox放在2位上
  end;

  TMyCxTreelist = class(TcxTreeList)
    class procedure DrawIndicatorCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndicatorCellViewInfo; var ADone: Boolean);
  end;

  TMycxDbColumn = class(TcxGridDBColumn)
    class procedure HeaderClick(Sender: TObject);
  end;

  TMySplitter = class(TcxSplitter)
    class procedure BeforeClose(Sender: TObject; var AllowClose: Boolean);
  end;

const
  // Indicator
  CustomIndicatorWidth: Integer = 48;
  CustomDataRowHeight: Integer = 28;
  CustomHeaderHeight: Integer = 36;
  CustomVgrdRowHeight: Integer = 28;
  CustomVgrdRowHeaderWidth: Integer = 48;


  // barManager

  // cxGrid
  // 增添一条记录,并将焦点集中在某个单元格
  { ***************************************************
    这些数据库操作均是利用cxGrid本身功能实现,实际应用中意义不大
    **************************************************** }

procedure FocusFindPanel(tbView: TcxCustomGridView);

procedure RememberProperties(MyStore: TcxPropertiesStore; MyCompoent: TComponent; iProperties: array of string);

procedure RememberGridView(MyStore: TcxPropertiesStore; MyView: TcxGridTableView; iProperties: array of string);

procedure RememberTreeList(MyStore: TcxPropertiesStore; MyTree: TcxCustomTreeList; iProperties: array of string);

procedure RememberPivotGrid(MyStore: TcxPropertiesStore; MyGrid: TcxCustomPivotGrid; iProperties: array of string);

// 从字段名获取Summary数据
function GetSummaryValue(view: TcxCustomGridView; FieldName: string): Variant;

// pivotGrid展开或闭拢
procedure PivotExpandAll(pivotGrd: TcxCustomPivotGrid; expand: Boolean = True);

// 设置操作列或选择列
procedure InitOperateColumn(col: TcxGridColumn); overload;

procedure InitNullColumn(col: TcxGridColumn);

procedure InitOperateColumn(col: TcxDBTreeListColumn); overload;

procedure InitDbVerticalGrid(vgrd: TcxDBVerticalGrid; EditRowHeight: Integer = 32);

procedure InitGridView(MyView: TcxGridTableView; iFindPanel: Boolean = True; iIndicatorWidth: Integer = 48; iGroupByBox: Boolean = False; iDataRowHeight: Integer = 28; iHeaderHeight: Integer = 38; iColumAutoWidth: Boolean = True);

procedure InitTreeList(MyTree: TcxCustomTreeList; iIndicatorWidth: Integer = 48; iGridLines: TcxTreeListGridLines = tlglBoth; iIndicator: Boolean = True; iHeader: Boolean = True; iColumAutoWidth: Boolean = True);

procedure InitTreelistCheckgroup(MyTree: TcxTreeList; iHeader: Boolean = False);

procedure cxGridAddRow(MyView: TcxGridDBTableView; col: TcxGridColumn);

procedure cxGridDeleteRow(MyView: TcxGridDBTableView);

procedure cxGridPostData(MyView: TcxGridDBTableView);
// 下述过程是根据一个字符串列表向cxgriddbChartView中添加group的

procedure SetChartGroups(StatOptions: TStringList; chartview: TcxGridDBChartView);

// 根据字符串列表 修改GridView的group
procedure SetGrdViewGroups(StatOptions: TStrings; grdView: TcxGridDBTableView);
// 根据ActionList的Category和treelist表现权限

procedure SetActionListintoTreeList(MyActLst: TActionList; treeLst: TcxTreeList);

// 动态生成Ribbon的Tab
function AddRibbonTab(ribbon: TdxRibbon; caption: string; positionIndex: Integer = 0; tag: Integer = 0): TdxRibbonTab;
// 动态生成RibbonTab的Group

function AddRibbonTabGroup(tab: TdxRibbonTab; toolbar: TdxBar; positonIndex: Integer = 0): TdxRibbonTabGroup;

// Treelist节点
function DelTreelstNode(tl: TcxCustomTreeList): Boolean;

procedure AddTreeListNode(tl: TcxDBTreeList; lvlType: Integer; KeyValue: string = '');

procedure TreeListFindStr(tl: TcxCustomTreeList; findStr: string; finding: Boolean = False; StartIndex: Integer = 0);
// item: TcxTreeListColumn;

function GetTreeSelectionIds(tl: TcxDBTreeList; Quoted: Boolean = True): TStrings;
// 从数据集加载勾选项

procedure TreeListLoadCheckData4DataSet(tl: TcxTreeList; dt: TDataSet; FieldArr: array of string);

// 移动位置
procedure MoveNode(tl: TcxDBTreeList; mType: Integer);
// 获取相关字段索引号

function GetItemIndexByFieldName(tl: TcxDBTreeList; FieldName: string): Integer;

// 获取数据集指定列的值列表
function GetDataSetValueList(dt: TDataSet; FieldName: string; Quoted: Boolean = True): TStrings;

// cxgrid移动行
procedure MoveRow(MyView: TcxGridDBTableView; mType: Integer);
// 删除Grid勾选的行，在smartRefresh模式下，多数据删除刷新有问题，需要代码删除

procedure GridDelSelectedRows(MyView: TcxCustomGridView; SelCol: TcxGridColumn);
// 获取Grid选择的行ID

function GetGridIDs(MyView: TcxCustomGridView; selColIndex, KeyColIndex: Integer;tag { 选择与全部 } : Integer = 1; Quoted: Boolean = True): TStrings;

function GetGridSelectionIds(MyView: TcxCustomGridView; Quoted: Boolean = True): TStrings;
// 删除网格中勾选的行

procedure DelGridSelRecords(MyView: TcxCustomGridView; selColIndex: Integer);

procedure GridDelSelection(MyView: TcxCustomGridView);
// 指定勾选行的值

procedure SetGridSelRecordsValue(MyView: TcxCustomGridView; selColIndex, desColIndex: Integer; Value: Variant);

procedure SetGridSelRecordsValues(MyView: TcxCustomGridView; selColIndex: Integer; iValues: string);
// 指定勾选行变化（在原来的基础上增减值）

procedure ChangeGridSelRecordsValue(MyView: TcxCustomGridView; selColIndex, desColIndex, increasement: Integer);

// 全选与不选
procedure Grid_SelAllRow(MyView: TcxCustomGridView; selColIndex: Integer; SelResult: Boolean = False; oIDS: TStrings = nil; KeyColIndex: Integer = 0);
// 设置全选与不选状态

procedure Grid_SetSelState(MyView: TcxCustomGridView; myCol: TcxGridColumn);
// 设置多选状态

procedure Grid_MultiSel(MyView: TcxCustomGridTableView; myCol: TcxGridColumn);
// 清除某个Band的子Band

procedure ClearChildBands(band: TcxGridBand);

// cxcheckgroup
procedure InitChkGroup(myChkGroup: TcxCheckGroup; itemStr: string);

procedure ChkGroupShowStr(myChkGroup: TcxCheckGroup; itemStr: string);

function GetChkGroupValue(myChkGroup: TcxCheckGroup): string;

procedure ChkGroupClear(myChkGroup: TcxCheckGroup; cType: TcxCheckBoxState = cbsUnchecked);

// cxcheckcombobox
function GetCheckComboboxValue(barItem: TcxBarEditItem; Quoted: Boolean = True): string; overload;

function GetCheckComboboxValue(chkCbb: TcxCheckComboBox; Quoted: Boolean = True): string; overload;

// cxPageControl
procedure ClearPC(pc: TcxPageControl);

function AddPage(pc: TcxPageControl; iCaption: string): TcxTabSheet;

procedure ActivateTabSheet(pc: TcxPageControl; iCount: Integer);

// cxRadioGroup
procedure InitRadioGroup(radioGrp: TcxRadioGroup; itemStr: string); overload;

procedure InitRadioGroup(radioGrpProperties: TcxRadioGroupProperties; itemStr: string); overload;

procedure InitRadioGroup(radioGrpProperties: TcxRadioGroupProperties; dt: TDataSet; ValueFieldName: string); overload;

// 设置数据源
procedure SetControlDataSource(container: TWinControl; ds: TDataSource);

implementation

function GetSummaryValue(view: TcxCustomGridView; FieldName: string): Variant;
var
  AItem: TcxGridDBTableSummaryItem;
  i: Integer;
begin
  for i := 0 to view.DataController.Summary.FooterSummaryItems.Count - 1 do
  begin
    AItem := TcxGridDBTableSummaryItem(view.DataController.Summary.FooterSummaryItems[i]);
    if AItem.FieldName = FieldName then
    begin
      Result := view.DataController.Summary.FooterSummaryValues[i];
      Break;
    end;
  end;

end;

// pivotGrid展开或闭拢
procedure PivotExpandAll(pivotGrd: TcxCustomPivotGrid; expand: Boolean = True);
var
  i: Integer;
begin
  for i := 0 to pivotGrd.FieldCount - 1 do
  begin
    if (pivotGrd.Fields[i].Area = faRow) or (pivotGrd.Fields[i].Area = faColumn) then
    begin
      if expand then
        pivotGrd.Fields[i].ExpandAll
      else
        pivotGrd.Fields[i].CollapseAll;
    end;

  end;
end;

// 清除某个Band的子Band
procedure ClearChildBands(band: TcxGridBand);
var
  i: Integer;
begin
  if band.ChildBandCount = 0 then
    Exit;
  for i := band.ChildBandCount - 1 downto 0 do
    band.ChildBands[i].Free;
end;

procedure SetControlDataSource(container: TWinControl; ds: TDataSource);
var
  i: Integer;
begin
  with container do
  begin
    for i := 0 to ControlCount - 1 do
    begin
      if (Controls[i] is TcxDBTextEdit) then
      begin
        TcxDBTextEdit(Controls[i]).DataBinding.DataSource := ds;
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

      if (Controls[i] is TcxDBMemo) then
      begin
        TcxDBMemo(Controls[i]).DataBinding.DataSource := ds;
        Continue;
      end;
    end;
  end;
end;

procedure ActivateTabSheet(pc: TcxPageControl; iCount: Integer);
var
  i: Integer;
begin
  i := pc.ActivePageIndex;
  i := i + iCount;
  if (i > -1) and (i < pc.PageCount) then
    pc.ActivePageIndex := i;
end;

function AddPage(pc: TcxPageControl; iCaption: string): TcxTabSheet;
begin
  Result := TcxTabSheet.Create(pc);
  with Result do
  begin
    PageControl := pc;
    caption := iCaption;
  end;

  pc.ActivePage := Result;
end;

// 从数据集加载勾选项
procedure TreeListLoadCheckData4DataSet(tl: TcxTreeList; dt: TDataSet; FieldArr: array of string);
var
  dtList: TObjectlist<TdxMemData>;

  procedure addChildNode(curNode: TcxTreeListNode; pID: string);
  const
    filter_t: string = 'pid=%s';
  var
    childNode: TcxTreeListNode;
    i: Integer;
    myFilter, ppID, curId: string;
    memDt: TdxMemData;
  begin
    myFilter := Format(filter_t, [quotedstr(pID)]);
    filterDataSet(dt, myFilter);
    memDt := TdxMemData.Create(nil);
    memDt.LoadFromDataSet(dt);
    dtList.Add(memDt);
    memDt.First;
    while not memDt.eof do
    begin
      childNode := tl.AddChild(curNode);
      with childNode do
      begin
        CheckGroupType := ncgCheckGroup;
        for i := 0 to tl.ColumnCount - 1 do
        begin
          // ShowMessage(memDt.Fields[i].FieldName);
          Values[i] := memDt.FindField(FieldArr[i]).Value;
        end;
      end;
      ppID := memDt.FindField('Id').AsString;
      addChildNode(childNode, ppID);
      memDt.Next;
    end;
  end;

begin
  dtList := TObjectlist<TdxMemData>.Create();
  tl.BeginUpdate;
  try
    InitTreelistCheckgroup(tl);
    addChildNode(nil, '-1');
  finally
    tl.EndUpdate;
    dtList.Free;
  end;
end;

function GetCheckComboboxValue(chkCbb: TcxCheckComboBox; Quoted: Boolean = True): string;
var
  itemArr: TStringDynArray;
  items: TStrings;
  i, index: Integer;
  item: string;
begin
  Result := string.Empty;
  if VarToStr(chkCbb.EditValue) = string.Empty then
    Exit;
  itemArr := SplitString(AnsiReplaceStr(VarToStr(chkCbb.EditValue), ';', ''), ',');
  items := TStringList.Create;
  items.StrictDelimiter := True;

  for i := Low(itemArr) to High(itemArr) do
  begin
    index := StrToInt(itemArr[i]);
    item := TcxCheckComboBoxProperties(chkCbb.Properties).items[index].Description;
    if Quoted then
      items.Add(quotedstr(item))
    else
      items.Add(item);
  end;
  if items.Count > 0 then
    Result := items.CommaText;
  items.Free;
end;

function GetCheckComboboxValue(barItem: TcxBarEditItem; Quoted: Boolean): string;
var
  itemArr: TStringDynArray;
  items: TStrings;
  i, index: Integer;
  item: string;
begin
  Result := string.Empty;
  if VarToStr(barItem.EditValue) = string.Empty then
    Exit;
  itemArr := SplitString(AnsiReplaceStr(VarToStr(barItem.EditValue), ';', ''), ',');
  items := TStringList.Create;
  items.StrictDelimiter := True;

  for i := Low(itemArr) to High(itemArr) do
  begin
    index := StrToInt(itemArr[i]);
    item := TcxCheckComboBoxProperties(barItem.Properties).items[index].Description;
    if Quoted then
      items.Add(quotedstr(item))
    else
      items.Add(item);
  end;
  if items.Count > 0 then
    Result := items.CommaText;
  items.Free;
end;

procedure GridDelSelection(MyView: TcxCustomGridView);
var
  i: Integer;
  myrecord: TcxCustomGridRecord;
begin
  with TcxGridDBTableView(MyView).Controller do
  begin
    if SelectedRecordCount > 1 then
    begin
      for i := SelectedRecordCount - 1 downto 0 do
      begin
        myrecord := SelectedRecords[i];
        TcxGridDBTableView(MyView).DataController.DeleteRecord(myrecord.index);
      end;
    end;
  end;
end;

procedure GridDelSelectedRows(MyView: TcxCustomGridView; SelCol: TcxGridColumn);
var
  sel: Variant;
  i: Integer;
begin
  for i := MyView.DataController.RecordCount - 1 downto 0 do
  begin
    sel := MyView.DataController.Values[i, SelCol.index];
    if VarIsNull(sel) then
      Continue;
    if sel then
    begin
      MyView.DataController.DeleteRecord(i);
    end;
  end;
end;

function GetGridSelectionIds(MyView: TcxCustomGridView; Quoted: Boolean = True): TStrings;
var
  i: Integer;
  iid: string;
  myrecord: TcxCustomGridRecord;
begin
  Result := TStringList.Create;
  Result.StrictDelimiter := True;
  with TcxGridDBTableView(MyView).Controller do
  begin
    if SelectedRecordCount > 0 then
    begin
      for i := 0 to SelectedRecordCount - 1 do
      begin
        myrecord := SelectedRecords[i];
        iid := VarToStr(myrecord.Values[TcxGridDBTableView(MyView).DataController.GetItemByFieldName('id').index]);
        if Quoted then
          Result.Add(quotedstr(iid))
        else
          Result.Add(iid);
        // 使用record无法更新数据，改成Sql更新
        // myrecord.Values[tbViewData.DataController.GetItemByFieldName('class_id').Index] := dmMain.qryClass.FindField('Id').AsString;
      end;
    end;
  end;
end;

function GetTreeSelectionIds(tl: TcxDBTreeList; Quoted: Boolean): TStrings;
var
  i: Integer;
  iid: string;
  myNode: TcxTreeListNode;
begin
  Result := TStringList.Create;
  Result.StrictDelimiter := True;
  if tl.SelectionCount > 0 then
  begin
    for i := 0 to tl.SelectionCount - 1 do
    begin
      myNode := tl.Selections[i];
      iid := myNode.Values[GetItemIndexByFieldName(tl, 'Id')];
      if Quoted then
        iid := quotedstr(iid);
      Result.Add(iid);
    end;
  end;
end;

procedure FocusFindPanel(tbView: TcxCustomGridView);
begin
  //TcxGridTableControllerAccess(tbView.Controller).FindPanel.Edit.SetFocus;
  //TcxGridTableControllerAccess(tbView.Controller).FindPanel.Edit.SelectAll;
end;

procedure RememberProperties(MyStore: TcxPropertiesStore; MyCompoent: TComponent; iProperties: array of string);
var
  i: Integer;
begin
  with MyStore do
  begin
    with Components.Add do
    begin
      Component := MyCompoent;
      for i := Low(iProperties) to High(iProperties) do
      begin
        Properties.Add(iProperties[i]);
      end;
    end;
  end;
end;

procedure RememberGridView(MyStore: TcxPropertiesStore; MyView: TcxGridTableView; iProperties: array of string);
var
  i: Integer;
begin
  for i := 0 to MyView.ColumnCount - 1 do
  begin
    RememberProperties(MyStore, MyView.Columns[i], iProperties);
  end;
end;

procedure RememberPivotGrid(MyStore: TcxPropertiesStore; MyGrid: TcxCustomPivotGrid; iProperties: array of string);
var
  i: Integer;
begin
  for i := 0 to MyGrid.FieldCount - 1 do
  begin
    RememberProperties(MyStore, MyGrid.Fields[i], iProperties);
  end;
end;

procedure RememberTreeList(MyStore: TcxPropertiesStore; MyTree: TcxCustomTreeList; iProperties: array of string);
var
  i: Integer;
begin
  for i := 0 to MyTree.ColumnCount - 1 do
  begin
    RememberProperties(MyStore, MyTree.Columns[i], iProperties);
  end;
end;

function GetItemIndexByFieldName(tl: TcxDBTreeList; FieldName: string): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to tl.DataController.ItemCount - 1 do
  begin
    if UpperCase(TcxDBTreeListColumn(tl.Columns[i]).DataBinding.FieldName) = UpperCase(FieldName) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

// 移动Treelist节点
procedure MoveNode(tl: TcxDBTreeList; mType: Integer);
var
  curNode, destNode: TcxTreeListNode;
  curId, DestId, curPosId, destPosId: string;
  KeyIndex, PosIndex: Integer;
  dt: TDataSet;
begin
  curNode := tl.FocusedNode;
  if curNode = nil then
    Exit;

  case mType of
    0:
      destNode := curNode.getPrevSibling;
    1:
      destNode := curNode.getNextSibling;
  end;

  if destNode = nil then
    Exit;
  KeyIndex := GetItemIndexByFieldName(tl, 'Id');
  PosIndex := GetItemIndexByFieldName(tl, 'Position_Id');
  if (KeyIndex = -1) or (PosIndex = -1) then
  begin
    Myerror('字段没有找到！');
    Exit;
  end;
  curId := curNode.Values[KeyIndex];
  DestId := destNode.Values[KeyIndex];

  curPosId := curNode.Values[PosIndex];
  destPosId := destNode.Values[PosIndex];

  if curId = DestId then
    Exit;

  dt := tl.DataController.DataSource.DataSet;
  with dt do
  begin
    try
      DisableControls;
      Edit;
      FindField('position_id').AsString := destPosId;
      Post;
      if Locate('Id', DestId, []) then
      begin
        Edit;
        FindField('Position_Id').AsString := curPosId;
        Post;
      end;
      Locate('Id', curId, []);
    finally
      EnableControls;
    end;

  end;
  postDataset(dt);
end;

// cxgrid移动行
procedure MoveRow(MyView: TcxGridDBTableView; mType: Integer);
var
  dt: TDataSet;
  oPos, nPos, oid, nid: string;
begin
  dt := MyView.DataController.DataSource.DataSet;

  with dt do
  begin
    try
      DisableControls;
      oid := FindField('Id').AsString;
      oPos := FindField('Position_Id').AsString;

      case mType of
        0:
          MoveBy(-1);
        1:
          MoveBy(1);
      end;

      nid := FindField('Id').AsString;
      nPos := FindField('Position_Id').AsString;

      if oid = nid then
        Exit;
      Edit;
      FindField('Position_Id').AsString := oPos;
      Post;

      if Locate('id', oid, []) then
      begin
        Edit;
        FindField('Position_Id').AsString := nPos;
        Post;
      end;
    finally
      EnableControls;
    end;
  end;

  postDataset(dt);
end;

// 用来显示Check树形结构的
procedure InitTreelistCheckgroup(MyTree: TcxTreeList; iHeader: Boolean = False);
begin
  with MyTree do
  begin
    Clear;
    with OptionsView do
    begin
      ColumnAutoWidth := True;
      CheckGroups := True;
      Headers := False;
    end;

    with OptionsData do
    begin
      CancelOnExit := False;
      Editing := False;
    end;
  end;
end;

procedure InitOperateColumn(col: TcxDBTreeListColumn);
begin
  with col.Options do
  begin
    ShowEditButtons := TcxedititemshowEditButtons.eisbAlways;
    Sorting := False;
  end;

  if col.Properties is TcxButtonEditProperties then
  begin
    TcxButtonEditProperties(col.Properties).ViewStyle := TcxTextEditViewStyle.vsButtonsOnly;
  end;
end;

procedure InitOperateColumn(col: TcxGridColumn);
begin
  col.VisibleForCustomization := False;
  with col.Options do
  begin
    Filtering := False;
    FilteringAddValueItems := False;
    FilteringFilteredItemsList := False;
    FilteringMRUItemsList := False;
    FilteringPopup := False;
    FilteringPopupMultiSelect := False;
    FilteringWithFindPanel := False;
    ShowEditButtons := TcxGridItemShowEditButtons.isebAlways;
    Sorting := False;
  end;

  if col.Properties is TcxButtonEditProperties then
  begin
    TcxButtonEditProperties(col.Properties).ViewStyle := TcxTextEditViewStyle.vsButtonsOnly;
  end;
end;

procedure InitNullColumn(col: TcxGridColumn);
begin
  col.VisibleForCustomization := False;
  with col.Options do
  begin
    Filtering := False;
    FilteringAddValueItems := False;
    FilteringFilteredItemsList := False;
    FilteringMRUItemsList := False;
    FilteringPopup := False;
    FilteringPopupMultiSelect := False;
    FilteringWithFindPanel := False;
    ShowEditButtons := TcxGridItemShowEditButtons.isebNever;
    Sorting := False;
    Focusing := False;
  end;
end;

procedure InitDbVerticalGrid(vgrd: TcxDBVerticalGrid; EditRowHeight: Integer = 32);
begin
  with vgrd do
  begin
    OptionsBehavior.FocusFirstCellOnNewRecord := True;
    OptionsBehavior.FocusCellOnCycle := True;
    OptionsBehavior.GoToNextCellOnEnter := True;
    OptionsBehavior.GoToNextCellOnTab := True;

    OptionsData.CancelOnExit := False;

    OptionsView.RowHeight := EditRowHeight;
  end;
end;

procedure InitTreeList(MyTree: TcxCustomTreeList; iIndicatorWidth: Integer = 48; iGridLines: TcxTreeListGridLines = tlglBoth; iIndicator: Boolean = True; iHeader: Boolean = True; iColumAutoWidth: Boolean = True);
var
  i: Integer;
begin
  if MyTree is TcxDBTreeList then
    TcxDBTreeList(MyTree).RootValue := -1;

  with MyTree.OptionsView do
  begin
    Indicator := iIndicator;
    IndicatorWidth := iIndicatorWidth;
    Headers := iHeader;
    GridLines := iGridLines;
    ColumnAutoWidth := iColumAutoWidth;
  end;

  with MyTree.OptionsBehavior do
  begin
    if MyTree.OptionsData.Editing then
    begin
      FocusCellOnCycle := True;
      GoToNextCellOnEnter := True;
      GoToNextCellOnTab := True;
    end;
  end;

  with MyTree.OptionsData do
  begin
    CancelOnExit := False;
  end;

  with MyTree.OptionsCustomizing do
  begin
    ColumnsQuickCustomization := True;
  end;

  for i := 0 to MyTree.ColumnCount - 1 do
  begin
    MyTree.Columns[i].caption.AlignHorz := taCenter;
  end;

  if iIndicatorWidth > 30 then
    if (MyTree is TcxTreeList) then
      TcxTreeList(MyTree).OnCustomDrawIndicatorCell := TMyCxTreelist.DrawIndicatorCell
    else if MyTree is TcxDBTreeList then
      TcxDBTreeList(MyTree).OnCustomDrawIndicatorCell := TMyCxTreelist.DrawIndicatorCell;
end;

procedure InitGridView(MyView: TcxGridTableView; iFindPanel: Boolean = True; iIndicatorWidth: Integer = 48; iGroupByBox: Boolean = False; iDataRowHeight: Integer = 28; iHeaderHeight: Integer = 38; iColumAutoWidth: Boolean = True);
var
  i: Integer;
begin
  MyView.FindPanel.InfoText:='查找内容';
  if iFindPanel then
    MyView.FindPanel.DisplayMode := fpdmAlways
  else
   MyView.FindPanel.DisplayMode := fpdmNever;

  with MyView.OptionsView do
  begin
    Indicator := True;
    IndicatorWidth := iIndicatorWidth;
    GroupByBox := iGroupByBox;
    DataRowHeight := iDataRowHeight;
    HeaderHeight := iHeaderHeight;
    ColumnAutoWidth := iColumAutoWidth;
    GridLineColor := clActiveCaption;
  end;

  with MyView.OptionsBehavior do
  begin
    if MyView.OptionsData.Editing then
    begin
      FocusCellOnCycle := True;
      FocusCellOnTab := True;
      FocusFirstCellOnNewRecord := True;
      GoToNextCellOnEnter := True;
    end;
  end;

  with MyView.OptionsData do
  begin
    CancelOnExit := False;
  end;
  with MyView.OptionsCustomize do
  begin
    ColumnsQuickCustomization := True;
  end;
  // 中文程序如此
  MyView.DataController.Options := MyView.DataController.Options + [dcoAnsiSort, dcoSortByDisplayText];

  for i := 0 to MyView.ColumnCount - 1 do
    MyView.Columns[i].HeaderAlignmentHorz := TAlignment.taCenter;

  if iIndicatorWidth > 20 then
    MyView.OnCustomDrawIndicatorCell := TMyCxGrid.DrawIndicatorCell;
end;

procedure ClearPC(pc: TcxPageControl);
var
  i: Integer;
begin
  for i := pc.PageCount - 1 downto 0 do
    pc.Pages[i].Free;
end;

procedure Grid_MultiSel(MyView: TcxCustomGridTableView; myCol: TcxGridColumn);
var
  i: Integer;
  myrecord: TcxCustomGridRecord;
begin
  with MyView.Controller do
  begin
    if SelectedRecordCount > 1 then
    begin
      for i := 0 to SelectedRecordCount - 1 do
      begin
        myrecord := SelectedRecords[i];
        myrecord.Values[myCol.index] := True;
      end;
    end;
  end;
end;

procedure ChkGroupClear(myChkGroup: TcxCheckGroup; cType: TcxCheckBoxState = cbsUnchecked);
var
  i: Integer;
begin
  for i := 0 to myChkGroup.Properties.items.Count - 1 do
  begin
    myChkGroup.States[i] := cType;
  end;
end;

function GetChkGroupValue(myChkGroup: TcxCheckGroup): string;
var
  i: Integer;
  item: TcxCheckGroupItem;
  tmpStrs: TStrings;
begin
  Result := '';
  tmpStrs := TStringList.Create;
  tmpStrs.StrictDelimiter := True;
  for i := 0 to myChkGroup.Properties.items.Count - 1 do
  begin
    item := myChkGroup.Properties.items[i];
    if myChkGroup.States[i] = cbsChecked then
      tmpStrs.Add(item.caption);
  end;
  if tmpStrs.Count > 0 then
    Result := tmpStrs.CommaText;
  tmpStrs.Free;
end;

procedure InitChkGroup(myChkGroup: TcxCheckGroup; itemStr: string);
var
  tmpStrs: TStrings;
  i: Integer;
begin
  // 初始化专业及分类
  tmpStrs := TStringList.Create;
  with tmpStrs do
  begin
    StrictDelimiter := True;
    CommaText := itemStr;
  end;
  myChkGroup.Properties.items.Clear;
  for i := 0 to tmpStrs.Count - 1 do
  begin
    with myChkGroup.Properties.items.Add do
    begin
      caption := tmpStrs[i];
      myChkGroup.States[i] := cbsUnchecked;
      tag := i;
    end;
  end;
  tmpStrs.Free;
end;

procedure ChkGroupShowStr(myChkGroup: TcxCheckGroup; itemStr: string);
var
  tmpStrs: TStrings;
  i, index: Integer;
  item: TcxCheckGroupItem;
begin
  ChkGroupClear(myChkGroup, cbsUnchecked);
  tmpStrs := TStringList.Create;
  tmpStrs.StrictDelimiter := True;
  tmpStrs.CommaText := itemStr;
  for i := 0 to myChkGroup.Properties.items.Count - 1 do
  begin
    item := myChkGroup.Properties.items[i];
    if (tmpStrs.IndexOf(item.caption) > -1) then
      myChkGroup.States[i] := cbsChecked;
  end;
  tmpStrs.Free;
end;

procedure TreeListFindStr(tl: TcxCustomTreeList; findStr: string; finding: Boolean = False; StartIndex: Integer = 0);
// item: TcxTreeListColumn;
var
  i, j, sIndex: Integer;
  node: TcxTreeListNode;
  Value: string;
begin
  if findStr = '' then
    Exit;

  with tl do
  begin
    if (StartIndex > 0) and (StartIndex = AbsoluteCount - 1) then
      Exit;
    if finding then
      sIndex := StartIndex + 1
    else
      sIndex := 0;
    for i := sIndex to AbsoluteCount - 1 do
    begin
      node := AbsoluteItems[i];
      for j := 0 to ColumnCount - 1 do
      begin
        Value := node.Texts[j];
        if AnsiContainsStr(Value, UpperCase(findStr)) then
        begin
          FocusedNode := node;
          node.MakeVisible;
          Exit;
        end;
      end;
    end;
  end;
end;

procedure Grid_SetSelState(MyView: TcxCustomGridView; myCol: TcxGridColumn);
var
  r: Boolean;
  index: Integer;
begin
  index := 1;
  case myCol.HeaderImageIndex of
    0:
      begin
        r := True;
        index := 1;
      end;
    1:
      begin
        r := False;
        index := 0;
      end;
  end;
  Grid_SelAllRow(MyView, myCol.index, r);
  myCol.HeaderImageIndex := index;
end;

procedure Grid_SelAllRow(MyView: TcxCustomGridView; selColIndex: Integer; SelResult: Boolean = False; oIDS: TStrings = nil; KeyColIndex: Integer = 0);
var
  i, rIndex: Integer;
  myKey: string;
begin
  MyView.BeginUpdate();
  for i := 0 to MyView.DataController.RowCount - 1 do
  begin
    rIndex := MyView.DataController.GetRowInfo(i).RecordIndex;
    if oIDS <> nil then
    begin
      myKey := VarToStr(MyView.DataController.Values[rIndex, KeyColIndex]);
      if oIDS.IndexOf(myKey) > -1 then
        MyView.DataController.Values[rIndex, selColIndex] := SelResult
      else
        MyView.DataController.Values[rIndex, selColIndex] := not SelResult;
    end
    else
      MyView.DataController.Values[rIndex, selColIndex] := SelResult;
  end;
  MyView.DataController.Post(True);
  MyView.EndUpdate;
end;

function GetDataSetValueList(dt: TDataSet; FieldName: string; Quoted: Boolean): TStrings;
var
  item: string;
begin
  Result := TStringList.Create;
  with dt do
  begin
    First;
    while not eof do
    begin
      item := FindField(FieldName).AsString;
      if Quoted then
      begin
        item := quotedstr(item);
      end;
      Result.Add(item);
      Next;
    end;
  end;
end;

procedure DelGridSelRecords(MyView: TcxCustomGridView; selColIndex: Integer);
var
  i: Integer;
begin
  with MyView.DataController do
    for i := RecordCount - 1 downto 0 do
    begin
      if Values[i, selColIndex] = True then
      begin
        DeleteRecord(i);
        // FocusedRecordIndex := i;
        // DeleteFocused;
      end;
    end;
end;

procedure SetGridSelRecordsValue(MyView: TcxCustomGridView; selColIndex, desColIndex: Integer; Value: Variant);
var
  i: Integer;
begin
  with MyView.DataController do
  begin
    for i := RecordCount - 1 downto 0 do
    begin
      if Values[i, selColIndex] = True then
      begin
        SetValue(i, desColIndex, Value);
      end;
    end;
    Post;
  end;
end;

procedure SetGridSelRecordsValues(MyView: TcxCustomGridView; selColIndex: Integer; iValues: string);
var
  i, j: Integer;
  tmpStrs: TStrings;
  desColIndex: Integer;
begin
  tmpStrs := TStringList.Create;
  with tmpStrs do
  begin
    StrictDelimiter := True;
    CommaText := AnsiReplaceStr(iValues, '''', '');
  end;
  with MyView.DataController do
  begin
    for i := RecordCount - 1 downto 0 do
    begin
      if Values[i, selColIndex] = True then
      begin
        for j := 0 to tmpStrs.Count - 1 do
        begin
          desColIndex := TcxGridDBTableView(MyView).DataController.GetItemByFieldName(tmpStrs.Names[j]).index;
          // SetValue(i, desColIndex, tmpStrs.ValueFromIndex[j]);
          Values[i, desColIndex] := tmpStrs.ValueFromIndex[j];
          Post(True);
        end;
      end;
    end;
  end;
  tmpStrs.Free;
end;

procedure ChangeGridSelRecordsValue(MyView: TcxCustomGridView; selColIndex, desColIndex, increasement: Integer);
var
  i, rIndex: Integer;
  oValue, mysel: Variant;
begin
  with MyView.DataController do
  begin
    for i := RowCount - 1 downto 0 do
    begin
      mysel := MyView.DataController.GetRowValue(MyView.DataController.GetRowInfo(i), selColIndex);
      if mysel = True then
      begin
        oValue := MyView.DataController.GetRowValue(MyView.DataController.GetRowInfo(i), desColIndex);
        rIndex := MyView.DataController.GetRowInfo(i).RecordIndex;
        SetValue(rIndex, desColIndex, oValue + increasement);
      end;
    end;
    Post();
  end;
end;

function GetGridIDs(MyView: TcxCustomGridView; selColIndex, KeyColIndex: Integer;tag { 选择与全部 } : Integer = 1; Quoted: Boolean = True): TStrings;
var
  i: Integer;
  myKey: Variant;
  mysel: Variant;
  myRowInfo: TcxRowInfo;
  tmpBool: Boolean;
begin
  MyView.DataController.Post();
  Result := TStringList.Create;
  Result.StrictDelimiter := True;
  for i := 0 to MyView.DataController.RowCount - 1 do
  begin
    try
      myKey := MyView.DataController.GetRowValue(MyView.DataController.GetRowInfo(i), KeyColIndex);
      if VarIsNull(myKey) then
        Continue;
      myRowInfo := MyView.DataController.GetRowInfo(i);
      if tag = 1 then // 如果是选择性输出
      begin
        mysel := MyView.DataController.GetRowValue(MyView.DataController.GetRowInfo(i), selColIndex);
        if VarIsNull(mysel) then
          Continue;
        if TryStrToBool(mysel, tmpBool) = False then
          Continue;

        if not tmpBool then
          Continue;
      end;
      if Quoted then
        Result.Add(quotedstr(VarToStr(myKey)))
      else
        Result.Add(VarToStr(myKey));
    except
      Continue;
    end;
  end;

end;

{ var
  i: Integer;
  myKey, mysel: Variant;
  begin
  MyView.DataController.Post();
  Result := TStringList.Create;
  Result.StrictDelimiter := True;
  for i := 0 to MyView.DataController.RecordCount - 1 do
  begin
  myKey := MyView.DataController.GetValue(i, KeyColIndex);
  if VarIsNull(myKey) then
  Exit;
  mysel := MyView.DataController.GetValue(i, selColIndex);
  if tag = 1 then
  begin
  if VarIsNull(mysel) then
  Continue;
  if not mysel then
  Continue;
  end;
  if Quoted then
  Result.Add(quotedstr(VarToStr(myKey)))
  else
  Result.Add(VarToStr(myKey));
  end;

  end; }

procedure AddTreeListNode(tl: TcxDBTreeList; lvlType: Integer; KeyValue: string = '');
var
  node: TcxTreeListNode;
  parID: Variant;
  myDT: TDataSet;

  function GetDataSet: TDataSet;
  begin
    Result := tl.DataController.DataSource.DataSet;
  end;

begin
  myDT := GetDataSet;
  postDataset(myDT);
  node := tl.FocusedNode;
  if node = nil then
  begin
    parID := tl.RootValue;
  end
  else
    case lvlType of
      0:
        begin
          parID := myDT.FindField(tl.DataController.ParentField).Value;
        end;
      1:
        begin
          parID := myDT.FindField(tl.DataController.KeyField).Value;
        end;
    end;
  myDT.Append;
  if KeyValue <> '' then
    myDT[tl.DataController.KeyField] := KeyValue
  else
    myDT[tl.DataController.KeyField] := CreateSortID;
  myDT[tl.DataController.ParentField] := parID;
  if myDT.FindField('Position_Id') <> nil then
    myDT['Position_Id'] := myDT['Id'];
  myDT.Post;
  tl.SetFocus;
  tl.VisibleColumns[0].Editing := True;
end;

function DelTreelstNode(tl: TcxCustomTreeList): Boolean;
var
  node: TcxTreeListNode;
begin
  Result := False;
  if TMyMsgBox.Message('是否确认要删除当前记录?') <> mrYES then
    Exit;
  node := tl.FocusedNode;
  if node <> nil then
  begin
    if node.HasChildren = True then
      node.DeleteChildren;
    node.Delete;
  end;
  Result := True;
end;

function AddRibbonTab(ribbon: TdxRibbon; caption: string; positionIndex: Integer = 0; tag: Integer = 0): TdxRibbonTab;
var
  myRibbonTab: TdxRibbonTab;
begin
  myRibbonTab := ribbon.Tabs.Add;
  myRibbonTab.caption := caption;
  // myRibbonTab.Index := positionIndex;
  myRibbonTab.tag := tag;
  myRibbonTab.Name := 'RibbonTab' + IntToStr(tag);
  Result := myRibbonTab;
  // TODO -cMM: TfrmMainOriginal.AddRibbonTab default body inserted
end;

function AddRibbonTabGroup(tab: TdxRibbonTab; toolbar: TdxBar; positonIndex: Integer = 0): TdxRibbonTabGroup;
var
  mygrp: TdxRibbonTabGroup;
begin
  mygrp := tab.Groups.Add;
  mygrp.toolbar := toolbar;
  mygrp.index := positonIndex;
  Result := mygrp;
  // TODO -cMM: TfrmMainOriginal.AddRibbonTabGroup default body inserted
end;

procedure cxGridAddRow(MyView: TcxGridDBTableView; col: TcxGridColumn);
begin
  MyView.DataController.Append;
  col.Editing := True;
end;

procedure cxGridDeleteRow(MyView: TcxGridDBTableView);
begin
  // TODO -cMM: cxGridDeleteRow default body inserted
  if TMyMsgBox.Message('是否确认要删除当前记录?') = IDYES then
    MyView.DataController.DeleteSelection;
end;

procedure cxGridPostData(MyView: TcxGridDBTableView);
begin
  // TODO -cMM: cxGridPostData default body inserted
  MyView.DataController.Post;
end;

// 注意,使用该方法主要是用来计算数量(比如人数),这种情况下series通常不会变化
// statOptions是分组使用的字段名列表
procedure SetChartGroups(StatOptions: TStringList; chartview: TcxGridDBChartView);
var
  i: Integer;
  mygrp: TcxGridDBChartDataGroup;
begin
  chartview.ClearDataGroups;
  for i := 0 to StatOptions.Count - 1 do
  begin
    mygrp := chartview.CreateDataGroup;
    mygrp.DataBinding.FieldName := StatOptions[i];
    // mygrp.DisplayText:=StatOptions.ValueFromIndex[i];
  end;
end;

procedure SetGrdViewGroups(StatOptions: TStrings; grdView: TcxGridDBTableView);
var
  i: Integer;
begin
  grdView.DataController.Groups.ClearGrouping;
  for i := 0 to StatOptions.Count - 1 do
  begin
    TcxGridDBColumn(grdView.DataController.GetItemByFieldName(StatOptions[i])).GroupIndex := i;
  end;
end;

procedure SetActionListintoTreeList(MyActLst: TActionList; treeLst: TcxTreeList);
var
  cates: TStrings;
  i, cateCount: Integer;
  node, actionNode: TcxTreeListNode;
  act: TAction;
begin
  treeLst.Clear;
  treeLst.Root.CheckGroupType := ncgCheckGroup;
  cates := TStringList.Create;
  with MyActLst do
  begin
    for i := 0 to ActionCount - 1 do
    begin
      act := TAction(actions[i]);
      if cates.IndexOf(act.Category) = -1 then
        cates.Add(act.Category);
    end;
    // 循环加入根节点
    for cateCount := 0 to cates.Count - 1 do
    begin
      node := treeLst.AddChild(nil);
      with node do
      begin
        CheckGroupType := ncgCheckGroup;
        CheckState := cbsUnchecked;
        AssignValues([cates[cateCount], '']);
        ImageIndex := 104;
      end;
      // 选择性加入子节点
      for i := 0 to ActionCount - 1 do
      begin
        act := TAction(actions[i]);
        if act.Category = cates[cateCount] then
        begin
          actionNode := node.AddChild;
          with actionNode do
          begin
            AssignValues([act.caption, act.Name]);

            // 判定是否选择

            ImageIndex := act.ImageIndex;
          end
        end;
      end;
    end;
  end;
  cates.Free;
end;

{ TMyCxGrid }

class procedure TMyCxGrid.DrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AButtonState: TcxButtonState;
  clFont, clBrush: TColor;
  Value: string;
begin
  if (AViewInfo is TcxGridIndicatorHeaderItemViewInfo) then
  begin
    AButtonState := TcxButtonState.cxbsHot;
    with ACanvas.Font do
    begin
      // Style := Style + [fsBold];
      Color := $004040FF;
      // Size:=8;
    end;
    clFont := ACanvas.Font.Color;
    clBrush := ACanvas.Brush.Color;
    Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds, AViewInfo.ContentBounds, [], [bLeft, bright, bBottom, btop], AButtonState, taCenter, vaCenter, False, False, '☰', ACanvas.Font, clFont, clBrush);
    ADone := True;
  end;

  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;

  Value := IntToStr(TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.index + 1);
  if TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.Focused then
  begin
    AButtonState := cxbsHot;
    clFont := clRed;
    clBrush := clYellow;
    Value := Value; //+ ' ☆';
  end
  else
  begin
    AButtonState := cxbsNormal;
    clFont := ACanvas.Font.Color;
    clBrush := ACanvas.Brush.Color;
  end;
  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds, AViewInfo.ContentBounds, [], [bLeft, bright, bBottom], AButtonState, taCenter, vaCenter, False, False, Value, ACanvas.Font, clFont, clBrush);
  ADone := True;
end;

class procedure TMyCxGrid.SelectionChanged(Sender: TcxCustomGridTableView);
var
  i: Integer;
  myrecord: TcxCustomGridRecord;
begin
  with Sender.Controller do
  begin
    if SelectedRecordCount > 1 then
    begin
      for i := 0 to SelectedRecordCount - 1 do
      begin
        myrecord := SelectedRecords[i];
        myrecord.Values[1] := True;
      end;
    end;
  end;
end;

{ TMySplitter }

class procedure TMySplitter.BeforeClose(Sender: TObject; var AllowClose: Boolean);
begin
  AllowClose := False;
end;

{ TMyCxTreelist }

class procedure TMyCxTreelist.DrawIndicatorCell(Sender: TcxCustomTreeList; ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndicatorCellViewInfo; var ADone: Boolean);
var
  AButtonState: TcxButtonState;
  clFont, clBrush: TColor;
  Value: string;
begin
  inherited;
  if (AViewInfo.Position = tlipColumns) then
  begin
    AButtonState := TcxButtonState.cxbsHot;

    with ACanvas.Font do
    begin
      // Style := Style + [fsBold];
      Color := clRed;
    end;
    clFont := ACanvas.Font.Color;
    clBrush := ACanvas.Brush.Color;
    Value := '配置';
    Sender.LookAndFeel.Painter.DrawHeader(ACanvas, AViewInfo.BoundsRect, AViewInfo.TextBounds, [], cxBordersAll, AButtonState, taCenter, TcxAlignmentVert(vaCenter), False, False, Value, ACanvas.Font, clFont, clBrush);
    ADone := True;
  end;

  if AViewInfo.node = nil then
    Exit;

  Value := IntToStr(AViewInfo.node.AbsoluteIndex + 1);
  if AViewInfo.node.Focused then
  begin
    AButtonState := cxbsHot;
    clFont := clRed;
    clBrush := clYellow;
    Value := Value + ' ☆';
  end
  else
  begin
    AButtonState := cxbsNormal;
    clFont := ACanvas.Font.Color;
    clBrush := ACanvas.Brush.Color;
  end;

  Sender.LookAndFeel.Painter.DrawHeader(ACanvas, AViewInfo.BoundsRect, AViewInfo.TextBounds, [], cxBordersAll, AButtonState, taCenter, TcxAlignmentVert(vaCenter), False, False, Value, ACanvas.Font, clFont, clBrush);
  ADone := True;
end;

procedure InitRadioGroup(radioGrpProperties: TcxRadioGroupProperties; itemStr: string);
var
  tmpStrs: TStrings;
  i: Integer;
begin
  tmpStrs := TStringList.Create;
  try
    with tmpStrs do
    begin
      StrictDelimiter := True;
      CommaText := itemStr;
    end;
    radioGrpProperties.items.Clear;
    for i := 0 to tmpStrs.Count - 1 do
    begin
      with radioGrpProperties.items.Add do
      begin
        caption := tmpStrs[i];
        Value := tmpStrs[i];
      end;
    end;
  finally
    tmpStrs.Free;
  end;
end;

procedure InitRadioGroup(radioGrpProperties: TcxRadioGroupProperties; dt: TDataSet; ValueFieldName: string); overload;
begin
  radioGrpProperties.items.Clear;
  with dt do
  begin
    First;
    while not eof do
    begin
      with radioGrpProperties.items.Add do
      begin
        caption := FindField(ValueFieldName).AsString;
        Value := FindField(ValueFieldName).AsString;
      end;
      Next;
    end;
  end;
end;

procedure InitRadioGroup(radioGrp: TcxRadioGroup; itemStr: string);
var
  tmpStrs: TStrings;
  i: Integer;
begin
  tmpStrs := TStringList.Create;
  try
    with tmpStrs do
    begin
      StrictDelimiter := True;
      CommaText := itemStr;
    end;
    radioGrp.Properties.items.Clear;
    for i := 0 to tmpStrs.Count - 1 do
    begin
      with radioGrp.Properties.items.Add do
      begin
        caption := tmpStrs[i];
        Value := tmpStrs[i];
      end;
    end;
  finally
    tmpStrs.Free;
  end;
end;

{ TMycxDbColumn }

class procedure TMycxDbColumn.HeaderClick(Sender: TObject);
var
  col: TcxGridDBColumn;
  view: TcxGridTableView;
begin
  col := TcxGridDBColumn(Sender);
  view := TcxGridTableView(col.GetParentComponent);
  Grid_SetSelState(view, col);
end;

{ TMyDev }

class procedure TMyDev.InitGridView(MyView: TcxGridTableView; iFindPanel: Boolean; iIndicatorWidth: Integer; iGroupByBox: Boolean; iDataRowHeight, iHeaderHeight: Integer; iColumAutoWidth: Boolean);
var
  i: Integer;
begin
  MyView.FindPanel.InfoText:='查找内容';
  if iFindPanel then
    MyView.FindPanel.DisplayMode := fpdmAlways
  else
    MyView.FindPanel.DisplayMode := fpdmNever;

  with MyView.OptionsView do
  begin
    Indicator := True;
    IndicatorWidth := iIndicatorWidth;
    GroupByBox := iGroupByBox;
    DataRowHeight := iDataRowHeight;
    HeaderHeight := iHeaderHeight;
    ColumnAutoWidth := iColumAutoWidth;
    GridLineColor := clActiveCaption;
  end;

  with MyView.OptionsBehavior do
  begin
    if MyView.OptionsData.Editing then
    begin
      FocusCellOnCycle := True;
      FocusCellOnTab := True;
      FocusFirstCellOnNewRecord := True;
      GoToNextCellOnEnter := True;
    end;
  end;

  with MyView.OptionsData do
  begin
    CancelOnExit := False;
  end;
  with MyView.OptionsCustomize do
  begin
    ColumnsQuickCustomization := True;
  end;
  // 中文程序如此
  MyView.DataController.Options := MyView.DataController.Options + [dcoAnsiSort, dcoSortByDisplayText];

  for i := 0 to MyView.ColumnCount - 1 do
    MyView.Columns[i].HeaderAlignmentHorz := TAlignment.taCenter;

  if iIndicatorWidth > 20 then
    MyView.OnCustomDrawIndicatorCell := TMyCxGrid.DrawIndicatorCell;

end;

end.

