unit UTextFormat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ActnList, Grids, DBGrids, YDbgrid,
  ExtCtrls, DBCtrls, Mask, ComCtrls, xpWindow, xpBitBtn,db;

type
  TFrTextFormat = class(TMBaseForm)
    BitBtn1: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBNavigator1: TDBNavigator;
    YDBGrid1: TYDBGrid;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    xpBitBtn1: TxpBitBtn;
    f2: TAction;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure f2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrTextFormat: TFrTextFormat;

implementation

uses dmu;

{$R *.dfm}

procedure TFrTextFormat.xpBitBtn1Click(Sender: TObject);

var indiscernibleChar,TextFormatTitle: string;

TermcodeStart,TermCodeLength,AnswerStartLineNumber,KeyLineNumber,
AnswerStart,CourseGroupLength,CourseGroupStart,CourseLength,StnoStart,
StnoLength,MajorStart,MajorLength,CourseStart,
GroupExamStart: integer;
begin
  inherited;
 with dm.TextFormat do
  begin
   if not Dm.Y_InputQuery('⁄‰Ê«‰ ÃœÌœ','›—„  ›«Ì· ',TextFormatTitle ) then
     exit;


   indiscernibleChar:=FieldByName('indiscernibleChar').asstring;
   TermcodeStart:=FieldByName('TermcodeStart').asinteger;
   TermCodeLength:=FieldByName('TermCodeLength').asinteger;
   AnswerStartLineNumber:=FieldByName('AnswerStartLineNumber').asinteger;
   KeyLineNumber:=FieldByName('KeyLineNumber').asinteger;
   AnswerStart:=FieldByName('AnswerStart').asinteger;
   CourseGroupLength:=FieldByName('CourseGroupLength').asinteger;
   CourseGroupStart:=FieldByName('CourseGroupStart').asinteger;
   CourseLength:=FieldByName('CourseLength').asinteger;
   StnoStart:=FieldByName('StnoStart').asinteger;
   StnoLength:=FieldByName('StnoLength').asinteger;
   MajorStart:=FieldByName('MajorStart').asinteger;
   MajorLength:=FieldByName('MajorLength').asinteger;
   CourseStart:=FieldByName('CourseStart').asinteger ;
   GroupExamStart:=FieldByName('GroupExamStart').asinteger ;

      dm.TextFormat.Insert;

      FieldByName('TextFormatTitle').asstring:=TextFormatTitle  ;
      FieldByName('indiscernibleChar').asstring:=indiscernibleChar ;
      FieldByName('TermcodeStart').asinteger:=TermcodeStart ;
      FieldByName('TermCodeLength').asinteger:=TermCodeLength ;
      FieldByName('AnswerStartLineNumber').asinteger:=AnswerStartLineNumber ;
      FieldByName('KeyLineNumber').asinteger:=KeyLineNumber ;
      FieldByName('AnswerStart').asinteger:=AnswerStart ;
      FieldByName('CourseGroupLength').asinteger:=CourseGroupLength ;
      FieldByName('CourseGroupStart').asinteger:=CourseGroupStart ;
      FieldByName('CourseLength').asinteger:=CourseLength ;
      FieldByName('StnoStart').asinteger:=StnoStart ;
      FieldByName('StnoLength').asinteger:=StnoLength ;
      FieldByName('MajorStart').asinteger:=MajorStart ;
      FieldByName('MajorLength').asinteger:=MajorLength ;
      FieldByName('CourseStart').asinteger :=CourseStart ;
      FieldByName('GroupExamStart').asinteger :=GroupExamStart ;
      Post;
  end;
end;

procedure TFrTextFormat.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dm.TextFormat.Cancel;
close;
end;

procedure TFrTextFormat.BitBtn1Click(Sender: TObject);
begin
  inherited;
if dm.TextFormat.State in [dsedit,dsinsert] then
  dm.TextFormat.Post;

  close;

end;

procedure TFrTextFormat.f2Execute(Sender: TObject);
begin
  inherited;
 dm.TextFormat.Post;
end;

end.

