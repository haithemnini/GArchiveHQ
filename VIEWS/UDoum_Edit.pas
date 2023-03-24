unit UDoum_Edit;

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
  Vcl.ExtCtrls,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.Buttons,
  System.UITypes, Vcl.Samples.Spin;
{$ENDREGION}

type
  Tfrm_Doum_Edit = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_Titre: TEdit;
    dt_Min: TDateTimePicker;
    DBLookCombo_Boite: TDBLookupComboBox;
    edt_Description: TEdit;
    dt_Max: TDateTimePicker;
    pnl_Pic: TPanel;
    img_Src: TImage;
    DBLookCombo_Service: TDBLookupComboBox;
    DBLookCombo_Destruction: TDBLookupComboBox;
    btn_Clear: TBitBtn;
    edt_Type: TEdit;
    SpDay: TSpinEdit;
  {$ENDREGION}

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure img_SrcClick(Sender: TObject);
    procedure btn_ClearClick(Sender: TObject);
    procedure SpDayChange(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Doum_Edit: Tfrm_Doum_Edit;

implementation

uses
  UDM,
  UDM_API,
  UDoum,
//--
  UI_Methods,
  API.Consts,
  UI_Commun;

{$R *.dfm}

procedure Tfrm_Doum_Edit.btn_ClearClick(Sender: TObject);
begin
  img_Src.Picture.Graphic := nil;
end;

procedure Tfrm_Doum_Edit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := TCloseAction.caFree;
end;

procedure Tfrm_Doum_Edit.img_SrcClick(Sender: TObject);
begin
  Get_Picture(DM_API.FileOpenDlg,img_Src);
end;

//--- Save ---//
procedure Tfrm_Doum_Edit.btn_saveClick(Sender: TObject);
begin
 if ((Trim((edt_Titre.Text))=''))or((Trim((edt_Type.Text))='')) or ((Trim((edt_Description.Text))=''))or
    ((DBLookCombo_Boite.Text)='') or ((DBLookCombo_Service.Text)='') or((DBLookCombo_Destruction.Text)='') then
  begin
    MessageDlg(Msg_ErorrRecord, mtWarning, [mbok], 0);
    edt_Titre.SetFocus;  Exit;
  end
 else
  begin
   with DM do
    begin
      if Q_Document.Locate('ID',select_GridID,[])then
       begin
        Q_Document.Edit;
       //-- EDIT --//
        Q_Document['ID_Boite']             := DBLookCombo_Boite.KeyValue;
        Q_Document['ID_Service']           := DBLookCombo_Service.KeyValue;
        Q_Document['ID_Destruction']       := DBLookCombo_Destruction.KeyValue;
        Q_Document['Titre']                := Trim(edt_Titre.Text);
        Q_Document['Type']                 := Trim(edt_Type.Text);
        Q_Document['Description']          := Trim(edt_Description.Text);
        Q_Document['Date_Min']             := dt_Min.Date;
        Q_Document['Date_MAX']             := dt_Max.Date;
        Q_Document['Duree_Conser']         := SpDay.Value;
       //-- Save Pic --//
          Q_Document.FieldByName('Pic').Assign(img_Src.Picture);
        Q_Document.Post;
       end;
    end;
    MessageDlg(Msg_EditRecord, mtConfirmation, [mbYes], 0); Close;
  end

end;


//----  DateDiff --//
procedure Tfrm_Doum_Edit.SpDayChange(Sender: TObject);
begin
   Get_Daye(dt_Max,dt_Min,SpDay);
end;




procedure Tfrm_Doum_Edit.FormShow(Sender: TObject);
var  sIDsearch : TDoum_search;
begin
    sIDsearch := EDIT_DOUM(select_GridID);
    //+++++++
    DBLookCombo_Service.KeyValue         :=  sIDsearch.Service;
    DBLookCombo_Boite.KeyValue           :=  sIDsearch.Boite;
    DBLookCombo_Destruction.KeyValue     :=  sIDsearch.Destruction;

    edt_Titre.Text                       :=  sIDsearch.Titre;
    edt_Type.Text                        :=  sIDsearch.TypeD;
    edt_Description.Text                 :=  sIDsearch.Description;
    SpDay.Value                          :=  sIDsearch.SpDay;

    dt_Min.Date                          :=  sIDsearch.Date_Min;
    dt_Max.Date                          :=  sIDsearch.Date_MAX;

    try
      img_Src.Picture                    :=  sIDsearch.Pic;
    finally
      sIDsearch.Pic.Free;
    end;
    //+++++++
end;





end.
