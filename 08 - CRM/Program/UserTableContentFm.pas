unit UserTableContentFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ExtActns, ActnList,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, DBCtrls, Mask;

type
  TFmUserTableContent = class(TMBaseForm)
    GetUserTableContentByID: TADOStoredProc;
    GetUserTableContentByIDDescription: TWideStringField;
    GetUserTableContentByIDTableTitle: TStringField;
    GetUserTableContentByIDID: TAutoIncField;
    GetUserTableContentByIDUserTableLinkedID: TIntegerField;
    GetUserTableContentByIDTableID: TWordField;
    pnlMain: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    DBEDescription: TDBEdit;
    DBLkCBTableID: TDBLookupComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    YDBGrid1: TYDBGrid;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GetUserTableContentByIDAfterInsert(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    UserTableLinkedID:integer;
  end;

var
  FmUserTableContent: TFmUserTableContent;

implementation

uses Dmu, UserTableInputFm , YShamsiDate;

{$R *.dfm}

procedure TFmUserTableContent.FormShow(Sender: TObject);
begin
   inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;
   with GetUserTableContentBYID do
   begin
      Close;
      Parameters.ParamByName('@UserTableLinkedID').Value := UserTableLinkedID;
      Open;
   end;
   DBNav_Setup(DBNavigator1);
end;

procedure TFmUserTableContent.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

procedure TFmUserTableContent.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   FmUserTableInput := TFmUserTableInput.Create(Application);
   FmUserTableInput.UserTableContentID := GetUserTableContentBYIDID.AsInteger;
   FmUserTableInput.ShowModal;
end;

procedure TFmUserTableContent.GetUserTableContentByIDAfterInsert(
  DataSet: TDataSet);
begin
   inherited;
   GetUserTableContentBYIDUserTableLinkedID.AsInteger := UserTableLinkedID;
end;

procedure TFmUserTableContent.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   inherited;
   DBLkCBTableID.SetFocus;
end;

procedure TFmUserTableContent.YDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TFmUserTableContent.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 620)  or (NewHeight < 389) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }

  inherited;

end;

end.




