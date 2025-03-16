unit Udailyrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Grids, DBGrids, YDbgrid, ExtCtrls, ActnList, DB,
  StdCtrls, ADODB, ExtActns, ComCtrls;

type
  TFdailyrep = class(TMBaseForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    sp_dailyRep: TADOStoredProc;
    Button6: TButton;
    Action1: TAction;
    sp_dailyRepIndicatorID: TIntegerField;
    sp_dailyRepMYear: TWordField;
    sp_dailyRepSecretariatID: TWordField;
    sp_dailyRepToOrgID: TIntegerField;
    sp_dailyRepMemo: TWideStringField;
    sp_dailyRepAttachTitle: TWideStringField;
    sp_dailyRepRegistrationDate: TStringField;
    sp_dailyRepReceiveMode: TBooleanField;
    sp_dailyRepSentLetterIndicatorID: TIntegerField;
    sp_dailyRepSentLetterFormat: TIntegerField;
    sp_dailyRepSentLettermYear: TWordField;
    sp_dailyRepno1: TWideStringField;
    sp_dailyReprecommites: TStringField;
    sp_dailyReptoorgtitle: TStringField;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    YDBGrid1: TYDBGrid;
    YDBGrid2: TYDBGrid;
    sp_Recommites_Number: TADOStoredProc;
    Dsp_Recommites_Number: TDataSource;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdailyrep: TFdailyrep;

implementation

uses Dmu;

{$R *.dfm}

procedure TFdailyrep.Button1Click(Sender: TObject);
begin
  inherited;
with sp_dailyRep,Parameters do
 begin
  Close;
   case ComboBox1.ItemIndex of
    0:ParamByName('@where').Value:='';
    1:ParamByName('@where').Value:='ReceiveMode=1';
    2:ParamByName('@where').Value:='ReceiveMode=0';
   end;
     ParamByName('@bdate').Value:=Edit1.Text;
     ParamByName('@edate').Value:=Edit2.Text;
  Open;
 end;
   with dm.sp_Letter_Numbers,Parameters do
    begin
     Close;
     ParamByName('@bdate').Value:=Edit1.Text;
     ParamByName('@edate').Value:=Edit2.Text;
     ExecProc;
     StatusBar1.SimpleText :=' ⁄œ«œ ‰«„Â Ê«—œÂ ='+IntToStr(ParamValues['@receivedNum'])+'   '+
                     ' ⁄œ«œ ‰«„Â ’«œ—Â ='+IntToStr(ParamValues['@SentNum'])+'   '+
                     ' ⁄œ«œ  «—Ã«⁄«  ='  +IntToStr(ParamValues['@recommitesNum']);
    end;
    
   with sp_Recommites_Number,Parameters do
    begin
     Close;
     ParamByName('@bdate').Value:=Edit1.Text;
     ParamByName('@edate').Value:=Edit2.Text;
     Open;
    end;
 end;

procedure TFdailyrep.Button5Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFdailyrep.Button3Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex=1 then
  YDBGrid2.ExportToWord
  else
 YDBGrid1.ExportToWord;
end;

procedure TFdailyrep.Button2Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex=1 then
  YDBGrid2.Print
  else
 YDBGrid1.Print;
end;

procedure TFdailyrep.Button6Click(Sender: TObject);
begin
  inherited;
 if PageControl1.ActivePageIndex=1 then
  YDBGrid2.CustomizePrint
  else
  YDBGrid1.CustomizePrint;
end;

procedure TFdailyrep.Action1Execute(Sender: TObject);
begin
  inherited;
 button1.Click;

end;

procedure TFdailyrep.FormCreate(Sender: TObject);
begin
  inherited;
edit1.Text:=dm.today;
edit2.Text:=dm.today;
end;

procedure TFdailyrep.ComboBox1Change(Sender: TObject);
begin
  inherited;
with sp_dailyRep,Parameters do
 begin
  Close;
   case ComboBox1.ItemIndex of
    0:ParamByName('@where').Value:='';
    1:ParamByName('@where').Value:='ReceiveMode=1';
    2:ParamByName('@where').Value:='ReceiveMode=0';
   end;
     ParamByName('@bdate').Value:=Edit1.Text;
     ParamByName('@edate').Value:=Edit2.Text;
  Parameters.ParamByName('@MYEAR').Value:=dm.CurrentYear;
  Open;
end;
end;

end.
