unit User_Pass;

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
  Tfrm_UserPass = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    edt_User: TEdit;
    Label2: TLabel;
    edt_Pass: TEdit;
    Label1: TLabel;
  {$ENDREGION}
    procedure btn_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_saveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_UserPass: Tfrm_UserPass;

implementation

uses
  API.Consts,
  UDM;

{$R *.dfm}


procedure Tfrm_UserPass.btn_cancelClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_UserPass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := TCloseAction.caFree;
end;

procedure Tfrm_UserPass.btn_saveClick(Sender: TObject);
begin//
 if ((Trim((edt_User.Text))='')) or ((Trim((edt_Pass.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_User.SetFocus;  Exit
  end
 else
  begin
     with DM do
      begin
       if Q_User.Locate('ID',1,[])then
        begin
          Q_User.Edit;
          //-- ADD NEW --//
          Q_User['Name']              := Trim(edt_User.Text);
          Q_User['Pass']              := Trim(edt_Pass.Text);
          Q_User.Post;
          Q_User.Refresh;
        end;
      end;
    MessageDlg(Msg_AddUser, mtConfirmation, [mbYes], 0); Close;
  end;
end;



end.
