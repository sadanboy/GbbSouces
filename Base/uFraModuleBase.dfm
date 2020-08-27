object fraModuleBase: TfraModuleBase
  Left = 0
  Top = 0
  Width = 1086
  Height = 661
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object propertiesStoreModule: TcxPropertiesStore
    Active = False
    Components = <>
    StorageName = 'propertiesStoreModule'
    Left = 264
    Top = 120
  end
  object actlstModule: TActionList
    Left = 376
    Top = 120
    object actModule_Close: TAction
      Caption = #20851#38381'[&X]'
      ImageIndex = 9
      OnExecute = actModule_CloseExecute
    end
  end
  object barMgrModule: TdxBarManager
    AllowReset = False
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Microsoft YaHei UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    OnShowCustomizingPopup = barMgrModuleShowCustomizingPopup
    OnShowToolbarsPopup = barMgrModuleShowToolbarsPopup
    Left = 464
    Top = 120
    PixelsPerInch = 96
  end
end
