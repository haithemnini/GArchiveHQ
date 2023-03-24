unit UService_Edit;

interface

uses
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

type
  Tfrm_Service_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    DBLookCombo_Direction: TDBLookupComboBox;
    edt_Nom: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
  {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Service_Edit: Tfrm_Service_Edit;

implementation

uses
  UI_Methods, API.Consts, UDM, UI_Commun;

{$R *.dfm}


procedure Tfrm_Service_Edit.btn_cancelClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_Service_Edit.btn_saveClick(Sender: TObject);
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
     if Q_Boite.Locate('ID',select_GridID,[])then
      begin
        Q_Service.Edit;
      //-- ADD NEW --//
        Q_Service['ID_Direction']             := DBLookCombo_Direction.KeyValue;
        Q_Service['Nom']                      := Trim(edt_Nom.Text);
        Q_Service.Post;
        Q_Service.Refresh;
      end;
    end;
    MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Service_Edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := TCloseAction.caFree;
end;

procedure Tfrm_Service_Edit.FormShow(Sender: TObject);
var  sIDsearch : TService_search;
begin
    sIDsearch := EDIT_Service(select_GridID);
    //+++++++
    DBLookCombo_Direction.KeyValue             :=  sIDsearch.ID_Direction;
    edt_Nom.Text                               :=  sIDsearch.Nom;
end;

end.
