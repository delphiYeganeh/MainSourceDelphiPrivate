unit Udailyrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, ComCtrls, Buttons,  Menus, AppEvnts,
  AdvGlowButton;

type
  TFdailyrep = class(TMBaseForm)
    sp_dailyRep: TADOStoredProc;
    Action1: TAction;
    Panel1: TPanel;
    sp_dailyRepLetterID: TAutoIncField;
    sp_dailyRepMemo: TWideStringField;
    sp_dailyRepAttachTitle: TWideStringField;
    sp_dailyRepRegistrationDate: TStringField;
    sp_dailyRepReceiveMode: TWideStringField;
    sp_dailyRepSentLetterID: TIntegerField;
    sp_dailyRepIncommingno: TWideStringField;
    sp_dailyReprecommites: TWideStringField;
    sp_dailyReptoorgtitle: TWideStringField;
    sp_dailyRepIndicatorID: TIntegerField;
    sp_dailyRepToStaffer: TWideStringField;
    sp_dailyRepFollowLetterNo: TWideStringField;
    sp_dailyRepUserMemo: TWideStringField;
    sp_dailyRepRetroactionNo: TWideStringField;
    sp_dailyRepNumberOfPage: TWordField;
    sp_dailyRepNumberOfAttachPages: TSmallintField;
    sp_dailyRepCenterDate: TStringField;
    sp_dailyRepCenterNo: TWideStringField;
    sp_dailyRepIncommingDate: TWideStringField;
    YDBGrid1: TYDBGrid;
    sp_dailyRepClassificationtitle: TWideStringField;
    sp_dailyRepUrgencyTitle: TWideStringField;
    sp_dailyRepFormatTitle: TWideStringField;
    sp_dailyRepTemplateTitle: TWideStringField;
    sp_dailyRepSignerTitle: TWideStringField;
    sp_dailyRepUserTitle: TWideStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    makeRep: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button5: TAdvGlowButton;
    Button6: TAdvGlowButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    ComboBox1: TComboBox;
    pnlMain: TPanel;
    procedure makeRepClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdailyrep: TFdailyrep;

implementation

uses Dmu, UMain, businessLayer;

{$R *.dfm}

procedure TFdailyrep.makeRepClick(Sender: TObject);
 var receivedNum,SentNum,recommitesNum:integer;
begin
  inherited;
   with sp_dailyRep,Parameters do
   begin
    Close;
     case ComboBox1.ItemIndex of
      0:ParamByName('@where').Value:='LetterFormat=1 and SecretariatID='+IntToStr(Dm.SecId);
      1:ParamByName('@where').Value:='LetterFormat=1 and SecretariatID='+IntToStr(Dm.SecId)+' and Letter_Type=1';
      2:ParamByName('@where').Value:='LetterFormat=1 and SecretariatID='+IntToStr(Dm.SecId)+' and Letter_Type=2';
     end;
       ParamByName('@bdate').Value:=Edit1.Text;
       ParamByName('@edate').Value:=Edit2.Text;
       ParamByName('@Myear').Value:=dm.CurrentMyear;

    Open;
   end;
   Exec_sp_Letter_Numbers(Edit1.Text,Edit2.Text,dm.secid,receivedNum,SentNum,recommitesNum);
     Panel1.Caption :=' ⁄œ«œ ‰«„Â Ê«—œÂ ='+IntToStr(receivedNum)+'   '+
                     ' ⁄œ«œ ‰«„Â ’«œ—Â ='+IntToStr(SentNum)+'   '+
                     ' ⁄œ«œ  «—Ã«⁄«  ='  +IntToStr(recommitesNum);
    
 end;

procedure TFdailyrep.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFdailyrep.Button3Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToWord;
end;

procedure TFdailyrep.Button2Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.Print;
end;

procedure TFdailyrep.Button6Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.CustomizePrint;
end;

procedure TFdailyrep.Action1Execute(Sender: TObject);
begin
  inherited;
 makeRepClick(makeRep);

end;

procedure TFdailyrep.FormCreate(Sender: TObject);
begin
  inherited;
edit1.Text:=_Today;
edit2.Text:=_Today;
end;

procedure TFdailyrep.ComboBox1Change(Sender: TObject);
begin
  inherited;
  makeRepClick(makeRep);
end;

procedure TFdailyrep.Button4Click(Sender: TObject);
begin
  inherited;
 YDBGrid1.ExportToExcel;

end;

end.
