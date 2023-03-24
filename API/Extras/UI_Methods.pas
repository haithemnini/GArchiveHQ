unit UI_Methods;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.DBGrids,
  Data.DB,
  Vcl.Forms,
  Vcl.Graphics;

  ///---- Doum
Type TDoum_search = record
   Boite,Service,Destruction,SpDay:Integer;
   Titre,TypeD,Description:string;
   Date_Min,Date_MAX :TDate;
   Pic :TPicture;
end;

  ///---- Destruction
Type TDestruction_search = record
   Type_D:string;  Date :TDate;
end;

///---- Boite
Type TBoite_search = record
   Date :TDate;
   ID_Depot,ID_Archivage :Integer;
   Description :string;
end;

///---- Depot
Type TDepot_search = record
   Date : TDate;
end;

///---- Depot
Type TArchivage_search = record
   Nom,Classer :string;
end;

///---- Direction
Type TDirection_search = record
   Nom :string;
end;

///---- Service
Type TService_search = record
   Nom :string;  ID_Direction : Integer;
end;

   procedure AdjustColumnWidths(DBGrid: TDBGrid);
   Function  EDIT_DOUM(IDsearch:Integer): TDoum_search;
   Function  EDIT_Destruction(IDsearch:Integer): TDestruction_search;
   Function  EDIT_Boite(IDsearch:Integer): TBoite_search;
   Function  EDIT_Depot(IDsearch:Integer): TDepot_search;
   Function  EDIT_Archivage(IDsearch:Integer): TArchivage_search;
   Function  EDIT_Direction(IDsearch:Integer): TDirection_search;
   Function  EDIT_Service(IDsearch:Integer): TService_search;

implementation

uses
  Winapi.Windows,
  UDM;

procedure AdjustColumnWidths(DBGrid: TDBGrid);
var
  TotalColumnWidth, ColumnCount, GridClientWidth, Filler, i: Integer;
begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  for i := 0 to ColumnCount-1 do
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;
  if DBGrid.BorderStyle = bsSingle then
  begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  if TotalColumnWidth < GridClientWidth then begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + Filler;
  end
  else if TotalColumnWidth > GridClientWidth then begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;
end;

///---- Doum
Function EDIT_DOUM(IDsearch:Integer):TDoum_search;
begin

 if DM.Q_Document.Locate('ID',IDsearch,[])then
  begin

    Result.Service        :=  DM.Q_Document['ID_Service'];
    Result.Boite          :=  DM.Q_Document['ID_Boite'];
    Result.Destruction    :=  DM.Q_Document['ID_Destruction'];

    Result.Titre          :=  DM.Q_Document['Titre'];
    Result.TypeD          :=  DM.Q_Document['Type'];
    Result.Description    :=  DM.Q_Document['Description'];
    Result.SpDay          :=  DM.Q_Document['Duree_Conser'];

    Result.Date_Min       :=  DM.Q_Document['Date_Min'];
    Result.Date_MAX       :=  DM.Q_Document['Date_MAX'];

    Result.Pic := TPicture.Create;
    try
      Result.Pic.Assign(DM.Q_DocumentPic);
    finally
      //Result.Pic.Free;
    end;


  end;



end;

///---- Destruction
Function EDIT_Destruction(IDsearch:Integer):TDestruction_search;
begin
 if DM.Q_Destruction.Locate('ID',IDsearch,[])then
  begin
    Result.Type_D            :=  DM.Q_Destruction['Type'];
    Result.Date              :=  DM.Q_Destruction['Date'];
  end;
end;

///---- Boite
Function EDIT_Boite(IDsearch:Integer):TBoite_search;
begin
 if DM.Q_Boite.Locate('ID',IDsearch,[])then
  begin
    Result.ID_Depot            :=  DM.Q_Boite['ID_Depot'];
    Result.ID_Archivage        :=  DM.Q_Boite['ID_Archivage'];
    Result.Date                :=  DM.Q_Boite['Annee'];
    Result.Description         :=  DM.Q_Boite['Description'];
  end;
end;

///---- Depot
Function EDIT_Depot(IDsearch:Integer): TDepot_search;
begin
 if DM.Q_Depot.Locate('ID',IDsearch,[])then
  begin
    Result.Date                :=  DM.Q_Depot['Date'];
  end;
end;

///---- Archivage
Function  EDIT_Archivage(IDsearch:Integer): TArchivage_search;
begin
 if DM.Q_Archivage.Locate('ID',IDsearch,[])then
  begin
    Result.Nom                :=  DM.Q_Archivage['Nom'];
    Result.Classer            :=  DM.Q_Archivage['Classer'];
  end;
end;

///---- Direction
Function  EDIT_Direction(IDsearch:Integer): TDirection_search;
begin
 if DM.Q_Direction.Locate('ID',IDsearch,[])then
  begin
    Result.Nom                :=  DM.Q_Direction['Nom'];
  end;
end;

///---- Service
Function  EDIT_Service(IDsearch:Integer): TService_search;
begin
 if DM.Q_Service.Locate('ID',IDsearch,[])then
  begin
    Result.ID_Direction                :=  DM.Q_Service['ID_Direction'];
    Result.Nom                         :=  DM.Q_Service['Nom'];
  end;
end;
end.
