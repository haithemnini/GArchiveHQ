object DM_API: TDM_API
  OldCreateOrder = False
  Height = 518
  Width = 676
  object Action_APP: TActionList
    Left = 48
    Top = 24
    object Act_Doum_Show: TAction
      Category = 'Doum'
      Caption = #1575#1604#1608#1579#1575#1574#1602
      OnExecute = Act_Doum_ShowExecute
    end
    object Act_Doum_Add: TAction
      Category = 'Doum'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Doum_AddExecute
    end
    object Act_Doum_Edit: TAction
      Category = 'Doum'
      Caption = 'Act_Doum_Edit'
      OnExecute = Act_Doum_EditExecute
    end
    object Act_Destruction_Show: TAction
      Category = 'Destruction'
      Caption = #1575#1604#1573#1578#1604#1575#1601
      OnExecute = Act_Destruction_ShowExecute
    end
    object Act_Destruction_Add: TAction
      Category = 'Destruction'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Destruction_AddExecute
    end
    object Act_Destruction_Edit: TAction
      Category = 'Destruction'
      Caption = #1578#1593#1583#1610#1604
      OnExecute = Act_Destruction_EditExecute
    end
    object Act_Boite_Show: TAction
      Category = 'Boite'
      Caption = #1575#1604#1593#1604#1576#1577
      OnExecute = Act_Boite_ShowExecute
    end
    object Act_Boite_Add: TAction
      Category = 'Boite'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Boite_AddExecute
    end
    object Act_Boite_Edit: TAction
      Category = 'Boite'
      Caption = #1578#1593#1583#1610#1604
      OnExecute = Act_Boite_EditExecute
    end
    object Act_Depot_Show: TAction
      Category = 'Depot'
      Caption = #1575#1604#1583#1601#1593
      OnExecute = Act_Depot_ShowExecute
    end
    object Act_Depot_Add: TAction
      Category = 'Depot'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Depot_AddExecute
    end
    object Act_Depot_Edit: TAction
      Category = 'Depot'
      Caption = #1578#1593#1583#1610#1604
      OnExecute = Act_Depot_EditExecute
    end
    object Act_Archivage_Show: TAction
      Category = 'Archivage'
      Caption = #1575#1604#1575#1585#1588#1610#1601
      OnExecute = Act_Archivage_ShowExecute
    end
    object Act_Archivage_Add: TAction
      Category = 'Archivage'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Archivage_AddExecute
    end
    object Act_Archivage_Edit: TAction
      Category = 'Archivage'
      Caption = #1578#1593#1583#1610#1604
      OnExecute = Act_Archivage_EditExecute
    end
    object Act_Direction_Show: TAction
      Category = 'Direction'
      Caption = #1575#1604#1605#1589#1604#1581#1577
      OnExecute = Act_Direction_ShowExecute
    end
    object Act_Direction_Add: TAction
      Category = 'Direction'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Direction_AddExecute
    end
    object Act_Direction_Edit: TAction
      Category = 'Direction'
      Caption = #1578#1593#1583#1610#1604
      OnExecute = Act_Direction_EditExecute
    end
    object Act_Service_Show: TAction
      Category = 'Service'
      Caption = #1575#1604#1605#1583#1610#1585#1610#1577
      OnExecute = Act_Service_ShowExecute
    end
    object Act_Service_Add: TAction
      Category = 'Service'
      Caption = #1580#1583#1610#1583
      OnExecute = Act_Service_AddExecute
    end
    object Act_Service_Edit: TAction
      Category = 'Service'
      Caption = #1578#1593#1583#1610#1604
      OnExecute = Act_Service_EditExecute
    end
    object Act_User: TAction
      Category = 'User'
      Caption = #1575#1604#1575#1593#1583#1575#1583#1575#1578
      OnExecute = Act_UserExecute
    end
    object Act_InfoDev: TAction
      Category = 'InfoDev'
      OnExecute = Act_InfoDevExecute
    end
  end
  object FileOpenDlg: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'JPEG / JPG Pictures'
        FileMask = '*.JPG'
      end>
    Options = []
    Title = 'Load Pictures'
    Left = 576
    Top = 40
  end
  object DateTime: TTimer
    Enabled = False
    OnTimer = DateTimeTimer
    Left = 502
    Top = 30
  end
  object Pm_Menu: TPopupMenu
    Alignment = paRight
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    AutoPopup = False
    BiDiMode = bdRightToLeft
    OwnerDraw = True
    ParentBiDiMode = False
    OnPopup = Pm_MenuPopup
    Left = 320
    Top = 184
    object MenuItem1: TMenuItem
      Action = Act_Pic
    end
    object N2: TMenuItem
      Action = Act_Notif
      AutoLineReduction = maAutomatic
    end
  end
  object Action_Menu: TActionList
    Left = 240
    Top = 184
    object Act_Pic: TAction
      Caption = #1593#1585#1590' '#1575#1604#1589#1608#1585
      Enabled = False
      OnExecute = Act_PicExecute
    end
    object Act_Notif: TAction
      Caption = #1593#1585#1590' '#1575#1604#1575#1588#1593#1575#1585
      Enabled = False
      OnExecute = Act_NotifExecute
    end
  end
end
