program GArchiveHQ;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  System.UITypes,
  {$REGION}
  UDM in 'VIEWS\DM\UDM.pas' {DM: TDataModule},
  UDM_API in 'VIEWS\DM\UDM_API.pas' {DM_API: TDataModule},
  API.Consts in 'API\Extras\API.Consts.pas',
  UI_Methods in 'API\Extras\UI_Methods.pas',
  UI_Commun in 'API\Extras\UI_Commun.pas',
  ULogin in 'VIEWS\ULogin.pas' {frm_Login},
  UMain in 'UMain.pas' {frm_Main},
  UDoum in 'VIEWS\UDoum.pas' {frm_Doum},
  UDoum_Add in 'VIEWS\UDoum_Add.pas' {frm_Doum_Add},
  UDoum_Edit in 'VIEWS\UDoum_Edit.pas' {frm_Doum_Edit},
  UDestruction in 'VIEWS\UDestruction.pas' {frm_Destruction},
  UDestruction_Add in 'VIEWS\UDestruction_Add.pas' {frm_Destruction_Add},
  UDestruction_Edit in 'VIEWS\UDestruction_Edit.pas' {frm_Destruction_Edit},
  UBoite in 'VIEWS\UBoite.pas' {frm_Boite},
  UBoite_Add in 'VIEWS\UBoite_Add.pas' {frm_Boite_Add},
  UBoite_Edit in 'VIEWS\UBoite_Edit.pas' {frm_Boite_Edit},
  UDepot in 'VIEWS\UDepot.pas' {frm_Depot},
  UDepot_Add in 'VIEWS\UDepot_Add.pas' {frm_Depot_Add},
  UDepot_Edit in 'VIEWS\UDepot_Edit.pas' {frm_Depot_Edit},
  UArchivage in 'VIEWS\UArchivage.pas' {frm_Archivage},
  UArchivage_Add in 'VIEWS\UArchivage_Add.pas' {frm_Archivage_Add},
  UArchivage_Edit in 'VIEWS\UArchivage_Edit.pas' {frm_Archivage_Edit},
  UDirection in 'VIEWS\UDirection.pas' {frm_Direction},
  UDirection_Add in 'VIEWS\UDirection_Add.pas' {frm_Direction_Add},
  UDirection_Edit in 'VIEWS\UDirection_Edit.pas' {frm_Direction_Edit},
  UService in 'VIEWS\UService.pas' {frm_Service},
  UService_Add in 'VIEWS\UService_Add.pas' {frm_Service_Add},
  UService_Edit in 'VIEWS\UService_Edit.pas' {frm_Service_Edit},
  User_Pass in 'VIEWS\User_Pass.pas' {frm_UserPass},
  UInfoDev in 'VIEWS\UInfoDev.pas' {frm_InfoDev};

{$ENDREGION}

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown   := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_API, DM_API);

  //=====
  if (GetView(Tfrm_Login) = mrOk) then Application.CreateForm(Tfrm_Main, frm_Main);

  Application.Run;
end.
