object FrmGoodTypeManager: TFrmGoodTypeManager
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = ' '#21830#21697#20998#31867#31649#29702
  ClientHeight = 662
  ClientWidth = 1180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object scGPGroupBox1: TscGPGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 342
    Height = 656
    Align = alLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 0
    Alignment = taLeftJustify
    Caption = #21830#21697#20998#31867
    DrawTextMode = scdtmGDI
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    ImageGlow = False
    FrameColor = clBtnText
    FrameColorAlpha = 50
    FrameRadius = 0
    FrameWidth = 2
    ScaleFrameWdith = False
    StorePaintBuffer = True
    ExplicitHeight = 618
    object TreeGoodType: TscTreeView
      AlignWithMargins = True
      Left = 8
      Top = 27
      Width = 326
      Height = 617
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 10
      FluentUIOpaque = False
      Align = alClient
      BorderStyle = bsNone
      CheckBoxes = False
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Images = Img20
      Indent = 23
      ParentDoubleBuffered = False
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      Items.NodeData = {
        0301000000260000000100000000000000FFFFFFFFFFFFFFFF00000000000000
        00020000000104406209674655C154240000000100000000000000FFFFFFFFFF
        FFFFFF00000000000000000000000001034655C1547B7C240000000100000000
        000000FFFFFFFFFFFFFFFF00000000000000000000000001030D67A1527B7C}
      ButtonCollapseImageIndex = 0
      ButtonExpandImageIndex = 1
      SelectionStyle = scstStyled
      SelectionColor = clNone
      SelectionTextColor = clHighlightText
      ButtonColor = clNone
      ButtonGlyphColor = clBtnFace
      ShowFocusRect = False
      DefaultDraw = False
      ButtonStyle = scebsModernArrow
      OnClick = TreeGoodTypeClick
      OnContextPopup = TreeGoodTypeContextPopup
      ExplicitHeight = 579
    end
  end
  object scGPGroupBox2: TscGPGroupBox
    AlignWithMargins = True
    Left = 351
    Top = 3
    Width = 826
    Height = 656
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = [fsBold]
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 1
    Alignment = taLeftJustify
    Caption = #21830#21697#20449#24687
    DrawTextMode = scdtmGDI
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    ImageGlow = True
    FrameColor = clBtnText
    FrameColorAlpha = 50
    FrameRadius = 0
    FrameWidth = 2
    ScaleFrameWdith = False
    StorePaintBuffer = True
    ExplicitWidth = 810
    ExplicitHeight = 618
    object scGPPanel1: TscGPPanel
      AlignWithMargins = True
      Left = 5
      Top = 24
      Width = 816
      Height = 36
      Align = alTop
      FluentUIOpaque = False
      TabOrder = 0
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
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = clBtnFace
      FillColorAlpha = 150
      FillColor2 = clNone
      FrameColor = clBtnShadow
      FrameColorAlpha = 255
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
      ExplicitWidth = 800
      object scGPButton2: TscGPButton
        Left = 21
        Top = 3
        Width = 93
        Height = 30
        FluentUIOpaque = False
        TabOrder = 0
        TabStop = True
        OnContextPopup = scGPButton2ContextPopup
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = #26032#22686#21830#21697
        CanFocused = True
        CustomDropDown = False
        DrawTextMode = scdtmGDI
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        Images = Img16
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
        DropDownMenu = PopupMenu2
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object scGPButton3: TscGPButton
        Left = 132
        Top = 3
        Width = 93
        Height = 30
        FluentUIOpaque = False
        TabOrder = 1
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
        Caption = #20462#25913#21830#21697
        CanFocused = True
        CustomDropDown = False
        DrawTextMode = scdtmGDI
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        Images = Img16
        ImageIndex = 2
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
      object scGPButton4: TscGPButton
        Left = 243
        Top = 3
        Width = 93
        Height = 30
        FluentUIOpaque = False
        TabOrder = 2
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
        Caption = #21024#38500#21830#21697
        CanFocused = True
        CustomDropDown = False
        DrawTextMode = scdtmGDI
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        Images = Img16
        ImageIndex = 1
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
      object scGPButton5: TscGPButton
        Left = 353
        Top = 3
        Width = 93
        Height = 30
        FluentUIOpaque = False
        TabOrder = 3
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
        Caption = #20998#31867#31649#29702
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
        DropDownMenu = PopupMenu1
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object scGPButton1: TscGPButton
        Left = 464
        Top = 3
        Width = 93
        Height = 30
        Enabled = False
        FluentUIOpaque = False
        TabOrder = 4
        TabStop = True
        Visible = False
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = #22686#21152#21830#21697
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
    end
    object scGPGroupBox3: TscGPGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 66
      Width = 816
      Height = 73
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 1
      Alignment = taLeftJustify
      Caption = #26597#35810
      DrawTextMode = scdtmGDI
      ImageIndex = -1
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      ImageGlow = True
      FrameColor = clBtnText
      FrameColorAlpha = 50
      FrameRadius = 0
      FrameWidth = 1
      ScaleFrameWdith = False
      StorePaintBuffer = True
      ExplicitWidth = 800
    end
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 5
      Top = 145
      Width = 816
      Height = 506
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      ExplicitWidth = 800
      ExplicitHeight = 468
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DS1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #21830#21697#21517#31216
          DataBinding.FieldName = 'MC'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #21830#21697#20998#31867
          DataBinding.FieldName = 'FID'
          PropertiesClassName = 'TdxLookupSparklineProperties'
          Properties.Series = <>
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Panel1: TPanel
      Left = 40
      Top = 288
      Width = 529
      Height = 81
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 131
        Height = 26
        Caption = #25968#25454#23548#20837#20013#8230#8230
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #24494#36719#38597#40657
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ProgressBar1: TProgressBar
        Left = 8
        Top = 48
        Width = 513
        Height = 25
        Smooth = True
        Step = 1
        TabOrder = 0
      end
    end
  end
  object Img20: TcxImageList
    SourceDPI = 96
    Height = 20
    Width = 20
    FormatVersion = 1
    Left = 311
    Top = 315
    Bitmap = {
      494C010102000800040014001400FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000001021A010B
      1040010B1040010B1040010B1040010B1040010B1040010B1040010B1040010B
      1040010B1040010B1040010B10400002021B0000000000000000000000000000
      000000000000000000000000000D010B1040010B1040010B1040010B1040010B
      1040010B1040010B1040010B1040010B1040010B1040010B1040010B1040010B
      1040010B10400000000F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000070A340001021A13A2
      E9F414B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF1089C6E10000000800000000000000000000
      0000000000000000000004283A7A14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF04293C7C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000532498900010116042B
      3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0426377700000000000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F042739790000
      000B108ECBE414B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF129BE0EF00010114000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B628CBD0003
      05250319246114B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF06385190000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0635
      4D8C000000020D73A6CE14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14A9F3F9000305240000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0B63
      8FBF00080B36010B114214B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF07415F9C0000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0B63
      8FBF0742609D0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0B63
      8FBF0B638FBF094B6DA70637508F0637508F0637508F0637508F0637508F0637
      508F0637508F0637508F0637508F000000000000000000000000000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF000000000000000000000000000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF042B3F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF094B6DA70637508F0637508F0637508F0637
      508F0637508F0637508F052C4080000000000000000000000000000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF129BE0EF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0B628DBE010E144800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000637508F0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0218235F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000042B3F7F14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0B638FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006344C8B0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0217215D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000426387814B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0B5F89BB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010114000609300006
      093000060930000609300006082F0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B010A0F3F010B1040010B1040010B1040010B
      10400002021B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    DesignInfo = 20644151
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
          643D224F70656E223E0D0A09093C6720636C6173733D22737432223E0D0A0909
          093C7061746820636C6173733D2259656C6C6F772220643D224D322E322C3235
          2E326C352E352D313043382C31342E352C382E372C31342C392E352C31344832
          34762D3363302D302E362D302E342D312D312D31483132563763302D302E362D
          302E342D312D312D31483343322E342C362C322C362E352C322C377631382020
          2623393B2623393B2623393B63302C302E322C302C302E332C302E312C302E34
          43322E312C32352E342C322E322C32352E332C322E322C32352E327A222F3E0D
          0A09093C2F673E0D0A09093C7061746820636C6173733D2259656C6C6F772220
          643D224D32392E332C313648392E364C342C32366831392E3863302E352C302C
          312E312D302E322C312E332D302E366C342E392D382E394333302E312C31362E
          322C32392E382C31362C32392E332C31367A222F3E0D0A093C2F673E0D0A3C2F
          7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2246
          6F6C646572436C6F7365223E0D0A09093C673E0D0A0909093C7061746820636C
          6173733D2259656C6C6F772220643D224D32372C3130483134563763302D302E
          352D302E352D312D312D31483543342E352C362C342C362E352C342C37763138
          63302C302E352C302E352C312C312C3168323263302E352C302C312D302E352C
          312D3156313120202623393B2623393B2623393B4332382C31302E352C32372E
          352C31302C32372C31307A222F3E0D0A09093C2F673E0D0A09093C673E0D0A09
          09093C7061746820636C6173733D2259656C6C6F772220643D224D32372C3130
          483134563763302D302E352D302E352D312D312D31483543342E352C362C342C
          362E352C342C3776313863302C302E352C302E352C312C312C3168323263302E
          352C302C312D302E352C312D3156313120202623393B2623393B2623393B4332
          382C31302E352C32372E352C31302C32372C31307A222F3E0D0A09093C2F673E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object FireQGoodType: TFireQuery
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MC'
        Attributes = [faRequired]
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
      'SELECT * FROM [dbo].[GOODTYPE]')
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
    Left = 367
    Top = 315
    object FireQGoodTypeID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 30
    end
    object FireQGoodTypeFID: TStringField
      FieldName = 'FID'
      Required = True
      Size = 30
    end
    object FireQGoodTypeMC: TStringField
      FieldName = 'MC'
      Required = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = FireqGoods
    Left = 456
    Top = 208
  end
  object FireqGoods: TFireQuery
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TM'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FID'
        DataType = ftString
        Size = 30
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
      'select * from goods')
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
    Left = 408
    Top = 208
    object FireqGoodsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 50
    end
    object FireqGoodsMC: TStringField
      FieldName = 'MC'
      Size = 50
    end
    object FireqGoodsTM: TStringField
      FieldName = 'TM'
      Size = 30
    end
    object FireqGoodsFID: TStringField
      FieldName = 'FID'
      Size = 30
    end
  end
  object Img16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 311
    Top = 219
    Bitmap = {
      494C010103000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8824CFFB8824CFFB6804CFE110C
      074E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001001B0A2C0189186E02D6219602FB219602FB196F02D70A2E018B0002
      001D000000000000000000000000000000000000000000000000000000000000
      00000000021A07073A88131392D51B1BC9FB1B1BCAFB141494D708083C8A0000
      021B00000000000000000000000000000000B5804BFDB8824CFF604328B80000
      0008080503360000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000413
      005A1F8D02F3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF208E
      02F40415005E0000000000000000000000000000000000000000000000000303
      18581919BCF21B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919
      BDF303031A5C000000000000000000000000A37243F0604328B8000000082E20
      1380B6804CFE20170D6C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004120059229A
      02FE229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229B02FE0415005E00000000000000000000000000000000030318571B1B
      CEFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCFFE03031A5C0000000000000000140E0856000000082E201380B882
      4CFFB8824CFFB6804CFE20170D6C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000100191F8C02F2229C
      02FF229C02FF229C02FF229C02FFFFFFFFFFFFFFFFFF229C02FF229C02FF229C
      02FF229C02FF208E02F40002001D0000000000000000000001181818BAF11B1B
      D1FF9090E8FF9090E8FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF9090E8FF9090
      E8FF1B1BD1FF1919BDF30000021B00000000000000000906043BB8824CFFB882
      4CFFB8824CFFB8824CFFB6804CFE20170D6C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000092A0186229C02FF229C
      02FF229C02FF229C02FF229C02FFFFFFFFFFFFFFFFFF229C02FF229C02FF229C
      02FF229C02FF229C02FF0A2E018B0000000000000000070738851B1BD1FF1B1B
      D1FF8B8BE7FFFFFFFFFF9090E8FF1B1BD1FF1B1BD1FF9090E8FFFFFFFFFF8B8B
      E7FF1B1BD1FF1B1BD1FF08083C8A000000000000000000000000261B0F75B882
      4CFFB8824CFFB8824CFFB8824CFFB6804CFE20170D6C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000176901D2229C02FF229C
      02FF229C02FF229C02FF229C02FFFFFFFFFFFFFFFFFF229C02FF229C02FF229C
      02FF229C02FF229C02FF196F02D7000000000000000012128CD11B1BD1FF1B1B
      D1FF1B1BD1FF8B8BE7FFFFFFFFFF9090E8FF9090E8FFFFFFFFFF8B8BE7FF1B1B
      D1FF1B1BD1FF1B1BD1FF141494D700000000000000000000000000000000261B
      0F75B8824CFFB8824CFFB8824CFFB8824CFFB6804CFE20170D6C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209102F6229C02FF229C
      02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF229C02FF229C02FF219602FB00000000000000001919C2F61B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF8B8BE7FFFFFFFFFFFFFFFFFF8B8BE7FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1A1ACAFB000000000000000000000000000000000000
      0000261B0F75B8824CFFB8824CFFB8824CFFB8824CFFB6804CFE20170D6C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209002F5229C02FF229C
      02FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF229C02FF229C02FF219602FB00000000000000001919C1F51B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF9090E8FFFFFFFFFFFFFFFFFF9090E8FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1A1AC9FB000000000000000000000000000000000000
      000000000000261B0F75B8824CFFB8824CFFB8824CFFB8824CFFB6804CFE2017
      0D6C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000176901D1229C02FF229C
      02FF229C02FF229C02FF229C02FFFFFFFFFFFFFFFFFF229C02FF229C02FF229C
      02FF229C02FF229C02FF186E01D6000000000000000012128AD01B1BD1FF1B1B
      D1FF1B1BD1FF9090E8FFFFFFFFFF8B8BE7FF8B8BE7FFFFFFFFFF9090E8FF1B1B
      D1FF1B1BD1FF1B1BD1FF131392D5000000000000000000000000000000000000
      00000000000000000000261B0F75B8824CFFB8824CFFB8824CFFB8824CFFB680
      4CFE20170D6C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009290184229C02FF229C
      02FF229C02FF229C02FF229C02FFFFFFFFFFFFFFFFFF229C02FF229C02FF229C
      02FF229C02FF229C02FF0A2C01890000000000000000070736831B1BD1FF1B1B
      D1FF9090E8FFFFFFFFFF8B8BE7FF1B1BD1FF1B1BD1FF8B8BE7FFFFFFFFFF9090
      E8FF1B1BD1FF1B1BD1FF07073A88000000000000000000000000000000000000
      0000000000000000000000000000261B0F75B8824CFFB8824CFFB8824CFFB882
      4CFF2D20127F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000100181F8B02F1229C
      02FF229C02FF229C02FF229C02FFFFFFFFFFFFFFFFFF229C02FF229C02FF229C
      02FF229C02FF1F8D02F30001001B0000000000000000000001171818B8F01B1B
      D1FF8B8BE7FF8B8BE7FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF8B8BE7FF8B8B
      E7FF1B1BD1FF1919BCF20000021A000000000000000000000000000000000000
      000000000000000000000000000000000000261B0F75B8824CFFB8824CFF2D20
      127F000000003626168B20170D6C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003110055229A
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0413005A00000000000000000000000000000000020216531B1B
      CDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCEFD0303185800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000261B0F752D20127F0000
      00003726168CB8824CFFB6804CFE20170D6C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000311
      00551F8B02F1229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8C
      02F2041300590000000000000000000000000000000000000000000000000202
      16531818B8F01B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1818
      BAF1030318570000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003726
      168CB8824CFFB8824CFFB8824CFF3C2B19930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001001809290184176901D1209002F5209102F6176901D2092A01860001
      0019000000000000000000000000000000000000000000000000000000000000
      0000000001170707368312128AD01919C1F51919C2F612128DD2070738850000
      0118000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000261B
      0F75B8824CFFB8824CFF3D2B1A94000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000261B0F753D2B1A9400000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 14352695
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D3C2F7374796C653E0D0A3C672069643D22416464223E0D
          0A09093C636972636C6520636C6173733D22477265656E222063783D22313622
          2063793D2231362220723D223134222F3E0D0A09093C706F6C79676F6E20636C
          6173733D2257686974652220706F696E74733D2232342C31342031382C313420
          31382C382031342C382031342C313420382C313420382C31382031342C313820
          31342C32342031382C32342031382C31382032342C3138202623393B222F3E0D
          0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B9
          5F32223E0D0A09093C7061746820636C6173733D225265642220643D224D3136
          2C3263372E372C302C31342C362E332C31342C313463302C372E372D362E332C
          31342D31342C313453322C32332E372C322C313643322C382E332C382E332C32
          2C31362C327A222F3E0D0A09093C7061746820636C6173733D22576869746522
          20643D224D32342C32326C2D322C326C2D362D366C2D362C366C2D322D326C36
          2D366C2D362D366C322D326C362C366C362D366C322C326C2D362C364C32342C
          32327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000B744558745469746C6500456469743B6535AC440000007B49444154
          785E9D93210E80400C040FC78B30BC0124AFC0A2215870F0987B161F38A06D42
          36A9622B46CE744D53B766964938854A9D88FC285F840DEC268383B93CBBC82D
          8CDC6C443695D561641F310819B35D202283A00C823208CB3ED0F2320283500B
          0B272370091911C87F03C5AE22D230FF91DCEC9E7DEF17E6DCCD046CE136C900
          00000049454E44AE426082}
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 111
    Top = 211
    object y1: TMenuItem
      Caption = #26032#22686#33410#28857
      OnClick = y1Click
    end
    object N1: TMenuItem
      Caption = #22686#21152#21516#32423#20998#31867
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #22686#21152#19979#32423#20998#31867
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #32534#36753#20998#31867
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #21024#38500#20998#31867
      OnClick = N5Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 511
    Top = 211
    object p1: TMenuItem
      Caption = #21333#26465#22686#21152
      OnClick = p1Click
    end
    object N6: TMenuItem
      Caption = #25209#37327#22686#21152
      OnClick = N6Click
    end
  end
  object OpenDialogExcel: TOpenDialog
    DefaultExt = '*.xlsx'
    Filter = 'execl'#25991#20214'|*.xlsx|execl'#25991#20214'|*.xls'
    Left = 615
    Top = 227
  end
  object XLSReadWriteII51: TXLSReadWriteII5
    ComponentVersion = '6.00.47'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 727
    Top = 235
  end
  object FireQGoodsImport: TFireQuery
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
    Left = 576
    Top = 312
  end
end
