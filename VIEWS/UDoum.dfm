object frm_Doum: Tfrm_Doum
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frm_Doum'
  ClientHeight = 729
  ClientWidth = 1322
  Color = clWhite
  Constraints.MinHeight = 768
  Constraints.MinWidth = 1024
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arabic UI Display Bold'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Relative_Bottom: TRelativePanel
    AlignWithMargins = True
    Left = 0
    Top = 682
    Width = 1322
    Height = 40
    Margins.Left = 0
    Margins.Top = 4
    Margins.Right = 0
    Margins.Bottom = 7
    ControlCollection = <
      item
        Control = btn_add
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        RightOf = btn_Edit
      end
      item
        Control = btn_Edit
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        RightOf = btn_Ref
      end
      item
        Control = btn_Ref
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = btn_supp
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        LeftOf = btn_Ref
      end
      item
        Control = btn_suppAll
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        LeftOf = btn_supp
      end>
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1454
    DesignSize = (
      1322
      40)
    object btn_add: TBitBtn
      AlignWithMargins = True
      Left = 928
      Top = 0
      Width = 170
      Height = 40
      Cursor = crHandPoint
      Action = DM_API.Act_Doum_Add
      Anchors = []
      BiDiMode = bdRightToLeft
      Caption = #1580#1583#1610#1583
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
        00000000000000000000000000000D19032C224006742D56089F2C55079F1F3C
        05730B16022B0000000000000000000000000000000000000000000000000000
        0000000000000408010D325D0BA14E9011FE4C8E0FFF4A8C0EFF488A0DFF4688
        0BFF45840AFE2A52069F0306000C000000000000000000000000000000000000
        00000408010D437B11CF519513FF4F9312FF4E9111FF4C8E0FFF4A8C0EFF488A
        0DFF46880BFF45850AFF366A07CE0306000C0000000000000000000000000000
        000037630FA2559A16FF539815FF519513FF4F9312FF93B773FF92B571FF4A8C
        0EFF488A0DFF46880BFF45850AFF2A51069E0000000000000000000000000E19
        0428579D18FD579C17FF559A16FF539815FF519513FFC2D6AFFFC1D5AFFF4C8E
        0FFF4A8C0EFF488A0DFF46880BFF44840AFD0A14012600000000000000002C4F
        0D7B5AA11AFF589E18FF579C17FF559A16FF539815FFC2D6B0FFC2D6AFFF4E91
        11FF4C8E0FFF4A8C0EFF488A0DFF46880BFF203F057800000000000000003B67
        119F5CA31BFF5AA11AFF99BE77FFC4D9B1FFC4D8B1FFEBF2E5FFEBF1E5FFC2D6
        AFFFC1D5AFFF92B571FF4A8C0EFF488A0DFF2B54079E00000000000000003C68
        139F5EA51CFF5CA31BFF9EC27DFFD0E1C1FFD0E0C1FFEFF4EAFFEFF4EAFFCEDE
        C0FFCEDEBFFF98BA77FF4C8E0FFF4A8C0EFF2D56089E00000000000000002F53
        0F7C60A71EFF5EA51CFF5CA31BFF5AA11AFF589E18FFC4D8B1FFC3D8B1FF5398
        15FF519513FF4F9312FF4E9111FF4C8E0FFF234207790000000000000000111E
        062D61A91FFE60A71EFF5EA51CFF5CA31BFF5AA11AFFC4D9B1FFC4D8B1FF559A
        16FF539815FF519513FF4F9312FF4E9011FE0D18032B00000000000000000000
        0000437416AC61AA1FFF60A71EFF5EA51CFF5CA31BFF9EC27DFF9CC07BFF579C
        17FF559A16FF539815FF519513FF34610CA80000000000000000000000000000
        0000060B0210518D1AD161AA1FFF60A71EFF5EA51CFF5CA31BFF5AA11AFF589E
        18FF579C17FF559A16FF447C11D00509010F0000000000000000000000000000
        000000000000060B0210437516AD61AA1FFF60A71EFF5EA51CFF5CA31BFF5AA1
        1AFF589D18FE3A690FAB0509010F000000000000000000000000000000000000
        00000000000000000000000000001220062F315710823E6B13A43C6A12A42F52
        0E81101D052E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object btn_Edit: TBitBtn
      AlignWithMargins = True
      Left = 752
      Top = 0
      Width = 170
      Height = 40
      Cursor = crHandPoint
      Anchors = []
      BiDiMode = bdRightToLeft
      Caption = #1578#1593#1583#1610#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001A1A
        1A26242424370000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002B2B
        2B3EBCBCBCFFB3CCD3E11A5F7077000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000BCD2D8E521C5EDFF01BCEAFC004252580000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000195C6D7501BEECFE00BEEDFF00BDECFE004C5F6600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000050646C00BDECFE00BEEDFF00BCEAFC00425258000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000050646C00BDECFE00BEEDFF00BDEBFD004859600000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000051656D00BDECFE00BEEDFF00BDEBFD0048
        5960000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000052666E00BDECFE00BEEDFF00BD
        EBFD00485A610000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000053676F00BDECFE00BE
        EDFF00BDEBFD00485A6100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000004E626900BD
        ECFE00BEEDFF5399ABC256565666000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000059
        707850A1B5CBD7D7D7FDD7D7D7FD48484D5B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005B5B5B6ADBDBDBFEB5B4B9D76253BBEB1310283300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000504F54626253BDED3D3280A30101020300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000130F2732010102030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      OnClick = btn_EditClick
    end
    object btn_Ref: TBitBtn
      AlignWithMargins = True
      Left = 576
      Top = 0
      Width = 170
      Height = 40
      Cursor = crHandPoint
      Anchors = []
      BiDiMode = bdRightToLeft
      Caption = #1578#1581#1583#1610#1579
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
        00000000000000000000000000003E2C0848966A14B2B8831AD8B9831ADA9768
        13B83C29074A0000000000000000000000000000000000000000000000000000
        000000000000150F0219C08A1CDBE3A926FFDFA323FFE3A625FFEAB029FFE9AE
        27FFE8AD26FFBC8318DE150F021B000000000000000000000000000000000000
        00000C07000FA86503D1C27000FFAE6100F0703C00A24725006D532F0377A66F
        13CEE3A724FEE7AA24FFD5961DF6150E021C0000000000000000000000000000
        0000855000A5C97600FF7F4900A7110900170000000000000000000000000000
        00003321053FD89A1EF8E6A822FFB97E15DE0000000000000000000000000905
        000BCA7900FA864F00AA02010002000000000000000000000000000000000000
        00000000000035220542E4A621FFE6A521FF67470C773727073E000000000000
        00001D1100240302000400000000000000000000000000000000000000000000
        0000000000003628083CCE941EE8E5A520FFE5A31FFF3525073B00000000211A
        07233F310D430000000000000000000000000000000000000000000000000000
        00000000000034260839B2811AC5E5A520FFA57616B80000000000000000AD88
        24B9EEBA30FFB68D23C433270A37000000000000000000000000000000000000
        0000000000000000000000000000402E09472118042500000000382C0C3CEEBB
        31FFEEB92FFFD4A328E8382C0B3D000000000000000000000000000000000000
        00000000000000000000030200041D12002400000000000000003A2E0C3E6B51
        1479EDB82FFFEBB42CFF3222063F000000000000000000000000000000000000
        00000000000002010003895100ABCA7900F90704000900000000000000000000
        0000C08C1FE0ECB72DFFDCA325F83122063D0000000000000000000000000000
        00000E080013834C00A8CC7900FF844F00A20000000000000000000000000000
        00001811031EDAA225F7ECB42CFFE6AD27FEA67013CD4C2B036D3E20005D6738
        0092AD6200EAC77500FFAE6902D70C07000F0000000000000000000000000000
        000000000000160F031CC08A1DDFEBB22AFFEAB029FFE8AE27FFDC9C1FFFD996
        1BFFE09F1DFFC28615E01912021E000000000000000000000000000000000000
        00000000000000000000000000003E2B084C996913B8BB8319DEBA8218DD9D6C
        12BA452D06520000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnClick = btn_RefClick
    end
    object btn_supp: TBitBtn
      AlignWithMargins = True
      Left = 400
      Top = 0
      Width = 170
      Height = 40
      Cursor = crHandPoint
      Anchors = []
      BiDiMode = bdRightToLeft
      Caption = #1581#1583#1601
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
      TabOrder = 3
      OnClick = btn_suppClick
    end
    object btn_suppAll: TBitBtn
      AlignWithMargins = True
      Left = 224
      Top = 0
      Width = 170
      Height = 40
      Cursor = crHandPoint
      Anchors = []
      BiDiMode = bdRightToLeft
      Caption = #1581#1583#1601' '#1575#1604#1603#1604
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
      TabOrder = 4
      OnClick = btn_suppAllClick
    end
  end
  object PNL_TOP: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1316
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PNL_TOP'
    TabOrder = 1
    ExplicitWidth = 1448
    object edt_Search: TEdit
      Left = 161
      Top = 0
      Width = 639
      Height = 40
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = '....'#1575#1604#1576#1581#1579
      OnChange = edt_SearchChange
      ExplicitWidth = 771
    end
    object gro_Seah: TGroupBox
      AlignWithMargins = True
      Left = 803
      Top = 0
      Width = 513
      Height = 40
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      BiDiMode = bdRightToLeft
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = '@Adobe Fan Heiti Std B'
      Font.Style = []
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 935
      object Rb_Date_Min: TRadioButton
        Left = 268
        Top = 7
        Width = 98
        Height = 25
        Cursor = crHandPoint
        Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1583#1606#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Rb_TitreClick
      end
      object Rb_Duree_Conser: TRadioButton
        Left = 30
        Top = 7
        Width = 101
        Height = 25
        Cursor = crHandPoint
        Caption = #1605#1583#1577' '#1575#1604#1581#1601#1592
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Rb_TitreClick
      end
      object Rb_Date_MAX: TRadioButton
        Left = 147
        Top = 7
        Width = 113
        Height = 25
        Cursor = crHandPoint
        Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1602#1589#1609
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Rb_TitreClick
      end
      object Rb_Titre: TRadioButton
        Left = 393
        Top = 7
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Caption = #1573#1587#1605' '#1575#1604#1608#1579#1610#1602#1577
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
        OnClick = Rb_TitreClick
      end
    end
    object btn_Menu: TButton
      AlignWithMargins = True
      Left = 0
      Top = 1
      Width = 161
      Height = 38
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      BiDiMode = bdRightToLeft
      Caption = #1582#1610#1575#1585#1575#1578' ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arabic UI Display Medium'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Style = bsSplitButton
      TabOrder = 2
      OnClick = btn_MenuClick
    end
  end
  object dbgrid_DOUM: TDBGrid
    Left = 0
    Top = 46
    Width = 1322
    Height = 632
    Align = alClient
    BiDiMode = bdRightToLeft
    Constraints.MinHeight = 632
    Constraints.MinWidth = 1322
    DataSource = DM.ds_Q_Document
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrid_DOUMDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 43
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1578#1587#1580#1610#1604
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Titre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1608#1579#1610#1602#1577
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 166
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1608#1589#1601' '#1575#1604#1608#1579#1610#1602#1577
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 153
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1575#1604#1608#1579#1610#1602#1577
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 94
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Service_Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1605#1583#1610#1585#1610#1577
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 111
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_Boite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1585#1602#1605' '#1575#1604#1593#1604#1576#1577
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 77
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Destruction_Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1575#1604#1573#1578#1604#1575#1601
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date_Min'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1583#1606#1610
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date_MAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1604#1575#1602#1589#1609
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Duree_Conser'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1605#1583#1577' '#1575#1604#1581#1601#1592' '
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TypeAct'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1575#1604#1575#1580#1585#1575#1569
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end>
  end
end
