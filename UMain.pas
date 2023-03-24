unit UMain;

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
  Vcl.WinXCtrls,
  acPNG,
  sLabel,
  Vcl.Buttons,
  UL.TUFlowGridLayout,
  Vcl.DBCtrls,
  Winapi.ActiveX,
  System.UITypes;
 {$ENDREGION}

type
  Tfrm_Main = class(TForm)
   {$REGION ''}
    Relative_TOP: TRelativePanel;
    lbl_P1: TLabel;
    lbl_P2: TLabel;
    img_F: TImage;
    img_R: TImage;
    Relative_Bottom: TRelativePanel;
    sLabel1: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    lb_DateTime: TsLabel;
    FlowGrid: TUFlowGridLayout;
    PNL_01: TPanel;
    btn_04: TSpeedButton;
    pnl1: TPanel;
    img: TImage;
    PNL_02: TPanel;
    btn_03: TSpeedButton;
    pnl3: TPanel;
    img1: TImage;
    PNL_03: TPanel;
    btn_02: TSpeedButton;
    pnlPNL_033: TPanel;
    img2: TImage;
    PNL_04: TPanel;
    btn_01: TSpeedButton;
    pnl7: TPanel;
    img3: TImage;
    PNL_05: TPanel;
    btn_08: TSpeedButton;
    pnl9: TPanel;
    img4: TImage;
    PNL_06: TPanel;
    btn_07: TSpeedButton;
    pnl11: TPanel;
    img5: TImage;
    PNL_07: TPanel;
    btn_06: TSpeedButton;
    pnl13: TPanel;
    img6: TImage;
    PNL_08: TPanel;
    btn_05: TSpeedButton;
    pnl15: TPanel;
    img7: TImage;
    lb_User: TsLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    {$ENDREGION}
  private
    { Private declarations }
  public
    { Public declarations }
    property Caption_DateTime : TsLabel read lb_DateTime write lb_DateTime ;
    property Caption_User : TsLabel read lb_User write lb_User ;
  end;

var
  frm_Main  : Tfrm_Main;

implementation

uses
  UDM,
  UDoum,
  API.Consts,
  UDM_API;

{$R *.dfm}

procedure Tfrm_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caNone;
 if MessageDlg(Msg_CloseAPP, mtConfirmation,[mbYes,mbNo],0, mbNo)= mrYes then
    Action := TCloseAction.caFree;
end;

procedure Tfrm_Main.FormShow(Sender: TObject);
begin
   Get_User(Caption_User);
   DM_API.DateTime.Enabled := True;
end;

end.
