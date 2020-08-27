object frmMyInputBox: TfrmMyInputBox
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmMyInputBox'
  ClientHeight = 113
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bvl1: TBevel
    Left = 16
    Top = 62
    Width = 405
    Height = 2
  end
  object lblHint: TcxLabel
    Left = 14
    Top = 8
    Caption = 'lblHint'
    Transparent = True
  end
  object txtEdtContent: TcxTextEdit
    Left = 16
    Top = 31
    TabOrder = 1
    Text = 'txtEdtContent'
    Width = 406
  end
  object btnOK: TcxButton
    Left = 120
    Top = 75
    Width = 75
    Height = 25
    Caption = #30830#23450
    OptionsImage.ImageIndex = 163
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TcxButton
    Left = 224
    Top = 75
    Width = 75
    Height = 25
    Caption = #21462#28040
    OptionsImage.ImageIndex = 4
    TabOrder = 3
    OnClick = btnCancelClick
  end
end
