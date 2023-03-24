unit UDestruction;

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
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXCtrls,
  Vcl.Buttons,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Destruction = class(TForm)
  {$REGION ''}
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    gro_Seah: TGroupBox;
    Rb_Date: TRadioButton;
    Rb_Type: TRadioButton;
    dbgrd_Destruction: TDBGrid;
    Relative_Bottom: TRelativePanel;
    btn_supp: TBitBtn;
    btn_Edit: TBitBtn;
    btn_add: TBitBtn;
    procedure dbgrd_DestructionDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_SearchChange(Sender: TObject);
    procedure Rb_TypeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_suppClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
  {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Destruction: Tfrm_Destruction;

implementation

uses
  UDM,
  UDM_API,
  API.Consts,
  UI_Commun;

{$R *.dfm}

procedure Tfrm_Destruction.btn_EditClick(Sender: TObject);
begin
 if DM.Q_Destruction.RecordCount > 0 then
   begin
    select_GridID := dbgrd_Destruction.Fields[1].AsInteger;
    DM_API.Act_Destruction_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

//---- DeleteRecord --//
procedure Tfrm_Destruction.btn_suppClick(Sender: TObject);
begin
  DeleteRecord(DM.Q_Destruction);
end;

//--- OrderRecord ---//
procedure Tfrm_Destruction.dbgrd_DestructionDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM.ds_Q_Destruction.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrd_Destruction.Canvas.TextOut(Rect.Left + 13, Rect.Top, IntToStr(DM.ds_Q_Destruction.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Destruction.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrd_Destruction.DataSource.DataSet.Filtered := False else
  begin
   if Rb_Type.Checked = True then
     Filterr(DM.Q_Destruction,'Type', edt_Search.Text) else
   if Rb_Date.Checked = True then
     Filterr(DM.Q_Destruction,'Date', edt_Search.Text);
   end;
end;


procedure Tfrm_Destruction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Destruction.Rb_TypeClick(Sender: TObject);
begin
  edt_Search.Clear;
  edt_Search.SetFocus;
end;

end.
