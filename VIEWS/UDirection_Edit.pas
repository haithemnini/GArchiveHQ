unit UDirection_Edit;

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
  Tfrm_Direction_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label1: TLabel;
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
  frm_Direction_Edit: Tfrm_Direction_Edit;

implementation

uses
  UI_Methods,
  UI_Commun,
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Direction_Edit.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Direction_Edit.btn_saveClick(Sender: TObject);
begin
 if ((Trim((edt_Nom.Text))=''))then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Nom.SetFocus;  Exit
  end
 else
  begin
     with DM do
      begin
       if Q_Direction.Locate('ID',select_GridID,[])then
        begin
          Q_Direction.Edit;
          //-- ADD NEW --//
          Q_Direction['Nom']              := Trim(edt_Nom.Text);
          Q_Direction.Post;
          Q_Direction.Refresh;
        end;
      end;
    MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end;

end;

procedure Tfrm_Direction_Edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Direction_Edit.FormShow(Sender: TObject);
var  sIDsearch : TDirection_search;
begin
    sIDsearch := EDIT_Direction(select_GridID);
    //+++++++
    edt_Nom.Text                              :=  sIDsearch.Nom;
end;

end.




