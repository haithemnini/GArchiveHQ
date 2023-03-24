unit UDM_API;

interface

uses
 {$REGION ''}
  System.Classes,
  Vcl.ExtCtrls,
  FireDAC.Stan.Param,
  Vcl.Forms,
  System.Actions,
  Vcl.ActnList,
  Vcl.Dialogs,
  Vcl.ExtDlgs,
  Data.DB,
  Vcl.Graphics,
  Vcl.StdActns,
  System.UITypes,
  FireDAC.Comp.Client,
  Vcl.DBGrids,
  Vcl.Grids,
  System.Types,
  sLabel,
  Vcl.ComCtrls,
  Vcl.Samples.Spin,
  System.DateUtils, Vcl.Menus;
 {$ENDREGION}

type
  TDM_API = class(TDataModule)
   {$REGION ''}
    Action_APP: TActionList;
    Act_Doum_Add: TAction;
    Act_Doum_Show: TAction;
    Act_Doum_Edit: TAction;
    FileOpenDlg: TFileOpenDialog;
    Act_Destruction_Show: TAction;
    Act_Destruction_Add: TAction;
    Act_Destruction_Edit: TAction;
    DateTime: TTimer;
    Act_Boite_Show: TAction;
    Act_Boite_Add: TAction;
    Act_Boite_Edit: TAction;
    Act_Depot_Show: TAction;
    Act_Depot_Add: TAction;
    Act_Depot_Edit: TAction;
    Act_Archivage_Show: TAction;
    Act_Archivage_Add: TAction;
    Act_Archivage_Edit: TAction;
    Act_Direction_Show: TAction;
    Act_Direction_Add: TAction;
    Act_Direction_Edit: TAction;
    Act_Service_Show: TAction;
    Act_Service_Add: TAction;
    Act_Service_Edit: TAction;
    Act_User: TAction;
    Pm_Menu: TPopupMenu;
    MenuItem1: TMenuItem;
    N2: TMenuItem;
    Action_Menu: TActionList;
    Act_Pic: TAction;
    Act_Notif: TAction;
    Act_InfoDev: TAction;
   {$ENDREGION}
    procedure Act_Doum_AddExecute(Sender: TObject);
    procedure Act_Doum_ShowExecute(Sender: TObject);
    procedure Act_Doum_EditExecute(Sender: TObject);
    procedure Act_Destruction_ShowExecute(Sender: TObject);
    procedure Act_Destruction_AddExecute(Sender: TObject);
    procedure Act_Destruction_EditExecute(Sender: TObject);
    procedure Act_Boite_ShowExecute(Sender: TObject);
    procedure Act_Boite_AddExecute(Sender: TObject);
    procedure Act_Boite_EditExecute(Sender: TObject);
    procedure Act_Depot_ShowExecute(Sender: TObject);
    procedure Act_Depot_AddExecute(Sender: TObject);
    procedure Act_Depot_EditExecute(Sender: TObject);
    procedure Act_Archivage_ShowExecute(Sender: TObject);
    procedure Act_Archivage_AddExecute(Sender: TObject);
    procedure Act_Archivage_EditExecute(Sender: TObject);
    procedure Act_Direction_AddExecute(Sender: TObject);
    procedure Act_Direction_ShowExecute(Sender: TObject);
    procedure Act_Direction_EditExecute(Sender: TObject);
    procedure Act_Service_ShowExecute(Sender: TObject);
    procedure Act_Service_AddExecute(Sender: TObject);
    procedure Act_Service_EditExecute(Sender: TObject);
    procedure Act_UserExecute(Sender: TObject);
    procedure DateTimeTimer(Sender: TObject);
    procedure Pm_MenuPopup(Sender: TObject);
    procedure Act_PicExecute(Sender: TObject);
    procedure Act_NotifExecute(Sender: TObject);
    procedure Act_InfoDevExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function GetView(aSubClassView: TFormClass; aShowModal: Boolean = True): TModalResult;
  function Get_Picture(FileOpenDlg: TFileOpenDialog; IMG: TImage): Boolean;
  function Login(aUserName, aPassword: string): Boolean;
  //--
  function AssignPicture(aQuery:TFDQuery ;aFieID: Integer): Boolean ;
  function CheckNotif(aQuery:TFDQuery ;aFieID: Integer): Boolean ;
  //--
  procedure Get_User(aUser:TsLabel);
  procedure Filterr(Dataset: TDataSet; const FieldName, SearchTerm: string);
  procedure Get_Daye(aDate:TDateTimePicker;aDateNow:TDateTimePicker;SpDay:TSpinEdit);
  procedure Get_DateTime(aCaption:TsLabel);
  //--
  procedure DeleteRecord(aQuery: TFDQuery);
  procedure RefreshQuery(aQuery: TFDQuery);
  procedure DeleteAllRecord(aQuery: TFDQuery);

