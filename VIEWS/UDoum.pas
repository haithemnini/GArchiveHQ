unit UDoum;

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
  uAsSrchBox,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.WinXCtrls,
  System.UITypes,
  //
  Vcl.Menus,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sComboEdit,
  acPopupCtrls,
  System.Types;
{$ENDREGION}

type
  Tfrm_Doum = class(TForm)
  {$REGION ''}
    Relative_Bottom: TRelativePanel;
    btn_add: TBitBtn;
    btn_Edit: TBitBtn;
    btn_Ref: TBitBtn;
    btn_supp: TBitBtn;
    btn_suppAll: TBitBtn;
    PNL_TOP: TPanel;
    edt_Search: TEdit;
    gro_Seah: TGroupBox;
    Rb_Date_Min: TRadioButton;
    Rb_Duree_Conser: TRadioButton;
    Rb_Date_MAX: TRadioButton;
    Rb_Titre: TRadioButton;
    dbgrid_DOUM: TDBGrid;
    btn_Menu: TButton;
   {$ENDREGION}
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_SearchChange(Sender: TObject);
    procedure Rb_TitreClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btn_RefClick(Sender: TObject);
    procedure btn_suppClick(Sender: TObject);
    procedure btn_suppAllClick(Sender: TObject);
    procedure dbgrid_DOUMDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_MenuClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frm_Doum: Tfrm_Doum;

implementation

uses
  UDM,
//---
  UDM_API,
  UI_Methods,
  UI_Commun,
  API.Consts;

{$R *.dfm}


//---- EditRecord --//
procedure Tfrm_Doum.btn_EditClick(Sender: TObject);
begin
  if DM.Q_Document.RecordCount > 0 then
   begin
    select_GridID := dbgrid_DOUM.Fields[1].AsInteger;
    DM_API.Act_Doum_Edit.Execute;
   end  else  MessageDlg(Msg_NotFindRecord, mtWarning,[mbYes], 0); Exit;
end;

//--- RefreshQuery ---//
procedure Tfrm_Doum.btn_RefClick(Sender: TObject);
begin
   RefreshQuery(DM.Q_Document);
end;

//---- DeleteRecord --//
procedure Tfrm_Doum.btn_suppClick(Sender: TObject);
begin
    DeleteRecord(DM.Q_Document);
end;

//--- DeleteAllRecord ---//
procedure Tfrm_Doum.btn_suppAllClick(Sender: TObject);
begin
    DeleteAllRecord(DM.Q_Document);
end;

//OrderRecord//
procedure Tfrm_Doum.dbgrid_DOUMDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if DM.ds_Q_Document.DataSet.RecNo > 0 then
  begin
    if Column.Title.Caption = 'ÑÞã' then
      dbgrid_DOUM.Canvas.TextOut(Rect.Left + 12, Rect.Top, IntToStr(DM.ds_Q_Document.DataSet.RecNo));
  end;
end;

//--- Filterr ---//
procedure Tfrm_Doum.edt_SearchChange(Sender: TObject);
begin
 if (edt_Search.Text = '' ) then
   dbgrid_DOUM.DataSource.DataSet.Filtered := False else
  begin
   if Rb_Titre.Checked = True then
     Filterr(DM.Q_Document,'Titre', edt_Search.Text) else
   if Rb_Date_Min.Checked = True then
     Filterr(DM.Q_Document,'Date_Min', edt_Search.Text) else
   if Rb_Date_Max.Checked = True then
     Filterr(DM.Q_Document,'Date_MAX', edt_Search.Text) else
   if Rb_Duree_Conser.Checked = True then
     Filterr(DM.Q_Document,'Duree_Conser', edt_Search.Text) else
   end;
end;


procedure Tfrm_Doum.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Doum.FormResize(Sender: TObject);
begin
  AdjustColumnWidths(dbgrid_DOUM);
end;

procedure Tfrm_Doum.FormShow(Sender: TObject);
begin
  edt_Search.SetFocus;
end;

procedure Tfrm_Doum.Rb_TitreClick(Sender: TObject);
begin
  edt_Search.Clear;
  edt_Search.SetFocus;
end;



///-----///
procedure Tfrm_Doum.btn_MenuClick(Sender: TObject);
begin
 if (DM.Q_Document.RecordCount > 0)then
  begin
    FieID := dbgrid_DOUM.Fields[1].AsInteger;
    with TButton(Sender).ClientToScreen(point(0, TButton(Sender).Height)) do
      DM_API.Pm_Menu.Popup(X, Y);
  end;
end;


end.
