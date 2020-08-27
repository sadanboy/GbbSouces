object ReturnViewFrom: TReturnViewFrom
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#22238#35775#20449#24687'['#27983#35272']'
  ClientHeight = 558
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxCustomer: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 487
    Height = 297
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
      Left = 20
      Top = 24
      Width = 45
      Height = 18
      Caption = #21345#21495#65306
    end
    object Label2: TLabel
      Left = 20
      Top = 64
      Width = 45
      Height = 18
      Caption = #22995#21517#65306
    end
    object Label3: TLabel
      Left = 20
      Top = 104
      Width = 45
      Height = 18
      Caption = #26376#40836#65306
    end
    object Label4: TLabel
      Left = 20
      Top = 136
      Width = 45
      Height = 18
      Caption = #30005#35805#65306
    end
    object Label6: TLabel
      Left = 236
      Top = 24
      Width = 60
      Height = 18
      Caption = #36127#36131#20154#65306
    end
    object Label7: TLabel
      Left = 236
      Top = 61
      Width = 75
      Height = 18
      Caption = #39135#29992#21608#26399#65306
    end
    object Label8: TLabel
      Left = 20
      Top = 168
      Width = 45
      Height = 18
      Caption = #22791#27880#65306
    end
    object Label9: TLabel
      Left = 236
      Top = 99
      Width = 45
      Height = 18
      Caption = #24494#20449#65306
    end
    object Label10: TLabel
      Left = 12
      Top = 299
      Width = 75
      Height = 18
      Caption = #22238#35775#20449#24687#65306
    end
    object Label5: TLabel
      Left = 236
      Top = 136
      Width = 75
      Height = 18
      Caption = #20462#25913#26102#38388#65306
    end
    object Label11: TLabel
      Left = 392
      Top = 61
      Width = 15
      Height = 18
      Caption = #22825
    end
    object edtDBCardNum: TcxDBTextEdit
      Left = 71
      Top = 20
      DataBinding.DataField = 'CardNum'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object edtDBName: TcxDBTextEdit
      Left = 71
      Top = 57
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object edtDBAge: TcxDBTextEdit
      Left = 71
      Top = 95
      DataBinding.DataField = 'age'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 121
    end
    object edtDBPhone: TcxDBTextEdit
      Left = 71
      Top = 132
      DataBinding.DataField = 'Iphone'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 121
    end
    object edtDBCharge: TcxDBTextEdit
      Left = 317
      Top = 21
      DataBinding.DataField = 'fuzeren'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 145
    end
    object edtDBFoodCycle: TcxDBTextEdit
      Left = 317
      Top = 58
      DataBinding.DataField = 'Shiyongzhouqi'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 145
    end
    object edtDBUpdateDateTime: TcxDBTextEdit
      Left = 317
      Top = 132
      DataBinding.DataField = 'UpdateDateTime'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 145
    end
    object edtDBMemo: TcxDBMemo
      Left = 71
      Top = 168
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = DSCustomerWH
      Properties.ReadOnly = True
      TabOrder = 7
      Height = 122
      Width = 391
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 317
      Top = 95
      DataBinding.DataField = 'Wchat'
      DataBinding.DataSource = DSCustomerWH
      Properties.Items = <
        item
          Description = #26410#21152#24494#20449
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #24050#21152#24494#20449
          ImageIndex = 1
          Tag = 1
          Value = 1
        end>
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 145
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 306
    Width = 487
    Height = 204
    Margins.Right = 4
    Align = alClient
    Caption = #22238#35775#20449#24687
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Font.Quality = fqClearType
    ParentFont = False
    TabOrder = 1
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 5
      Top = 23
      Width = 477
      Height = 176
      Align = alClient
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        DataController.DataSource = DSCustomerWHX
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #35760#24405#26102#38388
          DataBinding.FieldName = 'CreateDateTime'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 94
        end
        object ReturnVisitdate: TcxGridDBColumn
          Caption = #25552#37266#26102#38388
          DataBinding.FieldName = 'ReturnVisitdate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DisplayFormat = 'MM-DD'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 60
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #21830#21697#20449#24687
          DataBinding.FieldName = 'ShangPinXinXi'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #38376#24215
          DataBinding.FieldName = 'mendian'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #22238#35775#20449#24687
          DataBinding.FieldName = 'Record'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 332
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 513
    Width = 494
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      494
      45)
    object btnCancel: TButton
      Left = 411
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #21462#28040
      ModalResult = 2
      TabOrder = 0
    end
    object Button1: TButton
      Left = 23
      Top = 11
      Width = 75
      Height = 25
      Caption = #20462#25913#28155#21152#20449#24687
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object FDQCustomerWH: TFireQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    DataInfo.DatabaseCode = 'GBB'
    DataInfo.SQL.Strings = (
      
        'SELECT CardNum,Name,age,Iphone,fuzeren,Shiyongzhouqi,Wchat,Remar' +
        'k,CreateDateTime,UpdateDateTime FROM [dbo].[tab_CustomerWH]')
    DataInfo.Params = <>
    DataInfo.Connection = DmClient.FireConMain
    DataInfo.ActiveDesign = False
    DataInfo.PageSize = -1
    DataInfo.PageIndex = -1
    DataInfo.PageTotal = 0
    DataInfo.PageTotalCount = 0
    DataInfo.StoredProcReturnDataSet = False
    DataInfo.AffectMaxCount = -1
    DataInfo.AffectMustOne = False
    DataInfo.RowsAffected = 0
    DataInfo.AsynMode = False
    Left = 123
    Top = 227
  end
  object DSCustomerWH: TDataSource
    DataSet = FDQCustomerWH
    Left = 203
    Top = 227
  end
  object FDQCustomerWHX: TFireQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    DataInfo.DatabaseCode = 'GBB'
    DataInfo.Params = <>
    DataInfo.Connection = DmClient.FireConMain
    DataInfo.ActiveDesign = False
    DataInfo.PageSize = -1
    DataInfo.PageIndex = -1
    DataInfo.PageTotal = 0
    DataInfo.PageTotalCount = 0
    DataInfo.StoredProcReturnDataSet = False
    DataInfo.AffectMaxCount = -1
    DataInfo.AffectMustOne = False
    DataInfo.RowsAffected = 0
    DataInfo.AsynMode = False
    Left = 283
    Top = 227
  end
  object DSCustomerWHX: TDataSource
    DataSet = FDQCustomerWHX
    Left = 363
    Top = 227
  end
  object FDQTemp: TFireQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    DataInfo.Params = <>
    DataInfo.ActiveDesign = False
    DataInfo.PageSize = -1
    DataInfo.PageIndex = -1
    DataInfo.PageTotal = 0
    DataInfo.PageTotalCount = 0
    DataInfo.StoredProcReturnDataSet = False
    DataInfo.AffectMaxCount = -1
    DataInfo.AffectMustOne = False
    DataInfo.RowsAffected = 0
    DataInfo.AsynMode = False
    Left = 427
    Top = 187
  end
  object FireQHUIYUAN: TFireQuery
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    DataInfo.DatabaseCode = 'GBB'
    DataInfo.Params = <>
    DataInfo.Connection = DmClient.FireConMain
    DataInfo.ActiveDesign = False
    DataInfo.PageSize = -1
    DataInfo.PageIndex = -1
    DataInfo.PageTotal = 0
    DataInfo.PageTotalCount = 0
    DataInfo.StoredProcReturnDataSet = False
    DataInfo.AffectMaxCount = -1
    DataInfo.AffectMustOne = False
    DataInfo.RowsAffected = 0
    DataInfo.AsynMode = False
    Left = 35
    Top = 378
  end
end