var
  DM_API: TDM_API;


implementation

uses
{$REGION ''}
  UDM,
  API.Consts,
  Winapi.Windows,
//--
  UMain,
  UDoum,
  UDoum_Add,
  UDoum_Edit,
  UDestruction,
  UDestruction_Add,
  UDestruction_Edit,
  Vcl.Controls,
  UBoite,
  UBoite_Add,
  UBoite_Edit,
  UDepot,
  UDepot_Add,
  UDepot_Edit,
  UArchivage,
  UArchivage_Add,
  UArchivage_Edit,
  UDirection,
  UDirection_Add,
  UDirection_Edit,
  UService,
  UService_Add,
  UService_Edit,
  User_Pass, UI_Commun, System.SysUtils, UInfoDev;
{$ENDREGION}

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
//--- Filterr ---//
procedure Filterr(Dataset: TDataSet; const FieldName, SearchTerm: string);
begin
  Assert(Assigned(Dataset), 'No dataset is assigned');

  if SearchTerm = '' then
    Dataset.Filtered := False
  else
  begin
    Dataset.Filter := FieldName + ' LIKE ' + QuotedStr('%' + SearchTerm + '%');
    Dataset.Filtered := True;
  end;
end;

//---- DateTime & User --//
procedure TDM_API.DateTimeTimer(Sender: TObject);
begin
   Get_DateTime(frm_Main.Caption_DateTime);
end;
procedure Get_DateTime(aCaption:TsLabel);
begin
  aCaption.Caption := FormatDateTime('dddd" , "dd" ["mmmm"] "yyyy    ', now) + FormatDateTime('hh:mm:ss', now);
end;
procedure Get_User(aUser:TsLabel);
begin
   aUser.Caption := LoggedInUser;
end;

//----  DateDiff --//
procedure Get_Daye(aDate:TDateTimePicker;aDateNow:TDateTimePicker;SpDay:TSpinEdit);
begin
    aDate.DateTime := IncDay(aDateNow.Date,SpDay.Value);
end;

//----  Function  --//
function GetView(aSubClassView: TFormClass; aShowModal: Boolean = True): TModalResult;
begin
  with aSubClassView.Create(nil) do
  try
    if aShowModal then
      Result := ShowModal;
  finally
    if aShowModal then
      Free;
  end;
  //Result := mrok;
end;

function Login(aUserName, aPassword: string): Boolean;
var    LoggedIn: Boolean;
begin
  LoggedIn := False;
  LoggedInUser := '';
  try

    DM.Q_User.Sql.Text := 'SELECT * FROM User WHERE Name =:USERNAME AND Pass =:PASSWORD ';
    DM.Q_User.ParamByName('USERNAME').AsString := aUserName;
    DM.Q_User.ParamByName('PASSWORD').AsString := aPassword;
    DM.Q_User.Open;

    LoggedIn := DM.Q_User.RecordCount > 0;

  finally
    if LoggedIn then begin
      LoggedInUser := aUserName;
    end;
  end;
   Result := LoggedIn;
end;

//--
function AssignPicture(aQuery:TFDQuery ;aFieID: Integer): Boolean ;
begin
  Result := False;
 if aQuery.Locate('ID',aFieID,[])then
  begin
    Result := aQuery.FieldByName('Pic').IsNull;
  end;
end;
function CheckNotif(aQuery:TFDQuery ;aFieID: Integer): Boolean ;
begin
  DateNow := Now;  Result := False;
 if aQuery.Locate('ID',aFieID,[])then
  begin
   DaysDiff := DaysBetween(aQuery['Date_MAX'],DateNow);
   if DaysDiff = 0 then    Result := True;
  end;
end;
//---

function Get_Picture(FileOpenDlg: TFileOpenDialog; IMG: TImage): Boolean;
begin
  Result := False;
  if FileOpenDlg.Execute then
  begin
    if FileOpenDlg.FileName <> '' then
    begin
      IMG.Picture.Graphic := nil;
      IMG.Picture.LoadFromFile(FileOpenDlg.FileName);
      Result := True;
    end;
  end else  Abort;
end;


procedure TDM_API.Pm_MenuPopup(Sender: TObject);
begin
  Act_Pic.Enabled   := not AssignPicture(DM.Q_Document,FieID);
  Act_Notif.Enabled := CheckNotif(DM.Q_Document,FieID);
end;

procedure TDM_API.Act_NotifExecute(Sender: TObject);
begin
  DM.FrxNotif.ShowReport();
end;

procedure TDM_API.Act_PicExecute(Sender: TObject);
begin
  DM.Frx_Pic.ShowReport();
end;

//--- User ---//
procedure TDM_API.Act_UserExecute(Sender: TObject);
begin
    GetView(Tfrm_UserPass);
end;

//--- InfoDev ---//
procedure TDM_API.Act_InfoDevExecute(Sender: TObject);
begin
   GetView(Tfrm_InfoDev);
