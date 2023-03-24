object frm_Doum_Edit: Tfrm_Doum_Edit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frm_Doum_Edit'
  ClientHeight = 404
  ClientWidth = 812
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PNL_btn: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 361
    Width = 806
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object btn_save: TBitBtn
      AlignWithMargins = True
      Left = 144
      Top = 4
      Width = 148
      Height = 35
      Cursor = crHandPoint
      BiDiMode = bdRightToLeft
      Caption = #1581#1601#1592
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000008080800247A0437E4A9F401800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FF000146A0439147A043FF47A044CC4BA53C11000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000055AA5503489F43A047A043F8489F426047A043D647A043D64A9F40180000
        00000000000000000000000000000000000000000000000000000000000000FF
        0001469F439547A043FA48A1425100000000489F402047A043DF47A044CC4BA5
        3C110000000000000000000000000000000000000000000000000000000047A1
        423647A043F3489F414A0000000000000000000000004A9F401847A043D647A0
        43D64A9F40180000000000000000000000000000000000000000000000000000
        000046A2461600000000000000000000000000000000000000004A9F401847A0
        43D647A043D64A9F401800000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000489F
        402047A043DF47A044CC4BA53C11000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000489F402047A043DF47A044CC4BA53C110000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000489F402047A043DF47A044CC4BA53C1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004A9F401847A043B7489F402000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btn_saveClick
    end
    object btn_cancel: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 4
      Width = 140
      Height = 35
      Cursor = crHandPoint
      BiDiMode = bdRightToLeft
      Caption = #1575#1594#1604#1575#1602
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B08282C1B146A74231A919F2218909F1710
        68730806272B0000000000000000000000000000000000000000000000000000
        00000000000004030C0D2A2194A14032EAFE3D2FEAFF3B2CE9FF3829E8FF3627
        E7FF3424E5FE1F158F9F02020B0C000000000000000000000000000000000000
        000004030C0D3A2FC0CF4537ECFF4235EBFF4032EBFF3D2FEAFF3B2CE9FF3829
        E8FF3627E7FF3424E6FF281BB9CE02020B0C0000000000000000000000000000
        0000302898A24A3DEEFF473AEDFF4537EBFF4235EAFF4032EBFF3D2FEAFF3B2C
        E8FF3829E7FF3627E7FF3424E6FF1E148E9E0000000000000000000000000D0B
        26284D40EDFD4C3FEFFF4A3DEDFFB5B0EFFF948DE9FF4235EAFF4032EAFF9089
        E8FFB1ACEDFF3829E7FF3627E7FF3424E4FD0705222600000000000000002821
        747B5043F0FF4E41EFFF4C3FEEFF958DE9FFFEFEFFFF948DE9FF928CE8FFFEFE
        FFFF8D86E7FF3B2CE8FF3829E8FF3627E7FF18116C780000000000000000342D
        979F5245F1FF5043F0FF4E41EFFF4C3FEEFF9E97EBFFFEFEFFFFFEFEFFFF9A94
        EAFF4032EAFF3D2FEAFF3B2CE9FF3829E8FF21188F9E0000000000000000352E
        979F5348F2FF5245F1FF5043F0FF4E41EEFF8E86E8FFFEFEFFFFFEFEFFFF8A82
        E7FF4235EAFF4032EBFF3D2FEAFF3B2CE9FF2319909E00000000000000002A25
        767C554AF2FF5348F2FF5245F0FF9891EBFFFEFEFFFF9891EAFF9790EAFFFEFE
        FFFF928BE8FF4235EAFF4032EBFF3D2FEAFF1C156F790000000000000000100E
        2B2D574CF2FE554AF2FF5348F1FFB8B4F0FF9A93EBFF4E41EEFF4C3FEEFF9790
        EAFFB5B0EFFF4537EBFF4235EBFF4032EAFE0A08272B00000000000000000000
        00003C35A5AC574CF3FF554AF2FF5348F1FF5245F0FF5043F0FF4E41EFFF4C3F
        EEFF4A3DEDFF473AEDFF4537ECFF2B239BA80000000000000000000000000000
        000006050F104940C8D1574CF3FF554AF2FF5348F2FF5245F1FF5043F0FF4E41
        EFFF4C3FEFFF4A3DEEFF3A2FC1D004030E0F0000000000000000000000000000
        00000000000006050F103C35A6AD574CF3FF554AF2FF5348F2FF5245F1FF5043
        F0FF4E41EEFE332AA0AB04040E0F000000000000000000000000000000000000
        0000000000000000000000000000100E2D2F2C277C8237309CA4352E9CA42923
        7A810E0C2B2E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      TabStop = False
    end
  end
  object gro_Add: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 806
    Height = 352
    Align = alClient
    BiDiMode = bdRightToLeft
    Caption = #1573#1590#1575#1601#1577' '#1608#1579#1610#1602#1577' : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arabic UI Display Medium'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 703
      Top = 34
      Width = 82
      Height = 21
      Caption = #1573#1587#1605' '#1575#1604#1608#1579#1610#1601#1577' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 703
      Top = 277
      Width = 84
      Height = 21
      Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1583#1606#1610' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 691
      Top = 72
      Width = 94
      Height = 21
      Caption = #1608#1589#1601' '#1575#1604#1608#1579#1610#1602#1577' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 490
      Top = 315
      Width = 93
      Height = 21
      Alignment = taCenter
      Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1602#1589#1609' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 707
      Top = 315
      Width = 80
      Height = 21
      Caption = #1605#1583#1577' '#1575#1604#1581#1601#1592' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 715
      Top = 197
      Width = 72
      Height = 21
      Caption = #1585#1602#1605' '#1575#1604#1593#1604#1576#1577' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 693
      Top = 154
      Width = 93
      Height = 21
      Caption = #1575#1587#1605' '#1575#1604#1605#1583#1610#1585#1610#1577' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 704
      Top = 237
      Width = 82
      Height = 21
      Caption = #1606#1608#1593' '#1575#1604#1573#1578#1604#1575#1601' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 707
      Top = 115
      Width = 80
      Height = 21
      Caption = #1606#1608#1593' '#1575#1604#1608#1579#1610#1602#1577' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
    end
    object edt_Titre: TEdit
      Left = 315
      Top = 29
      Width = 351
      Height = 31
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dt_Min: TDateTimePicker
      Left = 315
      Top = 273
      Width = 352
      Height = 29
      BiDiMode = bdRightToLeftNoAlign
      Date = 44540.000000000000000000
      Time = 0.894549930555513100
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
      OnChange = SpDayChange
    end
    object DBLookCombo_Boite: TDBLookupComboBox
      Left = 315
      Top = 193
      Width = 353
      Height = 29
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'ID'
      ListSource = DM.ds_Q_Boite
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
    end
    object edt_Description: TEdit
      Left = 315
      Top = 67
      Width = 351
      Height = 31
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dt_Max: TDateTimePicker
      Left = 315
      Top = 311
      Width = 158
      Height = 29
      BiDiMode = bdRightToLeftNoAlign
      Date = 44540.000000000000000000
      Time = 0.894549930555513100
      DateMode = dmUpDown
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 8
      TabStop = False
    end
    object pnl_Pic: TPanel
      Left = 8
      Top = 68
      Width = 289
      Height = 273
      ShowCaption = False
      TabOrder = 9
      object img_Src: TImage
        Left = 1
        Top = 1
        Width = 287
        Height = 271
        Align = alClient
        Center = True
        Proportional = True
        Transparent = True
        OnClick = img_SrcClick
        ExplicitLeft = 25
        ExplicitTop = 0
        ExplicitWidth = 237
        ExplicitHeight = 169
      end
    end
    object DBLookCombo_Service: TDBLookupComboBox
      Left = 315
      Top = 150
      Width = 351
      Height = 29
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'Nom'
      ListSource = DM.ds_Q_Service
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object DBLookCombo_Destruction: TDBLookupComboBox
      Left = 315
      Top = 233
      Width = 352
      Height = 29
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'Type'
      ListSource = DM.ds_Q_Destruction
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
    end
    object btn_Clear: TBitBtn
      AlignWithMargins = True
      Left = 9
      Top = 27
      Width = 288
      Height = 35
      Cursor = crHandPoint
      BiDiMode = bdRightToLeft
      Caption = #1605#1587#1581' '#1575#1604#1589#1608#1585#1577
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000402EE82C3B2CE974382AE99F3726E79F3323
        E7732F24E72B0000000000000000000000000000000000000000000000000000
        0000000000004E3BEB0D4334EAA14032EBFE3D2FEAFF3B2CE9FF3829E8FF3627
        E7FF3424E6FE3222E59F2B2BEA0C000000000000000000000000000000000000
        00004E3BEB0D473AEDCF4537ECFF4235EBFF4032EBFF3D2FEAFF3B2CE9FF3829
        E8FF3627E7FF3424E6FF3221E5CE2B2BEA0C0000000000000000000000000000
        00004C3FEFA24A3DEEFF473AEDFF4537EBFF4235EAFF4032EBFF3D2FEAFF3B2C
        E8FF3829E7FF3627E7FF3424E6FF3020E59E0000000000000000000000005346
        F2284E41EFFD4C3FEFFF4A3DEDFFB5B0EFFF948DE9FF4235EAFF4032EAFF9089
        E8FFB1ACEDFF3829E7FF3627E7FF3424E6FD2F22E42600000000000000005344
        F07B5043F0FF4E41EFFF4C3FEEFF958DE9FFFEFEFFFF948DE9FF928CE8FFFEFE
        FFFF8D86E7FF3B2CE8FF3829E8FF3627E7FF3324E67800000000000000005348
        F29F5245F1FF5043F0FF4E41EFFF4C3FEEFF9E97EBFFFEFEFFFFFEFEFFFF9A94
        EAFF4032EAFF3D2FEAFF3B2CE9FF3829E8FF3527E79E0000000000000000554A
        F29F5348F2FF5245F1FF5043F0FF4E41EEFF8E86E8FFFEFEFFFFFEFEFFFF8A82
        E7FF4235EAFF4032EBFF3D2FEAFF3B2CE9FF3828E89E0000000000000000564C
        F37C554AF2FF5348F2FF5245F0FF9891EBFFFEFEFFFF9891EAFF9790EAFFFEFE
        FFFF928BE8FF4235EAFF4032EBFF3D2FEAFF3B2CEA7900000000000000005B4F
        F42D574CF3FE554AF2FF5348F1FFB8B4F0FF9A93EBFF4E41EEFF4C3FEEFF9790
        EAFFB5B0EFFF4537EBFF4235EBFF4032EBFE3B2FE72B00000000000000000000
        0000594FF5AC574CF3FF554AF2FF5348F1FF5245F0FF5043F0FF4E41EFFF4C3F
        EEFF4A3DEDFF473AEDFF4537ECFF4135EBA80000000000000000000000000000
        00006050EF10594EF4D1574CF3FF554AF2FF5348F2FF5245F1FF5043F0FF4E41
        EFFF4C3FEFFF4A3DEEFF473AEDD04433EE0F0000000000000000000000000000
        0000000000006050EF10584EF5AD574CF3FF554AF2FF5348F2FF5245F1FF5043
        F0FF4E41EFFE4C3FEFAB4444EE0F000000000000000000000000000000000000
        0000000000000000000000000000574CF42F564DF382564BF3A45248F3A45145
        F1814E43EE2E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = btn_ClearClick
    end
    object edt_Type: TEdit
      Tag = 2
      Left = 315
      Top = 110
      Width = 351
      Height = 31
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object SpDay: TSpinEdit
      Left = 609
      Top = 310
      Width = 59
      Height = 31
      AutoSize = False
      Ctl3D = True
      MaxValue = 900
      MinValue = 0
      ParentCtl3D = False
      TabOrder = 7
      Value = 0
      OnChange = SpDayChange
    end
  end
end
