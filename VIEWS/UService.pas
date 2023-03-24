unit UService;

interface

uses
{$REGION ''}
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.WinXCtrls,
  Vcl.ExtCtrls,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Service = class(TForm)
  {$REGION ''}
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    Relative_Bottom: TRelativePanel;
    btn_Edit: TBitBtn;
    btn_supp: TBitBtn;
    btn_add: TBitBtn;
    dbgrid_Service: TDBGrid;
    procedure edt_SearchChange(Sender: TObject);
    procedure dbgrid_ServiceDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_suppClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_EditClick(Sender: TObject);
 {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Service: Tfrm_Service;

implementation

uses
  UDM,
  UDM_API, UI_Commun, API.Consts;

{$R *.dfm}


procedure Tfrm_Service.btn_EditClick(Sender: TObject);
begin
 if DM.Q_Service.RecordCount > 0 then
   begin
    select_GridID := dbgrid_Service.Fields[1].AsInteger;
    DM_API.Act_Service_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

//---- DeleteRecord --//
procedure Tfrm_Service.btn_suppClick(Sender: TObject);
begin
  DeleteRecord(DM.Q_Service);
end;

//OrderRecord//
procedure Tfrm_Service.dbgrid_ServiceDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM.ds_Q_Service.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrid_Service.Canvas.TextOut(Rect.Left + 12, Rect.Top, IntToStr(DM.ds_Q_Service.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Service.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrid_Service.DataSource.DataSet.Filtered := False else
  begin
     Filterr(DM.Q_Service,'Nom', edt_Search.Text);
   end;
end;

procedure Tfrm_Service.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

end.


