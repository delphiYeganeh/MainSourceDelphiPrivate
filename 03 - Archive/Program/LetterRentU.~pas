unit LetterRentU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, xpWindow, ExtActns, ActnList, xpBitBtn,
  Grids, DBGrids, YDbgrid, StdCtrls, Buttons, ExtCtrls, Menus;

type
  TFrLetterRent = class(TMBaseForm)
    Select_Rent_byLetterID: TADOStoredProc;
    Panel1: TPanel;
    Panel2: TPanel;
    YDBGrid1: TYDBGrid;
    BtnWord: TBitBtn;
    BtnExcel: TBitBtn;
    Select_Rent_byLetterIDRentID: TAutoIncField;
    Select_Rent_byLetterIDRenterID: TIntegerField;
    Select_Rent_byLetterIDLetterID: TIntegerField;
    Select_Rent_byLetterIDBeginDate: TStringField;
    Select_Rent_byLetterIDEndDate: TStringField;
    Select_Rent_byLetterIDComment: TWideStringField;
    Select_Rent_byLetterIDMatureDate: TStringField;
    Select_Rent_byLetterIDRenterTitle: TWideStringField;
    PopupMenu1: TPopupMenu;
    Word1: TMenuItem;
    Excel1: TMenuItem;
    SpeedButton1: TSpeedButton;
    Select_Rent_byLetterIDTitle: TStringField;
Procedure  Open_Rent_byLetterID(LetterID:integer);
    procedure BtnWordClick(Sender: TObject);
    procedure BtnExcelClick(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLetterRent: TFrLetterRent;

implementation

uses Dmu, YShamsidate;

{$R *.dfm}
Procedure  TFrLetterRent.Open_Rent_byLetterID(LetterID:integer);
  begin
  with Select_Rent_byLetterID,parameters do
   begin
    Close;
    ParamByName('@LetterID').value:=LetterID;
    ParamByName('@userid').value:=_UserId;
    Open;
   end;
end;
procedure TFrLetterRent.BtnWordClick(Sender: TObject);
begin
   inherited;
   if not(Select_Rent_byLetterID.Active)or(Select_Rent_byLetterID.RecordCount=0) then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;
   YDBGrid1.ExportToWord(''); //Trim(Select_Rent_byLetterIDRentID.AsString)+'.Doc'
end;

procedure TFrLetterRent.BtnExcelClick(Sender: TObject);
begin
   inherited;
   if not(Select_Rent_byLetterID.Active)or(Select_Rent_byLetterID.RecordCount=0) then
   begin
      ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
      Exit;
   end;
   YDBGrid1.ExportToExcel;
end;

procedure TFrLetterRent.Word1Click(Sender: TObject);
begin
   inherited;
   BtnWord.Click;
end;

procedure TFrLetterRent.Excel1Click(Sender: TObject);
begin
   inherited;
   BtnExcel.Click;
end;

procedure TFrLetterRent.SpeedButton1Click(Sender: TObject);
begin
   inherited;
   Close;
end;

end.
