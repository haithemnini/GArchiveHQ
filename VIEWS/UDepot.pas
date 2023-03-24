unit UDepot;

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
  Vcl.WinXCtrls,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Buttons,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Depot = class(TForm)
  {$REGION ''}
    dbgrid_Depot: TDBGrid;
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    Relative_Bottom: TRelativePanel;
    btn_add: TBitBtn;
    btn_Edit: TBitBtn;
    btn_supp: TBitBtn;
  {$ENDREGION}
    procedure dbgrid_DepotDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_SearchChange(Sender: TObject);
    procedure btn_suppClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Depot: Tfrm_Depot;

implementation

uses
  UDM,
  API.Consts,
  UDM_API,
  UI_Commun;

{$R *.dfm}


procedure Tfrm_Depot.btn_EditClick(Sender: TObject);
begin
 if DM.Q_Depot.RecordCount > 0 then
   begin
    select_GridID := dbgrid_Depot.Fields[1].AsInteger;
    DM_API.Act_Depot_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

//---- DeleteRecord --//
procedure Tfrm_Depot.btn_suppClick(Sender: TObject);
begin
  DeleteRecord(DM.Q_Depot);
end;

//OrderRecord//
procedure Tfrm_Depot.dbgrid_DepotDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM.ds_Q_Depot.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrid_Depot.Canvas.TextOut(Rect.Left + 12, Rect.Top, IntToStr(DM.ds_Q_Depot.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Depot.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrid_Depot.DataSource.DataSet.Filtered := False
  else Filterr(DM.Q_Depot,'Date', edt_Search.Text) ;
end;

procedure Tfrm_Depot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Depot.FormShow(Sender: TObject);
begin
  edt_Search.SetFocus;
end;

end.
