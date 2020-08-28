inherited FraModuleGoodClass: TFraModuleGoodClass
  inherited cxGrid1: TcxGrid
    inherited GridViewList: TcxGridDBTableView
      object GridViewListColumn1: TcxGridDBColumn
        DataBinding.FieldName = #21830#21697#21517#31216
      end
      object GridViewListColumn2: TcxGridDBColumn
        DataBinding.FieldName = #21830#21697#20998#31867
      end
      object GridViewListColumn3: TcxGridDBColumn
        DataBinding.FieldName = #21697#31867
      end
      object GridViewListColumn4: TcxGridDBColumn
        DataBinding.FieldName = #29275#22902#21697#29260
      end
      object GridViewListColumn5: TcxGridDBColumn
        DataBinding.FieldName = #32650#22902#21697#29260
      end
      object GridViewListColumn6: TcxGridDBColumn
        DataBinding.FieldName = #32440#23615#35044
      end
      object GridViewListColumn7: TcxGridDBColumn
        DataBinding.FieldName = #21697#29260
      end
    end
  end
  inherited barMgrModule: TdxBarManager
    PixelsPerInch = 96
  end
  inherited img24: TcxImageList
    FormatVersion = 1
  end
  inherited DS1: TDataSource
    DataSet = FireQGoodClass
  end
  object FireQGoodClass: TFireQuery
    Active = True
    FieldDefs = <
      item
        Name = #21830#21697#21517#31216
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #21830#21697#20998#31867
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #21697#31867
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #29275#22902#21697#29260
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #32650#22902#21697#29260
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #32440#23615#35044
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #21697#29260
        DataType = ftWideString
        Size = 255
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
      'SELECT  *  FROM [dbo].[GoodsClass]')
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
    Left = 560
    Top = 112
    object FireQGoodClass商品名称: TWideStringField
      FieldName = #21830#21697#21517#31216
      Size = 255
    end
    object FireQGoodClass商品分类: TWideStringField
      FieldName = #21830#21697#20998#31867
      Size = 255
    end
    object FireQGoodClass品类: TWideStringField
      FieldName = #21697#31867
      Size = 255
    end
    object FireQGoodClass牛奶品牌: TWideStringField
      FieldName = #29275#22902#21697#29260
      Size = 255
    end
    object FireQGoodClass羊奶品牌: TWideStringField
      FieldName = #32650#22902#21697#29260
      Size = 255
    end
    object FireQGoodClass纸尿裤: TWideStringField
      FieldName = #32440#23615#35044
      Size = 255
    end
    object FireQGoodClass品牌: TWideStringField
      FieldName = #21697#29260
      Size = 255
    end
  end
end
