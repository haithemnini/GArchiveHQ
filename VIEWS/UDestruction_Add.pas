unit UDestruction_Add;

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
  Tfrm_Destruction_Add = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label2: TLabel;
    Label10: TLabel;
    edt_Type: TEdit;
    dt_Date: TDateTimePicker;
  {$ENDREGION}
    procedure btn_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Destruction_Add: Tfrm_Destruction_Add;

implementation

uses
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Destruction_Add.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Destruction_Add.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Destruction_Add.FormShow(Sender: TObject);
begin
  dt_Date.Date := Now;
end;

procedure Tfrm_Destruction_Add.btn_saveClick(Sender: TObject);
begin
 if ((Trim((edt_Type.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Type.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
      Q_Destruction.Append;
    //-- ADD NEW --//
      Q_Destruction['Type']                := Trim(edt_Type.Text);
      Q_Destruction['Date']                := dt_Date.Date;
      Q_Destruction.Post;
    end;
    MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;
end.
