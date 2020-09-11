inherited FrmGoodTypeEdit: TFrmGoodTypeEdit
  Caption = #21830#21697#20449#24687'['#26032#22686']'
  ClientHeight = 258
  ClientWidth = 531
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 537
  ExplicitHeight = 286
  PixelsPerInch = 96
  TextHeight = 13
  inherited P1: TPanel
    Width = 531
    Height = 204
    ExplicitWidth = 531
    ExplicitHeight = 204
    inherited cxPageControl1: TcxPageControl
      Width = 501
      Height = 191
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'UserSkin'
      ExplicitWidth = 501
      ExplicitHeight = 191
      ClientRectBottom = 187
      ClientRectLeft = 4
      ClientRectRight = 497
      ClientRectTop = 30
      inherited cxTabSheet1: TcxTabSheet
        ExplicitLeft = 4
        ExplicitTop = 30
        ExplicitWidth = 493
        ExplicitHeight = 157
        object Label1: TLabel
          Left = 64
          Top = 20
          Width = 71
          Height = 19
          Caption = #21830#21697#21517#31216'*'#65306
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #24494#36719#38597#40657
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object Label2: TLabel
          Left = 64
          Top = 68
          Width = 71
          Height = 19
          Caption = #21830#21697#26465#30721'*'#65306
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #24494#36719#38597#40657
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object Label3: TLabel
          Left = 64
          Top = 116
          Width = 65
          Height = 19
          Caption = #21830#21697#36135#21495#65306
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #24494#36719#38597#40657
          Font.Style = [fsBold]
          Font.Quality = fqClearTypeNatural
          ParentFont = False
        end
        object edtDBMC: TcxDBTextEdit
          Left = 152
          Top = 16
          DataBinding.DataField = 'MC'
          TabOrder = 0
          Width = 273
        end
        object edtDBTM: TcxDBTextEdit
          Left = 152
          Top = 65
          DataBinding.DataField = 'TM'
          TabOrder = 1
          Width = 273
        end
        object edtDBARTI: TcxDBTextEdit
          Left = 152
          Top = 112
          DataBinding.DataField = 'ARTICLENUMBER'
          TabOrder = 2
          Width = 273
        end
        object edtTM: TcxTextEdit
          Left = 368
          Top = 32
          TabOrder = 3
          TextHint = #21830#21697#26465#30721
          Width = 273
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 204
    Width = 531
    ExplicitTop = 204
    ExplicitWidth = 531
    inherited btnOKAndAppend: TcxButton
      Left = 296
      ExplicitLeft = 296
    end
    inherited btnOk: TcxButton
      Left = 427
      ExplicitLeft = 427
    end
  end
end
