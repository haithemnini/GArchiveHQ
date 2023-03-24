unit UService_Add;

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
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Service_Add = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    DBLookCombo_Direction: TDBLookupComboBox;
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
  frm_Service_Add: Tfrm_Service_Add;

implementation

uses
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Service_Add.btn_saveClick(Sender: TObject);
begin
 if ((DBLookCombo_Direction.Text)='') or ((Trim((edt_Nom.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    DBLookCombo_Direction.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
      Q_Service.Append;
    //-- ADD NEW --//
      Q_Service['ID_Direction']             := DBLookCombo_Direction.KeyValue;
      Q_Service['Nom']                      := Trim(edt_Nom.Text);
      Q_Service.Post;
      Q_Service.Refresh;
    end;
    MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Service_Add.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Service_Add.btn_cancelClick(Sender: TObject);
begin
 Close;
end;
end.
