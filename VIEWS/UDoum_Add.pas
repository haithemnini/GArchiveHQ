unit UDoum_Add;

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
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  System.UITypes,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sComboBox, Vcl.Samples.Spin, Vcl.WinXCtrls;
 {$ENDREGION}

type
  Tfrm_Doum_Add = class(TForm)
  {$REGION ''}
    PNL_btn: TPanel;
    btn_save: TBitBtn;
    btn_cancel: TBitBtn;
    gro_Add: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edt_Titre: TEdit;
    dt_Min: TDateTimePicker;
    DBLookCombo_Boite: TDBLookupComboBox;
    edt_Description: TEdit;
    Label9: TLabel;
    dt_Max: TDateTimePicker;
    Label10: TLabel;
    Label5: TLabel;
    pnl_Pic: TPanel;
    img_Src: TImage;
    Label1: TLabel;
    DBLookCombo_Service: TDBLookupComboBox;
    Label4: TLabel;
    Label6: TLabel;
    DBLookCombo_Destruction: TDBLookupComboBox;
    btn_Clear: TBitBtn;
    Label7: TLabel;
    edt_Type: TEdit;
    SpDay: TSpinEdit;
    procedure btn_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_saveClick(Sender: TObject);
    procedure img_SrcClick(Sender: TObject);
    procedure btn_ClearClick(Sender: TObject);
    procedure SpDayChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
   {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frm_Doum_Add: Tfrm_Doum_Add;

implementation

uses
  UDM,
//--
  UDM_API,
  API.Consts;

{$R *.dfm}

procedure Tfrm_Doum_Add.btn_cancelClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_Doum_Add.btn_ClearClick(Sender: TObject);
begin
  img_Src.Picture.Graphic := nil;
end;

procedure Tfrm_Doum_Add.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := TCloseAction.caFree;
end;

procedure Tfrm_Doum_Add.FormShow(Sender: TObject);
begin
  dt_Min.Date := Now;
  dt_Max.Date := Now;
end;

procedure Tfrm_Doum_Add.img_SrcClick(Sender: TObject);
begin
   Get_Picture(DM_API.FileOpenDlg,img_Src);
end;

//--- Save ---//
procedure Tfrm_Doum_Add.btn_saveClick(Sender: TObject);
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
      Q_Document.Append;
    //-- ADD NEW --//
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
      if not(img_Src.Picture.Graphic = nil) then  Q_Document.FieldByName('Pic').Assign(img_Src.Picture);
      Q_Document.Post;
    end;
    MessageDlg(Msg_AddRecord, mtConfirmation, [mbYes], 0); Close;
  end
end;




//----  DateDiff --//
procedure Tfrm_Doum_Add.SpDayChange(Sender: TObject);
begin
   Get_Daye(dt_Max,dt_Min,SpDay);
end;

end.
