unit uFrmGoodTypeEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmEditBase, dxSkinsCore,
  dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxPC, Vcl.ExtCtrls, cxContainer, cxEdit, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireHelper, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDataSet, cxInplaceContainer, cxTLData, cxDBTL,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,uDmClient;

type
  TFrmGoodTypeEdit = class(TfrmEditBase)
    Label1: TLabel;
    Label2: TLabel;
    edtDBMC: TcxDBTextEdit;
    edtDBTM: TcxDBTextEdit;
    edtDBARTI: TcxDBTextEdit;
    Label3: TLabel;
    edtTM: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FFrmState: FormEditState;
    FFModuleID: string;
  end;

var
  FrmGoodTypeEdit: TFrmGoodTypeEdit;

implementation

{$R *.dfm}


procedure TFrmGoodTypeEdit.btnOkClick(Sender: TObject);
var
  exited:Boolean;
begin
  exited:=True;
  if Trim(edtDBMC.Text).IsEmpty then
  begin
    ShowMessage('��Ʒ���Ʋ���Ϊ�գ�');
    edtDBMC.SetFocus;
    exited:=False;
  end;
  if Trim(edtTM.Text).IsEmpty then
  begin
    ShowMessage('��Ʒ���벻��Ϊ�գ�');
    edtDBTM.SetFocus;
    exited:=False;
  end;
  if exited then
     inherited;
end;

procedure TFrmGoodTypeEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  if FrmGoodTypeEdit<>nil then
     FrmGoodTypeEdit:=nil;
end;

procedure TFrmGoodTypeEdit.FormCreate(Sender: TObject);
begin
  inherited;
  FFrmState:=fesAdd;
end;

procedure TFrmGoodTypeEdit.FormShow(Sender: TObject);
begin
  case FFrmState of
    fesAdd:
    begin
      Self.Caption:='��Ʒ��Ϣ�����ӡ�' ;
    end;
    fesEdit:
    begin
      Self.Caption:='��Ʒ��Ϣ���༭��';
    end;
  end;
  SetDs(cxTabSheet1,Ads);
end;

end.
