object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = #20054#23453#36125#31934#21697#36830#38145#25968#25454#31649#29702#31995#32479'  AI'#25913#21464#29983#27963
  ClientHeight = 600
  ClientWidth = 1291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NavBarMenu: TdxNavBar
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 182
    Height = 514
    ParentCustomHint = False
    Align = alLeft
    Ctl3D = False
    ActiveGroupIndex = 0
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmDefault
    View = 20
    OptionsBehavior.Common.DragDropFlags = []
    OptionsBehavior.NavigationPane.AllowCustomizing = False
    OptionsBehavior.NavigationPane.ShowOverflowPanelHints = False
    OptionsImage.LargeImages = Img32
    OptionsImage.SmallImages = Img24
    OptionsView.ExplorerBar.ShowSpecialGroup = True
    OptionsView.NavigationPane.ShowOverflowPanel = False
    object NavBarMenuGroup1: TdxNavBarGroup
      Caption = #25968#25454#31649#29702
      LargeImageIndex = 2
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = MenuGoddclass
        end
        item
          Item = NavBarMenuItem11
        end>
    end
    object NavBarMenuGroup2: TdxNavBarGroup
      Caption = '   '#20250#21592#31649#29702
      LargeImageIndex = 0
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NavBarMenuItem4
        end
        item
          Item = NavBarMenuItem5
        end>
    end
    object NavBarMenuGroup3: TdxNavBarGroup
      Caption = '   '#38144#21806#31649#29702
      LargeImageIndex = 1
      SelectedLinkIndex = -1
      SmallImageIndex = 13
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NavBarMenuItem10
        end>
    end
    object NavBarMenuGroup4: TdxNavBarGroup
      Caption = '   '#32479#35745#20998#26512
      LargeImageIndex = 4
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NavBarMenuItem1
        end>
    end
    object NavBarMenuGroup7: TdxNavBarGroup
      Caption = '   '#31995#32479#35774#32622
      LargeImageIndex = 3
      SelectedLinkIndex = -1
      SmallImageIndex = 9
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NavBarMenuItem6
        end
        item
          Item = NavBarMenuItem7
        end>
    end
    object NavBarMenuGroup8: TdxNavBarGroup
      Caption = '   '#20851#20110#25105#20204
      SelectedLinkIndex = -1
      SmallImageIndex = 10
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = NavBarMenuItem8
        end>
    end
    object NavBarMenuItem1: TdxNavBarItem
      Action = actSalesData
      SmallImageIndex = 0
    end
    object NavBarMenuItem3: TdxNavBarItem
      Caption = 'NavBarMenuItem3'
    end
    object NavBarMenuItem4: TdxNavBarItem
      Caption = #20250#21592#20449#24687#26597#35810
      SmallImageIndex = 2
    end
    object NavBarMenuItem5: TdxNavBarItem
      Action = actWHX
      SmallImageIndex = 3
    end
    object NavBarMenuItem6: TdxNavBarItem
      Caption = #29992#25143#35774#32622
      SmallImageIndex = 4
      OnClick = NavBarMenuItem6Click
    end
    object NavBarMenuItem7: TdxNavBarItem
      Caption = #25968#25454#31995#32479#35774#32622
    end
    object NavBarMenuItem8: TdxNavBarItem
      Caption = #20851#20110#8230#8230
    end
    object NavBarMenuItem9: TdxNavBarItem
      Caption = 'NavBarMenuItem9'
    end
    object NavBarMenuItem10: TdxNavBarItem
      Caption = #38144#21806#20449#24687#26597#35810
      SmallImageIndex = 6
      OnClick = actSalesInfoExecute
    end
    object NavBarMenuItem11: TdxNavBarItem
      Caption = #25968#25454#23548#20837#23548#20986
      SmallImageIndex = 5
      OnClick = actDataManipulationExecute
    end
    object MenuGoddclass: TdxNavBarItem
      Caption = #21830#21697#20998#31867#20449#24687
      Hint = #20998#31867#20449#24687
      LargeImageIndex = 7
      SmallImageIndex = 7
      OnClick = MenuGoddclassClick
    end
  end
  object pcMain: TcxPageControl
    AlignWithMargins = True
    Left = 193
    Top = 59
    Width = 1093
    Height = 510
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Focusable = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ParentFont = False
    TabOrder = 4
    Properties.ActivateFocusedTab = False
    Properties.AllowDisabledTabAccess = True
    Properties.AllowTabDragDrop = True
    Properties.CloseButtonMode = cbmActiveTab
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoRedrawOnResize]
    Properties.Style = 11
    Properties.TabHeight = 26
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.ScrollbarMode = sbmTouch
    ClientRectBottom = 510
    ClientRectRight = 1093
    ClientRectTop = 0
  end
  object barMgrMain: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Microsoft YaHei UI'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Vip')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = Img16
    ImageOptions.LargeImages = Image24
    ImageOptions.SmoothGlyphs = True
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 231
    Top = 213
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      54
      26)
    object barMgrMainBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Logo'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 651
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -12
      Font.Name = 'Microsoft YaHei UI'
      Font.Style = []
      Font.Quality = fqClearTypeNatural
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object barMgrMainBar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = #29366#24577#26639
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 773
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'BtnVer'
        end
        item
          Visible = True
          ItemName = 'btnQiyeMc'
        end
        item
          Visible = True
          ItemName = 'barBtnUserInfo'
        end
        item
          Visible = True
          ItemName = 'btnTimer'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #20250#21592#31649#29702
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end>
    end
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #28040#36153#25910#38134
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end>
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #20054#23453#36125#23381#23156#31461#31934#21697#36830#38145#25968#25454#31649#29702#31995#32479
      Category = 0
      Hint = #20054#23453#36125#23381#23156#31461#31934#21697#36830#38145#25968#25454#31649#29702#31995#32479
      Style = cxStyle1
      Visible = ivAlways
      Height = 50
    end
    object dxBarStatic2: TdxBarStatic
      Align = iaCenter
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000380494441545847D5574B72DA40107DAD80B38CF005025516DBC82788
        7D82E013D85E46A42AF804514E005E202F6D9FC0E604714E00D982AB20170079
        698CD5A919901849A38FD985050BA967E6CD7BDDAF5B8437FCCCFED836884E19
        B0C1B089608AE5CC3C02914F848720E081DF6E8ECA6E4B65024DEFF19410B804
        AA978967F08C61B8BE73705B149F0B40DC98806B22B28B36D2BD17CC30709EC7
        482600B33F3E235037A47917006B79E033F8C26F376F747B680188C30DA26BFD
        AD3060F03D0C9AF95FAD0711635E4D8E10709D402D227CD1AD0B980513291029
        00623383F12BBD09DF065475FDAF8D591E1BE6D5B46EF08B0BD069322E201C87
        A0C377310066776AD2DE6A9AA43D0B7D2E100D8B32399FAB87FE45C3D702D8F7
        C63749E4BB1C1E6EAE9592E972DE3EE8A400ACA95B4D63B762FC9CB72D77D704
        14EBF6FB1317841FEA1EC173A516B21049607A938E0174C34066FCE565C556E9
        D20131BDC79641FC49BC0B5E31F2BF5903356E23EB88081FA3E7CAC52200B5FE
        78A8D67B11F5591E216BDFA89EA8C99ABA1CF07BE1584702500460DF9B708C26
        AA34B2325EDEEAFDCB30CB19258865F538644F27EFDCB1E4D9F22F597A0CFEB3
        709A99EEA7D3355572C085EF58BDF079CD1B8F0824A592726D4A3203C096229D
        EE356FF240C0E7BCE464856611975CF39F03E84FEEB32C57A9A2C1A26DB5B612
        C4598B33B0EEF3C3683178B6709A8D2C8A65E981EFF22448DA6ECD1B4FD5A40D
        980F4597CCAE824D40D6213AD7DCC6F2EDDC699E298E18BBA0781EAB02992449
        5A1396A90322AA8181B3D064A479117A6AF6AFDDF0B107E2EF5B86353E90F46D
        D9C78DCA6151F79365DC9DCAD14CE79AC20328580DD506A79A5CAC1BD6BC894F
        C00705E9FDC2B14EF2B42E7A57F326770444C9C8C0D3C2B12460F18BB7E3443F
        9011CC37F376F3BCE820BD44E36B1045B9200D286150A98124E958BB80109218
        7B2FDDE4E13A87D54C44D33AF14A9447248524A2E4A49B35410BEA992A7632A7
        B266429B8884DDC640AC15814F9B993060C899D020C89990D73361A4AF924B4F
        CC7CA49B8EF3A6629B40C2F1B67D7C874490A5096E658DE6F9DF0552CB5757AD
        E1376160BA0C96EFDCBCA1A6DC97D166D295146B64514109AD85446526E85419
        16DD6E9DDDAB0E133AE924C513317AC1B2D22B1AE3D4734A31900426C7312549
        6586672459D1A5760220ED57F980D17D70141DAC75C2B28BC238D13F640FC8F8
        EE2BB3DF3F98EB073F2F96F2C80000000049454E44AE426082}
      Height = 60
      LeftIndent = 10
      ShowCaption = False
      Width = 48
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ShowCaption = False
      Width = 5
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem3: TdxBarSubItem
      Align = iaRight
      Caption = #39118#26684
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSkinChooserGalleryItem1'
        end>
    end
    object dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem
      Caption = 'New Skin Chooser'
      Category = 0
      Visible = ivAlways
      GalleryInMenuOptions.CollapsedInSubmenu = False
      ItemLinks = <>
      OnSkinChanged = dxSkinChooserGalleryItem1SkinChanged
    end
    object dxBarButton3: TdxBarButton
      Caption = #28436#31034#27169#22359
      Category = 0
      Hint = #28436#31034#27169#22359
      Visible = ivAlways
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #31995#32479#35774#32622
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton4: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton11: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'q'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #31215#20998#31649#29702
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end>
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #21830#21697#31649#29702
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton21'
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #32479#35745#20998#26512
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          Visible = True
          ItemName = 'dxBarButton44'
        end>
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #20851#20110
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end>
    end
    object BtnVer: TdxBarStatic
      Caption = #29256#26412'1.0'
      Category = 0
      Hint = #29256#26412'1.0'
      Visible = ivAlways
    end
    object btnQiyeMc: TdxBarStatic
      Category = 0
      Visible = ivAlways
      Alignment = taLeftJustify
    end
    object dxBarButton15: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton12: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton14: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton16: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton19: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Caption = #28436#31034'2'
      Category = 0
      Hint = #28436#31034'2'
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton22: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton23: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton24: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton25: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton26: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton27: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton28: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton30: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton31: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton32: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton33: TdxBarButton
      Caption = #20250#21592#20805#27425
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton34: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton35: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton36: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton37: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton38: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object barBtnUserInfo: TdxBarStatic
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000F744558745469746C6500437573746F6D65723B9CDDD5
        E20000029D49444154785E85925D48936D1CC6AFC73DFB72AEB9CD70E94C74B9
        9A980D6D7D9989481EF442111DF479641D7954E6C14B07155447BD2F88072F74
        A051067D1C56D04141A8514190CD2C319B36755FBAB977DFEE79EEE7BE7B16A2
        4B885D7073FFEF3FF7F5830B2E8E31867C75DA0D10447A8C10A94714699348A8
        5F7E5FFB12971E3359D8A0226C9028D01D6A25FFA8BEAEEA90CB692BD9555F65
        57F28A070E3D7FDD56CC6F2A0820947697990C1A2249F83A3587F1491F9A1AEC
        4594B0AB9C44AF14061066E5E46D304AD179E21CEE0CF5E1ECE94ECEA4538689
        C41A0A0204228D7B7E2CB187AF46D1FB7717EC5606AD268D169B5EC580484180
        374E062BCB8D22CFF310E31E24A3CB9084154822418CA2BF202092A589C6BA8A
        CF0B13EF918E46118B84119899C75252FC1E6308FE1170F4F849701CC703D0CF
        C7C9F4E4E8737C9B0C6166621A9E895978338A9CB954FEA3AEA9DD8635E5F540
        6D349977EE3DD0F6B6E3F0113670B397FDD7D5C1FE3D7590DDBE789E399B5C6C
        6B758D5BA552B701D001C875682D025F6ED952EF6CDEF3BAA5B57D7F7BE75F38
        73F90696DF05B0F02180EE5BFDA8AE75A0D1E96AB454543C9321FB0028F323E8
        2AADD53D36DB7673D9660BBC733E8C8CBC81B579372A1D0E0C0F8FC0E70F62C6
        EB47B1CEA0D768B5970018F3017AA54AD56A349761DEEF472018C2BDFB43E014
        0AC442210C0CDE45269DC14A3A8544220D0E9C0B40693E4053C47116391F1665
        432A99C0D82737BCE36E447D3E7C1C1B432A9540762503420828A32600C500C0
        AF3790209BCD20125946269984A6C48C7FA6DCA04482596B8690498310118C51
        302A3100241FF07F38BC38F4F2C5D30B4424108980DC5D6A30E44C32300C8990
        5FB344250882F004C0D26F8059CFF415007D0034AB3B2E77D6E67509008258AD
        F54F3A813CA25B8B3C460000000049454E44AE426082}
    end
    object dxBarButton39: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton40: TdxBarButton
      Caption = #28436#31034#27169#22359
      Category = 0
      Hint = #28436#31034#27169#22359
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Align = iaRight
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 29
      ShowCaption = False
    end
    object dxBarButton41: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton42: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton43: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton44: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = #20250#21592#33829#38144
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton45'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton46'
        end
        item
          Visible = True
          ItemName = 'dxBarButton47'
        end>
    end
    object dxBarButton45: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton46: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarButton47: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object btnTimer: TdxBarStatic
      Caption = '2020-07-04 22:53:10'
      Category = 0
      Hint = '2020-07-04 22:53:10'
      Visible = ivAlways
    end
    object dxBarButton48: TdxBarButton
      Caption = #36827#36135#21333
      Category = 0
      Hint = #36827#36135#21333
      Visible = ivAlways
    end
    object dxBarButton49: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTrackBarProperties'
    end
    object dxBarSubItem11: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton50: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTrackBarProperties'
    end
    object dxBarInPlaceSubItem1: TdxBarInPlaceSubItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
      KeepBeginGroupWhileExpanded = False
    end
    object dxBarButton51: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btnCurrentUser: TdxBarStatic
      Caption = #24403#21069#29992#25143#65306
      Category = 0
      Hint = #24403#21069#29992#25143#65306
      Visible = ivAlways
    end
    object dxBarButton52: TdxBarButton
      Caption = #26032#24314#25353#38062
      Category = 0
      Hint = #26032#24314#25353#38062
      Visible = ivAlways
    end
    object dxBarButton53: TdxBarButton
      Caption = #26032#24314#25353#38062
      Category = 0
      Hint = #26032#24314#25353#38062
      Visible = ivAlways
    end
    object btnUserName: TdxBarButton
      Caption = #24403#21069#29992#25143
      Category = 0
      Hint = #24403#21069#29992#25143
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000F744558745469746C6500437573746F6D65723B9CDDD5
        E20000029D49444154785E85925D48936D1CC6AFC73DFB72AEB9CD70E94C74B9
        9A980D6D7D9989481EF442111DF479641D7954E6C14B07155447BD2F88072F74
        A051067D1C56D04141A8514190CD2C319B36755FBAB977DFEE79EEE7BE7B16A2
        4B885D7073FFEF3FF7F5830B2E8E31867C75DA0D10447A8C10A94714699348A8
        5F7E5FFB12971E3359D8A0226C9028D01D6A25FFA8BEAEEA90CB692BD9555F65
        57F28A070E3D7FDD56CC6F2A0820947697990C1A2249F83A3587F1491F9A1AEC
        4594B0AB9C44AF14061066E5E46D304AD179E21CEE0CF5E1ECE94ECEA4538689
        C41A0A0204228D7B7E2CB187AF46D1FB7717EC5606AD268D169B5EC580484180
        374E062BCB8D22CFF310E31E24A3CB9084154822418CA2BF202092A589C6BA8A
        CF0B13EF918E46118B84119899C75252FC1E6308FE1170F4F849701CC703D0CF
        C7C9F4E4E8737C9B0C6166621A9E895978338A9CB954FEA3AEA9DD8635E5F540
        6D349977EE3DD0F6B6E3F0113670B397FDD7D5C1FE3D7590DDBE789E399B5C6C
        6B758D5BA552B701D001C875682D025F6ED952EF6CDEF3BAA5B57D7F7BE75F38
        73F90696DF05B0F02180EE5BFDA8AE75A0D1E96AB454543C9321FB0028F323E8
        2AADD53D36DB7673D9660BBC733E8C8CBC81B579372A1D0E0C0F8FC0E70F62C6
        EB47B1CEA0D768B5970018F3017AA54AD56A349761DEEF472018C2BDFB43E014
        0AC442210C0CDE45269DC14A3A8544220D0E9C0B40693E4053C47116391F1665
        432A99C0D82737BCE36E447D3E7C1C1B432A9540762503420828A32600C500C0
        AF3790209BCD20125946269984A6C48C7FA6DCA04482596B8690498310118C51
        302A3100241FF07F38BC38F4F2C5D30B4424108980DC5D6A30E44C32300C8990
        5FB344250882F004C0D26F8059CFF415007D0034AB3B2E77D6E67509008258AD
        F54F3A813CA25B8B3C460000000049454E44AE426082}
    end
    object btnReLogin: TdxBarButton
      Caption = #37325#26032#30331#24405
      Category = 0
      Hint = #37325#26032#30331#24405
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650052657365743B64CF80690000
        037C49444154785E7D537D4C93471C3E9DC84CB075D9E660B620BCC8AA282B5A
        A5B448410ACC5293452A5DA19DA8630A5BAD6CD6CD40834528858A0E025DE563
        D16D2A1FBA2053C10E862351DC47A81998322653B711179431981A4AD99EBDEF
        9BB23F5CB24B9EDC2F77F77CFC2E77E47FC63C1AF39FC0BCFF102C6764A4AC39
        9194B76C22B6B3492C715F79CC92AAF6578A6B3B365FFFF0B262D6E154CCDA3B
        15D7ED1D9BCD05F6382E2354DF9D46EABB9584143648C8D46C1F99FEDB4D1897
        830E89BCF10BCDAF3D8365B835761E939E7E162363EDE87557E0E32BBA5F2A5B
        E572E6EC71A78290FC6A1199F05E61C9864A91DADEA6C5CDD1D3A045F1BBF74B
        DCF774E281C78909EF57F8F3AF6FF1C3BD16B45CCBC591D6E40CB6ADDD65516C
        6CE51B5450619DFCD1D7C375189BBE88EEC152583E514153B086015D67E0C668
        0DC667BA688353A8BFFCDA237DE9FA40A235091881A7B20E0A8E9CE83460F471
        0BFA6E9720BF2ADEA3783BC418A709A2A4EA402A790FEF706EB9D4DB35508C31
        CF05385D66947C9A504154FB294660E1B6FDE183EDFD7BE19EB4A1BA4D838C03
        1107E8753F269D0F0B958650B3AD598D9F1ED6C175D781432765030CD99F0677
        8B3E64EAFCF0167CFE73128C761956443F13E4DB9BFF87F72ADB66BC8AB75C7F
        3416439395181A77A0B0216E86ECB18826F2AC22BC55B11E67DC6234DD12A2A0
        2E11FB8EC520FF98F8A15C1DC6BDEFE9622F395543051B6B64E8FD6D072EDD7E
        15EFD688A7C8C6CCC0F78A1A537163DC8AA61F4538351C09D783C368E8CCC60E
        93B08489EE6BC13FC7BCD67CFC9216CD2342D4F7899157BE6E902C7ED68F9B90
        FDC29DEAAB1138E15E8593432BE1F86E15761547DF5D16CE592A8C0F7C5E92C6
        5F9E655C6D2C6A48F57CE67A9D365903EBD93868DF5FFD0113CD2F3A8DABCD3C
        C4C74737052CF2ED2F236D57844E961EB26167917066AF4D82A3ADE938D79F83
        73239B607346E2CDD2B58F25CA6561736F3E6043FA921E535B302C1D2F61AB5E
        D043AF2D551956F69CBEB61DBDA30674DCD1A069580ACB4501765BA390A20BCD
        61DB136DE330220B28F1A298E4DCE7BC3A53A45794F2626C5266A82ECF1A8346
        572CAABF0987F90205BD9D82EA9D15F7A45B796A9AF3346BBE4EB5782EC5A228
        65406DCAF6B05ABAE6246753A68D19FCEF13B28291A80D864CC31F90A6F3AAF8
        020E6FEE7DA4EC0C25FF0EDF77F5F761816F66D4B93E0430AE4F7EEB7F004FCE
        9AEBD9E212700000000049454E44AE426082}
      OnClick = btnReLoginClick
    end
    object dxBarButton54: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AllowAllUp = True
      ButtonStyle = bsDropDown
      CloseSubMenuOnClick = False
      DropDownMenu = dxBarPopupMenu1
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000024744558745469746C6500446F63756D656E7450726F706572746965
        733B50726F706572746965733B3656A5830000033849444154785E7D937D4C53
        5718C69F7B7B4AE52355971095599D2B3A0264A6219A85AA03679832C3A21665
        A2F891CD124704D9206340746B46623019C6A82C565315043F96383F83124D86
        D3B9580BCC39C0E98A6C4080B60B850BB7F79E7BBC6D5AFE5A78935FCE93933C
        EF7DCFCDF3629AE25478154D484F57D5872FA3B2F6D29429C817DF380ACA6BCE
        B3325B23DB576DDF116E14812BAEB6E3F38A93200060FBD2C2590ACAE2CABF6B
        BCAA50DAEF1919A8A18C59766C30833106FBF93B96DC5D158FE3E72CA800C719
        9F3C6CC93E62FBF43F6BF971C647C65D98987A65775E46C6969CF4ADC6C4C44E
        C6F0D192450930BC190F4561D9C9C9A91DF99B32F2ADDBD7BE976A7AFF270044
        12259048834040F2F8C72690B4643E9216CFE7BD3E3F3484872228282C58CB2F
        5E34175461B8FBB30B7DAF7ABD002049D2D4CFD1E4EEFA3A2539E55D5769610E
        2F49140A63E0390E924C43CF5025C40045D5B7F5CAD3F6472BDA1F5D730290B8
        A0796751ED368D56BB9968C8BAAAD23C4E1B45F0C7B3976868BA054234D8BE35
        1B06430286863DA83BFEA332210AADA22034FFD97EAF8900204437C3B1273F4B
        1DDD0042087CFE71D41D6B46FF3FEECD248A7027CFE2C2A18356F01A82BD9F6D
        E4BD5E5FD6E973B7B2DC7FB92E11009C1C0884DEE71F9F84A45050CA10131B0D
        DD0C5DB4362A4AD5B1102519E38208AA500C794621CB0104BD3C00F9E5F3AEA2
        AF0ED4B5EEAF3CC10607BD989C10B1735B0E92524D67826C5CBF1263C2243CBE
        51D86C2760B737B4F5B9BB4B010422E1D1A5993F5EBEA7E47BF9EFBE21F6C0D9
        C3DA1E77B1DFBBFB588F7B80B53FEB652D6D9DEC5AAB93ADB3942886B7D33201
        C4A8F0040053417C82B12C739549234C8AA1AF8D8CF830365B1FCC008646BC98
        39531F0AD5F2654BB9DE172FF603CEBC7796AE57A672C0281644C7EA70F3F62F
        68BD7D1F94D3B2A2BD9F700149467D7D239BA58F41DA3213A7D7C781CA745ED0
        23530991244A1DBFDDD870E468C3AF0E47F3F5A71DF7B32684D1078303C370BB
        FF85E0F73DEC74B6655F6EBA78F5D40F0E57FF2BD71600A2422942B53AA718E1
        258909136B4ACF2D367F58C8CC6BACCC98F2410980B8E07DF8D4AA706F25AD99
        7695A355DE0812D63CFEA75E03CFF56ADF743CC8850000000049454E44AE4260
        82}
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Category = 0
      MergeKind = mkMergeByCaption
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu1
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002B744558745469746C650053657475703B437573746F6D697A3B4465
        7369676E3B53657474696E673B50726F70657274381FB5210000096F49444154
        785EA5567B7054D51DFEF6EEDD6437316C1E04121342480884902AA09006E411
        218040159929C1542538C5E2D48E222A3830016CA538B60E582B152818A98101
        81F20A0F85407824BC04250592051260CD83D78624FBBC7BEFE9EF9CB9F74EA4
        FEC3F4DC7C39B37BCF39DFF77B9EB5E0E107DF2311ACFACC0723A8044DE02186
        4CC0B2951B7F9E8A897F62620C5834B75890BF5DFAC9134E67FC49064D506B60
        38537D227FF7D6CFCF0060A51FAE674CDF241E4DCC80F88A0980B0BC740E6483
        EB9DDF4F47D76193ADA67794B0CA00980222ED8EA251F98FE1974FE6808FEAD3
        B5A83D77AE08C07982F6FEFC590F7A4C707BEE7B3933480F96AFF8D2F4C0CF11
        770523314280EE729B64952666A43F0A5F2084901246AF941E9024790280D207
        C220E9E0438D7346AB77DA3A356EBDA6AAE60252A4FD847CC2AF5E702CF9E88B
        1D848AB90B3FCE0310C1895F9AFD4E9F05EF7FB6D01913939398E014E4E1B08A
        F83827121262073CF3FCEC85538B6667027070CCFCDD82516F2D5AB967EEC215
        DB33FBFDC20940EE1EFB8844FC5035CDF4008F91E9AEF144FE54C1C42DD3268F
        7EC66A9570F8F8F9C2451FACA9D0342DE08C753E37B07F6FEB90C7FA41515441
        AED1DE0E5F10AFBFF6228E1D3F33FFD63DEFDBE91903F6C22245A7A525178CCE
        1F2C84026CE3F64D6B8A1BAF5EBC9F181FA3BCB1E06366C667E95F3760F1BC97
        447C4B3FFCE78EA2A9E32667928B29F6B04A125CD76EC21F0822373B03926441
        20A420180C435135903088C4E26E9265F2A284CBF50D88723890999182F6CE00
        3CED9DB879C38D55ABCAF6EFFDF79A6900026327CDD20E56AC373CA0991E601A
        544D15D69172158C518C53932088152225A81AE3C43A20669510082A604C4352
        721209B7E0C7560FDADABCB0CA568443E24CD9C82D23074C0164AD48B67BF76E
        FFB1F2F8B9299464123F8CB8A02AC24A681C1A9F0D722688359521CC4B8D0B21
        F1C150185A98CEE486682ABAD9EDD8B7BF129EBB2D7FD1FB05E3FBCD24A40F66
        D1FFFDA30517DC3FB6EEAF27B74B168B10C785A826299118507936EB228888C8
        851035ACF2F0086FC964FDA53A175CAE2B87CF54579CE6744280FA8000C6600E
        728FDFEB0DC06295B8952654DD620B3DF6081BA2A32228D69170D8236021B161
        DD03E44C3E0B0100280C1DF459F3A1CB387AA8DCD2B549587448334ADEEC3B60
        E0A0DAB75E2BB20695B070A7E97A5513165D715DC3CE3DDFA2A1C12D3CD7273D
        0DE3278EA67E404947C27988949082905E2571B1D128FF6ABB76AAE6705E4D55
        C5450021C313B241AC43EED133F5D5DCFEE9569E7441452162E83167827CCFDE
        8328DFB8A32518F096DE6FBB7D02D02C2D2D4D23CE5FB8B8E4D7D32627E5E50F
        4587D7FF13E1814008997D33A4A61F9B7E0B542C06E0D745289CDC5A32675176
        4CB7D822ABCD3AD919D36DC8AB339F85DDEE809736323DD9C8C7686C68C49FFE
        FCE9D5862B3F4CB856FF5D3380B06E80DC276B504AFF8143F7CC9BFB6A5F5B64
        14BC7EDA2B046862AF4D62D8B9F3003C1ECF45BFDFBBF7EEADE6CDC72AB75F90
        B980F884C4DA31239F4076563AB931112145430777A56A261D1C9111F87ADB3E
        B2C6B74C270F11545D80DAE03ADF94969EBD7CDF81236B8B5F98C6F71B9E1350
        25A0B8F879A84A28E772DDD59CCAC335F300C40BD77382C231C3D03D210E9E0E
        3FDA3A7CBC668998438351322DAD77D0DA74F5A06EB97AC7D3C16EDD6D377ABF
        D2E0FAFE506BCB5D748B8982A69727CD424828A4C2DD720FB7DA7CC8C919208C
        13DD1F8028213EFCA110C28AF6BF754EE0F52CCB369EED66E2D23BD6B57A2C54
        B75659862C5921F631BD3768106731A6193CC238B10500F3797DD8BDBF0A77EE
        DC4364A40CA613AB2A8193AB4C78A457AF646464E51670E504A96782534AEAEE
        34123822F7F1E1637BF74EA5F5BAE754CDEC9A9285213E36069A12C4C993670D
        AF2A7CA3EABEDE30E85FE53B96BFFFC1A7B5A54B57A2B3A35364BF10111642D0
        E90BA2B07014121293DF23A21400764EAAC3913B68784A8FA494F9630BF22984
        5EA36F88D9221A9A8AB5ABCBB066F5FABABDBB767F5277F1EC53008232006DFF
        AEF5FF01B094B06CECA499CB8E54D5BC3E69CA388A9B02D30B84C4C4048C1F37
        322BC21651959533B8D47DDD55CD0392DABBDF88EEDD9397148CC9EBC9D7B81A
        9B0431D3C36777D871EEF40F68725F5F577D641B2F432F21405064A321F05980
        85D6D65DBDF9DA54D96ABDAF931B22DAA92CFB6665E0D147937AD6D6D67DDE9C
        D55F58979CD4034306E720B17B3CDCCDF7E0236F99770663B05A80EFBFFF416B
        6D6E580FE0BE4EAE129848A892398BF1C53F968A9E40701495BCBBA178FA94E7
        7AF74983970EA3FB9CA0F264156E95258932DD012765BBCD26537E90B84E1F6E
        DD6913A112AD5D086088B4D9E072D563F78E9DDF9CACDAFE328036429000A313
        1A19D9F52E887144D9451279FD01A396CD4C0E8455F86E07D174CB6310752135
        D6894486A286E17038F859D15D5A3F060D9BC4CE9FAA80A4131ADCD2F82933F3
        D27BF77A3ABB7F26FFCDA7136B309B9229A6CB4DA89A254BD0D7E9DF05430A52
        7BA5212535757846BF27F300C8A2F7A861F336148B8D3B21C619F76EE1D8E1E8
        E8F4F39E2EDE49562BFFBD088DE9F96008613AB1984DCBC55A2BC168E33E9F1F
        43F386213A26EE4D5D80E5C2D9031643801902434C381C86A7DD2B7E8E455128
        DCD76FE2D2A53AD8236D888C906101D3EF7FD33B206A44D27B4704C5BCBE1ECD
        EE1B745D3B204912172A42A1D200C074981E1007E82FD49AA3BB8BD7AEDBF4ED
        8DC61B686E6AC1BAB51BB0A16C63D5D6CDDBF7AF5BFB955673E21482812037C2
        0C09204109F871BCEA1856AF5AADEDD8BAEDE0A60DE527CABFDC8016B71B376F
        5CC7D6F28D55D7EA4FCFD2EF10D62F77B42902CFCF7803379AEEC2E8680989A9
        89A30B5FDC37725C71E5E343C74F0490C0919D9B3F7854E18C15D35F7E9B5554
        9E63655B0FB3F55F57B22D7BABD984675F61B4F66FC9A9FD799C9308C9E99983
        A7E60C7ABA2AFBB13107ED8E983400D17AA559FA0D1C09733C3BFD0F6874DF46
        C3CDDBA6084294D860763CF3BBA4B1934AEA2B0E9D6265DB0EB33212F059D92E
        F6E4F0E75C0052093104BB8E4708B10427C16190D79C77C11060E680281F7AAE
        5C6F15371B21A0234450748408BE50D07FF0F2251762BB45C36E8F10310FF87D
        87BA74B8A00E3FA19343FFAC9DF8CEC573D31CB29103252573C1F8A3328C2898
        2112C5B8EAF85C7D64B345EF96A1F676CF96DDBB0ECC61BB0E883DFCCFD7E9D9
        D2A5C36164E16FD8D16FBE32A9C8627158C94BAFE0FF1946B78C22C4117A107A
        12E209D146893D0CC17F0161B32CB90E1B30110000000049454E44AE426082}
      AutoGrayScale = False
      GlyphLayout = glRight
      ShowCaption = False
    end
  end
  object Img16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 4587752
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000007E5446C1B074
          62FFAF7461FFAF7460FFAE735FFFAE725FFFAD715EFFAD715EFFAD715EFFAC70
          5CFFAC705CFFAC6F5BFFAC6F5BFFAB6F5BFFAB6E5AFF7A4F40C3B67E6CFFFBF6
          F3FFF9F5F2FFF9F5F2FFF9F5F1FFF9F4F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3
          EFFFF8F3EEFFF8F1EEFFF7F1EDFFF7F1EDFFF7F0EBFFB37968FFB77F6FFFFBF7
          F4FFF5EBE4FFF3EAE4FFF3E9E3FFF3E9E3FFF3E9E3FFF4E9E1FFF4E9E1FFF3E9
          E1FFF3E8E1FFF3E8E0FFF3E7DFFFF1E7DFFFF8F3EEFFB47B6AFFB88171FFFBF9
          F6FFF5EDE7FFF5ECE7FFF5ECE7FFF5EDE6FFF5EBE5FFF5EBE4FFF5EBE4FFF3E9
          E3FFF3E9E3FFF3EAE2FFF3EAE1FFF3E9E2FFF9F3F1FFB47C6BFFB98472FFFCFA
          F8FFF7EEE9FFF6EFE9FFF7EEE9FFF7EDE8FFF5EDE8FFF6EDE7FFF6EDE7FFF5ED
          E6FFF5EBE5FFF5EBE5FFF3EBE4FFF3EBE5FFF9F6F3FFB67F6DFF76738DFFBBB8
          D0FFA29EBEFFA19DBDFFA09BBBFFA09BBBFF9F9ABAFF9D98B8FF9C97B8FF9C96
          B7FF9A95B7FF9993B6FF9892B5FF9791B5FFACA8C4FF6E6A85FF8582C5FFCBC9
          FBFFB5B2FAFFB4B1FAFFB3B0FAFFB3B0FAFFB2AFF9FFB1AEF9FFB0ADF9FFB0AD
          F9FFAFACF9FFAEABF9FFAEAAF9FFADAAF9FFBFBDFBFF807DBDFF8985C9FFCECB
          FBFFB7B4FAFFB7B4FAFFB6B3FAFFB6B3FAFFB5B3FAFFB4B1FAFFB4B1FAFFB3B0
          FAFFB2AFFAFFB2AFF9FFB1AEF9FFB0ADF9FFC3C2FBFF8280C2FF8B88CCFFD0CE
          FCFFB9B7FAFFB9B6FAFFB9B6FAFFB8B5FAFFB8B5FAFFB7B4FAFFB7B4FAFFB6B3
          FAFFB6B3FAFFB5B2FAFFB4B1FAFFB4B1FAFFC8C5FBFF8583C6FF8E8CD0FFD2D0
          FCFFBCB9FBFFBBB8FBFFBBB8FBFFBAB7FBFFBAB7FBFFB9B6FAFFB9B6FAFFB8B6
          FAFFB8B5FAFFB8B5FAFFB7B4FAFFB7B4FAFFCBC9FBFF8985C9FF5756B1FFA8A7
          E9FF807EDCFF7F7DDCFF7E7CDBFF7C7ADAFF7B79DAFF7B79D9FF7A78D9FF7977
          D8FF7775D7FF7775D7FF7674D7FF7472D5FF9896E2FF504EA8FF5351D4FFA7A6
          FBFF7C7BF9FF7C7AF9FF7B79F9FF7A79F9FF7A78F9FF7977F9FF7876F9FF7876
          F9FF7775F9FF7674F9FF7574F9FF7573F9FF9B99FBFF4F4DCDFF5553D8FFABAA
          FBFF7F7EF9FF7F7DF9FF7E7CF9FF7D7CF9FF7D7BF9FF7C7BF9FF7C7AF9FF7B79
          F9FF7A79F9FF7A78F9FF7977F9FF7876F9FFA09EFBFF514FD1FF5755DBFFAEAC
          FCFF8281F9FF8280F9FF817FF9FF807FF9FF807EF9FF7F7EF9FF7F7DF9FF7E7C
          F9FF7D7CF9FF7D7BF9FF7C7AF9FF7C7AF9FFA4A2FBFF5351D4FF5857DEFFB1B0
          FCFFB0B0FCFFAFAEFCFFAFAEFCFFAFAEFCFFADACFBFFADACFBFFACABFBFFABAA
          FBFFABAAFBFFAAA8FBFFA9A8FBFFA9A8FBFFA7A6FBFF5553D8FF4443AAC15A58
          E1FF5A58E0FF5A58E0FF5A58E0FF5958DEFF5958DEFF5958DEFF5857DEFF5856
          DDFF5856DDFF5856DDFF5856DCFF5856DCFF5856DCFF4341A7C3}
      end>
  end
  object ActionList1: TActionList
    Left = 232
    Top = 268
    object actSalesInfo: TAction
      Category = #32479#35745#20998#26512
      Caption = #21830#21697#38144#21806#32479#35745
      OnExecute = actSalesInfoExecute
    end
    object actImportDemo: TAction
      Category = #20851#20110
      Caption = #23548#20837#25968#25454'Demo'
    end
    object actMembersAdd: TAction
      Caption = 'actMembersAdd'
      OnExecute = actMembersAddExecute
    end
    object actDataManipulation: TAction
      Caption = 'actDataManipulation'
      OnExecute = actDataManipulationExecute
    end
    object actSalesData: TAction
      Caption = #38144#21806#32479#35745
      OnExecute = actSalesDataExecute
    end
    object actWHX: TAction
      Caption = #20250#21592#22238#35775#20449#24687
      OnExecute = actWHXExecute
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object cxLocalizer1: TcxLocalizer
    Left = 233
    Top = 340
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 224
    Top = 154
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = #24494#36719#38597#40657
      Font.Style = [fsBold]
      Font.Quality = fqClearType
      TextColor = clHighlight
    end
    object cxStyle2: TcxStyle
    end
  end
  object MainTimer: TTimer
    OnTimer = MainTimerTimer
    Left = 329
    Top = 123
  end
  object TrayIcon1: TTrayIcon
    BalloonFlags = bfInfo
    Icon.Data = {
      0000010001004040000001002000284200001600000028000000400000008000
      0000010020000000000000400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040000
      0006000000080000000C0000000C0000000E0000000E00000010000000100000
      001000000010000000100000001000000010000000100000000E0000000E0000
      000C0000000C0000000A00000008000000080000000600000006000000040000
      0004000000020000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000060000
      000A001C3118004E883C005FA252005A984A00243C2C000001160000001A0000
      001A000000180000001600000018000000180000001600000016000000140000
      001200000012000000100000000E0000000C0000000C0000000A000000080000
      0006000000060000000400000002000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000200000004000000080080
      C848029CFAEF28AAFBFF3EB2F9FF38AFF8FF18A3F8FB008DDCB5005186480064
      A75E0068AF740072BE8D006BB17A003C653A0000001C0000001C0000001A0000
      0018000000160000001400000012000000100000000E0000000C0000000C0000
      0008000000060000000400000002000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000400000008007C
      BB4001A7FBF300A1F9FF0098ECFF0399EBFF07A4F6FF01AAFFFF00A6FFFF09A7
      FFFF34B4FDFF40B7FEFF24AEFFFF02A1F8F3001E2E260000001C0000001A0000
      0018000000160000001400000012000000120000000E0000000A000000080000
      0004000000040000000200000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000080000
      0008009DE18121BAFEFF38C2FFFF36C1FFFF1EB9FDFF00AEFFFF09ADFFFF0EAF
      FEFF0BA4F1FF01A2F3FF00AEFEFB009EE4BB000A0F1800000016000000140000
      000E0400010E1A00061C610015386800165289001E6A85011D837E011C917C01
      1B957C011B957F011C8D85011D7E8D001F666101164E8102182A8C02190A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000040000
      0006005E84185ED3F2DBA1E7FFFF9DE7FFFF46D0FFFF3EC7FFFF75D7FFFF75D7
      FFFF60D6FFFF0AB2ECD10088BD4A0000000C0000000E1A00061278001A548701
      1EA17C011BD7790017F96B0116FF630217FF5C0215FF5B0215FF5C0215FF5D02
      15FF5C0215FF5C0214FF5D0215FF5D0215FF640217FF680217FF6D0318F17603
      1AC97C021B8577021A3472041B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020054740E24B4F39F29A6D683008FCF742FBAEACD81DAF3C56DCC
      DFA3159DCC4A000C1108000000081600050887011D7288011EE7720219FF6502
      17FF6D051AFF296492FF433C5FFF7D0112FF8F011BFF930220FF960221FF9502
      21FF940221FF930220FF910220FF8E021FFF89021EFF82021DFF78021BFF6C03
      18FF650317FF700319FF73031AC16C0116240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000B2FF640078B24200A5F264007DBA40000000000000
      000000000002000000022E000A0C92011FB979021BFF720219FF8C021FFF9107
      27FF3A6EA2FF02B9FCFF0AB4F2FF1D85BAFF316A9AFF6D0F27FF8C011EFF9702
      21FF950221FF940221FF930220FF910220FF8F0220FF8C021FFF88021EFF8502
      1DFF81031DFF710319FF6E0318FF700319D56D05180600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFF6800B1FF3C00AFFF5C00AFFF4C000000000000
      000000000000000000009902219B7B021BFF87031FFF960221FF97011FFF3B4D
      89FF1CBCFAFF7A9BB7FF8B7895FF49A2D0FF00B9FCFF1786BFFF780015FF9502
      20FF960221FF950221FF930221FF920220FF900220FF8D021FFF8A021FFF8602
      1EFF82031DFF820922FF77081FFF710319FF6E02193C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFF7A00ADFF2A00ACFF3E00ACFF68000000000000
      0000000000009D001D288C0320FB8D162FFF990E2AFF940221FF970220FF2479
      B9FF308BBBFF86081FFFA1102DFF843053FF00B8FAFF0C91D3FF77051CFF9502
      21FF960221FF950221FF940221FF920220FF910220FF8E021FFF8C021FFF8802
      1EFF84021DFF8A172EFF8B2238FF75041BFF6F03196200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADFF9700ACFF0E00ACFF1600ACFF93000000000000
      000000000000960121708E1730FFA8344CFF970E2AFF960725FF9D0F2CFF8F29
      4AFF912846FFA61D39FF893B5EFF16A4DFFF009EE9FF3D5482FF8F0C26FF9A09
      27FF960221FF950221FF940221FF930220FF910220FF8F0220FF8D021FFF8902
      1EFF85021DFF8C182FFF993A4EFF7B0C23FF71031A6400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AEFFA900B6FF000000000000AEFFAB000000000000
      0000000000009607249FA2354AFFA6344CFF960C28FF9D1431FFA41D3AFFAA26
      42FFB02A45FF8C5D7FFF0CB5F2FF0197E1FF3F578BFF971C35FFA31935FF9E0F
      2DFF970624FF940221FF940221FF930221FF910220FF8F0220FF8D021FFF8A02
      1EFF86011DFF8E1A31FF9F4558FF7F1027FF7302194A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000ACFF1600A1E79D0104063201060832009FE69500AEFF260000
      000000000000980E2AB5AB4258FFA22B44FF9B1632FFA5223EFFAC2E48FFB436
      50FFB16881FF23BAF4FF0B83CCFF68446CFFAC3049FFAF2B47FFA8203DFFA115
      33FF990B28FF930221FF930221FF920220FF910220FF900220FF8E021FFF8B02
      1FFF86011DFF932339FF9F4356FF7E0C24F97501191800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EE998C5CF19A
      8A4A000000000096DF70002737F904140AFF08290FFF093F30FB0583A9A50C6E
      79060000000098112DAFAB4258FFA22942FFA3233EFFAC324CFFB53F58FFBF54
      6BFF65C7EDFF0B86CEFF814866FFBC4961FFBB415BFFB3354FFFAB2743FFA31B
      37FF9A0E2BFF930322FF920220FF920220FF910220FF8F0220FF8D021FFF8B02
      1FFF88021EFF972B42FF963145FF7C051EB90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6A0991CEF9B8EFBF39D
      90F97E87A144002A3FF3020702FF052116FF08393CFF093747FF0D3C30FF1053
      31B50B72630698112E89A6374EFFA42B44FFAA314BFFB5425BFFBF5067FFBBA3
      B8FF0BACF0FF5D5D82FFC05E71FFC95B73FFC14D65FFB73D57FFAD2E48FFA41E
      3AFF9B102DFF920522FF910220FF910220FF900220FF8F0220FF8D021FFF8B02
      1EFF890521FF94243BFF88132BFF7C011A3E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F19F933EF1A094FFF5A4
      97FF64565EF3002035FF0175B7FF0189E1FF0177C2FF0158A5FF014EA2FF055D
      9AFF086E7F7EA40A29469F263FFFA72F48FFB13E57FFBC5269FFCA6277FF7EBD
      DFFF02A3EAFF8D5D70FFD07487FFD1677CFFB2546CFFA83C53FFAB304AFFA321
      3BFF9A112EFF920522FF900220FF900220FF900220FF8F0220FF8D021FFF8B02
      1EFF88031FFF870A25FF80041EA7000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1A39944F2A59AFFF8AA
      9DFF2E638EFF0082CDFF012F4DFF03150DFF082803FF0A2D0AFF072626FF0730
      4CFF0567A4F11883DD20A5213AD9AA364FFFB64B62FFC46176FFD37689FF75B4
      DBFF00B4F9FF5F7A9AFFB06F7FFF5A93C0FF0CB9F6FF714A63FFA32F48FFA120
      3BFF97102CFF8F0420FF8F0220FF8F0220FF8F0220FF8E021FFF8C021FFF8A02
      1EFF88021EFF84021CDB87021812000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3AA9E36F4ABA0FFF0AC
      A4FF136BA6FF000509FF080C05FF112011FF113A26FF0C4636FF0A443CFF0A33
      3DFF0D3634FF0A5A509DAD1E4748AF3F55FDBB546AFFC96D80FFD78798FFC9A8
      BDFF0DB8F9FF00B7FBFF06B2F3FF0DBEFDFF40A5D3FF93394CFFA73049FF951D
      36FF940E2AFF8D031FFF8E031FFF8E021FFF8E0220FF8D021FFF8B021FFF8902
      1EFF86011EDF84001F2200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0ACA620F5B0A6FFE6AA
      A4FF010C15FF0A131AFF196893FF209CE1FF1EAAFEFF14A9FFFF05A1FEFF0180
      DDFF04589FFF0B4F52F902738028B93D5787BD5A6FFFCB7385FFDA8D9EFFEAA8
      B5FFC9B6CBFF08B6F8FF07BBFCFF5D80A0FF9E4B5FFFAD3F56FFA02B43FF881E
      34FF910B27FF8B031FFF8D031FFF8D021FFF8E021FFF89021EFF8B011FA18A02
      1E6280011F0E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7B3AA0AF6B4ABF1C39B
      9AFF032844FF199EE9FF2AB1FFFF2C9EE2FF2274A5FF185777FF0F506EFF0458
      82FF025FABFF0070D1FF0383C7A1C4365134BD5B6FFFCA7184FFD68899FFDF9A
      A9FFE59FACFF38AEE4FF04B7F8FF7D5A71FFAC4A5EFFA9384FFF8F2038FF9030
      44FF8B0420FF8B031FFF8C031FFF8D021FFF7C021BFF77021AC9820020040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8B9B0D7AB9A
      A6FF0A97EBFF25A1E8FF285B76FF323D3BFF3E4A3DFF3D513FFF304C32FF1B3E
      1CFF0B311BFF083D52FF027ECDF72E85D228C25B6FEFC5687CFFCE798BFFD384
      95FFD18494FFC47C8EFFA96B82FFB05063FFAB3F55FFA12C44FF821C31FF9831
      47FF88011DFF8A031FFF8C021FFF75021AFF5C0215E988011F20000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCBFB5AD87A4
      CBFF1488CDFF2E383DFF494E48FF59635AFF5C6A5EFF556857FF445D46FF2D51
      31FF13421CFF0D392DFF0D4035FF07768F8FC75F7685C2687BFFC3667AFFC56D
      7FFFC36B7DFFBD6175FFA56472FF967179FF8D676FFF844552FF8B3748FF8F14
      2DFF88031EFF8A031EFF6A0218FF560213E96C01123200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009DFF060098FF660099FF2EFEC8BA7A598A
      BBFF20272BFF404140FF5A5D58FF6A7773FF6F9197FF669AA9FF5395A6FF3A83
      8FFF1E6359FF0E4327FF0D3D30FF104D26F731666C24CD7B8BC3B0617AFF9464
      8AFFB55266FFBE828EFFD5C7CAFFD1C0C4FFBEABB0FFB0959BFF956D75FF8A1C
      33FF85021CFF630316FF5D0115C97C021B220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000EABFF6E39B9FFFF24B5FFE3F8C9C1482740
      5EFF292827FF4A5256FF66A3C0FF6ABEF1FF54AAE7FF489FE1FF3FA0E5FF3EB4
      F7FF24B4FFFF059DEBFF07668AFF104729FF0D644F7C75BCEB1C179EF3FB16AB
      FFFF4F77B0FFD4B3B9FFB9ACAFFFA79A9CFFA59195FF9C7F86FFA37983FFA256
      66FF730116CF7202186084011F02000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002EC2FF4EA5E7FFFD7BDBFFC74474A51E0C26
      44FF2F4C5BFF53BBEEFF51ACE9FF68ACE1FF9ED0F1FF8DC2F0FF77C4F4FF389C
      E1FF30B2F9FF0EABFEFF0098F3FF037CBFFF0F5F46DF00ABFE3862CDFFFF78D5
      FFFF58B9E9D9D7BBC0E5EEEAEBFFF0ECEDFFE1D4D7FFCFAAB2FFBE929BFFB27B
      87A1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000019EFF020099FF600099FF5A0CB1FFA925C8FF0A005193440B3D
      63FF34B6F5FF43ABECFF80C0ECFFB3D3F3FF1D3CAEFF00148CFF122B95FF56B2
      EDFF33A7EDFF1BB1FFFF01A4FBFF018EE7FF058BC4FF08859F445ED5FEA198E3
      FFF371CFEF5AE1CED1FDDFD4D7FFD79AA7FFC53452FFBB092EFFB20E2FFFA60C
      2BAB8D001F2C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001A5FF541FAFFFFF1CAFFFFF00ABFFDD00B2FF1A004A887C0D95
      E1FF32B2F8FF5AB6EEFFC9E9FEFF6720F4FF1222B5FF002CB7FF001E9BFF2B5B
      B2FF44B4F3FF26B6FFFF03AAFEFF0099F0FF0099F1FF039CDCA10000000000AB
      FF9D03AEFD04D4BBC08BC98290F1BF1236FFCF3C5BFFCE1D42FFB30228FF8102
      1CFF6B0218FD640116C36A0117687301191A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018BBFF5695DFFFFF8EDEFFFF0AB4FF7A00AEFB9D0074C8BF0DA7
      F9FF2FAEF5FFA3E0FEFF8494F5FF5608ECFF4910D9FF0030B4FF012DB7FF0F30
      9BFF58C4FCFF31BAFFFF08ADFFFF00A4F9FF0099EEFF00A9FCE500AAFF0600AD
      FFA500ACFF0200000000AB02237CAD0428FFBD2B4AFFDC4464FFD81840FFC502
      2AFF82021DFF6F0219FF7F021CFF8D021FFBA30223D1A205269BA32540B98C04
      20C582021C520000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BBFF023FC5FFC375DAFF5C00A9FF0000A1F23E0086DCFB0AAC
      FDFF3DBDFEFFA9E7FFFF4B42E3FF794BE8FF6831E4FF042DB1FF0134BEFF062F
      ADFF60C6FBFF3ABEFFFF0FB0FFFF00AAFDFF009EF2FF00A9FCFF00ACFF3E00AD
      FFA10000000000000000C4022B3A910220FFC40930FFBD324FFFE53B5FFFDD0E
      3AFFD6012EFFB40227FF84021DFF82021DFFA00223FFA81030FFA1223DFF6901
      17FF710219FD79021B4200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFFAB00AAFF0000000000007DCA3A008BE1FF07AE
      FFFF51C6FFFF7ED3FDFF2B11CEFF9D88E9FF603ED7FF0134B3FF0139C1FF0438
      BCFF62C0F3FF41C2FEFF16B4FFFF00ADFFFF00A5F7FF00A9FAFF00ADFFD900AB
      FF300000000000000000CE003302A10123CDA80125FFBB082DFFC92548FFE922
      4CFFDE0432FFD5012EFFCB022CFFB70227FF9A0222FF89021EFF91223AFF7301
      19FF590214FF700218A300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFF6E00ADFF62000000000082DD830094E9FF04AF
      FFFF5ACAFFFF53B0F4FF1300BCFF4033C6FF1025A7FF0A389EFF2850B6FF0532
      9FFF86ADC8FF4BB2E3FF1AB6FDFF00AEFFFF00AAFBFF00AAFBFF00AEFF9F0000
      0000000000000000000000000000CE01314485011DFFDA002FFFB00327FFDA0B
      37FFE50333FFDA012FFFCE022CFFC20129FFA80124FF82011CFF71031AFF9503
      21FF570213FF680217B900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000AAFF0200ACFF7000AEFFA9008DDFED00A2F3FF01AE
      FFFF48C5FFFF3997E9FF0200ADFF0230A3FF1E479CFFD1D1DDFFF7F6F6FF566E
      A9FFDFCFD4FFC0B2BFFF3DA8DCFF00B0FEFF00AFFEFF00AEFCFF00B1FFB50000
      000000000000000000000000000000000000A70023A7A60124FFEF0133FFB200
      26FFE20131FFDC012FFFD1032EFFB11B3BFF721E2FFF7E2033FF930E29FF7001
      18FF4A0210FF690217A300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000A7F71A0087DBF900ABFBFF00AF
      FFFF27BCFFFF267DE1FF001BA6FF053D9EFFBDBCCDFFE2DDE0FFD1CECEFFA8A6
      B0FFA2979CFF92838AFF907C88FF18A4E5FF00B1FFFF00B0FEFF00B2FFCB0000
      000000000000000000000000000000000000DE002F16980121E7E00131FFE401
      31FFBA0128FFDC012FFFCF0D35FF26080EFF270007FF39000BFF490010FF6801
      18FF7D011DFF7C011B4400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000A2F34E008BDDFF00B0FEFF00B0
      FFFF13B7FFFF1F92EEFF004EC9FF4163A5FFB5A9ACFF94959DFF728EABFF538C
      BCFF3F8EC7FF3391CCFF248BC4FF1887C2FF00B2FDFF00B3FFFF00B3FFD70000
      00000000000000000000000000000000000000000000CA002D44AD0125FBEE01
      33FFD8012FFFCA012CFFD0022DFF5A0113FF1E0006FF43010FFF920022FF9D01
      24D18B021F500000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009DED810093E3FF00B2FFFF00B2
      FFFF0AB6FFFF1389EDFF004ECDFF546895FF6889A6FF5B9ED2FF77B7E5FF9FD5
      F3FF9CDEFBFF56CCFEFF21BDFEFF02B5FFFF00B4FFFF00B4FFFF00B4FFD90000
      0000000000000000000000000000000000000000000000000000C8002B76D401
      2EFFDF0130FFD4012DFFCA012BFFC2082FFF30000AFF500012FF87011EEF9600
      2212000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099E9A7009CEBFF00B4FFFF00B3
      FFFF03B6FFFF0C83EBFF0355D3FF4096D4FF66B7E8FFB0E0F7FFC9F0FFFFA2E4
      FFFF6FD5FFFF45C9FFFF1FBEFFFF01B6FFFF00B5FFFF00B6FFFF00B6FFD10000
      000000000000000000000000000000000000000000000000000000000000DC00
      3091D7012EFFD00832FFD12E50FF8C112BFF1C0005FF2A0009FF6F0118DB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009DEBB1009FEDFF00B5FFFF00B4
      FFFF00B6FFFF0681E5FF2AA3E6FF55C6F8FF7FDAFEFF83DCFFFF82DBFFFF76D8
      FFFF5DD1FFFF3EC8FFFF1BBDFFFF00B6FEFF00AEF8FF00B5FDFF00B7FFBF0000
      000000000000000000000000000000000000000000000000000000000000D800
      3300D0012C81CC0F36FD7D0820FF020000FF0B0002FF0B0002FF660117D10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000A3EFA1009EEBFF00B6FFFF00B6
      FFFF00B7FFFF07ADF3FF29C4FFFF47CBFEFF5ED0FDFF70D7FFFF72D7FFFF67D4
      FFFF52CEFFFF36C7FFFF12BDFEFF3795D0FF5A7EAEFF2A98D5FF00BAFFA10000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1012B9B7D011BFF060001FF0A0002FF4C0011F196011D460000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000AEF868009AE6FF00B8FFFF00B7
      FFFF00B7FFFF00B8FFFF15B5F7FF209BE0FF2C9FE1FF40B0EBFF5CCFFCFF57D1
      FFFF45CBFFFF29C5FFFF64B6DDFFC5ADB7FFBAA2AEFFA58FA0FF13B3F3740000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BE022802B702284A9502206E9602215CA0012218000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B3FF1C009CE7F700B6FDFF00B9
      FFFF00B9FFFF00B5FBFF0597E2FF5DA3CEFF989AB0FF8E99B3FF5CBAE5FF46CD
      FFFF37C9FFFF26C3FCFFCBC5D0FFDFD2D9FFCCBBC5FFB79CA9FF5A9DC84C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000ABF2A100A8F1FF00BA
      FFFF00BAFFFF00B1F9FF61AED7FFC6ACB6FFC2AEB9FFB9A1AEFFAB90A0FF48BF
      ECFF28C6FFFF39C4F6FFA99FA1FF474546FF9D9399FFBEA9B6FBA391A11A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BDFF1E00A7EFF100B9
      FDFF00BBFFFF06BBFDFFC5BFCBFF9E9399FF60595DFF95878FFFBBA3AFFF77A2
      C1FF15C4FFFF23C3FAFF393637FF373737FF211E1FFFB6B2C1B9000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000B6F96600B2
      F7FF00BDFFFF14BDFAFFACA4A9FF020202FF000000FF010101FF908189FF87A1
      BBFF04C1FFFF01C1FFFF3C8098FF606060FF285769FF2FC0F744000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000B7
      F99D00BDFEFF03BFFEFF77858EFF5D5E5EFFCCCCCCFF060606FF695C61FF63AC
      D1FF00BFFFFF00BFFFFF00C0FDFF01B5EFFF02C1FEBD00B7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000B5
      FF0800BFFFBD00BEFFFF46BEE9FF6E6869FF8C8B8BFF201B1BFF9B9CABFF11BC
      F6FF00BFFFFF00BFFFFF00BFFFFF00BFFFE900BEFF1E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000BEFF0E00BEFFBF00BFFFFF31C2F4FF60ACCBFF60B9DFFF10BEF9FF00BF
      FFFF00BFFFFF00BFFFFF00BFFFEB00BFFF360000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BDFF0800B7FFBF00BEFFFB00BFFFFF00BFFFFF00BFFFFF00BF
      FFFF00BDFFFF00BDFFBF00BEFF22000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFFA100BFFF2600BEFF6800BEFF8900BFFF9100BF
      FF7200B1FF9300ACFF3800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADFFA500ADFF000000000000000000000000000000
      000000ACFF3800ACFF7800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADFF9F00ABFF060000000000000000000000000000
      00000000000000ACFFAF00ABFF12000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ADFF8500ACFF200000000000000000000000000000
      00000000000000ACFF2600ADFFA900AEFF060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFF5000ACFF5A0000000000000000000000000000
      0000000000000000000000ADFF3A00ACFFAF00ACFF2000000000000000000000
      00000000000000000000009EFF0A009BFF9F009BFFC3009EFF38000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000ACFF1000ACFF9D0000000000000000000000000000
      000000000000000000000000000000ACFF1A00ADFF9D00ACFF9500ADFF4800AD
      FF1A00ACFF0400ACFF0400A7FF6635B9FFFF42BEFFFF19B1FFC7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000ADFF9D00ABFF1400000000000000000000
      0000000000000000000000000000000000000000000000ACFF1A00ADFF6200AC
      FF8B00ADFF9D00ADFF9F03AFFFA392E0FFFFA5E4FFFF5ACFFFB7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000ABFF3600ACFF8300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004BD1FF607FDEFF8716C4FF18000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000ACFF9F00ACFF24000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000ACFF1400ADFFB300ACFF0A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000ABFF3000ACFFAB00AC
      FF0C0000000000000000009FFF000196FF100097FF0200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000ABFF2C00AD
      FFB500ACFF3C009EFF06019DFFAF099FFFF9049EFFC700A4FF14000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000AC
      FF0A00ADFF7C00AAFFC33DBBFFFF51C3FFFF4BC2FFFF14B0FF74000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001B1FF4C86DAFFFF97E0FFFF99E0FFFF3FC7FF72000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000B8FF0448CFFFA198E5FFF77DDEFFBB02B4FF10000000000000
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
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81DFFFFFFFFFFFFF8007FFFFFFFFFFFF
      8007FC1FFFFFFFFFC01F00003FFFFFFFE47C00000FFFFFFFFFF0000007FFFFFF
      FFE0000007FFFFFFFFE0000007FFFFFFEDE0000007FFFFFFEDC0000007FFFFFF
      EDC0000007FFFFFFE0C0000007FFFFFE404000000FFFFFFE006000000FFFFFFE
      002000001FFFFFFE001000003FFFFFFE00100000FFFFFFFE00080001FFFFFFFE
      00080003FFFFFFFE00000007FFFFFFFF0004000FFFFFFFF90006003FFFFFFFF9
      0002007FFFFFFFFB0002407FFFFFFFE30001401FFFFFFFE4000170007FFFFFEE
      000170003FFFFFEE0000F0001FFFFFFC0000F8001FFFFFF80000F8001FFFFFFC
      0000FC003FFFFFFC0000FE007FFFFFF80000FF00FFFFFFF80000FF00FFFFFFF8
      0000FF80FFFFFFF80000FFC1FFFFFFFC0001FFFFFFFFFFFC0001FFFFFFFFFFFC
      0001FFFFFFFFFFFE0001FFFFFFFFFFFF0003FFFFFFFFFFFF0003FFFFFFFFFFFF
      8007FFFFFFFFFFFFC00FFFFFFFFFFFFFE01FFFFFFFFFFFFFECBFFFFFFFFFFFFF
      EFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFF7F3FFFFFFFFFF
      F7F9F1FFFFFFFFFFF7FF01FFFFFFFFFFFBFFFBFFFFFFFFFFFBFFFFFFFFFFFFFF
      FDFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF63FFFFFFFFFFFFFFC3FFFFFFFFFFFF
      FFE3FFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    PopupMenu = HookMenu
    Visible = True
    OnClick = TrayIcon1Click
    Left = 409
    Top = 123
  end
  object HookMenu: TPopupMenu
    Left = 470
    Top = 122
    object pmiShowMain: TMenuItem
      Caption = #26174#31034#20027#30028#38754
      OnClick = pmiShowMainClick
    end
    object HookCloseMain: TMenuItem
      Caption = #36864#20986#31243#24207
      OnClick = HookCloseMainClick
    end
  end
  object Image24: TImageList
    ColorDepth = cd24Bit
    ShareImages = True
    Width = 24
    Left = 497
    Top = 219
  end
  object scGalleryMenu1: TscGalleryMenu
    Items = <
      item
        Button = False
        Enabled = True
        Header = False
      end
      item
        Button = False
        Enabled = True
        Header = False
      end
      item
        Button = False
        Enabled = True
        Header = False
      end
      item
        Button = False
        Enabled = True
        Header = False
      end>
    HeaderStyle = scmhsDefault
    HeaderHeight = 25
    ItemIndex = -1
    BackgroundStyle = scgmPanel
    ItemFont.Charset = DEFAULT_CHARSET
    ItemFont.Color = clWindowText
    ItemFont.Height = -11
    ItemFont.Name = 'Tahoma'
    ItemFont.Style = []
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ColumnsCount = 1
    ShowSelectedItem = True
    ShowHints = True
    ButtonLeftAlignment = False
    ButtonGlyphLeftAlignment = False
    Left = 545
    Top = 123
  end
  object Image32: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 601
    Top = 219
  end
  object Img24: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    Left = 272
    Top = 70
    Bitmap = {
      494C010108001800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF00000000000000000000
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
      0000000000000000000003020020000000100000000000000000010101220303
      032E0000000000000000717171FF717171FF717171FF00000000000000000303
      032C010101220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E070142361E0480000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000010372504803725
      0480372504803725048037250480372504803725048037250480372504800000
      0010000000000000000000000000030200202A1C0370372504802A1C03700302
      00200000000007050030A8740EE0030200200000000001010122585858E16969
      69F61010106100000000717171FF717171FF717171FF00000000121212666969
      69F6585858E10101012200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000301001F0000000000000000532D069ED77610FF080400340000
      0000000000110000000E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D090140A7720DDF3625
      047F3625047F3625047F3625047F3625047F3625047F3625047FA7720DDF0D09
      0140000000000000000037250480C2850FF0442E058F291C036F442E058FC084
      0FEF563A06A0A8740EE007050030000000000000000002020227676767F37171
      71FF717171FF3C3C3CBA717171FF717171FF717171FF434343C5717171FF7171
      71FF676767F40303032A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009050035C76E0FF65E3407A94F2C069BC36B0FF3D77610FF95510BD4331C
      037DA65B0DE07D4509C300000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      0140000000002A1C037090620CCF000000100000000000000000000000000000
      00107B5309BF452F0590000000000000000000000000000000000F0F0F5E7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0E0E0E5B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000030026041600610825007D0825007D0414005D0001
      001C0000000D9E570CDBD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF381F04830000000000000000361E0480361E0480361E0480361E
      0480361E0480361E0480361E0480361E0480361E0480361E04800D0701400000
      0000361E0480361E0480361E0480361E0480361E0480361E0480361E0480361E
      0480361E0480361E04800D07014000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000010A8740EE003020020000000000000000000000000000000000000
      000000000010C0840FEF00000010000000000000000000000000000000003F3F
      3FBF717171FF6D6D6DFA1B1B1B7D07070742191919796B6B6BF8717171FF3A3A
      3AB7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020C0048156001C9229C02FF229C02FF229C02FF229A02FE072000740002
      002100000000703D08B8D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF140B014F0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      01400D0901407C540AC000000000000000000000000000000000000000000000
      0000000000007C540AC0150E015000000000717171FF717171FF717171FF7171
      71FF717171FF1D1D1D8100000000000000000000000019191979717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000050C38
      019A229C02FF229C02FF229C02FF229C02FF229C02FF166401CD000000000D07
      0140361E0480D57510FED77610FFCB7010F80D07003F000000095B3107A6D776
      10FFD77610FF92500BD22414026901000013D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      01401E150260563A06A000000000000000000000000000000000000000000000
      000000000000452F05903725048000000000717171FF717171FF717171FF7171
      71FF717171FF0909094A00000000000000000000000007070742717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002104601AB229C
      02FF229C02FF229C02FF209202F6104A01B00929018405170064000000007842
      09BFD77610FFD77610FFD77610FF894B0ACB00000000000000000F080145D776
      10FFD77610FFD77610FFD77610FF0D070140D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      01400705003092630CD000000000000000000000000000000000000000000000
      0000000000007C540AC00D09014000000000717171FF717171FF717171FF7171
      71FF717171FF1F1F1F850000000000000000000000001B1B1B7D717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007200075229C02FF229C
      02FF229C02FF0E4101A500010016000000000000000000000000000000000B06
      003A361E0480D77610FFD77610FFCD7010F91009014700000011623507ACD776
      10FFD77610FF80460AC51D10025F00000011D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000A8740EE0150E0150000000000000000000000000000000000000
      00000D090140A8740EE000000000000000000000000000000000000000003636
      36B1717171FF6D6D6DFB1F1F1F850909094A1D1D1D816D6D6DFA717171FF4545
      45C7000000010000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000010016208E02F4229C02FF229C
      02FF0B31018F0000000000000000000000000000000000000000000000000000
      0000000000007D4409C2D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0C07003E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D09014092630CD00D09
      01400D0901400D0901400D0901400D0901400D0901400D09014092630CD00D09
      01400000000007050030A8740EE01E150260000000000000000000000000150E
      0150C2850FF007050030000000000000000000000000000000000D0D0D597171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1414146C0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000007210077229C02FF229C02FF1766
      01CF000000040000000000000000000000000000000000000000000000000000
      000001010018B3630DE9D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF2D1903760000000000000000361E0480361E0480361E0480361E
      0480361E0480361E0480361E0480361E0480361E0480361E04800D0701400000
      0000361E0480361E0480361E0480361E0480361E0480361E0480361E0480361E
      0480361E0480361E04800D0701400000000000000000030200207B5309BF7B53
      09BF7B5309BF7B5309BF7B5309BF7B5309BF7B5309BF7B5309BF7B5309BF0302
      00200000000000000000070500307B5309BFC2850FF07C540AC0C2850FF07B53
      09BF070500300000000000000000000000000000000002020229676767F37171
      71FF717171FF404040C0717171FF717171FF717171FF353535AF717171FF7171
      71FF6B6B6BF80404043000000000000000000000000000000000000000000000
      000000000000000000000000000000000000135801C0229C02FF229C02FF0414
      005D000000000000000000000000000000000000000000000000000000000000
      00000D07003FCA6E0FF74928059549280595C46C0FF4D77610FF884B0BCB2D19
      0375AB5D0DE3653808AF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E0480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030200200D09003F030200200000
      000000000000000000000000000000000000000000000101011E555555DD6969
      69F51111116400000000717171FF717171FF717171FF000000000B0B0B536565
      65F1555555DD0101011E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E8502EC229C02FF229C02FF0001
      001B000000000000000000000000000000000000000000000000000000000000
      0000000000000101001800000000000000005E3407A9D77610FF050200270000
      000001000012000000070000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E0480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011E0303
      032B0000000000000000717171FF717171FF717171FF00000000000000000202
      02250101011E00000000000000000000000000000000000000001C1C1C800808
      084500000000000000000000000000000000209202F7229C02FF229C02FF0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E080143361E0480000000060000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E0480000000000000000007050030DB9611FFDB96
      11FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB9611FF0D09
      014000000000C2850FF0DB9611FFDB9611FFDB9611FFDB9611FFDB9611FFDB96
      11FFDB9611FFDB9611FF37250480000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF00000000000000000000
      0000000000000000000000000000010101200000000800000006717171FF2828
      2899000000000404043400000004000000001D8502EB229C02FF229C02FF0001
      001C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011D5B5B5BE53E3E3EBD1B1B1B7E717171FF5959
      59E31F1F1F866B6B6BF82929299900000000135701BF229C02FF229C02FF0416
      00600000000000000000000000000000000000000000000000000001001A1971
      02D9229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000004313131A9717171FF717171FF717171FF7171
      71FF717171FF6B6B6BF80606063E0000000007200074229C02FF229C02FF176B
      02D3000000050000000000000000000000000000000000000000000000000001
      001A197102D9229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000361E0480361E0480361E0480361E
      0480361E0480361E0480361E0480361E0480361E0480361E04800D0701400000
      0000361E0480361E0480361E0480361E0480361E0480361E0480361E0480361E
      0480361E0480361E04800D07014000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000005010101182323238F717171FF2A2A2A9C0000000E0505
      05365F5F5FEA646464F00101011A0000000A000000141F8C02F2229C02FF229C
      02FF0C3601970000000100000000000000000000000000000000000000000000
      00000001001C1F8E02F3229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C80717171FF717171FF717171FF00000016000000000000
      00002222228C717171FF717171FF717171FF00000000061D006F229C02FF229C
      02FF229C02FF104601AC0001001B000000000000000000000000000000000001
      001A104801AE229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000070707401E1E1E85454545C8717171FF08080847000000000000
      00023E3E3EBD717171FF2E2E2EA31F1F1F8600000000000000010E4001A4229C
      02FF229C02FF229C02FF219402F9115001B80A2F018C0A2E018B114E01B62194
      02F9229C02FF229C02FF229C02FF219602FA229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000013131368717171FF666666F2282828984040
      40C1717171FF626262ED00000008000000000000000000000000000000040B32
      0191229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0D3D01A000030025197502DD229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF361E048000000000000000000D0901407C540AC00000
      00000000000000000000000000000000000000000000000000007C540AC00D09
      014000000000DB9611FF00000000000000000000000000000000000000000000
      0000000000003725048037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010122676767F3676767F4666666F3717171FF7070
      70FE575757E0717171FF2B2B2B9E000000000000000000000000000000000000
      0000020A0041145801C1229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF156001C9020D004B00000000000000000002001E197502DD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D090140C2850FF07C54
      0AC07C540AC07C540AC07C540AC07C540AC07C540AC07C540AC0C2850FF00D09
      014000000000C2850FF07C540AC07C540AC07C540AC07C540AC07C540AC07C54
      0AC07C540AC0A8740EE037250480000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000011E1E1E830606063F01010120717171FF2727
      279600000005242424910303032C000000000000000000000000000000000000
      000000000000000000000002001E0413005907200075072100760413005B0002
      002200000000000000000000000000000000000000000002001E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0901400D09
      003F0D09003F0D09003F0D09003F0D09003F0D09003F0D09003F0D09003F0000
      000000000000070500300D09003F0D09003F0D09003F0D09003F0D09003F0D09
      003F0D09003F0D09003F03020020000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006717171FF2121
      2189000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
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
      0000000000000000000000000000717171FF969696FFB9B9B9FFB9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FF969696FF717171FF0000000000000000000000000000
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
      0000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF000000000000000000000000000000002F1A0378D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080400325C32
      07A7B6640EEBD37410FD4E2B069A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000029160370D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF717171FF969696FFB9B9B9FFB9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FF969696FF717171FF717171FF969696FFB9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
      B9FFB9B9B9FFB9B9B9FF969696FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000029160370D17310FCD776
      10FFD77610FFD77610FFD57510FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF00000000000000000000000000000000130A014ED77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF717171FFB9B9B9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      000000000000000000000000000000000000190E0258D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF000000000000000000000000000000000000000AA35A0DDED776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FFB9B9B9FFFFFFFFFFD87A
      17FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFFFFFFFFFD5D5D5FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      000000000000000000000000000000000007AF610DE7D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF000000000000000000000000000000000000000001000014361E
      048190500BD1D57610FED77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF717171FF969696FFB9B9B9FFB9B9B9FF9696
      96FF717171FF717171FF717171FF717171FF717171FFB9B9B9FFFFFFFFFFDC87
      2CFFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFDB83
      25FFFFFFFFFFEAEAEAFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      00000000000000000000000000001109014AD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB4630DEA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      0000000000000101001823130268AA5D0DE3D77610FFD77610FFD77610FFD776
      10FFD77610FFAF600DE62514026B717171FFB9B9B9FFFFFFFFFFFFFFFFFFB9B9
      B9FF717171FF717171FF717171FF717171FF717171FFB9B9B9FFFFFFFFFFEBB9
      85FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFE9B5
      7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      00000000000000000000000000002C180374D77610FFD77610FFD77610FFD776
      10FFD77610FFBB670EEE1D10025F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000201001DC36B0FF3D77610FFD77610FFD776
      10FFC76E0FF60302002200000000717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFF3D5B6FFE3A159FFD77610FFD77610FFD77610FFE39E55FFF2D3B2FFFFFE
      FEFFFFFFFFFFD5D5D5FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000361E0480D77610FFD77610FFD77610FF522D
      069D020100190000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000069A550BD8D77610FFD77610FFD776
      10FFA3590DDE00000008000000001C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C80717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE29D52FFD77610FFE1994BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEAEAEAFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000361E0480D77610FFD77610FF8E4E0BCF0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009270180229C02FF229C02FF0927018000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000003C210487D77610FFD77610FFD77610FFD776
      10FFD77610FF4425059000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFBF2E8FFD97D1CFFD77610FFD97C1AFFFAEFE3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000361E0480D77610FFD77610FF4124058D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      000000000000000000000201001CCD7010F9D77610FFD77610FFD77610FFD776
      10FFD77610FFD07210FB03020022000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFECBE8DFFD77610FFD77610FFD77610FFEBB985FFFFFFFFFFFFFF
      FFFFFFFFFFFFD5D5D5FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000361E0480D77610FFD77610FF4224058E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000311B037BD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF381F0483000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFE3A15AFFD77610FFD77610FFD77610FFE29D53FFFFFFFFFFFFFF
      FFFFFFFFFFFFEAEAEAFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000361E0480D77610FFD77610FF92500BD20000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000229C02FF229C02FF229C
      02FF0000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      000000000000000000007B4309C1D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF864A0ACA000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFE29D53FFD77610FFD77610FFD77610FFE19A4EFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      0000000000000000000000000000361E0480D77610FFD77610FFD77610FF5A31
      07A5030200210000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000B8650EECD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFC46C0FF4000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFF1D0ACFFD77611FFD77610FFD77610FFF0CBA5FFFFFFFFFFFFFF
      FFFFFFFFFFFFD5D5D5FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      00000000000000000000000000002B180374D77610FFD77610FFD77610FFD776
      10FFD77610FFC66D0FF521120265000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000D07210FBD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6DFC8FFECBF90FFF5DEC4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEAEAEAFFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
      D5FFD5D5D5FFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      000000000000000000000000000010090148D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB6640EEB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009270180229C02FF229C02FF0927018000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000C56C0FF4D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFCF7210FA000000000000000000000000000000000000
      000000000000000000000000000000000000717171FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9B9B9FF717171FF0000000000000000000000000000
      000000000000000000000000000000000006AB5F0DE4D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      000000000000000000005C3207A7D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF653808AF000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      000000000000000000000000000000000000160C0153D57610FED77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000010100189B550BD9D77610FFD77610FFD77610FFD776
      10FFD77610FFA1580CDD0201001C000000000000000000000000000000000000
      0000000000000000000000000000000000001C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C800000000000000000000000000000
      0000000000000000000000000000000000000000000023130268CF7210FAD776
      10FFD77610FFD77610FFD47410FD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000F3C210488A35A0DDECB7010F8A65B
      0DE04023048C0000001100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000603002C532D
      069FAA5D0DE3C76D0FF546260592000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
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
      000000000000}
    DesignInfo = 4587792
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
          262331303B3C7374796C6520747970653D22746578742F637373223E2E477265
          656E7B66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C67206964
          3D22D0A1D0BBD0BED0B95F32223E0D0A09093C673E0D0A0909093C673E0D0A09
          0909093C7061746820636C6173733D22477265656E2220643D224D362C323868
          3456313648365632387A204D31322C32386834563132682D345632387A204D31
          382C323868345638682D345632387A204D32342C34763234683456344832347A
          222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F73
          76673E0D0A}
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
          464646463B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E426C75657B66696C
          6C3A233131373744373B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BB
          D0BED0B95F32223E0D0A09093C7061746820636C6173733D22426C7565222064
          3D224D32302C3231632D322E362D302E372D332D322E332D332D3363312E362D
          312E362C332D342E372C332D3863302D302E322C302D302E352C302D3163302D
          322E352D322E382D352D352E392D3563302C302D302E312C302D302E312C3020
          202623393B2623393B63302C302D302E312C302D302E312C304331302E382C34
          2C382C362E352C382C3963302C302E352C302C302E382C302C3163302C332E33
          2C312E342C362E342C332C3863302C302E372D302E342C322E332D332C33632D
          352C312E342D362C312E312D362C3768313268313220202623393B2623393B43
          32362C32322E312C32352C32322E342C32302C32317A222F3E0D0A09093C7061
          746820636C6173733D22426C61636B2220643D224D32302C3138683132763134
          4832305631387A222F3E0D0A09093C673E0D0A0909093C673E0D0A090909093C
          7061746820636C6173733D2257686974652220643D224D32322C33306838762D
          32682D385633307A204D32322C323476326838762D324832327A204D32362C32
          30682D34763268345632307A222F3E0D0A0909093C2F673E0D0A09093C2F673E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E57686974657B66696C6C3A
          234646464646463B7D262331333B262331303B2623393B2E426C75657B66696C
          6C3A233131373744373B7D262331333B262331303B2623393B2E7374307B6F70
          61636974793A302E363B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D22426C61636B2220643D224D302C36683332763232483056367A222F3E0D0A
          3C7061746820636C6173733D2257686974652220643D224D322C386832387631
          38483256387A222F3E0D0A3C7061746820636C6173733D22426C75652220643D
          224D31332C31392E3263322E352C302E372C332C312E362C332C342E38682D33
          2E37483463302D332E322C302E352D342E312C332D342E3863312E332D302E34
          2C312E352D312E332C312E352D312E3743372E372C31362E362C372C31352C37
          2C31332E3220202623393B63302D302E312C302D302E332C302D302E3543372C
          31312E332C382E342C31302C392E392C313063302C302C302C302C302E312C30
          63302C302C302C302C302E312C3063312E352C302C322E392C312E332C322E39
          2C322E3763302C302E332C302C302E342C302C302E3520202623393B63302C31
          2E382D302E372C332E342D312E352C342E334331312E352C31372E392C31312E
          372C31382E382C31332C31392E327A222F3E0D0A3C672069643D22D0A1D0BBD0
          BED0B95F322220636C6173733D22737430223E0D0A09093C7265637420783D22
          31382220793D2232322220636C6173733D22426C61636B222077696474683D22
          313022206865696768743D2232222F3E0D0A09093C7265637420783D22313822
          20793D2231382220636C6173733D22426C61636B222077696474683D22313022
          206865696768743D2232222F3E0D0A09093C7265637420783D2231382220793D
          2231342220636C6173733D22426C61636B222077696474683D22313022206865
          696768743D2232222F3E0D0A09093C7265637420783D2231382220793D223130
          2220636C6173733D22426C61636B222077696474683D22313022206865696768
          743D2232222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          262331303B3C7374796C6520747970653D22746578742F637373223E2E426C75
          657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820
          69643D2250686F6E652220636C6173733D22426C75652220643D224D31382C32
          38632D342E342C302D382D332E362D382D38762D34762D3463302D342E342C33
          2E362D382C382D3863302C302C322C302C322C32763263302C302E332C302C30
          2E362C302C3163302C312E372D302E382C332D322E352C3320202623393B6330
          2C302D332E352C302D332E352C3473332E352C342C332E352C3463312E372C30
          2C322E352C312E332C322E352C3363302C302E342C302C302E372C302C317632
          4332302C32382C31382C32382C31382C32387A222F3E0D0A3C2F7376673E0D0A}
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
          262331303B3C7374796C6520747970653D22746578742F637373223E2E426C61
          636B7B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C70617468
          20636C6173733D22426C61636B2220643D224D33322C3856366C2D322E352D30
          2E324332392E342C352E332C32392E332C352C32392C342E366C312E352D312E
          354C32392C312E354C32372E332C33632D302E342D302E322D302E382D302E33
          2D312E322D302E354C32362C30682D326C2D302E322C322E3520202623393B43
          32332E332C322E362C32332C322E372C32322E362C336C2D312E352D312E354C
          31392E352C334C32312C342E37632D302E322C302E342D302E332C302E382D30
          2E352C312E324C31382C3676326C322E352C302E324332302E362C382E372C32
          302E372C392C32312C392E346C2D312E352C312E356C312E362C312E36202026
          23393B6C312E362D312E3563302E342C302E322C302E382C302E342C312E322C
          302E354C32342C313468326C302E322D322E3463302E352D302E312C302E382D
          302E322C312E322D302E356C312E352C312E356C312E362D312E364C32392C39
          2E3363302E322D302E332C302E332D302E382C302E352D312E324C33322C387A
          20202623393B204D32352C392E33632D312E332C302D322E332D312E312D322E
          332D322E3373312E312D322E332C322E332D322E3373322E332C312E312C322E
          332C322E335332362E332C392E332C32352C392E337A222F3E0D0A3C70617468
          20636C6173733D22426C61636B2220643D224D32302C3234762D34682D342E33
          632D302E312D302E322D302E322D302E342D302E322D302E364C31382C31366C
          2D322D326C2D332E342C322E36632D302E322D302E312D302E342D302E322D30
          2E362D302E32563132483876342E3320202623393B632D302E322C302E312D30
          2E342C302E322D302E362C302E324C342C31346C2D322C326C322E362C332E34
          632D302E312C302E322D302E322C302E342D302E322C302E364830763468342E
          3363302E312C302E322C302E312C302E342C302E322C302E364C322C32386C32
          2C326C332E342D322E3620202623393B63302E322C302E312C302E342C302E32
          2C302E362C302E325633326834762D342E3363302E322D302E312C302E342D30
          2E322C302E362D302E324C31362C33306C322D326C2D322E362D332E3463302E
          312D302E322C302E322D302E342C302E322D302E364832307A204D31302C3235
          20202623393B632D312E372C302D332D312E332D332D3373312E332D332C332D
          3373332C312E332C332C335331312E372C32352C31302C32357A222F3E0D0A3C
          2F7376673E0D0A}
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
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
          3E0D0A3C672069643D224175746F6D6174696355706461746573223E0D0A0909
          3C7061746820636C6173733D22477265656E2220643D224D31352E362C32352E
          314C31342E362C3235632D312D302E322D312E362D312D312E362D32762D312E
          31632D302E332C302D302E372C302E312D312C302E31632D342E342C302D382D
          332E362D382D3863302D342E342C332E362D382C382D3820202623393B262339
          3B63322E322C302C342E322C302E392C352E362C322E344C31342C313268352E
          3748323268312E3848323456326C2D332E352C332E354331382E332C332E332C
          31352E332C322C31322C3243352E342C322C302C372E342C302C313463302C36
          2E362C352E342C31322C31322C313220202623393B2623393B63312E312C302C
          322E322D302E322C332E332D302E354C31352E362C32352E317A222F3E0D0A09
          093C7061746820636C6173733D22426C75652220643D224D33312C3233762D32
          6C2D322E322D302E34632D302E322D302E362D302E342D312E332D302E382D31
          2E386C312E332D312E386C2D312E342D312E346C2D312E382C312E33632D302E
          352D302E332D312E322D302E362D312E382D302E374C32342C3134682D322020
          2623393B2623393B6C2D302E342C322E32632D302E362C302E322D312E332C30
          2E342D312E382C302E374C31382C31352E364C31362E362C31376C312E332C31
          2E38632D302E332C302E352D302E362C312E322D302E382C312E384C31352C32
          3176326C322E322C302E3463302E322C302E362C302E342C312E332C302E382C
          312E3820202623393B2623393B4C31362E372C32376C312E342C312E346C312E
          382D312E3363302E352C302E332C312E322C302E362C312E382C302E374C3232
          2C333068326C302E342D322E3263302E362D302E322C312E332D302E342C312E
          382D302E376C312E382C312E336C312E342D312E346C2D312E332D312E382020
          2623393B2623393B63302E332D302E352C302E362D312E322C302E382D312E38
          4C33312C32337A204D32332C3234632D312E312C302D322D302E392D322D3273
          302E392D322C322D3273322C302E392C322C325332342E312C32342C32332C32
          347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2243
          617264732220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F32
          3030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F777777
          2E77332E6F72672F313939392F786C696E6B2220783D223070782220793D2230
          7078222076696577426F783D2230203020333220333222207374796C653D2265
          6E61626C652D6261636B67726F756E643A6E6577203020302033322033323B22
          20786D6C3A73706163653D227072657365727665223E262331333B262331303B
          3C7374796C6520747970653D22746578742F637373223E2E426C75657B66696C
          6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D22426C75652220643D224D31342C3130483056346831345631307A204D3330
          2C34483136763668313456347A204D31342C3132483076366831345631327A20
          4D33302C313248313676366831345631327A204D31342C323048307636683134
          5632307A204D33302C3230483136763668313420202623393B5632307A222F3E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000001E949444154484BED554D6EDA60107DCFB14A77B5C801EA48315277F4
          06CE0DB841C912B3496EE09E0036C0126E507A83F404A12BA410097A00AC6F99
          54EE37D5186C112AF313D45DBCF478DE9B19BF7943FCE78739BE37988510C82E
          3E13053F34EEF51EEA203FECAC8DE92FD3FAB4C80814DC118C094CCA9204A85B
          A2615AC15DB53F337BBEF5211825ED202E08CE04F1320AC23282F3FEECEE0F11
          AF09248982A2FBED9C6A6F16EBBB3782B711BDD4C6692AEA3DD41DF27EDF525B
          E22ADF0300BB174DF0B590E93EE053E2A54A3814D41B4C7D88FB116B6BD8CE5B
          6FF2D4A7B8C37DA0C2F45AFD25F723921D029FD536D44A04B817915BD3AE1596
          B3E9455D4BDC949138822CAEFF40CDCE21C7148997EDDA28CF39EF3F360432B2
          22614EF25A2F5A10BC594697E3ED82D6C6394AA2C0D7D8D104B0621C5201EA87
          18E3D10467567C21C224AA35CB08AA83C7AE16F22A3755D043AC1D6057477874
          077872274E259D58A661AEA8CD4EBCCEDC732AE9DC3EBB17E6F6420FD3EAA21D
          52D5C6C151B57DB1CFEE95821467B733F75849BF91FC99B42E33456EC8548620
          0BC9FD335F91A625AF55A61ACBAED64AD643882C40AA6A9A807C07185A91864A
          7545A06DBD4B4B772027B3BFDDEE8B8A0753DF11B7018107C258A6631D5BBE27
          3AC693ADA24C4999853CBD377F0169459754EDFC12D30000000049454E44AE42
          6082}
      end>
  end
  object Img32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 4587832
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000018744558745469746C65005465616D3B50656F706C653B
          47726F75703B5C39E8160000020B49444154785EEDD7CF4B546114C7E177D2C0
          6C0C0C0A02576D02C3A4482C98025B15320B71A39B5C540BA176910B6923FD05
          B50CA908F207D24AA260560A61D12F3752D8CAA63257454C28231D3F8BD3E630
          EFDC739B0137B3783673DE73F8C29CFB726F10915DB5FB01F213CF63FAF00C3F
          50C6065EE0421D7BA201CE601B62E9EFE76BE87105780CA962A6861E5780F709
          C33ED4D0E30AB00A897884D308C6419CC543FC85189FBD01BAABFC971308B88C
          45B36C2F31820CC6237BD0E5099087C02A218BDB902AEE601F7E418CBC27400B
          9621C6125AF13B21C01F1CC082A92DA3C5BB032310631EBD1087739837B52B69
          96B015EB66C03DF4431CFA7117A2D6B1DF1D405DC41644F5E23AC4E1067A203A
          E392F726B4BA711FAF70144B1087D7E8C403B3F9EE00CD91C602C4A160FABAD0
          EC09D08151BCC3771CB683EC1D6169FD8499B9A13347D15129403B265136C3D6
          70153D1844131612022C2283E3B886A2A9973189F67F010EE1538AC76B0012A3
          F59C63D62A8E040AD310A7A708988AD49F20E83971980E7AC54A0A43D88B9B58
          83E00BC6D08461885329983BBB9A8F18521904D586A0F6206050CF4B829FDAE8
          760C53B815A98F634ECF050FFB9258A9218B31AC40D41606CCB961F388AE685F
          D6CE141125890172284222DE60166F211145E4FE27C049C7827A95702A6D8002
          A48E0A69036C42EA68336D806F903AFA5A2940E3DBB01160072D0036F524444A
          EB0000000049454E44AE426082}
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
          73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E57686974657B66696C6C
          3A234646464646463B7D262331333B262331303B2623393B2E7374307B6F7061
          636974793A302E363B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C61636B2220643D224D302C36683332763232483056367A222F3E0D0A3C
          7061746820636C6173733D2257686974652220643D224D322C38683238763138
          483256387A222F3E0D0A3C6720636C6173733D22737430223E0D0A09093C7265
          637420783D2232302220793D2232322220636C6173733D22426C61636B222077
          696474683D223822206865696768743D2232222F3E0D0A09093C726563742078
          3D2232302220793D2231382220636C6173733D22426C61636B22207769647468
          3D223822206865696768743D2232222F3E0D0A09093C7265637420783D223230
          2220793D2231342220636C6173733D22426C61636B222077696474683D223822
          206865696768743D2232222F3E0D0A09093C7265637420783D2232302220793D
          2231302220636C6173733D22426C61636B222077696474683D22382220686569
          6768743D2232222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2252
          65642220643D224D382C3230632D312E312C302D322C302E392D322C3273302E
          392C322C322C3273322D302E392C322D3253392E312C32302C382C32307A204D
          31342C3230632D312E312C302D322C302E392D322C3273302E392C322C322C32
          73322D302E392C322D3220202623393B5331352E312C32302C31342C32307A22
          2F3E0D0A3C706F6C79676F6E20636C6173733D225265642220706F696E74733D
          22382C313220352C3920342C313020362C313220362C31382031342C31382031
          382C313220222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000035744558745469746C65004172726F773B526563757272
          656E63653B526566726573683B5570646174653B52656C6F61643B4578636861
          6E676586B45D480000014C49444154785EED96314AC44018852D766DB6132C24
          5B5818C809B44B4E305749699B208847706F3007B0F100DBA54E95C2C22B6CFF
          FB1606098FC9CEFC132108293E16927DBC8F4926FF5C89C8A2A802ABC02A605E
          3E0B50030B7A7072F4C0BA7B855E205C9C81160C40020CEEBF59AA00973F820F
          201A5CA6D40A70F9993BF0052481634822546EDCEFFD48A2030DA8C08DA372D7
          BA8995C852040C10927805F9854C0E0E1E89365AE0D9BE6F46E54212DB889DB2
          F3480C53BB83CB6F47E58C516CD7DCF338EAA00095CF9568286B7D1945B94E02
          998A72BD2FA32D6709CAAB31149E2BA1CF4F2D5F4F812ABCECFAC77849C052A0
          0994AB5FE490404DA10EE47F2061CE5B3D46A0F04CBE03D845945F835F092ADF
          6866410B8425223EC56FE081244CCA2CC8780C2B86D13749248FE3121C816871
          127B30FB4052CE38903C2D7A24FB3787D245590556811FFFE4F2FAE6AD101500
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000002B744558745469746C650053657475703B437573746F6D
          697A3B44657369676E3B53657474696E673B50726F70657274381FB521000001
          5749444154785ECD973D4EC3401484A9BC482405DCC8A5237191F808E9380184
          A4814B802305CE80E9F9514AB42E931B3C4668A44496FCF41CEF66293EC9853D
          FB496BCF3E9F894852FE2EAE6F5EFB52000F847850F4CC1820C0C55BF8530A48
          07C1043270073EC002B823041C5830E3166456810C3CB582D70CBC04534560CA
          7B1C9F1122CCCC2C02F38EF037B005A2C17BEA8E8CB945E00B4824BE2D020F11
          051E2D02E7E025B400339D26D096A8030ABC03D7A707AEC04E09AC400E462407
          2B4560C74CB340A984CD9472992912A526B0EF769D95A1E12A438E07C55E808B
          1BC80D02B931CB1F0A8891B141606CCD8B2530B2E6A5DE82E65060021A834015
          E825FC0193049F61B8227AE6765C901C54218BC8B13E2510759F2A76910EA335
          B3FFFF71BC8928B0193292D50146B2FBE143A9FE8996B6A1D43E967F82E580B1
          7CC90C8EE5917F4C52FF9A35A713E0D9D1EEF6630592F20B0AE4B56FFADA0BAE
          0000000049454E44AE426082}
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
          31314331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C
          3A233732373237323B7D262331333B262331303B2623393B2E7374307B6F7061
          636974793A302E363B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C61636B2220643D224D342C327632386832345638563248347A222F3E0D
          0A3C706F6C79676F6E20636C6173733D2257686974652220706F696E74733D22
          32362C31362032362C3420362C3420362C32382031362C32382031362C333020
          32382C33302032382C313620222F3E0D0A3C673E0D0A09093C706F6C79676F6E
          20636C6173733D225265642220706F696E74733D2232382C32302033312C3137
          2033322C31382033302C32302033302C32362032322C32362031382C32302026
          23393B222F3E0D0A09093C7265637420783D22382220793D2231342220636C61
          73733D22526564222077696474683D223422206865696768743D2234222F3E0D
          0A09093C7265637420783D2231342220793D2231302220636C6173733D225265
          64222077696474683D223422206865696768743D2238222F3E0D0A09093C7265
          637420783D2232302220793D22362220636C6173733D22526564222077696474
          683D223422206865696768743D223132222F3E0D0A09093C7061746820636C61
          73733D225265642220643D224D32382C3238632D312E312C302D322C302E392D
          322C3273302E392C322C322C3273322D302E392C322D325332392E312C32382C
          32382C32387A204D32322C3238632D312E312C302D322C302E392D322C327330
          2E392C322C322C3273322D302E392C322D3220202623393B2623393B5332332E
          312C32382C32322C32387A222F3E0D0A093C2F673E0D0A3C6720636C6173733D
          22737430223E0D0A09093C673E0D0A0909093C7265637420783D22382220793D
          2232302220636C6173733D22426C61636B222077696474683D22382220686569
          6768743D2232222F3E0D0A0909093C7265637420783D22382220793D22323422
          20636C6173733D22426C61636B222077696474683D223822206865696768743D
          2232222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = barMgrMain
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Microsoft YaHei UI'
    Font.Style = []
    Font.Quality = fqClearTypeNatural
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnUserName'
      end
      item
        Visible = True
        ItemName = 'btnReLogin'
      end>
    ItemOptions.Size = misNormal
    UseOwnFont = True
    UseRecentItems = True
    Left = 561
    Top = 307
    PixelsPerInch = 96
  end
end
