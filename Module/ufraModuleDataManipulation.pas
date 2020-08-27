unit ufraModuleDataManipulation;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks,
  dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics,
  dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils,
  dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, dxSpreadSheet, cxImageList,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireHelper, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDataSet,System.Win.ComObj,
  XLSReadWriteII5,Winapi.ShellAPI,Xc12DataStyleSheet5,XLSSheetData5;

type
  TfraModuleDataManipulation = class(TfraModuleBase)
    barMgrModuleBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    ImageList1: TImageList;
    cxImageList1: TcxImageList;
    XLS: TdxSpreadSheet;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    FireQImport: TFireQuery;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
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
  fraModuleDataManipulation: TfraModuleDataManipulation;

implementation
uses
  uDmClient,uFrmMain;
{$R *.dfm}

procedure TfraModuleDataManipulation.CloseData;
begin
  inherited;

end;

constructor TfraModuleDataManipulation.Create(AOwner: TComponent);
begin
  inherited;
  Panel1.Left:=FrmMain.Left+(FrmMain.Width-Panel1.Width) div 2;
  Panel1.Top:=FrmMain.Top+(FrmMain.Height-Panel1.Height) div 2;
end;

destructor TfraModuleDataManipulation.Destroy;
begin

  inherited;
end;

procedure TfraModuleDataManipulation.dxBarLargeButton1Click(Sender: TObject);
var
  i,Row:Integer;
  Worksheet:TdxSpreadSheetTableView;
