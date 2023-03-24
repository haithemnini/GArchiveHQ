unit UArchivage_Add;

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
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Archivage_Add = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label5: TLabel;
    edt_Nom: TEdit;
    edt_Classer: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Archivage_Add: Tfrm_Archivage_Add;

implementation

uses
  API.Consts,
  UDM;

{$R *.dfm}

procedure Tfrm_Archivage_Add.btn_cancelClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_Archivage_Add.btn_saveClick(Sender: TObject);
begin
 if ((Trim((edt_Nom.Text))='')) or ((Trim((edt_Classer.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Classer.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
      Q_Archivage.Append;
    //-- ADD NEW --//
      Q_Archivage['Classer']          := Trim(edt_Classer.Text);
      Q_Archivage['Nom']              := Trim(edt_Nom.Text);
      Q_Archivage.Post;
      Q_Archivage.Refresh;
    end;
    MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Archivage_Add.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

end.
