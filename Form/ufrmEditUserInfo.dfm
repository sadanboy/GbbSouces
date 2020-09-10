inherited frmEditUserInfo: TfrmEditUserInfo
  Caption = #36134#25143#31649#29702'['#22686#21152']'
  ClientHeight = 341
  ClientWidth = 581
  OnShow = FormShow
  ExplicitWidth = 587
  ExplicitHeight = 369
  PixelsPerInch = 96
  TextHeight = 13
  inherited P1: TPanel
    Width = 581
    Height = 287
    ExplicitWidth = 581
    ExplicitHeight = 287
    inherited cxPageControl1: TcxPageControl
      Width = 551
      Height = 274
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      ExplicitWidth = 551
      ExplicitHeight = 274
      ClientRectBottom = 270
      ClientRectLeft = 4
      ClientRectRight = 547
      ClientRectTop = 30
      inherited cxTabSheet1: TcxTabSheet
        ExplicitLeft = 4
        ExplicitTop = 30
        ExplicitWidth = 543
        ExplicitHeight = 240
        object Label1: TLabel
          Left = 56
          Top = 23
          Width = 55
          Height = 19
          Caption = #36134'    '#25143#65306
        end
        object Label2: TLabel
          Left = 56
          Top = 66
          Width = 55
          Height = 19
          Caption = #23494'    '#30721#65306
        end
        object Label3: TLabel
          Left = 56
          Top = 109
          Width = 65
          Height = 19
          Caption = #25152#23646#38376#24215#65306
        end
        object Label4: TLabel
          Left = 280
          Top = 23
          Width = 55
          Height = 19
          Caption = #26435'    '#38480#65306
        end
        object Label5: TLabel
          Left = 280
          Top = 65
          Width = 55
          Height = 19
          Caption = #29366'    '#24577#65306
        end
        object Label6: TLabel
          Left = 56
          Top = 152
          Width = 39
          Height = 19
          Caption = #22791#27880#65306
        end
        object edtDBUserName: TcxDBTextEdit
          Left = 136
          Top = 19
          DataBinding.DataField = 'UserName'
          TabOrder = 0
          Width = 121
        end
        object edtDBPassword: TcxDBTextEdit
          Left = 136
          Top = 62
          DataBinding.DataField = 'Password'
          Properties.EchoMode = eemPassword
          TabOrder = 1
          Width = 121
        end
        object cxDBMemo1: TcxDBMemo
          Left = 136
          Top = 144
          DataBinding.DataField = 'BZ'
          TabOrder = 2
          Height = 81
          Width = 345
        end
        object edtDBPower: TcxDBImageComboBox
          Left = 360
          Top = 18
          DataBinding.DataField = 'Power'
          Properties.Items = <
            item
              Description = #36229#32423#31649#29702#21592
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #25805#20316#21592
              Value = 1
            end
            item
              Description = #19968#33324#20154#21592
              Value = 2
            end>
          TabOrder = 3
          Width = 121
        end
        object edtDianPuBM: TcxDBImageComboBox
          Left = 136
          Top = 104
          DataBinding.DataField = 'DianPuBM'
          Properties.Items = <
            item
              Description = #21150#20844#23460
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #31206#19968
              Value = 1
            end
            item
              Description = #31206#20108
              Value = 2
            end
            item
              Description = #20852#38534
              Value = 3
            end
            item
              Description = #22823#23528
              Value = 4
            end
            item
              Description = #38463#25151
              Value = 5
            end
            item
              Description = #26354#27743
              Value = 6
            end
            item
              Description = #19977#26862
              Value = 7
            end
            item
              Description = #38886#26354
              Value = 8
            end
            item
              Description = #26234#24935
              Value = 9
            end
            item
              Description = #37329#22534
              Value = 10
            end
            item
              Description = #32548#32439
              Value = 11
            end
            item
              Description = #40511#22522
              Value = 12
            end
            item
              Description = #39532#29579
              Value = 13
            end
            item
              Description = #26007#38376
              Value = 14
            end>
          TabOrder = 4
          Width = 121
        end
        object edtDBState: TcxDBImageComboBox
          Left = 360
          Top = 61
          DataBinding.DataField = 'State'
          Properties.Items = <
            item
              Description = #20572#29992
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #21551#29992
              Value = 1
            end>
          TabOrder = 5
          Width = 121
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 287
    Width = 581
    ExplicitTop = 287
    ExplicitWidth = 581
    inherited btnOKAndAppend: TcxButton
      Left = 346
      ExplicitLeft = 346
    end
    inherited btnOk: TcxButton
      Left = 477
      ExplicitLeft = 477
    end
  end
end