begin
  if OpenDialog1.Execute then
  begin
    XLS.LoadFromFile(opendialog1.Filename);

    for i := 0 to XLS.SheetCount - 1 do //���ҵ���ı��з���Ҫ��ı��񲢽�����Ϊ������
    begin
      Worksheet := XLS.Sheets[i] as TdxSpreadSheetTableView;
      if Worksheet.Caption = '���۵�����ϸ' then
        XLS.Sheets[i].Active := True;
    end;

    if XLS.ActiveSheetAsTable.Rows.Count<2 then
    begin
      ShowMessage('�������ı��񲻷���Ҫ�������в��㣡');
      exit;
    end;
    if XLS.ActiveSheetAsTable.Columns.Count<15 then
    begin
      ShowMessage('�������ı��񲻷���Ҫ�������в��㣡');
      exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 0].AsString <> '��ˮ��' then
    begin
      ShowMessage('����ˮ�š���δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 1].AsString <> '����' then
    begin
      ShowMessage('�����ڡ���δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 2].AsString <> '����' then
    begin
      ShowMessage('�����͡���δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 3].AsString <> '�ŵ�' then
    begin
      ShowMessage('���ŵ꡿��δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 4].AsString <> '����Ա' then
    begin
      ShowMessage('������Ա����δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 5].AsString <> '��Ա' then
    begin
      ShowMessage('����Ա����δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 6].AsString <> '����Ա' then
    begin
      ShowMessage('������Ա����δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 7].AsString <> '��Ʒ��Ϣ' then
    begin
      ShowMessage('����Ʒ��Ϣ����δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 8].AsString <> '��Ʒ����' then
    begin
      ShowMessage('����Ʒ���롿��δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 9].AsString <> '����' then
    begin
      ShowMessage('�����š���δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 10].AsString <> '��Ʒ����' then
    begin
      ShowMessage('����Ʒ��������δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 11].AsString <> '��Ʒԭ��' then
    begin
      ShowMessage('����Ʒԭ�ۡ���δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 12].AsString <> 'ʵ�ս��' then
    begin
      ShowMessage('��ʵ�ս���δ����');
      Exit;
    end;

    if XLS.ActiveSheetAsTable.Cells[0, 13].AsString <> '���ý��' then
    begin
      ShowMessage('�����ý���δ����');
      Exit;
    end;
    if XLS.ActiveSheetAsTable.Cells[0, 14].AsString <> '����' then
    begin
      ShowMessage('��������δ����');
      Exit;
    end;
//    if XLS.ActiveSheetAsTable.Cells[0, 15].AsString <> '����' then
//    begin
//      ShowMessage('�����ࡿ��δ����');
//      Exit;
//    end;
    ProgressBar1.Max:=XLS.ActiveSheetAsTable.Rows.Count;
    ProgressBar1.Min:=1;
    Panel1.Visible:=True;
    Panel1.BringToFront;

    FireQImport.DataInfo.Connection:=DmClient.FireConMain;
    FireQImport.DataInfo.DatabaseCode:='GBB' ;
    FireQImport.DataInfo.SQL.Text:='INSERT INTO dbo.[���۵�����ϸ2]( ��ˮ��,����,����,�ŵ�,����Ա,��Ա,'+
                                   '����Ա,��Ʒ��Ϣ,��Ʒ����,����,��Ʒ����,��Ʒԭ��,ʵ�ս��,���ý��,'+
                                   '���� ) VALUES (:liushuihao,:riqi,:Type,:mendian,:shouyinyuan,:huiyuan,:daogouyuan,:SHANGPINXINXI,:SHANGPINTIAOMA,:HUOHAO,:Shuliang,:jiage,:shishoujiage,:zherang,:lirun)';
    FireQImport.DataInfo.ActiveDesign:=True;
    DmClient.FireQMain.DisableControls;
    try
      for Row := 1 to XLS.ActiveSheetAsTable.Rows.Count-1 do
      begin
        if (XLS.ActiveSheetAsTable.Cells[Row, 0].IsEmpty) or
        (XLS.ActiveSheetAsTable.Cells[Row, 0].AsString = '')
        or (XLS.ActiveSheetAsTable.Cells[Row, 7].AsString = '-') then
        begin
          Continue;
        end
        else
        begin
          if FireQImport.DataInfo.Params.Count>0 then
          begin
              for I := 0 to FireQImport.DataInfo.Params.Count-1 do
              begin
                if (XLS.ActiveSheetAsTable.Cells[Row,i].IsEmpty)or(XLS.ActiveSheetAsTable.Cells[Row,i].AsString =' ')
                   or(XLS.ActiveSheetAsTable.Cells[Row,i].AsVariant=Null) then
                   FireQImport.DataInfo.Params[i].Value:=Null
                else
                   FireQImport.DataInfo.Params[i].Value:= XLS.ActiveSheetAsTable.Cells[Row,i].AsVariant;
              end;
              if not FireQImport.ExecDML then
              begin
                ShowMessage('���ݵ���ʧ�ܣ�'+FireQImport.DataInfo.ErrMsg);
                Exit;
              end;
          end;
        end;
        Label1.Caption:='���ڵ������ݡ���'+Row.ToString+'/'+XLS.ActiveSheetAsTable.Rows.Count.ToString;
        ProgressBar1.Position:=Row;
        if (Row mod 10)=0 then
          Application.ProcessMessages;
      end;
    finally
      Panel1.Visible:=False;
      DmClient.FireQMain.EnableControls;
    end;
    ShowMessage('���ݵ�����ɣ�');
    XLS.ClearAll;
  end;
end;

procedure TfraModuleDataManipulation.dxBarLargeButton2Click(Sender: TObject);
var
  i,n:Integer;
  XLS: TXLSReadWriteII5; // ����XLSReadWriteII5, Xc12DataStyleSheet5, ShellAPI
begin
  XLS:=TXLSReadWriteII5.Create(nil);
  try
     XLS.Clear;
      XLS.FileName := ExtractFilePath(paramstr(0)) + 'temp.xls';
     for i := 0 to 9 do
       XLS.Sheets[0].AsString[i, 0] := '����' + IntToStr(i + 1);
     for i := 0 to 9 do
       for n := 1 to 19 do
         XLS.Sheets[0].AsString[i, n] := IntToStr(i + 1) + ':' + IntToStr(n);

     for i := 0 to 9 do // XLS.Sheets[0].LastCol do // �ӵ�һ�е����һ��
     begin
       for n := 0 to 19 do // �ӵ�һ�е����һ��
       begin
         XLS.Sheets[0].Range.Items[i, n, i, n].BorderOutlineStyle := cbsThin;
         XLS.Sheets[0].Range.Items[i, n, i, n].BorderOutlineColor := 0; // ��ɫ#0
         if n = 0 then
         begin
           XLS.Sheets[0].Cell[i, n].CellColorRGB := 16744448; // �ٻ�#FF8000
           XLS.Sheets[0].Cell[i, n].FontColor := 16777215; // ��ɫ#FFFFFF
         end
         else
           XLS.Sheets[0].Cell[i, n].CellColorRGB := 16777165; // ���ʻ�#FFFFCD
      end;
      XLS.Sheets[0].AutoWidthCol(i); // ÿ��Ϊ�Զ�����
    end;
    XLS.Write;
     ShellExecute(0, 'Open', PChar(ExtractFilePath(paramstr(0)) + 'temp.xls')
       , nil, nil, SW_SHOW);
  finally
     XLS.Free;
  end;
end;

procedure TfraModuleDataManipulation.dxBarLargeButton3Click(Sender: TObject);
var
  i,Row:Integer;
  XLSII:TXLSReadWriteII5;
  WorkSheet:TXLSworksheet;
  existed:Boolean;
begin
  existed:=False;
  XLSII:=TXLSReadWriteII5.Create(nil);
  try
    if OpenDialog1.Execute then
    begin
      XLSII.Filename:=Trim(OpenDialog1.FileName);
      XLSII.Read;
      //�ж��Ƿ�������۵�����ϸ������񣬲�������ʾ�˳�*******
      for i := 0 to XLSII.Count-1 do
      begin
        if XLSII.Sheets[i].Name = '���۵�����ϸ' then
        begin
          Worksheet := XLSII.Sheets[i];
          existed:=True;
          Break;//��������ѭ������Ϊ�����������ظ�
        end;
      end;
      if not existed then
      begin
        ShowMessage('��ѡ��ı��񲻷���Ҫ�����۵��ݲ�����');
        exit;
      end;
      //*******************************************************
//      ShowMessage('��ǰ�ĵ��ܱ�������'+XLSII.Count.ToString);
//      ShowMessage('��ǰ��������:'+WorkSheet.LastRow.ToString);
//      ShowMessage('��ǰ��������:'+WorkSheet.LastCol.ToString);
      if (WorkSheet.LastRow+1)<2 then
      begin
        ShowMessage('�������ı��񲻷���Ҫ�������в��㣡');
        exit;
      end;
      if (WorkSheet.LastCol+1)<16 then
      begin
        ShowMessage('�������ı��񲻷���Ҫ�������в��㣡');
        exit;
      end;
      if WorkSheet.AsString[0, 0] <> '��ˮ��' then
      begin
        ShowMessage('����ˮ�š���δ����');
        Exit;
      end;
      if WorkSheet.AsString[1, 0] <> '����' then
      begin
        ShowMessage('�����ڡ���δ����');
        Exit;
      end;
      if WorkSheet.AsString[2, 0] <> '����' then
      begin
        ShowMessage('�����͡���δ����');
        Exit;
      end;
      if WorkSheet.AsString[3, 0] <> '�ŵ�' then
      begin
        ShowMessage('���ŵ꡿��δ����');
        Exit;
      end;
      if WorkSheet.AsString[4, 0] <> '����Ա' then
      begin
        ShowMessage('������Ա����δ����');
        Exit;
      end;
      if WorkSheet.AsString[5, 0] <> '��Ա' then
      begin
        ShowMessage('����Ա����δ����');
        Exit;
      end;
      if WorkSheet.AsString[6, 0] <> '����Ա' then
      begin
        ShowMessage('������Ա����δ����');
        Exit;
      end;
      if WorkSheet.AsString[7, 0] <> '��Ʒ��Ϣ' then
      begin
        ShowMessage('����Ʒ��Ϣ����δ����');
        Exit;
      end;
      if WorkSheet.AsString[8, 0] <> '��Ʒ����' then
      begin
        ShowMessage('����Ʒ���롿��δ����');
        Exit;
      end;
      if WorkSheet.AsString[9, 0] <> '����' then
      begin
        ShowMessage('�����š���δ����');
        Exit;
      end;
      if WorkSheet.AsString[10, 0] <> '��Ʒ����' then
      begin
        ShowMessage('����Ʒ��������δ����');
        Exit;
      end;
      if WorkSheet.AsString[11, 0] <> '��Ʒԭ��' then
      begin
        ShowMessage('����Ʒԭ�ۡ���δ����');
        Exit;
      end;
      if WorkSheet.AsString[12, 0] <> 'ʵ�ս��' then
      begin
        ShowMessage('��ʵ�ս���δ����');
        Exit;
      end;

      if WorkSheet.AsString[13, 0] <> '���ý��' then
      begin
        ShowMessage('�����ý���δ����');
        Exit;
      end;
      if WorkSheet.AsString[14, 0] <> '����' then
      begin
        ShowMessage('��������δ����');
        Exit;
      end;
      ProgressBar1.Max:=WorkSheet.LastRow+1;
      ProgressBar1.Min:=1;
      Panel1.Visible:=True;
      Panel1.BringToFront;

      FireQImport.DataInfo.Connection:=DmClient.FireConMain;
      FireQImport.DataInfo.DatabaseCode:='GBB' ;
      FireQImport.DataInfo.SQL.Text:='INSERT INTO dbo.[���۵�����ϸ1]( ��ˮ��,����,����,�ŵ�,����Ա,��Ա,'+
                                     '����Ա,��Ʒ��Ϣ,��Ʒ����,����,��Ʒ����,��Ʒԭ��,ʵ�ս��,���ý��,'+
                                     '���� ) VALUES (:liushuihao,:riqi,:Type,:mendian,:shouyinyuan,:huiyuan,:daogouyuan,:SHANGPINXINXI,:SHANGPINTIAOMA,:HUOHAO,:Shuliang,:jiage,:shishoujiage,:zherang,:lirun)';
      FireQImport.DataInfo.ActiveDesign:=True;
      DmClient.FireQMain.DisableControls;
      try
        for Row := 1 to WorkSheet.LastRow do
        begin
          if (WorkSheet.AsString[0,Row]='')or(WorkSheet.AsString[0,Row]='-')
            or(WorkSheet.AsString[0,Row]=Null) then
          begin
             Continue;
          end
          else
          begin
            if FireQImport.DataInfo.Params.Count>0 then
            begin
                for I := 0 to FireQImport.DataInfo.Params.Count-1 do
                begin
                  if (WorkSheet.AsString[i,Row]=Null)or(WorkSheet.AsString[i,Row] =' ') then
                     FireQImport.DataInfo.Params[i].Value:=Null
                  else
                     FireQImport.DataInfo.Params[i].Value:= WorkSheet.AsVariant[i,Row];
                end;
                if not FireQImport.ExecDML then
                begin
                  ShowMessage('���ݵ���ʧ�ܣ�'+FireQImport.DataInfo.ErrMsg);
                  Exit;
                end;
            end;
          end;
          Label1.Caption:='���ڵ������ݡ���'+Row.ToString+'/'+(WorkSheet.LastRow+1).ToString;
          ProgressBar1.Position:=Row;
          if (Row mod 10)=0 then
            Application.ProcessMessages;
        end;
      finally
        Panel1.Visible:=False;
        DmClient.FireQMain.EnableControls;
      end;
      ShowMessage('���ݵ�����ɣ�');
      XLSII.ClearCells;
    end;
  finally
    XLSII.Free;
  end;
end;

procedure TfraModuleDataManipulation.GetData;
begin
  inherited;

end;

procedure TfraModuleDataManipulation.InitModuleLayout;
begin
  inherited;

end;

procedure TfraModuleDataManipulation.InitShortCut;
begin
  inherited;

end;

procedure TfraModuleDataManipulation.LockChangeEvent(lType: Integer);
begin
  inherited;

end;

procedure TfraModuleDataManipulation.RemoveShortCut;
begin
  inherited;

end;

procedure TfraModuleDataManipulation.SetDetailPrivilege;
begin
  inherited;

end;

initialization
  RegisterClass(TfraModuleDataManipulation);
end.