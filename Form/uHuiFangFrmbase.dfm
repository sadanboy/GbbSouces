object ReturnViewFrombase: TReturnViewFrombase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#22238#35775#20449#24687'['#27983#35272']'
  ClientHeight = 391
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxCustomer: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 504
    Height = 302
    Margins.Right = 4
    Align = alTop
    Caption = #20250#21592#22238#35775#20449#24687
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 30
      Width = 45
      Height = 18
      Caption = #21345#21495#65306
    end
    object Label2: TLabel
      Left = 16
      Top = 70
      Width = 45
      Height = 18
      Caption = #22995#21517#65306
    end
    object Label3: TLabel
      Left = 16
      Top = 110
      Width = 45
      Height = 18
      Caption = #24180#40836#65306
    end
    object Label4: TLabel
      Left = 16
      Top = 150
      Width = 45
      Height = 18
      Caption = #30005#35805#65306
    end
    object Label6: TLabel
      Left = 232
      Top = 28
      Width = 60
      Height = 18
      Caption = #36127#36131#20154#65306
    end
    object Label7: TLabel
      Left = 232
      Top = 68
      Width = 75
      Height = 18
      Caption = #39135#29992#21608#26399#65306
    end
    object Label8: TLabel
      Left = 16
      Top = 185
      Width = 45
      Height = 18
      Caption = #22791#27880#65306
    end
    object Label9: TLabel
      Left = 232
      Top = 108
      Width = 45
      Height = 18
      Caption = #24494#20449#65306
    end
    object edtComWeChat: TcxImageComboBox
      Left = 337
      Top = 106
      EditValue = '0'
      Properties.Items = <
        item
          Description = #24050#21152#24494#20449
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = #27809#26377#24494#20449
          Value = '1'
        end>
      TabOrder = 0
      Width = 146
    end
    object edtAge: TcxTextEdit
      Left = 80
      Top = 104
      TabOrder = 1
      Width = 146
    end
    object edtphone: TcxTextEdit
      Left = 80
      Top = 142
      TabOrder = 2
      Width = 146
    end
    object edtFoodCycle: TcxTextEdit
      Left = 337
      Top = 67
      TabOrder = 3
      Text = '0'
      Width = 146
    end
    object edtFuzeren: TcxTextEdit
      Left = 337
      Top = 29
      TabOrder = 4
      Width = 146
    end
    object RemarkMemo: TcxMemo
      Left = 80
      Top = 182
      TabOrder = 5
      Height = 97
      Width = 403
    end
    object edtName: TcxTextEdit
      Left = 80
      Top = 65
      TabOrder = 6
      Width = 146
    end
    object edtCardNum: TcxTextEdit
      Left = 80
      Top = 27
      TabOrder = 7
      Width = 146
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 346
    Width = 511
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      511
      45)
    object btnCancel: TButton
      Left = 428
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #21462#28040
      ModalResult = 2
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 333
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #30830#23450
      ModalResult = 1
      TabOrder = 1
    end
  end
end
