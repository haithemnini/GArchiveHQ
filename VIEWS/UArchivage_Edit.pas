unit UArchivage_Edit;

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
  Tfrm_Archivage_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    edt_Nom: TEdit;
    edt_Classer: TEdit;
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
  frm_Archivage_Edit: Tfrm_Archivage_Edit;

implementation

uses
  UI_Methods,
  UI_Commun,
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Archivage_Edit.btn_cancelClick(Sender: TObject);
begin
   Close;
end;


procedure Tfrm_Archivage_Edit.btn_saveClick(Sender: TObject);
begin
 if ((Trim((edt_Nom.Text))='')) or ((Trim((edt_Classer.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Classer.SetFocus;  Exit
  end
 else
  begin
     with DM do
      begin
       if Q_Archivage.Locate('ID',select_GridID,[])then
        begin
         Q_Archivage.Edit;
         //-- ADD NEW --//
         Q_Archivage['Nom']                    := Trim(edt_Nom.Text);
         Q_Archivage['Classer']                := Trim(edt_Classer.Text);
         Q_Archivage.Post;
         Q_Archivage.Refresh;
        end;
      end;
    MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end;

end;

procedure Tfrm_Archivage_Edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Archivage_Edit.FormShow(Sender: TObject);
var  sIDsearch : TArchivage_search;
begin
    sIDsearch := EDIT_Archivage(select_GridID);
    //+++++++
    edt_Nom.Text                              :=  sIDsearch.Nom;
    edt_Classer.Text                          :=  sIDsearch.Classer;
end;

end.
