unit USortedDbGrid;

interface

uses
  Winapi.Windows,
  System.Classes,
  Vcl.Grids,
  Vcl.DBGrids;

type
  TSortedDbGrid = class(TCustomDBGrid)
  protected
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer;
      Column: TColumn; State: TGridDrawState); override;
  public
    property Canvas;
    property SelectedRows;
  published
    property Align;
    property Anchors;
    property BiDiMode;
    property BorderStyle;
    property Color;
    [Stored(False)]
    property Columns stored False; //StoreColumns;
    property Constraints;
    property Ctl3D;
    property DataSource;
    property DefaultDrawing;
    property DragCursor;
    property DragKind;
    property DragMode;
    property DrawingStyle;
    property Enabled;
    property FixedColor;
    property GradientEndColor;
    property GradientStartColor;
    property Font;
    property ImeMode;
    property ImeName;
    property Options;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property TitleFont;
    property Touch;
    property Visible;
    property StyleElements;
    property OnCellClick;
    property OnColEnter;
    property OnColExit;
    property OnColumnMoved;
    property OnDrawDataCell;  { obsolete }
    property OnDrawColumnCell;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEditButtonClick;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnGesture;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseActivate;
    property OnMouseDown;
    property OnMouseEnter;
    property OnMouseLeave;
    property OnMouseMove;
    property OnMouseUp;
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
    property OnStartDock;
    property OnStartDrag;
    property OnTitleClick;
  end;


procedure Register;

implementation

uses
  System.SysUtils;


procedure Register;
begin
  RegisterComponents('Data Controls', [TSortedDbGrid]);
end;

{ TSortedDbGrid }

procedure TSortedDbGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  if DataSource.DataSet.RecNo > 0 then
  begin
    if (Column.Title.Caption = 'ÑÞã') or (Column.Title.Caption = 'NO') then
      Canvas.TextOut(Rect.Left + 10, Rect.Top, IntToStr(DataSource.DataSet.RecNo));
  end;

  if Assigned(OnDrawColumnCell) then
    OnDrawColumnCell(Self, Rect, DataCol, Column, State);
end;

end.
