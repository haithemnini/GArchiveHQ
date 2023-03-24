object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 297
  Width = 711
  object FD_Con: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    ConnectedStoredUsage = [auDesignTime]
    LoginPrompt = False
    Left = 46
    Top = 104
  end
  object DBDriver_Sqlite: TFDPhysSQLiteDriverLink
    Left = 86
    Top = 8
  end
  object Q_Destruction: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT * From Destruction'
      '')
    Left = 46
    Top = 209
  end
  object Q_Depot: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT * From Depot'
      '')
    Left = 211
    Top = 153
    object Q_DepotID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_DepotDate: TDateField
      FieldName = 'Date'
      Origin = 'Date'
    end
  end
  object Q_User: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT * From User'
      '')
    Left = 293
    Top = 209
  end
  object Q_Service: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT * From Service')
    Left = 294
    Top = 154
    object Q_ServiceID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_ServiceID_Direction: TIntegerField
      FieldName = 'ID_Direction'
      Origin = 'ID_Direction'
    end
    object Q_ServiceNom: TStringField
      FieldName = 'Nom'
      Origin = 'Nom'
      Size = 60
    end
    object Q_ServiceServiceName: TStringField
      FieldKind = fkLookup
      FieldName = 'ServiceName'
      LookupDataSet = Q_Direction
      LookupKeyFields = 'ID'
      LookupResultField = 'Nom'
      KeyFields = 'ID_Direction'
      Lookup = True
    end
  end
  object Q_Direction: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT * From Direction')
    Left = 128
    Top = 209
    object Q_DirectionID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_DirectionNom: TStringField
      FieldName = 'Nom'
      Origin = 'Nom'
      Size = 60
    end
  end
  object Q_Document: TFDQuery
    OnCalcFields = Q_DocumentCalcFields
    Connection = FD_Con
    SQL.Strings = (
      'SELECT *  From Document')
    Left = 211
    Top = 209
    object Q_DocumentID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object Q_DocumentID_Boite: TIntegerField
      FieldName = 'ID_Boite'
      Origin = 'ID_Boite'
      DisplayFormat = '0000'
    end
    object Q_DocumentID_Service: TIntegerField
      FieldName = 'ID_Service'
      Origin = 'ID_Service'
    end
    object Q_DocumentID_Destruction: TIntegerField
      FieldName = 'ID_Destruction'
      Origin = 'ID_Destruction'
    end
    object Q_DocumentTitre: TStringField
      FieldName = 'Titre'
      Origin = 'Titre'
      Size = 80
    end
    object Q_DocumentType: TStringField
      FieldName = 'Type'
      Origin = 'Type'
      Size = 60
    end
    object Q_DocumentDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
    object Q_DocumentDate_Min: TDateField
      FieldName = 'Date_Min'
      Origin = 'Date_Min'
    end
    object Q_DocumentDate_MAX: TDateField
      FieldName = 'Date_MAX'
      Origin = 'Date_MAX'
    end
    object Q_DocumentPic: TBlobField
      FieldName = 'Pic'
      Origin = 'Pic'
    end
    object Q_DocumentService_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Service_Name'
      LookupDataSet = Q_Service
      LookupKeyFields = 'ID'
      LookupResultField = 'Nom'
      KeyFields = 'ID_Service'
      Lookup = True
    end
    object Q_DocumentDestruction_Name: TStringField
      FieldKind = fkLookup
      FieldName = 'Destruction_Name'
      LookupDataSet = Q_Destruction
      LookupKeyFields = 'ID'
      LookupResultField = 'Type'
      KeyFields = 'ID_Destruction'
      Lookup = True
    end
    object Q_DocumentDuree_Conser: TStringField
      FieldName = 'Duree_Conser'
      Origin = 'Duree_Conser'
      Size = 3
    end
    object d: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TypeAct'
    end
  end
  object Q_Boite: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT * From Boite')
    Left = 129
    Top = 153
    object Q_BoiteID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object Q_BoiteID_Depot: TIntegerField
      FieldName = 'ID_Depot'
      Origin = 'ID_Depot'
    end
    object Q_BoiteID_Archivage: TIntegerField
      FieldName = 'ID_Archivage'
      Origin = 'ID_Archivage'
    end
    object Q_BoiteAnnee: TDateField
      FieldName = 'Annee'
      Origin = 'Annee'
    end
    object Q_BoiteDescription: TStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 100
    end
  end
  object Q_Archivage: TFDQuery
    Connection = FD_Con
    SQL.Strings = (
      'SELECT'
      '*'
      'From Archivage')
    Left = 47
    Top = 153
    object Q_ArchivageID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_ArchivageNom: TStringField
      FieldName = 'Nom'
      Origin = 'Nom'
      Size = 35
    end
    object Q_ArchivageClasser: TStringField
      FieldName = 'Classer'
      Origin = 'Classer'
      Size = 40
    end
  end
  object ds_Q_Destruction: TDataSource
    DataSet = Q_Destruction
    Left = 376
    Top = 209
  end
  object ds_Q_Archivage: TDataSource
    DataSet = Q_Archivage
    Left = 376
    Top = 153
  end
  object ds_Q_Boite: TDataSource
    DataSet = Q_Boite
    Left = 459
    Top = 153
  end
  object ds_Q_Depot: TDataSource
    DataSet = Q_Depot
    Left = 541
    Top = 153
  end
  object ds_Q_Service: TDataSource
    DataSet = Q_Service
    Left = 624
    Top = 154
  end
  object ds_Q_Direction: TDataSource
    DataSet = Q_Direction
    Left = 458
    Top = 209
  end
  object ds_Q_Document: TDataSource
    DataSet = Q_Document
    Left = 541
    Top = 209
  end
  object ds_Q_User: TDataSource
    DataSet = Q_User
    Left = 624
    Top = 209
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrAppWait
    Left = 21
    Top = 8
  end
  object GradiObj: TfrxGradientObject
    Left = 640
    Top = 16
  end
  object FrxNotif: TfrxReport
    Version = '6.6.15'
    DataSet = Db_FrxNotif
    DataSetName = 'FrxNotif'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1575#1604#1573#1601#1578#1585#1575#1590#1610
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44832.888995925900000000
    ReportOptions.LastChange = 44834.914713171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 640
    Top = 64
    Datasets = <
      item
        DataSet = Db_FrxNotif
        DataSetName = 'FrxNotif'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        ShiftMode = smDontShift
        Left = 0.640940000000000000
        Top = -5.338590000000000000
        Width = 719.360000000000000000
        Height = 37.723866070000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1575#1604#1580#1605#1607#1608#1585#1610#1577' '#1575#1604#1580#1586#1575#1574#1585#1610#1577' '#1575#1604#1583#1610#1605#1602#1585#1575#1591#1610#1577' '#1575#1604#1588#1593#1576#1610#1577)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 0.640940000000000000
        Top = 24.281880000000000000
        Width = 719.360000000000000000
        Height = 41.503396070000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1608#1586#1575#1585#1577' '#1575#1604#1578#1603#1608#1610#1606' '#1608#1575#1604#1578#1593#1604#1610#1605' '#1575#1604#1605#1607#1606#1610#1610#1606)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 403.188930000000000000
        Top = 88.620470000000000000
        Width = 305.212010000000000000
        Height = 114.708720000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #1575#1604#1605#1593#1607#1583' '#1575#1604#1608#1591#1606#1610' '#1575#1604#1605#1578#1582#1589#1589' '#1601#1610' '#1575#1604#1578#1603#1608#1610#1606' '#1575#1604#1605#1607#1606#1610
          '- '#1575#1604#1588#1607#1610#1583' '#1605#1581#1605#1583' '#1576#1608#1602#1585#1577' - '#1587#1603#1610#1603#1583#1577' '
          #1575#1604#1605#1583#1610#1585#1610#1577'  '#1575#1604#1601#1585#1593#1610#1577' '#1604#1604#1573#1583#1575#1585#1577' '#1608#1575#1604#1605#1575#1604#1610#1577
          #1605#1589#1604#1581#1577' '#1575#1604#1605#1581#1575#1587#1576#1610#1577' '#1575#1604#1608#1587#1575#1574#1604' '#1575#1604#1593#1575#1605#1577' '#1608#1575#1604#1571#1585#1588#1610#1601)
        ParentFont = False
        VAlign = vaCenter
      end
      object Gradient1: TfrxGradientView
        AllowVectorExport = True
        Left = 182.738745000000000000
        Top = 245.677180000000000000
        Width = 297.600000000000000000
        Height = 33.600000000000000000
        BeginColor = clGray
        EndColor = clWhite
        Style = gsVertical
        Frame.Typ = []
        Color = 12566463
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 201.417805000000000000
        Top = 232.559060000000000000
        Width = 279.360000000000000000
        Height = 44.938590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1573#1588#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1593#1575#1585)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 646.580150000000000000
        Top = 359.275296960000000000
        Width = 64.153320000000000000
        Height = 35.985276070000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          ': '#1576#1578#1575#1585#1610#1582)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 561.464750000000000000
        Top = 490.348823040000000000
        Width = 149.268720000000000000
        Height = 36.359060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #1602#1583' '#1578#1580#1575#1608#1586#1578' '#1605#1583#1578#1607#1575' :')
        ParentFont = False
        RTLReading = True
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Align = baRight
        AllowVectorExport = True
        Left = 36.986630000000000000
        Top = 558.943290000000000000
        Width = 681.124070000000000000
        Height = 59.036240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          
            #1608#1593#1604#1610#1607' '#1601#1573#1606' '#1575#1604#1605#1591#1604#1608#1576' '#1605#1606#1603#1605' '#1573#1593#1575#1583#1577' '#1607#1584#1607' '#1575#1604#1608#1579#1575#1574#1602' '#1601#1610' '#1571#1602#1585#1576' '#1608#1602#1578' '#1605#1605#1603#1606' '#1608#1601#1610' '#1605#1604 +
            #1575' '#1581#1575#1604#1577' '#1593#1583#1605' '#1575#1587#1578#1580#1575#1576#1578#1603#1605' '#1604#1605#1590#1605#1608#1606' '#1607#1584#1575' '#1575#1604#1573#1588#1593#1575#1585' '#1587#1608#1601' '#1606#1590#1591#1585' '#1573#1604#1609' '#1575#1578#1582#1575#1584' '#1601#1610' '#1575#1604 +
            #1571#1589#1604' '#1575#1604#1573#1580#1585#1575#1569#1575#1578' '#1575#1604#1604#1575#1586#1605#1577)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo19: TfrxMemoView
        AllowVectorExport = True
        Left = 107.922820000000000000
        Top = 814.286580000000000000
        Width = 188.878120000000000000
        Height = 51.477180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = [fsUnderline]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1575#1605#1590#1575#1569' '#1605#1587#1572#1608#1604' '#1575#1604#1571#1585#1588#1610#1600#1601)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        AllowVectorExport = True
        Left = 197.288250000000000000
        Top = 99.708720000000000000
        Width = 38.830810000000000000
        Height = 31.559060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #1585#1602#1605' : ')
        ParentFont = False
        RTLReading = True
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        AllowVectorExport = True
        Left = 124.724490000000000000
        Top = 294.400000000000000000
        Width = 552.317700000000000000
        Height = 41.159060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #1573#1606' '#1605#1587#1572#1608#1604' '#1575#1604#1571#1585#1588#1610#1601' '#1610#1588#1593#1585' '#1603#1605' '#1576#1571#1606' '#1575#1604#1608#1579#1575#1574#1602' '#1575#1604#1578#1610' '#1575#1587#1578#1604#1605#1578#1605#1608#1607#1575' '#1605#1606' '#1605#1603#1578#1576#1606#1575)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo30: TfrxMemoView
        IndexTag = 1
        Align = baRight
        AllowVectorExport = True
        Left = 12.288040000000000000
        Top = 100.267780000000000000
        Width = 46.563760000000000000
        Height = 31.559060000000000000
        DisplayFormat.FormatStr = 'yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo32: TfrxMemoView
        IndexTag = 1
        Align = baRight
        AllowVectorExport = True
        Left = 58.851800000000000000
        Top = 99.708720000000000000
        Width = 9.600000000000000000
        Height = 31.559060000000000000
        DisplayFormat.FormatStr = 'yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '/')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo33: TfrxMemoView
        AllowVectorExport = True
        Left = 205.697650000000000000
        Top = 139.480000000000000000
        Width = 116.160000000000000000
        Height = 36.359060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          ': '#1573#1604#1609' '#1575#1604#1587#1610#1600#1600#1600#1600#1600#1600#1600#1583' ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memonom: TfrxMemoView
        AllowVectorExport = True
        Left = 11.338590000000000000
        Top = 169.020470000000000000
        Width = 298.635510000000000000
        Height = 40.138590000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '...................................................')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        AllowVectorExport = True
        Left = 582.328140000000000000
        Top = 423.850650000000000000
        Width = 128.405330000000000000
        Height = 35.985276070000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #1608#1605#1608#1590#1608#1593#1607#1600#1575'  :')
        ParentFont = False
        RTLReading = True
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        IndexTag = 1
        Align = baRight
        AllowVectorExport = True
        Left = 526.239580000000000000
        Top = 492.323130000000000000
        Width = 35.225170000000000000
        Height = 35.338590000000000000
        DisplayFormat.FormatStr = '00'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[FrxNotif."Duree_Conser"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Align = baRight
        AllowVectorExport = True
        Left = 0.379210000000000000
        Top = 424.291590000000000000
        Width = 581.948930000000000000
        Height = 35.985276070000000000
        DataSet = Db_FrxNotif
        DataSetName = 'FrxNotif'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[FrxNotif."Titre"]')
        ParentFont = False
        RTLReading = True
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        IndexTag = 1
        Align = baRight
        AllowVectorExport = True
        Left = 380.803650000000000000
        Top = 360.039580000000000000
        Width = 265.776500000000000000
        Height = 35.338590000000000000
        DisplayFormat.FormatStr = 'yyyy/dd/mm'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '  [FrxNotif."Date_Max"]  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo21: TfrxMemoView
        Align = baRight
        AllowVectorExport = True
        Left = 68.451800000000000000
        Top = 99.708720000000000000
        Width = 72.846580000000000000
        Height = 31.559060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #1605'.'#1608'.'#1605'.'#1578'.'#1605)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo22: TfrxMemoView
        Align = baRight
        AllowVectorExport = True
        Left = 150.898380000000000000
        Top = 102.708720000000000000
        Width = 46.389870000000000000
        Height = 31.559060000000000000
        DisplayFormat.FormatStr = '0000'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[FrxNotif."ID"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo25: TfrxMemoView
        IndexTag = 1
        Align = baRight
        AllowVectorExport = True
        Left = 141.298380000000000000
        Top = 99.708720000000000000
        Width = 9.600000000000000000
        Height = 31.559060000000000000
        DisplayFormat.FormatStr = 'yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '/')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Align = baRight
        AllowVectorExport = True
        Left = 388.309450000000000000
        Top = 488.543600000000000000
        Width = 137.930130000000000000
        Height = 36.359060000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          #1610#1608#1605#1575)
        ParentFont = False
        RTLReading = True
        VAlign = vaCenter
      end
      object Date: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Khalid Art bold'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object Db_FrxNotif: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'FrxNotif'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_Boite=ID_Boite'
      'ID_Service=ID_Service'
      'ID_Destruction=ID_Destruction'
      'Titre=Titre'
      'Type=Type'
      'Description=Description'
      'Date_Min=Date_Min'
      'Date_MAX=Date_MAX'
      'Pic=Pic'
      'Service_Name=Service_Name'
      'Destruction_Name=Destruction_Name'
      'Duree_Conser=Duree_Conser')
    DataSet = Q_Document
    BCDToCurrency = False
    Left = 576
    Top = 24
  end
  object Frx_Pic: TfrxReport
    Version = '6.6.15'
    DataSet = Db_FrxNotif
    DataSetName = 'FrxNotif'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1575#1604#1573#1601#1578#1585#1575#1590#1610
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44832.888995925900000000
    ReportOptions.LastChange = 44834.706150138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 72
    Datasets = <
      item
        DataSet = Db_FrxNotif
        DataSetName = 'FrxNotif'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Picture1: TfrxPictureView
        Align = baClient
        AllowVectorExport = True
        Width = 718.110700000000000000
        Height = 1046.929810000000000000
        DataField = 'Pic'
        DataSet = Db_FrxNotif
        DataSetName = 'FrxNotif'
        Frame.Typ = []
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
end
