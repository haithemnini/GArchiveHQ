unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxGradient, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
   {$REGION ''}
    FD_Con: TFDConnection;
    DBDriver_Sqlite: TFDPhysSQLiteDriverLink;
    Q_Destruction: TFDQuery;
    Q_Depot: TFDQuery;
    Q_User: TFDQuery;
    Q_Service: TFDQuery;
    Q_Direction: TFDQuery;
    Q_Document: TFDQuery;
    Q_Boite: TFDQuery;
    Q_Archivage: TFDQuery;
    ds_Q_Destruction: TDataSource;
    ds_Q_Archivage: TDataSource;
    ds_Q_Boite: TDataSource;
    ds_Q_Depot: TDataSource;
    ds_Q_Service: TDataSource;
    ds_Q_Direction: TDataSource;
    ds_Q_Document: TDataSource;
    ds_Q_User: TDataSource;
    WaitCursor: TFDGUIxWaitCursor;
    Q_DocumentID: TFDAutoIncField;
    Q_DocumentID_Boite: TIntegerField;
    Q_DocumentID_Service: TIntegerField;
    Q_DocumentID_Destruction: TIntegerField;
    Q_DocumentTitre: TStringField;
    Q_DocumentType: TStringField;
    Q_DocumentDescription: TStringField;
    Q_DocumentDate_Min: TDateField;
    Q_DocumentDate_MAX: TDateField;
    Q_DocumentPic: TBlobField;
    Q_DocumentService_Name: TStringField;
    Q_DocumentDestruction_Name: TStringField;
    Q_DocumentDuree_Conser: TStringField;
    Q_BoiteID: TFDAutoIncField;
    Q_BoiteID_Depot: TIntegerField;
    Q_BoiteID_Archivage: TIntegerField;
    Q_BoiteAnnee: TDateField;
    Q_BoiteDescription: TStringField;
    Q_DepotID: TFDAutoIncField;
    Q_DepotDate: TDateField;
    Q_ArchivageID: TFDAutoIncField;
    Q_ArchivageNom: TStringField;
    Q_ArchivageClasser: TStringField;
    Q_DirectionID: TFDAutoIncField;
    Q_DirectionNom: TStringField;
    Q_ServiceID: TIntegerField;
    Q_ServiceID_Direction: TIntegerField;
    Q_ServiceNom: TStringField;
    Q_ServiceServiceName: TStringField;
    GradiObj: TfrxGradientObject;
    FrxNotif: TfrxReport;
    Db_FrxNotif: TfrxDBDataset;
    d: TStringField;
    Frx_Pic: TfrxReport;
    procedure DataModuleCreate(Sender: TObject);
    procedure Q_DocumentCalcFields(DataSet: TDataSet);
    {$ENDREGION}
  private
    { Private declarations }
    procedure Init_DataConnection;
    procedure Get_Query;
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Dialogs,
  Vcl.Forms,
  API.Consts,
  UI_Commun,
  System.DateUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

const
   DataFile = 'DB\Gestion_ ArchMah.db';

var
   DataPath: String;


{ TDME }

procedure Set_DataPath;
begin
  DataPath := ExtractFilePath(Application.ExeName) + DataFile
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FD_Con.ConnectedStoredUsage := [auDesignTime];
  Init_DataConnection;
end;

procedure TDM.Get_Query;
begin
  try
    Q_Archivage.Open ;
    Q_Boite.Open;
    Q_Depot.Open;
    Q_Service.Open;
    Q_Destruction.Open;
    Q_Direction.Open;
    Q_Document.Open;
    Q_User.Open;
  finally
  end;
end;

procedure TDM.Init_DataConnection;
begin
   if not FileExists(DataPath) then begin
    ShowMessage(Msg_DataBase_NotFound + DataPath);
    Application.Terminate;
  end;

  //----- << Data Base >> -----//

  with FD_Con do begin
    Connected := False;
    Params.Add('DriverID=SQLite');
    Params.Add('Database='+ DataPath);
    Params.append('OpenMode=CrateUTF8');
    Params.Values['Encrypt'] := 'aes-256';
    Params.Password := '1005';
  end;

    FD_Con.Connected := True;
    Get_Query;
end;


// Calculated Field TypeAct
procedure TDM.Q_DocumentCalcFields(DataSet: TDataSet);
begin  DateNow := Now;

  DaysDiff := DaysBetween(Q_Document.FieldByName('Date_MAX').AsDateTime , DateNow);
  if DaysDiff = 0 then   Q_Document.FieldByName('TypeAct').AsString := '«‰ Â '
  else             Q_Document.FieldByName('TypeAct').AsString := '„“«·  ”«—Ì…'

end;

initialization
  Set_DataPath;


end.
