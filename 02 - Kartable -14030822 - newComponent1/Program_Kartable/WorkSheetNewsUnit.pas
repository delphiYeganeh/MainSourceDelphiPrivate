{
  WorkSheetType=1 Ã·”Â
  WorkSheetType=2 ﬁ—«—„·«ﬁ« 
  WorkSheetType=3 Task
}
                      
unit WorkSheetNewsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Menus, ExtActns, ActnList, DB, StdCtrls, CheckLst,
  YchecklistBox, Buttons, ExtCtrls, Mask, DBCtrls, ADODB;

type
  TFWorkSheetNews = class(TMBaseForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Panel2: TGroupBox;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    lblSubject: TLabel;
    Memo1: TMemo;
    lbldate: TLabel;
    lbltime: TLabel;
    spCreateNewsFromWorkSheet: TADOStoredProc;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    FWorkSheetType: Integer;
    FWorkSheetID: Integer;
    FNewsContent: String;
    FNewsTitle: String;
    procedure SetWorkSheetType(const Value: Integer);
    procedure SetWorkSheetID(const Value: Integer);
    procedure SetNewsContent(const Value: String);
    procedure SetNewsTitle(const Value: String);
    procedure FillNews;
  public
    { Public declarations }
    property WorkSheetType:Integer read FWorkSheetType write SetWorkSheetType;
    property WorkSheetID:Integer read FWorkSheetID write SetWorkSheetID;
    property NewsContent:String read FNewsContent write SetNewsContent;
    property NewsTitle:String read FNewsTitle write SetNewsTitle;
  end;

var
  FWorkSheetNews: TFWorkSheetNews;

implementation

uses Dmu;

{$R *.dfm}

procedure TFWorkSheetNews.BitBtn3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFWorkSheetNews.FillNews;
begin
  lblSubject.Caption:=NewsTitle;
  Memo1.Clear;
  Memo1.Lines.Add(NewsContent);
  lbldate.Caption:=_Today;
  lbltime.Caption:=Copy(TimeToStr(Time),1,5);
end;

procedure TFWorkSheetNews.FormShow(Sender: TObject);
begin
  inherited;
  FillNews;
  BitBtn1.SetFocus;
end;

procedure TFWorkSheetNews.SetNewsContent(const Value: String);
begin
  FNewsContent := Value;
end;

procedure TFWorkSheetNews.SetNewsTitle(const Value: String);
begin
  FNewsTitle := Value;
end;

procedure TFWorkSheetNews.SetWorkSheetID(const Value: Integer);
begin
  FWorkSheetID := Value;
end;

procedure TFWorkSheetNews.SetWorkSheetType(const Value: Integer);
begin
  FWorkSheetType := Value;
end;

procedure TFWorkSheetNews.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TFWorkSheetNews.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
  begin
      Key:=#0;
      BitBtn3Click(Application);
  end;
end;

procedure TFWorkSheetNews.N1Click(Sender: TObject);
begin
  inherited;
  try
    spCreateNewsFromWorkSheet.Close;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@DateAnnonce').Value:=lbldate.Caption;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@TimeAnnonce').Value:=lbltime.Caption;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@UserID').Value:=_UserID;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@WorkSheetID').Value:=WorkSheetID;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@SendFlag').Value:=0;    
    spCreateNewsFromWorkSheet.ExecProc;
    ShowMessage('«—”«· Œ»— «‰Ã«„ ‘œ');
    Close;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFWorkSheetNews.N2Click(Sender: TObject);
begin
  inherited;
  try
    spCreateNewsFromWorkSheet.Close;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@DateAnnonce').Value:=lbldate.Caption;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@TimeAnnonce').Value:=lbltime.Caption;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@UserID').Value:=_UserID;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@WorkSheetID').Value:=WorkSheetID;
    spCreateNewsFromWorkSheet.Parameters.ParamByName('@SendFlag').Value:=1;
    spCreateNewsFromWorkSheet.ExecProc;
    ShowMessage('⁄„·Ì«  «‰Ã«„ ‘œ');
    Close;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
end;

end.
