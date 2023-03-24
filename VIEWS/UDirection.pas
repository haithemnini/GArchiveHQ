unit UDirection;

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
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.WinXCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Direction = class(TForm)
  {$REGION ''}
    dbgrid_Direction: TDBGrid;
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    Relative_Bottom: TRelativePanel;
    btn_Edit: TBitBtn;
    btn_add: TBitBtn;
    btn_supp: TBitBtn;
  {$ENDREGION}
    procedure dbgrid_DirectionDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_SearchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_suppClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Direction: Tfrm_Direction;

implementation

uses
  UDM,
  UDM_API,
  API.Consts,
  UI_Commun;

{$R *.dfm}

//---- DeleteRecord --//
procedure Tfrm_Direction.btn_EditClick(Sender: TObject);
begin
 if DM.Q_Direction.RecordCount > 0 then
   begin
    select_GridID := dbgrid_Direction.Fields[1].AsInteger;
    DM_API.Act_Direction_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

procedure Tfrm_Direction.btn_suppClick(Sender: TObject);
begin
  DeleteRecord(DM.Q_Direction);
end;

//OrderRecord//
procedure Tfrm_Direction.dbgrid_DirectionDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM.ds_Q_Direction.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrid_Direction.Canvas.TextOut(Rect.Left + 12, Rect.Top, IntToStr(DM.ds_Q_Direction.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Direction.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrid_Direction.DataSource.DataSet.Filtered := False
  else Filterr(DM.Q_Direction,'Nom', edt_Search.Text) ;
end;

procedure Tfrm_Direction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Direction.FormShow(Sender: TObject);
begin
  edt_Search.SetFocus;
end;

end.
