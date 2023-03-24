unit UDepot_Add;

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
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Depot_Add = class(TForm)
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
    procedure btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Depot_Add: Tfrm_Depot_Add;

implementation

uses
  API.Consts,
  UDM;

{$R *.dfm}

procedure Tfrm_Depot_Add.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Depot_Add.btn_saveClick(Sender: TObject);
begin
 with DM do
  begin
   Q_Depot.Append;
   //-- ADD NEW --//
   Q_Depot['Date']                := dt_Date.Date;
   Q_Depot.Post;
   Q_Depot.Refresh;
  end;
  MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
end;

procedure Tfrm_Depot_Add.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Depot_Add.FormShow(Sender: TObject);
begin
  dt_Date.Date :=Now;
end;

end.
