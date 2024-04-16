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
    PageControl1: TPageControl;
    YDBGrid1: TYDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    DBEDescription: TDBEdit;
    DBLkCBTableID: TDBLookupComboBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GetUserTableContentByIDAfterInsert(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

end.




