inherited fraModuleChart: TfraModuleChart
  Width = 1652
  ExplicitWidth = 1652
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 1652
    Height = 661
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.TabHeight = 32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmDefault
    ClientRectBottom = 661
    ClientRectRight = 1652
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = #24635#37096#24180#38144#21806#25968#25454#20998#26512
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1652
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 14
          Top = 14
          Width = 36
          Height = 14
          Caption = #24180#20221#65306
        end
        object Label2: TLabel
          Left = 367
          Top = 14
          Width = 60
          Height = 14
          Caption = #21830#21697#20998#31867#65306
        end
        object Label3: TLabel
          Left = 198
          Top = 14
          Width = 36
          Height = 14
          Caption = #38376#24215#65306
        end
        object Label4: TLabel
          Left = 670
          Top = 14
          Width = 36
          Height = 14
          Caption = #21697#31867#65306
        end
        object Label5: TLabel
          Left = 839
          Top = 14
          Width = 48
          Height = 14
          Caption = #29275#22902#31881#65306
        end
        object Label6: TLabel
          Left = 1019
          Top = 14
          Width = 48
          Height = 14
          Caption = #32650#22902#31881#65306
        end
        object Label7: TLabel
          Left = 1200
          Top = 14
          Width = 48
          Height = 14
          Caption = #32440#23615#35044#65306
        end
        object Label8: TLabel
          Left = 1393
          Top = 14
          Width = 36
          Height = 14
          Caption = #21697#29260#65306
        end
        object edtComYear: TcxComboBox
          Left = 56
          Top = 10
          TabOrder = 0
          Width = 121
        end
        object edtComMenDian: TcxComboBox
          Left = 240
          Top = 10
          TabOrder = 1
          Width = 121
        end
        object edtComGoodsClass: TcxComboBox
          Left = 424
          Top = 10
          Properties.OnChange = edtComGoodsClassPropertiesChange
          TabOrder = 2
          Width = 121
        end
        object btnCreateChart: TcxButton
          Left = 560
          Top = 8
          Width = 75
          Height = 25
          Action = actCreateChart
          TabOrder = 3
        end
        object edtComPINLEI: TcxComboBox
          Left = 712
          Top = 10
          Properties.OnChange = edtComPINLEIPropertiesChange
          TabOrder = 4
          Width = 121
        end
        object edtComNIUNAI: TcxComboBox
          Left = 889
          Top = 10
          Properties.OnChange = edtComNIUNAIPropertiesChange
          TabOrder = 5
          Width = 121
        end
        object edtComYANGNAI: TcxComboBox
          Left = 1073
          Top = 10
          Properties.OnChange = edtComYANGNAIPropertiesChange
          TabOrder = 6
          Width = 121
        end
        object edtComZHINIAOKU: TcxComboBox
          Left = 1254
          Top = 10
          Properties.OnChange = edtComZHINIAOKUPropertiesChange
          TabOrder = 7
          Width = 121
        end
        object edtComPINPAI: TcxComboBox
          Left = 1435
          Top = 10
          Properties.OnChange = edtComPINPAIPropertiesChange
          TabOrder = 8
          Width = 121
        end
      end
      object DBChart1: TDBChart
        Left = 0
        Top = 41
        Width = 1652
        Height = 586
        AllowPanning = pmNone
        Title.Font.Color = 4079166
        Title.Font.Height = -36
        Title.Font.Name = #24494#36719#38597#40657
        Title.Font.Style = [fsBold]
        Title.Frame.Visible = False
        Title.Text.Strings = (
          #20054#23453#36125#24180#24230#24635#38144#21806#32479#35745)
        BottomAxis.Axis.Color = clGray
        BottomAxis.Grid.Visible = False
        Legend.FontSeriesColor = True
        Legend.TextStyle = ltsXValue
        Legend.Visible = False
        RightAxis.Visible = False
        TopAxis.Visible = False
        View3D = False
        View3DWalls = False
        Zoom.Allow = False
        Zoom.Direction = tzdHorizontal
        Zoom.KeyShift = [ssCtrl]
        Zoom.Pen.Visible = False
        OnGetAxisLabel = DBChart1GetAxisLabel
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series1: TBarSeries
          BarPen.Visible = False
          ColorEachPoint = True
          ConePercent = 1
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          DataSource = FireQYearChart
          XLabelsSource = #26376#20221
          OnGetMarkText = Series1GetMarkText
          Dark3D = False
          Sides = 3
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = #38144#21806#32479#35745
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #24635#37096#26376#38144#21806#20998#26512
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1652
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label9: TLabel
          Left = 1193
          Top = 17
          Width = 36
          Height = 14
          Caption = #21697#29260#65306
        end
        object Label10: TLabel
          Left = 1000
          Top = 17
          Width = 48
          Height = 14
          Caption = #32440#23615#35044#65306
        end
        object Label11: TLabel
          Left = 819
          Top = 17
          Width = 48
          Height = 14
          Caption = #32650#22902#31881#65306
        end
        object Label12: TLabel
          Left = 639
          Top = 17
          Width = 48
          Height = 14
          Caption = #29275#22902#31881#65306
        end
        object Label13: TLabel
          Left = 478
          Top = 14
          Width = 36
          Height = 14
          Caption = #21697#31867#65306
        end
        object Label14: TLabel
          Left = 191
          Top = 14
          Width = 60
          Height = 14
          Caption = #21830#21697#20998#31867#65306
        end
        object Label16: TLabel
          Left = 22
          Top = 14
          Width = 36
          Height = 14
          Caption = #24180#20221#65306
        end
        object edtPINLEI: TcxComboBox
          Left = 512
          Top = 13
          Properties.OnChange = actCreatePieExecute
          TabOrder = 0
          Width = 121
        end
        object edtPINPAI: TcxComboBox
          Left = 1235
          Top = 13
          Properties.OnChange = actCreatePieExecute
          TabOrder = 1
          Width = 121
        end
        object edtZHINIAOKU: TcxComboBox
          Left = 1054
          Top = 13
          Properties.OnChange = actCreatePieExecute
          TabOrder = 2
          Width = 121
        end
        object edtYANGNAI: TcxComboBox
          Left = 873
          Top = 13
          Properties.OnChange = actCreatePieExecute
          TabOrder = 3
          Width = 121
        end
        object edtNIUNAI: TcxComboBox
          Left = 689
          Top = 13
          Properties.OnChange = actCreatePieExecute
          TabOrder = 4
          Width = 121
        end
        object btnPieCreate: TcxButton
          Left = 392
          Top = 8
          Width = 75
          Height = 25
          Action = actCreateChart
          Caption = #29983#25104#39292#29366#22270
          TabOrder = 5
          OnClick = btnPieCreateClick
        end
        object edtGoodsClass: TcxComboBox
          Left = 248
          Top = 10
          Properties.OnChange = edtComGoodsClassPropertiesChange
          TabOrder = 6
          Width = 121
        end
        object edtYear: TcxComboBox
          Left = 64
          Top = 10
          TabOrder = 7
          Width = 121
        end
      end
      object DBChart2: TDBChart
        Left = 0
        Top = 41
        Width = 1652
        Height = 586
        Title.Color = clGray
        Title.Font.Color = 4802889
        Title.Font.Height = -35
        Title.Font.Name = #24494#36719#38597#40657
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          #38144#21806#39069#21344#27604#32479#35745#22270)
        Legend.Symbol.Position = spRight
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        Zoom.Allow = False
        Zoom.MouseWheel = pmwNormal
        ZoomWheel = pmwNormal
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series2: TPieSeries
          Marks.Font.Height = -16
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsLabelValue
          Marks.Callout.Length = 20
          DataSource = FireQPieChart
          XLabelsSource = #38376#24215
          XValues.Order = loAscending
          YValues.Name = 'Pie'
          YValues.Order = loNone
          YValues.ValueSource = #21344#27604
          Frame.InnerBrush.BackColor = clRed
          Frame.InnerBrush.Gradient.EndColor = clGray
          Frame.InnerBrush.Gradient.MidColor = clWhite
          Frame.InnerBrush.Gradient.StartColor = 4210752
          Frame.InnerBrush.Gradient.Visible = True
          Frame.MiddleBrush.BackColor = clYellow
          Frame.MiddleBrush.Gradient.EndColor = 8553090
          Frame.MiddleBrush.Gradient.MidColor = clWhite
          Frame.MiddleBrush.Gradient.StartColor = clGray
          Frame.MiddleBrush.Gradient.Visible = True
          Frame.OuterBrush.BackColor = clGreen
          Frame.OuterBrush.Gradient.EndColor = 4210752
          Frame.OuterBrush.Gradient.MidColor = clWhite
          Frame.OuterBrush.Gradient.StartColor = clSilver
          Frame.OuterBrush.Gradient.Visible = True
          Frame.Width = 4
          OtherSlice.Legend.Visible = False
          PiePen.Visible = False
        end
      end
    end
  end
  inherited actlstModule: TActionList
    object actCreateChart: TAction
      Caption = #29983#25104#22270#34920
      OnExecute = actCreateChartExecute
    end
    object actCreatePie: TAction
      Caption = 'actCreatePie'
      OnExecute = actCreatePieExecute
    end
  end
  inherited barMgrModule: TdxBarManager
    PixelsPerInch = 96
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object FireQYearChart: TFireQuery
    FieldDefs = <
      item
        Name = #26376#20221
        Attributes = [faReadonly]
        DataType = ftString
        Size = 10
      end
      item
        Name = #38144#21806#32479#35745
        Attributes = [faReadonly]
        DataType = ftCurrency
        Precision = 19
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
      'SELECT '
      '     LEFT(CONVERT(VARCHAR(10), ['#26085#26399'], 120), 7) AS ['#26376#20221'], '
      #9#9' SUM(['#23454#25910#37329#39069']) AS ['#38144#21806#32479#35745']'
      'FROM'
      '   dbo.ViewSale '
      'GROUP BY  '
      '   LEFT(CONVERT(VARCHAR(10), ['#26085#26399'], 120), 7)'
      'ORDER BY'
      '   LEFT(CONVERT(VARCHAR(10), ['#26085#26399'], 120), 7)')
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
    Left = 880
    Top = 156
  end
  object FireQTemp: TFireQuery
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
    Left = 952
    Top = 156
  end
  object FireQPieChart: TFireQuery
    FieldDefs = <
      item
        Name = #24180
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = #38376#24215
        DataType = ftString
        Size = 255
      end
      item
        Name = #21344#27604
        Attributes = [faReadonly]
        DataType = ftCurrency
        Precision = 19
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
      'select t1.['#24180'], t1.'#38376#24215', t1.'#23454#25910#37329#39069'/t2.'#24635#23454#25910#37329#39069' as ['#21344#27604'] from'
      '('
      #9'select year(['#26085#26399']) ['#24180'], ['#38376#24215'], sum(['#23454#25910#37329#39069']) ['#23454#25910#37329#39069'] '
      #9'from [dbo].['#38144#21806#21333#25454#26126#32454'] t1'
      '               WHERE year(['#26085#26399'])='#39'2019'#39
      #9'group by year(['#26085#26399']), ['#38376#24215']'
      ') t1'
      'inner join '
      '('
      #9'select year(['#26085#26399']) ['#24180'], sum(['#23454#25910#37329#39069']) ['#24635#23454#25910#37329#39069'] from [dbo].['#38144#21806#21333#25454#26126#32454']'
      '                WHERE year(['#26085#26399'])='#39'2019'#39
      #9'group by year(['#26085#26399'])'
      ') t2'
      'on t1.['#24180'] = t2.['#24180']')
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
    Left = 884
    Top = 202
  end
end
