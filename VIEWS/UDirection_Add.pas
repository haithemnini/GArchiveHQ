unit UDirection_Add;

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
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Direction_Add = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label1: TLabel;
    edt_Nom: TEdit;
  {$ENDREGION}
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Direction_Add: Tfrm_Direction_Add;

implementation

uses
  API.Consts, UDM;

{$R *.dfm}

procedure Tfrm_Direction_Add.btn_cancelClick(Sender: TObject);
begin
 Close;
end;


procedure Tfrm_Direction_Add.btn_saveClick(Sender: TObject);
begin
 if ((Trim((edt_Nom.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Nom.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
      Q_Direction.Append;
    //-- ADD NEW --//
      Q_Direction['Nom']              := Trim(edt_Nom.Text);
      Q_Direction.Post;
      Q_Direction.Refresh;
    end;
    MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Direction_Add.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := TCloseAction.caFree;
end;

end.
