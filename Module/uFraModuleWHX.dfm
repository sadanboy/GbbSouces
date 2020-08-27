inherited FraModuleWHX: TFraModuleWHX
  Width = 1136
  Height = 698
  ExplicitWidth = 1136
  ExplicitHeight = 698
  inherited cxGrid1: TcxGrid
    Left = 3
    Top = 52
    Width = 1130
    Height = 598
    Align = alClient
    ExplicitWidth = 1001
    ExplicitHeight = 434
    inherited GridViewList: TcxGridDBTableView
      OptionsData.Appending = False
      OptionsData.CancelOnExit = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = True
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      object GridViewListCardNum: TcxGridDBColumn
        DataBinding.FieldName = 'CardNum'
        HeaderAlignmentHorz = taCenter
        Width = 115
      end
      object GridViewListName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        HeaderAlignmentHorz = taCenter
        Width = 68
      end
      object GridViewListage: TcxGridDBColumn
        DataBinding.FieldName = 'age'
        HeaderAlignmentHorz = taCenter
        Width = 62
      end
      object GridViewListIphone: TcxGridDBColumn
        Caption = #30005#35805
        DataBinding.FieldName = 'Iphone'
        HeaderAlignmentHorz = taCenter
        Width = 112
      end
      object GridViewListfuzeren: TcxGridDBColumn
        Caption = #36127#36131#20154
        DataBinding.FieldName = 'fuzeren'
        HeaderAlignmentHorz = taCenter
        Width = 88
      end
      object GridViewListShiyongzhouqi: TcxGridDBColumn
        Caption = #39135#29992#21608#26399
        DataBinding.FieldName = 'Shiyongzhouqi'
        HeaderAlignmentHorz = taCenter
        Width = 124
      end
      object GridViewListWchat: TcxGridDBColumn
        Caption = #26159#21542#26377#24494#20449
        DataBinding.FieldName = 'Wchat'
        HeaderAlignmentHorz = taCenter
        Width = 47
      end
      object GridViewListRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        HeaderAlignmentHorz = taCenter
        Width = 50
      end
      object GridViewListReturnVisitdate: TcxGridDBColumn
        Caption = #22238#35775#26102#38388
        DataBinding.FieldName = 'ReturnVisitdate'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object GridViewListCreateDateTime: TcxGridDBColumn
        Caption = #35760#24405#24314#31435#26102#38388
        DataBinding.FieldName = 'CreateDateTime'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object GridViewListRecord: TcxGridDBColumn
        Caption = #22238#35775#30331#35760#20449#24687
        DataBinding.FieldName = 'Record'
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object GridViewListShangPinXinXi: TcxGridDBColumn
        Caption = #26368#36817#36141#20080#21830#21697
        DataBinding.FieldName = 'ShangPinXinXi'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object GridViewListmendian: TcxGridDBColumn
        Caption = #38376#24215
        DataBinding.FieldName = 'mendian'
        HeaderAlignmentHorz = taCenter
        Width = 138
      end
    end
  end
  inherited ToolPanel: TPanel
    Width = 1136
  end
  inherited BottomPanel: TPanel
    Top = 653
    Width = 1136
  end
  inherited barMgrModule: TdxBarManager
    PixelsPerInch = 96
  end
  inherited img24: TcxImageList
    FormatVersion = 1
  end
  inherited DS1: TDataSource
    DataSet = FireQViewCustomerWHX
  end
  object FireQViewCustomerWHX: TFireQuery
    Active = True
    FieldDefs = <
      item
        Name = 'CardNum'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'age'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Iphone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'fuzeren'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Shiyongzhouqi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Wchat'
        DataType = ftSmallint
      end
      item
        Name = 'Remark'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ReturnVisitdate'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CreateDateTime'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CardNumId'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Record'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ShangPinXinXi'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'mendian'
        DataType = ftString
        Size = 50
      end>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    DataInfo.DatabaseCode = 'GBB'
    DataInfo.SQL.Strings = (
      'SELECT'#13#10#10
      ''
      #9'tab_CustomerWH.CardNum,'
      '        tab_CustomerWH.Name, '#10#9
      '        tab_CustomerWH.age, '#10#9
      '        tab_CustomerWH.Iphone, '#10#9
      '        tab_CustomerWH.fuzeren, '#10#9
      '        tab_CustomerWH.Shiyongzhouqi, '#10
      #9'tab_CustomerWH.Wchat, '#10#9
      '        tab_CustomerWH.Remark, '#10#9
      '        tab_CustomerWHX.ReturnVisitdate,'
      ' '#10#9'tab_CustomerWHX.CreateDateTime,'
      ' '#10#9'tab_CustomerWHX.CardNumId,'
      ' '#10#9'tab_CustomerWHX.Record,'
      '        tab_CustomerWHX.ShangPinXinXi,'
      '        tab_CustomerWHX.mendian'
      '     '#10'FROM'#10
      #9'tab_CustomerWHX'#10
      '        INNER JOIN'#9
      '          tab_CustomerWH'#9
      '        ON '
      #9'  tab_CustomerWHX.CardNumId= tab_CustomerWH.CardNum'
      '     ORDER BY '
      #9'tab_CustomerWHX.CreateDateTime DESC')
    DataInfo.Params = <>
    DataInfo.Connection = DmClient.FireConMain
    DataInfo.ActiveDesign = True
    DataInfo.PageSize = -1
    DataInfo.PageIndex = -1
    DataInfo.PageTotal = 0
    DataInfo.PageTotalCount = 0
    DataInfo.StoredProcReturnDataSet = False
    DataInfo.AffectMaxCount = -1
    DataInfo.AffectMustOne = False
    DataInfo.RowsAffected = 0
    DataInfo.AsynMode = False
    Left = 800
    Top = 136
    object FireQViewCustomerWHXCardNum: TStringField
      DisplayLabel = #21345#21495
      FieldName = 'CardNum'
      Required = True
      Size = 50
    end
    object FireQViewCustomerWHXName: TStringField
      DisplayLabel = #22995#21517
      FieldName = 'Name'
      Size = 255
    end
    object FireQViewCustomerWHXage: TStringField
      DisplayLabel = #26376#40836
      FieldName = 'age'
      Size = 100
    end
    object FireQViewCustomerWHXIphone: TStringField
      FieldName = 'Iphone'
    end
    object FireQViewCustomerWHXfuzeren: TStringField
      FieldName = 'fuzeren'
      Size = 50
    end
    object FireQViewCustomerWHXShiyongzhouqi: TStringField
      FieldName = 'Shiyongzhouqi'
    end
    object FireQViewCustomerWHXWchat: TSmallintField
      FieldName = 'Wchat'
    end
    object FireQViewCustomerWHXRemark: TStringField
      FieldName = 'Remark'
      Size = 255
    end
    object FireQViewCustomerWHXReturnVisitdate: TStringField
      FieldName = 'ReturnVisitdate'
      Size = 255
    end
    object FireQViewCustomerWHXCreateDateTime: TStringField
      FieldName = 'CreateDateTime'
      Size = 255
    end
    object FireQViewCustomerWHXCardNumId: TStringField
      FieldName = 'CardNumId'
      Size = 255
    end
    object FireQViewCustomerWHXRecord: TStringField
      FieldName = 'Record'
      Size = 255
    end
    object FireQViewCustomerWHXShangPinXinXi: TStringField
      FieldName = 'ShangPinXinXi'
      Size = 100
    end
    object FireQViewCustomerWHXmendian: TStringField
      FieldName = 'mendian'
      Size = 50
    end
  end
  object dsViewCustomerWHX: TDataSource
    Left = 928
    Top = 136
  end
end
