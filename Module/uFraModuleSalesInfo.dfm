inherited FraModuleSalesInfo: TFraModuleSalesInfo
  Width = 1675
  Height = 767
  ExplicitWidth = 1675
  ExplicitHeight = 767
  object scGPPanel1: TscGPPanel [0]
    Left = 0
    Top = 41
    Width = 1675
    Height = 679
    Align = alClient
    FluentUIOpaque = False
    TabOrder = 3
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    DrawTextMode = scdtmGDI
    FillGradientAngle = 90
    FillGradientBeginAlpha = 0
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 2
    FillColor = clBtnFace
    FillColorAlpha = 0
    FillColor2 = clNone
    FrameColor = clBtnShadow
    FrameColorAlpha = 0
    FrameRadius = 0
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clBtnFace
    Caption = 'scGPPanel1'
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    DesignSize = (
      1675
      679)
    object Label4: TLabel
      Left = 555
      Top = 165
      Width = 220
      Height = 25
      Caption = #27491#22312#35835#21462#25968#25454#65292#35831#31245#21518#8230#8230
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
    end
    object ActivityIndicator1: TActivityIndicator
      Left = 628
      Top = 220
      Anchors = [akLeft, akTop, akRight, akBottom]
      IndicatorSize = aisXLarge
    end
  end
  inherited cxGrid1: TcxGrid
    Left = 3
    Top = 44
    Width = 1669
    Height = 673
    Align = alClient
    ExplicitLeft = 3
    ExplicitTop = 44
    ExplicitWidth = 1669
    ExplicitHeight = 673
    inherited GridViewList: TcxGridDBTableView
      Navigator.Buttons.Last.Enabled = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Enabled = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Enabled = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Cancel.Enabled = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = GridViewListCellDblClick
      OnCustomDrawCell = GridViewListCustomDrawCell
      OptionsData.Appending = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = True
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelectMode = msmPersistent
      OptionsView.IndicatorWidth = 28
      object GridViewListColumn1: TcxGridDBColumn
        DataBinding.FieldName = #26085#26399
        HeaderAlignmentHorz = taCenter
        Width = 167
      end
      object GridViewListColumn2: TcxGridDBColumn
        DataBinding.FieldName = #38376#24215
        HeaderAlignmentHorz = taCenter
        Width = 174
      end
      object GridViewListColumn3: TcxGridDBColumn
        DataBinding.FieldName = #20250#21592
        HeaderAlignmentHorz = taCenter
        Width = 210
      end
      object GridViewListColumn4: TcxGridDBColumn
        DataBinding.FieldName = #23548#36141#21592
        HeaderAlignmentHorz = taCenter
        Width = 79
      end
      object GridViewListColumn5: TcxGridDBColumn
        DataBinding.FieldName = #21830#21697#20449#24687
        HeaderAlignmentHorz = taCenter
        Width = 338
      end
      object GridViewListColumn6: TcxGridDBColumn
        DataBinding.FieldName = #21830#21697#26465#30721
        HeaderAlignmentHorz = taCenter
        Width = 157
      end
      object GridViewListColumn7: TcxGridDBColumn
        DataBinding.FieldName = #21830#21697#25968#37327
        HeaderAlignmentHorz = taCenter
        Width = 101
      end
      object GridViewListColumn8: TcxGridDBColumn
        DataBinding.FieldName = #21830#21697#21407#20215
        HeaderAlignmentHorz = taCenter
        Width = 98
      end
      object GridViewListColumn9: TcxGridDBColumn
        DataBinding.FieldName = #23454#25910#37329#39069
        HeaderAlignmentHorz = taCenter
        Width = 111
      end
      object GridViewListColumn10: TcxGridDBColumn
        DataBinding.FieldName = #20250#21592#36127#36131#20154
        HeaderAlignmentHorz = taCenter
        Width = 131
      end
      object GridViewListColumn11: TcxGridDBColumn
        DataBinding.FieldName = #20998#31867
        HeaderAlignmentHorz = taCenter
        Width = 75
      end
    end
  end
  inherited ToolPanel: TPanel
    Width = 1675
    Height = 41
    ExplicitWidth = 1675
    ExplicitHeight = 41
    object Label3: TLabel
      Left = 3
      Top = 14
      Width = 72
      Height = 14
      Caption = #35831#36873#25321#38376#24215#65306
    end
    object edtEndDate: TcxDateEdit
      Left = 528
      Top = 9
      Hint = #35831#36755#20837#35201#26597#35810#30340#32456#27490#26085#26399
      ParentShowHint = False
      Properties.AssignedValues.EditFormat = True
      Properties.AutoSelect = False
      Properties.DateButtons = [btnNow, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd 23:59:59'
      Properties.ImeMode = imClose
      Properties.Kind = ckDateTime
      ShowHint = True
      TabOrder = 0
      TextHint = #32456#27490#26085#26399
      Width = 121
    end
    object edtBeginDate: TcxDateEdit
      Left = 400
      Top = 9
      Hint = #35831#36755#20837#35201#26597#35810#30340#36215#22987#26085#26399
      ParentShowHint = False
      Properties.AssignedValues.EditFormat = True
      Properties.AutoSelect = False
      Properties.DateButtons = [btnNow, btnToday]
      Properties.DisplayFormat = 'yyyy-mm-dd 00:00:00'
      Properties.ImeMode = imClose
      Properties.Kind = ckDateTime
      ShowHint = True
      TabOrder = 1
      TextHint = #36215#22987#26085#26399
      Width = 121
    end
    object chk1: TCheckBox
      Left = 882
      Top = 12
      Width = 65
      Height = 17
      Caption = #27169#31946#26597#35810
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object btnSeach: TscGPButton
      Left = 820
      Top = 9
      Width = 51
      Height = 22
      FluentUIOpaque = False
      TabOrder = 3
      TabStop = True
      OnClick = actSeachExecute
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = #26597#35810
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = clBtnFace
      Options.HotColor = clBtnFace
      Options.PressedColor = clBtnShadow
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnShadow
      Options.FrameHotColor = clHighlight
      Options.FramePressedColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnShadow
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      HotImageIndex = -1
      FluentLightEffect = False
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot, scsPressed, scsFocused]
      ImageGlow = True
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = True
    end
    object edtGoodsName: TcxTextEdit
      Left = 240
      Top = 9
      Hint = #36825#37324#36755#20837#20320#35201#26597#35810#30340#21830#21697#21517#31216'/'#26465#30721
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TextHint = #21830#21697#21517#31216'/'#21830#21697#26465#30721
      Width = 145
    end
    object edtMember: TcxTextEdit
      Left = 664
      Top = 9
      Hint = #36825#37324#36755#20837#20320#35201#26597#35810#30340#20250#21592#21517#31216#25110#32773#20250#21592#21495#30721
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TextHint = #20250#21592#21517#31216'/'#20250#21592#21495#30721
      Width = 145
    end
    object edtComMenDian: TcxComboBox
      Left = 81
      Top = 9
      Hint = #35831#36873#25321#20320#38656#35201#26597#35810#30340#38376#24215
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TextHint = #35831#36873#25321#20320#38656#35201#26597#35810#30340#38376#24215
      Width = 153
    end
    object scGPButton1: TscGPButton
      Left = 957
      Top = 9
      Width = 57
      Height = 22
      FluentUIOpaque = False
      TabOrder = 7
      TabStop = True
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = #23548#20986#25968#25454
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = clBtnFace
      Options.HotColor = clBtnFace
      Options.PressedColor = clBtnShadow
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnShadow
      Options.FrameHotColor = clHighlight
      Options.FramePressedColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnShadow
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      HotImageIndex = -1
      FluentLightEffect = False
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot, scsPressed, scsFocused]
      ImageGlow = True
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = True
    end
  end
  inherited BottomPanel: TPanel
    Top = 720
    Width = 1675
    Height = 47
    ExplicitTop = 720
    ExplicitWidth = 1675
    ExplicitHeight = 47
    object Label1: TLabel
      Left = 1240
      Top = 16
      Width = 12
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = #31532
    end
    object Label2: TLabel
      Left = 1319
      Top = 16
      Width = 12
      Height = 14
      Anchors = [akRight, akBottom]
      Caption = #39029
    end
    object btnHomePage: TscGPButton
      Left = 1088
      Top = 10
      Width = 57
      Height = 27
      Anchors = [akRight, akBottom]
      FluentUIOpaque = False
      TabOrder = 0
      TabStop = True
      OnClick = btnHomePageClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = #39318#39029
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = clBtnFace
      Options.HotColor = clBtnFace
      Options.PressedColor = clBtnShadow
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnShadow
      Options.FrameHotColor = clHighlight
      Options.FramePressedColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnShadow
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      HotImageIndex = -1
      FluentLightEffect = False
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot, scsPressed, scsFocused]
      ImageGlow = True
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object btnPriorPage: TscGPButton
      Left = 1162
      Top = 10
      Width = 57
      Height = 27
      Anchors = [akRight, akBottom]
      FluentUIOpaque = False
      TabOrder = 1
      TabStop = True
      OnClick = btnPriorPageClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = #21069#19968#39029
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = clBtnFace
      Options.HotColor = clBtnFace
      Options.PressedColor = clBtnShadow
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnShadow
      Options.FrameHotColor = clHighlight
      Options.FramePressedColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnShadow
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      HotImageIndex = -1
      FluentLightEffect = False
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot, scsPressed, scsFocused]
      ImageGlow = True
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object btnNextPage: TscGPButton
      Left = 1441
      Top = 10
      Width = 57
      Height = 27
      Anchors = [akRight, akBottom]
      FluentUIOpaque = False
      TabOrder = 2
      TabStop = True
      OnClick = btnNextPageClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = #21518#19968#39029
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = clBtnFace
      Options.HotColor = clBtnFace
      Options.PressedColor = clBtnShadow
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnShadow
      Options.FrameHotColor = clHighlight
      Options.FramePressedColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnShadow
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      HotImageIndex = -1
      FluentLightEffect = False
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot, scsPressed, scsFocused]
      ImageGlow = True
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object btnLastPage: TscGPButton
      Left = 1512
      Top = 10
      Width = 57
      Height = 27
      Anchors = [akRight, akBottom]
      FluentUIOpaque = False
      TabOrder = 3
      TabStop = True
      OnClick = btnLastPageClick
      Animation = False
      Badge.Color = clRed
      Badge.ColorAlpha = 255
      Badge.Font.Charset = DEFAULT_CHARSET
      Badge.Font.Color = clWhite
      Badge.Font.Height = -11
      Badge.Font.Name = 'Tahoma'
      Badge.Font.Style = [fsBold]
      Badge.Visible = False
      Caption = #23614#39029
      CanFocused = True
      CustomDropDown = False
      DrawTextMode = scdtmGDI
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = clBtnFace
      Options.HotColor = clBtnFace
      Options.PressedColor = clBtnShadow
      Options.FocusedColor = clBtnFace
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = clBtnShadow
      Options.FrameHotColor = clHighlight
      Options.FramePressedColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnShadow
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clBtnText
      Options.FontHotColor = clBtnText
      Options.FontPressedColor = clBtnText
      Options.FontFocusedColor = clBtnText
      Options.FontDisabledColor = clBtnShadow
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 25
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpRect
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.ArrowNormalColor = clBtnText
      Options.ArrowHotColor = clBtnText
      Options.ArrowPressedColor = clBtnText
      Options.ArrowFocusedColor = clBtnText
      Options.ArrowDisabledColor = clBtnText
      Options.ArrowNormalColorAlpha = 200
      Options.ArrowHotColorAlpha = 255
      Options.ArrowPressedColorAlpha = 255
      Options.ArrowFocusedColorAlpha = 200
      Options.ArrowDisabledColorAlpha = 125
      Options.StyleColors = True
      Options.PressedHotColors = False
      HotImageIndex = -1
      FluentLightEffect = False
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      GlowEffect.HotColor = clNone
      GlowEffect.PressedColor = clNone
      GlowEffect.FocusedColor = clNone
      GlowEffect.PressedGlowSize = 7
      GlowEffect.PressedAlphaValue = 255
      GlowEffect.States = [scsHot, scsPressed, scsFocused]
      ImageGlow = True
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object labTotalPage: TscGPLabel
      Left = 1360
      Top = 12
      Width = 37
      Height = 23
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 4
      DragForm = False
      DragTopForm = True
      DrawTextMode = scdtmGDI
      ContentMarginLeft = 5
      ContentMarginRight = 5
      ContentMarginTop = 5
      ContentMarginBottom = 5
      DisabledFontColor = clNone
      FrameWidth = 1
      FillColor = clBtnText
      FillColorAlpha = 20
      FillColor2 = clNone
      FillColor2Alpha = 255
      FillGradientAngle = 0
      FrameColor = clBtnText
      FrameColorAlpha = 40
      FrameRadius = 5
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      Caption = #20849' '#39029
    end
    object edtPageSize: TscGPComboEdit
      Left = 1581
      Top = 10
      Width = 81
      Height = 27
      AutoSize = False
      FluentUIOpaque = False
      Options.NormalColor = clWindow
      Options.HotColor = clWindow
      Options.FocusedColor = clWindow
      Options.DisabledColor = clWindow
      Options.NormalColorAlpha = 200
      Options.HotColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 150
      Options.FrameNormalColor = clBtnText
      Options.FrameHotColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnText
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 100
      Options.FrameHotColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 50
      Options.FontNormalColor = clWindowText
      Options.FontHotColor = clWindowText
      Options.FontFocusedColor = clWindowText
      Options.FontDisabledColor = clGrayText
      Options.ShapeFillGradientAngle = 90
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpessRect
      Options.ScaleFrameWidth = False
      Options.StyleColors = True
      ContentMarginLeft = 5
      ContentMarginRight = 5
      ContentMarginTop = 5
      ContentMarginBottom = 5
      HidePromptTextIfFocused = False
      PromptTextColor = clNone
      Transparent = True
      MouseWheelSupport = True
      LeftButton.Kind = scgpebCustom
      LeftButton.Enabled = True
      LeftButton.Visible = False
      LeftButton.ImageIndex = -1
      LeftButton.ImageHotIndex = -1
      LeftButton.ImagePressedIndex = -1
      LeftButton.RepeatClick = False
      LeftButton.RepeatClickInterval = 200
      LeftButton.ShowHint = False
      LeftButton.GlyphColor = clWindowText
      LeftButton.GlyphColorAlpha = 180
      LeftButton.GlyphColorHotAlpha = 240
      LeftButton.GlyphColorPressedAlpha = 150
      LeftButton.GlyphThickness = 2
      LeftButton.GlyphSize = 0
      LeftButton.Width = 0
      RightButton.Kind = scgpebDropDown
      RightButton.Enabled = True
      RightButton.Visible = True
      RightButton.ImageIndex = -1
      RightButton.ImageHotIndex = -1
      RightButton.ImagePressedIndex = -1
      RightButton.RepeatClick = False
      RightButton.RepeatClickInterval = 200
      RightButton.ShowHint = False
      RightButton.GlyphColor = clWindowText
      RightButton.GlyphColorAlpha = 180
      RightButton.GlyphColorHotAlpha = 240
      RightButton.GlyphColorPressedAlpha = 150
      RightButton.GlyphThickness = 2
      RightButton.GlyphSize = 0
      RightButton.Width = 0
      CustomDraw = False
      UseFilter = False
      TabOrder = 5
      Items = <
        item
          Header = False
          Enabled = True
          Caption = '10'
          CustomColor = clNone
          CustomColorAlpha = 255
          CustomTextColor = clNone
          CustomDetailTextColor = clNone
          Checked = False
        end
        item
          Header = False
          Enabled = True
          Caption = '20'
          CustomColor = clNone
          CustomColorAlpha = 255
          CustomTextColor = clNone
          CustomDetailTextColor = clNone
          Checked = False
        end
        item
          Header = False
          Enabled = True
          Caption = '50'
          CustomColor = clNone
          CustomColorAlpha = 255
          CustomTextColor = clNone
          CustomDetailTextColor = clNone
          Checked = False
        end
        item
          Header = False
          Enabled = True
          Caption = '100'
          CustomColor = clNone
          CustomColorAlpha = 255
          CustomTextColor = clNone
          CustomDetailTextColor = clNone
          Checked = False
        end>
      ItemIndex = 3
      ListBoxItemWordWrap = True
      ListBoxItemShowEllipsis = False
      ListBoxHeaderFont.Charset = DEFAULT_CHARSET
      ListBoxHeaderFont.Color = clWindowText
      ListBoxHeaderFont.Height = -11
      ListBoxHeaderFont.Name = 'Tahoma'
      ListBoxHeaderFont.Style = [fsBold]
      ListBoxDetailFont.Charset = DEFAULT_CHARSET
      ListBoxDetailFont.Color = clWindowText
      ListBoxDetailFont.Height = -11
      ListBoxDetailFont.Name = 'Tahoma'
      ListBoxDetailFont.Style = []
      ListBoxLineColor = clWindowText
      ListBoxLineColorAlpha = 20
      ListBoxWidth = 0
      ListBoxHeight = 0
      ListBoxIndentMargin = 10
      ListBoxItemSpacing = 5
      ListBoxItemMargin = 5
      ListBoxShowItemDetails = False
      ListBoxShowLines = False
      ListBoxItemHeight = 16
      ListBoxHeaderHeight = 20
      ListBoxHeaderOptions.Color = clBtnFace
      ListBoxHeaderOptions.ColorAlpha = 220
      ListBoxHeaderOptions.FillStyle = scgpsfColor
      ListBoxHeaderOptions.GradientAngle = 90
      ListBoxHeaderOptions.Margin = 5
      ListBoxSelectionOptions.Color = clHighlight
      ListBoxSelectionOptions.ColorAlpha = 220
      ListBoxSelectionOptions.FillStyle = scgpsfColor
      ListBoxSelectionOptions.GradientAngle = 90
      ListBoxSelectionOptions.FocusedColor = clHighlight
      ListBoxSelectionOptions.FocusedColorAlpha = 255
      ListBoxSelectionOptions.FocusedFillStyle = scgpsfColor
      ListBoxSelectionOptions.FocusedGradientAngle = 90
      ListBoxSelectionOptions.FontColor = clHighlightText
      ListBoxSelectionOptions.FocusedFontColor = clHighlightText
      ListBoxOptions.FillColor = clWindow
      ListBoxOptions.FillColor2 = clWindow
      ListBoxOptions.FillColorAlpha = 255
      ListBoxOptions.FillColor2Alpha = 255
      ListBoxOptions.FillGradientAngle = 90
      ListBoxOptions.FrameColor = clBtnShadow
      ListBoxOptions.FrameColorAlpha = 255
      ListBoxOptions.FrameWidth = 2
      ListBoxOptions.FrameScaleWidth = False
      ListBoxScrollBarOptions.BorderWidth = 0
      ListBoxScrollBarOptions.FillColor = clBtnFace
      ListBoxScrollBarOptions.FillColorAlpha = 100
      ListBoxScrollBarOptions.ThumbColor = clWindowText
      ListBoxScrollBarOptions.ThumbColorAlpha = 50
      ListBoxScrollBarOptions.ThumbColorHotAlpha = 100
      ListBoxScrollBarOptions.ThumbColorPressedAlpha = 150
      ListBoxScrollBarOptions.ThumbRounded = False
      ListBoxScrollBarOptions.Position = scgpsbDefault
      ListBoxScrollBarOptions.Size = 11
      DropDownCount = 7
      Text = '100'
      Anchors = [akRight, akBottom]
      Color = clBtnFace
    end
    object edtPageIndex: TscGPEdit
      Left = 1265
      Top = 10
      Width = 48
      Height = 27
      AutoSize = False
      FluentUIOpaque = False
      Options.NormalColor = clWindow
      Options.HotColor = clWindow
      Options.FocusedColor = clWindow
      Options.DisabledColor = clWindow
      Options.NormalColorAlpha = 200
      Options.HotColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 150
      Options.FrameNormalColor = clBtnText
      Options.FrameHotColor = clHighlight
      Options.FrameFocusedColor = clHighlight
      Options.FrameDisabledColor = clBtnText
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 100
      Options.FrameHotColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 50
      Options.FontNormalColor = clWindowText
      Options.FontHotColor = clWindowText
      Options.FontFocusedColor = clWindowText
      Options.FontDisabledColor = clGrayText
      Options.ShapeFillGradientAngle = 90
      Options.ShapeCornerRadius = 10
      Options.ShapeStyle = scgpessRect
      Options.ScaleFrameWidth = False
      Options.StyleColors = True
      ContentMarginLeft = 5
      ContentMarginRight = 5
      ContentMarginTop = 5
      ContentMarginBottom = 5
      HidePromptTextIfFocused = False
      PromptTextColor = clNone
      Transparent = True
      LeftButton.Kind = scgpebCustom
      LeftButton.Enabled = True
      LeftButton.Visible = False
      LeftButton.ImageIndex = -1
      LeftButton.ImageHotIndex = -1
      LeftButton.ImagePressedIndex = -1
      LeftButton.RepeatClick = False
      LeftButton.RepeatClickInterval = 200
      LeftButton.ShowHint = False
      LeftButton.GlyphColor = clWindowText
      LeftButton.GlyphColorAlpha = 180
      LeftButton.GlyphColorHotAlpha = 240
      LeftButton.GlyphColorPressedAlpha = 150
      LeftButton.GlyphThickness = 2
      LeftButton.GlyphSize = 0
      LeftButton.Width = 0
      RightButton.Kind = scgpebCustom
      RightButton.Enabled = True
      RightButton.Visible = False
      RightButton.ImageIndex = -1
      RightButton.ImageHotIndex = -1
      RightButton.ImagePressedIndex = -1
      RightButton.RepeatClick = False
      RightButton.RepeatClickInterval = 200
      RightButton.ShowHint = False
      RightButton.GlyphColor = clWindowText
      RightButton.GlyphColorAlpha = 180
      RightButton.GlyphColorHotAlpha = 240
      RightButton.GlyphColorPressedAlpha = 150
      RightButton.GlyphThickness = 2
      RightButton.GlyphSize = 0
      RightButton.Width = 0
      CustomDraw = False
      Text = '1'
      Anchors = [akRight, akBottom]
      Color = clBtnFace
      TabOrder = 6
    end
  end
  inherited propertiesStoreModule: TcxPropertiesStore
    Active = True
    Components = <
      item
        Component = edtPageSize
        Properties.Strings = (
          'Align'
          'Alignment'
          'AlignWithMargins'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'ButtonImages'
          'CharCase'
          'Color'
          'Constraints'
          'ContentMarginBottom'
          'ContentMarginLeft'
          'ContentMarginRight'
          'ContentMarginTop'
          'Ctl3D'
          'Cursor'
          'CustomDraw'
          'CustomHint'
          'DoubleBuffered'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DropDownCount'
          'DropDownPosition'
          'EditMask'
          'Enabled'
          'FluentUIOpaque'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HidePromptTextIfFocused'
          'HideSelection'
          'Hint'
          'HintComponent'
          'Images'
          'ImeMode'
          'ImeName'
          'ItemIndex'
          'Items'
          'Left'
          'LeftButton'
          'ListBoxDetailFont'
          'ListBoxHeaderFont'
          'ListBoxHeaderHeight'
          'ListBoxHeaderOptions'
          'ListBoxHeight'
          'ListBoxIndentMargin'
          'ListBoxItemHeight'
          'ListBoxItemMargin'
          'ListBoxItemShowEllipsis'
          'ListBoxItemSpacing'
          'ListBoxItemWordWrap'
          'ListBoxLineColor'
          'ListBoxLineColorAlpha'
          'ListBoxOptions'
          'ListBoxScrollBarOptions'
          'ListBoxSelectionOptions'
          'ListBoxShowItemDetails'
          'ListBoxShowLines'
          'ListBoxWidth'
          'Margins'
          'MaxLength'
          'MouseWheelSupport'
          'Name'
          'NumbersOnly'
          'OEMConvert'
          'Options'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentCustomHint'
          'ParentDoubleBuffered'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'PromptText'
          'PromptTextColor'
          'ReadOnly'
          'RightButton'
          'ShowHint'
          'StyleElements'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'TextHint'
          'Top'
          'Touch'
          'Transparent'
          'UseFilter'
          'Visible'
          'Width')
      end>
    Left = 150
    Top = 124
  end
  inherited actlstModule: TActionList
    Left = 92
    Top = 124
    object actSeach: TAction
      Caption = 'actSeach'
      OnExecute = actSeachExecute
    end
  end
  inherited barMgrModule: TdxBarManager
    Left = 224
    Top = 124
    PixelsPerInch = 96
  end
  inherited img24: TcxImageList
    FormatVersion = 1
    Left = 40
    Top = 124
    DesignInfo = 8126504
  end
  inherited DS1: TDataSource
    DataSet = DmClient.FireQMain
    Left = 296
    Top = 120
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
    Left = 352
    Top = 120
  end
end
