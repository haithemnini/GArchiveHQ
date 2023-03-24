unit ULogin;

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
  Vcl.ExtCtrls,
  acPNG,
  Vcl.StdCtrls,
  Vcl.Buttons,
  System.UITypes,
  Vcl.Imaging.pngimage;
{$ENDREGION}

type
  Tfrm_Login = class(TForm)
  {$REGION ''}
    pnl_Content: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btn_enter: TBitBtn;
    btn_exit: TBitBtn;
    pnl_bten: TPanel;
    edt_Pass: TEdit;
    edt_User: TEdit;
    pnl_top: TPanel;
    img_F: TImage;
  {$ENDREGION}
    procedure btn_exitClick(Sender: TObject);
    procedure edt_PassKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_enterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Login: Tfrm_Login;

implementation

uses
  UDM,
//--
  UDM_API,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Login.btn_enterClick(Sender: TObject);
begin
  if Login(Trim(edt_User.Text), Trim(edt_Pass.Text)) then
   ModalResult := mrOK
  else
  MessageDlg(Msg_WRONG_PW, mtError, [mbOK], 0);
  edt_Pass.SelectAll;
  Exit;
end;

procedure Tfrm_Login.btn_exitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_Login.edt_PassKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  if Key = VK_RETURN then   btn_enter.Click;
end;

end.