end;



///--- OperationsQuery
{$REGION '  OperationsQuery..'}
//---- DeleteRecord --//
procedure DeleteRecord(aQuery: TFDQuery);
begin
 if (aQuery.RecordCount > 0) then
  begin
    if MessageDlg(Msg_DeleteRecord,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     aQuery.Delete;
    end
  end else MessageDlg(Msg_NotFindRecord,mtInformation,[mbOK], 0);Exit;
end;
//--- RefreshQuery ---//
procedure RefreshQuery(aQuery: TFDQuery);
begin
  aQuery.Refresh;
end;

//--- DeleteAllRecord ---//
procedure DeleteAllRecord(aQuery: TFDQuery);
begin
 if (aQuery.RecordCount > 0) then
  begin
   if MessageDlg(Msg_DeleteAll,  mtWarning, [mbYesToAll, mbNo], 0) = mrYesToAll then
     begin
      aQuery.First;
      while not(aQuery.Eof) do
       begin
        aQuery.Next ;
        aQuery.Delete ;
       end;
       MessageDlg(Msg_Delete,  mtConfirmation, [mbOK], 0) ;
       aQuery.Refresh ;
    end else Exit;
  end else MessageDlg(Msg_NotFindRecord,mtInformation,[mbOK], 0) ; Exit;
end;

{$ENDREGION}

//--- Destruction
{$REGION ' Destruction..'}
procedure TDM_API.Act_Destruction_EditExecute(Sender: TObject);
begin
  GetView(Tfrm_Destruction_Edit);
end;

procedure TDM_API.Act_Destruction_ShowExecute(Sender: TObject);
begin
  GetView(Tfrm_Destruction);
end;

procedure TDM_API.Act_Destruction_AddExecute(Sender: TObject);
begin
   GetView(Tfrm_Destruction_Add);
end;

{$ENDREGION}

//--- Doumu
{$REGION '  Doum..'}
procedure TDM_API.Act_Doum_AddExecute(Sender: TObject);
begin
  GetView(Tfrm_Doum_Add);
end;

procedure TDM_API.Act_Doum_EditExecute(Sender: TObject);
begin
  GetView(Tfrm_Doum_Edit);
end;

procedure TDM_API.Act_Doum_ShowExecute(Sender: TObject);
begin
  GetView(Tfrm_Doum);
end;



{$ENDREGION}

//--- Boite
{$REGION '  Boite..'}
procedure TDM_API.Act_Boite_AddExecute(Sender: TObject);
begin
  GetView(Tfrm_Boite_Add);
end;

procedure TDM_API.Act_Boite_EditExecute(Sender: TObject);
begin
  GetView(Tfrm_Boite_Edit);
end;

procedure TDM_API.Act_Boite_ShowExecute(Sender: TObject);
begin
   GetView(Tfrm_Boite);
end;

{$ENDREGION}

//--- Depot
{$REGION '  Depot..'}
procedure TDM_API.Act_Depot_AddExecute(Sender: TObject);
begin
  GetView(Tfrm_Depot_Add);
end;

procedure TDM_API.Act_Depot_EditExecute(Sender: TObject);
begin
  GetView(Tfrm_Depot_Edit);
end;

procedure TDM_API.Act_Depot_ShowExecute(Sender: TObject);
begin
  GetView(Tfrm_Depot);
end;
{$ENDREGION}

//--- Archivage
{$REGION '  Archivage..'}
procedure TDM_API.Act_Archivage_AddExecute(Sender: TObject);
begin
   GetView(Tfrm_Archivage_Add);
end;

procedure TDM_API.Act_Archivage_EditExecute(Sender: TObject);
begin
   GetView(Tfrm_Archivage_Edit);
end;

procedure TDM_API.Act_Archivage_ShowExecute(Sender: TObject);
begin
   GetView(Tfrm_Archivage);
end;


{$ENDREGION}

//--- Direction
{$REGION ' Direction..'}
procedure TDM_API.Act_Direction_AddExecute(Sender: TObject);
begin
   GetView(Tfrm_Direction_Add);
end;

procedure TDM_API.Act_Direction_EditExecute(Sender: TObject);
begin
   GetView(Tfrm_Direction_Edit);
end;

procedure TDM_API.Act_Direction_ShowExecute(Sender: TObject);
begin
   GetView(Tfrm_Direction);
end;

{$ENDREGION}

//--- Service
{$REGION '  Service..'}
procedure TDM_API.Act_Service_AddExecute(Sender: TObject);
begin
   GetView(Tfrm_Service_Add);
end;

procedure TDM_API.Act_Service_EditExecute(Sender: TObject);
begin
   GetView(Tfrm_Service_Edit);
end;

procedure TDM_API.Act_Service_ShowExecute(Sender: TObject);
begin
   GetView(Tfrm_Service);
end;

{$ENDREGION}

end.
