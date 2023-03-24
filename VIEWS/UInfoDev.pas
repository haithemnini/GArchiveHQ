unit UInfoDev;

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
  System.Actions,
  Vcl.ActnList,
  Vcl.StdCtrls,
  acPNG,
  Vcl.ExtCtrls,
  Vcl.Buttons;
{$ENDREGION}

type
  Tfrm_InfoDev = class(TForm)
    Panel2: TPanel;
  {$REGION ''}
    btn_cancel: TBitBtn;
    grb_InfoDev: TGroupBox;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure btn_cancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
{$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_InfoDev: Tfrm_InfoDev;

implementation

{$R *.dfm}



procedure Tfrm_InfoDev.btn_cancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_InfoDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

end.
