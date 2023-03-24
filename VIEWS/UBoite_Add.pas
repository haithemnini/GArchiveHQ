unit UBoite_Add;

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
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;

type
  Tfrm_Boite_Add = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Boite_Add: Tfrm_Boite_Add;

implementation

uses
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Boite_Add.btn_cancelClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_Boite_Add.btn_saveClick(Sender: TObject);
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
      Q_Boite.Append;
    //-- ADD NEW --//
      Q_Boite['ID_Depot']             := DBLookCombo_Depot.KeyValue;
      Q_Boite['ID_Archivage']         := DBLookCombo_Archivage.KeyValue;
      Q_Boite['Description']          := Trim(edt_Description.Text);
      Q_Boite['Annee']                := dt_Annee.Date;
      Q_Boite.Post;
      Q_Boite.Refresh;
    end;
    MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Boite_Add.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Boite_Add.FormShow(Sender: TObject);
begin
  dt_Annee.Date := Now;
end;

end.
