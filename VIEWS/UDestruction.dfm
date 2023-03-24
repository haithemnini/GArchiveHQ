object frm_Destruction: Tfrm_Destruction
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frm_Destruction'
  ClientHeight = 296
  ClientWidth = 638
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PNL_TOP: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 632
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PNL_TOP'
    TabOrder = 0
    object edt_Search: TEdit
      Left = 0
      Top = 0
      Width = 445
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
    end
    object gro_Seah: TGroupBox
      AlignWithMargins = True
      Left = 448
      Top = 0
      Width = 184
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
      object Rb_Date: TRadioButton
        Left = 20
        Top = 7
        Width = 69
        Height = 25
        Cursor = crHandPoint
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Rb_TypeClick
      end
      object Rb_Type: TRadioButton
        Left = 112
        Top = 7
        Width = 59
        Height = 25
        Cursor = crHandPoint
        Caption = #1606#1608#1593
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = Rb_TypeClick
      end
    end
  end
  object dbgrd_Destruction: TDBGrid
    Left = 0
    Top = 46
    Width = 638
    Height = 199
    Align = alClient
    BiDiMode = bdRightToLeft
    DataSource = DM.ds_Q_Destruction
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgrd_DestructionDrawColumnCell
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
        Width = 40
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
        Visible = False
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
        Title.Caption = #1606#1608#1593' '#1575#1604#1593#1605#1604#1610#1577
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 290
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arabic UI Display Medium'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arabic UI Display Medium'
        Title.Font.Style = []
        Width = 253
        Visible = True
      end>
  end
  object Relative_Bottom: TRelativePanel
    AlignWithMargins = True
    Left = 3
    Top = 249
    Width = 632
    Height = 40
    Margins.Top = 4
    Margins.Bottom = 7
    ControlCollection = <
      item
        Control = btn_supp
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        LeftOf = btn_Edit
      end
      item
        Control = btn_Edit
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = True
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
      end
      item
        Control = btn_add
        AlignBottomWithPanel = True
        AlignHorizontalCenterWithPanel = False
        AlignLeftWithPanel = False
        AlignRightWithPanel = False
        AlignTopWithPanel = False
        AlignVerticalCenterWithPanel = True
        RightOf = btn_Edit
      end>
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      632
      40)
    object btn_supp: TBitBtn
      AlignWithMargins = True
      Left = 55
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
      TabOrder = 0
      OnClick = btn_suppClick
    end
    object btn_Edit: TBitBtn
      AlignWithMargins = True
      Left = 231
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
    object btn_add: TBitBtn
      AlignWithMargins = True
      Left = 407
      Top = 0
      Width = 170
      Height = 40
      Cursor = crHandPoint
      Action = DM_API.Act_Destruction_Add
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
      TabOrder = 2
    end
  end
end
