object DmClient: TDmClient
  OldCreateOrder = False
  Height = 338
  Width = 557
  object FireConMain: TFireConnection
    IsHttps = False
    ServerHost = '127.0.0.1'
    ServerPort = 9090
    ConnectSecretkey = 'FD2259061E0E46B09C7D8A4FDD602C69'
    MainDatabaseCode = 'GBB'
    ErrMsg = 'Error sending data: (12029) '#26080#27861#19982#26381#21153#22120#24314#31435#36830#25509
    ProxyPort = 0
    Left = 72
    Top = 48
  end
  object FireQMain: TFireQuery
    FieldDefs = <
      item
        Name = #27969#27700#21495
        DataType = ftString
        Size = 255
      end
      item
        Name = #20250#21592
        DataType = ftString
        Size = 255
      end
      item
        Name = #21830#21697#20449#24687
        DataType = ftString
        Size = 255
      end
      item
        Name = #26085#26399
        DataType = ftString
        Size = 255
      end
      item
        Name = #38376#24215
        DataType = ftString
        Size = 255
      end
      item
        Name = #21830#21697#26465#30721
        DataType = ftString
        Size = 255
      end
      item
        Name = #21830#21697#25968#37327
        Attributes = [faReadonly]
        DataType = ftFloat
        Precision = 16
      end
      item
        Name = #21830#21697#21407#20215
        Attributes = [faReadonly]
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = #23454#25910#37329#39069
        Attributes = [faReadonly]
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = #25240#35753#37329#39069
        Attributes = [faReadonly]
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = #21033#28070
        Attributes = [faReadonly]
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = #23548#36141#21592
        DataType = ftString
        Size = 255
      end
      item
        Name = #20998#31867
        DataType = ftWideString
        Size = 50
      end
      item
        Name = #21333#20215
        DataType = ftWideString
        Size = 50
      end
      item
        Name = #20250#21592#36127#36131#20154
        DataType = ftString
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
      'SELECT'
      '   ['#38144#21806#21333#25454#26126#32454'].['#27969#27700#21495'],'#10
      '   ['#38144#21806#21333#25454#26126#32454'].['#20250#21592'],'#10#9' '
      '   ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#20449#24687'],'#10#9
      '   ['#38144#21806#21333#25454#26126#32454'].['#26085#26399'],'#10#9
      '   ['#38144#21806#21333#25454#26126#32454'].['#38376#24215'],'#10#9' '
      '   ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#26465#30721'],'#10#9
      '    SUM ( ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#25968#37327'] ) AS '#21830#21697#25968#37327','#10#9' '
      '    SUM ( ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#21407#20215'] ) AS '#21830#21697#21407#20215','#10#9' '
      '    SUM ( ['#38144#21806#21333#25454#26126#32454'].['#23454#25910#37329#39069'] ) AS ['#23454#25910#37329#39069'],'
      '    SUM ( ['#38144#21806#21333#25454#26126#32454'].['#25240#35753#37329#39069'] ) AS ['#25240#35753#37329#39069'], '
      '    SUM ( ['#38144#21806#21333#25454#26126#32454'].['#21033#28070']     ) AS ['#21033#28070'],'#10#9' '
      '    ['#38144#21806#21333#25454#26126#32454'].['#23548#36141#21592'],'#10#9
      '    ['#21830#21697#20998#31867'].['#20998#31867'],'
      '    ['#21830#21697#20998#31867'].['#21333#20215'],'
      '    ['#20250#21592#26723#26696'].['#23548#36141#21592'] AS ['#20250#21592#36127#36131#20154']'
      'FROM'#10#9
      '    dbo.['#38144#21806#21333#25454#26126#32454']'
      ''
      'LEFT JOIN'
      '    dbo.['#21830#21697#20998#31867']'
      #9'ON '
      #9' ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#20449#24687'] = ['#21830#21697#20998#31867'].['#21517#31216#65288#24517#22635#65289']'
      'LEFT JOIN'
      #9'dbo.['#20250#21592#26723#26696']'
      #9'ON '
      
        #9'dbo.['#38144#21806#21333#25454#26126#32454'].['#20250#21592']= dbo.['#20250#21592#26723#26696'].['#22995#21517#65288#24517#22635#65289']+'#39#65288#39'+dbo.['#20250#21592#26723#26696'].['#20250#21592#21495#65288#24517#22635#65289']' +
        '+'#39#65289#39
      'WHERE (['#20250#21592']<>'#39'-'#39')or(['#20250#21592']<>NULL)'#9
      'GROUP BY'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#27969#27700#21495'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#20250#21592'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#26085#26399'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#20449#24687'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#26085#26399'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#38376#24215'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#21830#21697#26465#30721'],'#10#9' '
      '         ['#38144#21806#21333#25454#26126#32454'].['#23548#36141#21592'],'
      #9' ['#38144#21806#21333#25454#26126#32454'].['#25240#35753#37329#39069'], '
      #9' ['#38144#21806#21333#25454#26126#32454'].['#21033#28070'],'
      #9' ['#21830#21697#20998#31867'].['#20998#31867'],'
      '         ['#21830#21697#20998#31867'].['#21333#20215'],'
      '         ['#20250#21592#26723#26696'].['#23548#36141#21592']'
      '      ORDER BY'#10#9
      '         ['#20250#21592'],'#10
      '         ['#26085#26399'] ')
    DataInfo.Params = <>
    DataInfo.Connection = FireConMain
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
    Left = 136
    Top = 48
  end
end
