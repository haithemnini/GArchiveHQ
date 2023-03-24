unit UBoite_Edit;

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
  Vcl.ComCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;

type
  Tfrm_Boite_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    dt_Annee: TDateTimePicker;
    DBLookCombo_Archivage: TDBLookupComboBox;
    DBLookCombo_Depot: TDBLookupComboBox;
    edt_Description: TEdit;
  {$ENDREGION}
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Boite_Edit: Tfrm_Boite_Edit;

implementation

uses
  UI_Methods,
  UI_Commun,
  API.Consts,
  UDM;

{$R *.dfm}

procedure Tfrm_Boite_Edit.btn_cancelClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_Boite_Edit.btn_saveClick(Sender: TObject);
begin
 if ((DBLookCombo_Depot.Text)='') or((DBLookCombo_Archivage.Text)='')or ((Trim((edt_Description.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Description.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
     if Q_Boite.Locate('ID',select_GridID,[])then
      begin
        Q_Boite.Edit;
      //-- ADD NEW --//
        Q_Boite['ID_Depot']             := DBLookCombo_Depot.KeyValue;
        Q_Boite['ID_Archivage']         := DBLookCombo_Archivage.KeyValue;
        Q_Boite['Description']          := Trim(edt_Description.Text);
        Q_Boite['Annee']                := dt_Annee.Date;
        Q_Boite.Post;
        Q_Boite.Refresh;
      end;
    end;
    MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Boite_Edit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;


procedure Tfrm_Boite_Edit.FormShow(Sender: TObject);
var  sIDsearch : TBoite_search;
begin
    sIDsearch := EDIT_Boite(select_GridID);
    //+++++++
    DBLookCombo_Depot.KeyValue            :=  sIDsearch.ID_Depot;
    DBLookCombo_Archivage.KeyValue        :=  sIDsearch.ID_Archivage;
    dt_Annee.Date                         :=  sIDsearch.Date;
    edt_Description.Text                  :=  sIDsearch.Description;
end;

end.
