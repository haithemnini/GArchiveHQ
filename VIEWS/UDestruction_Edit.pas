unit UDestruction_Edit;

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
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes;
{$ENDREGION}

type
  Tfrm_Destruction_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label2: TLabel;
    Label10: TLabel;
    edt_Type: TEdit;
    dt_Date: TDateTimePicker;
  {$ENDREGION}
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Destruction_Edit: Tfrm_Destruction_Edit;

implementation

uses
  UI_Methods,
  UI_Commun,
  UDM,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Destruction_Edit.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_Destruction_Edit.btn_saveClick(Sender: TObject);
begin

 if ((Trim((edt_Type.Text))='')) then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Type.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
     if Q_Destruction.Locate('ID',select_GridID,[])then
      begin
        Q_Destruction.Edit;
      //-- EDIT NEW --//
        Q_Destruction['Type']                := Trim(edt_Type.Text);
        Q_Destruction['Date']                := dt_Date.Date;
        Q_Destruction.Post;
      end;
    end;
    MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;

procedure Tfrm_Destruction_Edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure Tfrm_Destruction_Edit.FormShow(Sender: TObject);
var  sIDsearch : TDestruction_search;
begin
    sIDsearch := EDIT_Destruction(select_GridID);
    //+++++++
    edt_Type.Text                         :=  sIDsearch.Type_D;
    dt_Date.Date                          :=  sIDsearch.Date;
end;
end.
