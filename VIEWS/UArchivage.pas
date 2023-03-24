unit UArchivage;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXCtrls,
  Vcl.Buttons,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Archivage = class(TForm)
  {$REGION ''}
    dbgrid_Archivage: TDBGrid;
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    gro_Seah: TGroupBox;
    Rb_Classer: TRadioButton;
    Rb_Nom: TRadioButton;
    Relative_Bottom: TRelativePanel;
    btn_Edit: TBitBtn;
    btn_add: TBitBtn;
    btn_supp: TBitBtn;
  {$ENDREGION}
    procedure dbgrid_ArchivageDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_SearchChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_suppClick(Sender: TObject);
    procedure Rb_NomClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Archivage: Tfrm_Archivage;

implementation

uses
  UDM,
  API.Consts,
  UDM_API,
  UI_Commun;

{$R *.dfm}

//---- DeleteRecord --//
procedure Tfrm_Archivage.btn_EditClick(Sender: TObject);
begin
 if DM.Q_Archivage.RecordCount > 0 then
   begin
    select_GridID := dbgrid_Archivage.Fields[1].AsInteger;
     DM_API.Act_Archivage_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

procedure Tfrm_Archivage.btn_suppClick(Sender: TObject);
begin
  DeleteRecord(DM.Q_Archivage);
end;

//OrderRecord//
procedure Tfrm_Archivage.dbgrid_ArchivageDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM.ds_Q_Archivage.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrid_Archivage.Canvas.TextOut(Rect.Left + 12, Rect.Top, IntToStr(DM.ds_Q_Archivage.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Archivage.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrid_Archivage.DataSource.DataSet.Filtered := False else
  begin
   if Rb_Classer.Checked = True then
     Filterr(DM.Q_Archivage,'Classer', edt_Search.Text) else
   if Rb_Nom.Checked = True then
     Filterr(DM.Q_Archivage,'Nom', edt_Search.Text);
   end;
end;

procedure Tfrm_Archivage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := TCloseAction.caFree;
end;

procedure Tfrm_Archivage.Rb_NomClick(Sender: TObject);
begin
  edt_Search.Clear;
  edt_Search.SetFocus;
end;

end.
