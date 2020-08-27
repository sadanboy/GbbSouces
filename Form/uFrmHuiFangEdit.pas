unit uFrmHuiFangEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHuiFangFrmbase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCalendar,
  cxMemo, Vcl.StdCtrls, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Mask, scControls, scCalendar;

type
  TReturnEditFrom = class(TReturnViewFrombase)
    RecordMemo: TcxMemo;
    label10: TLabel;
    Label5: TLabel;
    ScedtDate: TscDateEdit;
    procedure edtFoodCycleKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReturnEditFrom: TReturnEditFrom;

implementation

{$R *.dfm}
 uses
   udm;
procedure TReturnEditFrom.btnOKClick(Sender: TObject);
var
  tmpExsit:Boolean;
begin
    tmpExsit:=True;
   if (Trim(edtFoodCycle.Text)='')or(Trim(edtComWeChat.Text)='')or (not ScedtDate.IsDateInput)or(Trim(RecordMemo.Text)='') then
   begin

      if Trim(edtFoodCycle.Text)='' then
      begin
        edtFoodCycle.SetFocus;
      end
        else
        if Trim(edtComWeChat.Text)='' then
        begin
           edtComWeChat.SetFocus;
        end
        else
        if ScedtDate.IsDateInput then
        begin
           ScedtDate.SetFocus;
        end
        else
          if  Trim(RecordMemo.Text)='' then
          begin
            RecordMemo.SetFocus;
          end;

       tmpExsit:=False;




   end ;
   if tmpExsit then
     ModalResult:=mrOk ;

end;

procedure TReturnEditFrom.edtFoodCycleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key<>#46) and ((key < #48) or (key > #57)) and (key <> #8) then
  //如果输入不是数字或小数点（#46代表小数点）
  begin
      key:=#0; //取消输入的内容（#0代表空值）
      showmessage('输入错误!请输入数字!'); //发出提示信息
  end;
end;

procedure TReturnEditFrom.FormCreate(Sender: TObject);
begin
  inherited;
//  if Trim(edtFoodCycle.Text)='' then
//
//        edtFoodCycle.Text:='7';

end;

end.
