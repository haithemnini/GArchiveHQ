unit UDepot_Edit;

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
  System.UITypes,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls;
{$ENDREGION}

type
  Tfrm_Depot_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label3: TLabel;
    dt_Date: TDateTimePicker;
  {$ENDREGION}
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Depot_Edit: Tfrm_Depot_Edit;

implementation

uses
  UI_Methods,
  UI_Commun,
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Depot_Edit.btn_cancelClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_Depot_Edit.btn_saveClick(Sender: TObject);
begin
 with DM do
  begin
   if Q_Depot.Locate('ID',select_GridID,[])then
    begin
     Q_Depot.Edit;
     //-- ADD NEW --//
     Q_Depot['Date']                := dt_Date.Date;
     Q_Depot.Post;
     Q_Depot.Refresh;
    end;
   MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end;

end;

procedure Tfrm_Depot_Edit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Depot_Edit.FormShow(Sender: TObject);
var  sIDsearch : TDepot_search;
begin//
    sIDsearch := EDIT_Depot(select_GridID);
    //+++++++
    dt_Date.Date                         :=  sIDsearch.Date;

end;

end.
