unit UBoite;

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
  Vcl.WinXCtrls,
  Vcl.Buttons,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Boite = class(TForm)
  {$REGION ''}
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    gro_Seah: TGroupBox;
    Rb_Description: TRadioButton;
    Rb_Annee: TRadioButton;
    Relative_Bottom: TRelativePanel;
    btn_Edit: TBitBtn;
    btn_supp: TBitBtn;
    btn_add: TBitBtn;
    dbgrid_Boite: TDBGrid;
  {$ENDREGION}
    procedure btn_suppClick(Sender: TObject);
    procedure edt_SearchChange(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Rb_AnneeClick(Sender: TObject);
    procedure dbgrid_BoiteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Boite: Tfrm_Boite;

implementation

uses
  UDM_API,
  UDM,
  UI_Commun,
  API.Consts;

{$R *.dfm}


procedure Tfrm_Boite.btn_EditClick(Sender: TObject);
begin
 if DM.Q_Boite.RecordCount > 0 then
   begin
    select_GridID := dbgrid_Boite.Fields[1].AsInteger;
    DM_API.Act_Boite_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

//---- DeleteRecord --//
procedure Tfrm_Boite.btn_suppClick(Sender: TObject);
begin
  DeleteRecord(DM.Q_Boite);
end;

//OrderRecord//
procedure Tfrm_Boite.dbgrid_BoiteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM.ds_Q_Boite.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrid_Boite.Canvas.TextOut(Rect.Left + 12, Rect.Top, IntToStr(DM.ds_Q_Boite.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Boite.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrid_Boite.DataSource.DataSet.Filtered := False else
  begin
   if Rb_Annee.Checked = True then
     Filterr(DM.Q_Boite,'Annee', edt_Search.Text) else
   if Rb_Description.Checked = True then
     Filterr(DM.Q_Boite,'Description', edt_Search.Text);
   end;
end;

procedure Tfrm_Boite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Boite.Rb_AnneeClick(Sender: TObject);
begin
  edt_Search.Clear;
  edt_Search.SetFocus;
end;

end.
