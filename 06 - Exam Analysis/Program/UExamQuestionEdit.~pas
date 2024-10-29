unit UExamQuestionEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpBitBtn, Grids, DBGrids, xpWindow, ActnList, YDbgrid,
  DBCtrls, StdCtrls, YWhereEdit, DB, ADODB;

type
  TFrExamQuestionEdit = class(TMBaseForm)
    DBGrid1: TYDBGrid;
    xpBitBtn1: TxpBitBtn;
    uspDeleteQuestion: TADOStoredProc;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    chkDesginer: TCheckBox;
    ChkCourse: TCheckBox;
    chkCf: TCheckBox;
    Course: TDBLookupComboBox;
    CDesigner: TDBLookupComboBox;
    cf: TEdit;
    xpBitBtn2: TxpBitBtn;
    eb: TEdit;
    ee: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    xpBitBtn3: TxpBitBtn;
    del1: TEdit;
    del2: TEdit;
    chkCourseMark: TCheckBox;
    txtCourseMark: TEdit;
    lblCourseMark: TLabel;
    usp_Calc_CourseMark_As_MaxMark: TADOStoredProc;
    usp_Calc_CourseMark_As_MaxMarkMaxMark: TFloatField;
    usp_Calc_CourseMark_As_MaxMarkSumCourseMark: TFloatField;
    usp_UpdateNumberOfQuestion: TADOStoredProc;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure ebChange(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent;ExamID: integer = 0);reintroduce;virtual;
  end;

var
  FrExamQuestionEdit: TFrExamQuestionEdit;

implementation

uses dmu;

{$R *.dfm}

procedure TFrExamQuestionEdit.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrExamQuestionEdit.xpBitBtn2Click(Sender: TObject);
var b,e,i : integer;
begin
  inherited;
 with dm.Select_Question_byExamID2 do
  begin
    first;
    b:=StrToInt(eb.Text);
    e:=StrToInt(ee.Text);
    while not eof do
     begin
       if (dm.Select_Question_byExamID2Number.AsInteger>=b) and
          (dm.Select_Question_byExamID2Number.AsInteger<=e)   then
         begin
          dm.Select_Question_byExamID2.Edit;

          if ChkCourse.Checked   then
            Dm.Select_Question_byExamID2CourseID.Value:=Course.KeyValue;

          if chkCf.Checked then
            Dm.Select_Question_byExamID2Coefficient.Value:=StrToFloat(cf.text);

          if chkDesginer.Checked       then
            Dm.Select_Question_byExamID2DesignerTeacherID.Value:=CDesigner.KeyValue;

          //add Sanaye 950216
          //ËÈÊ äãÑå ÏÑæÓ ÂÒãæä ÇÒ ÍÏÇ˜ËÑ äãÑå ËÈÊí ÏÑ ÊÚÑíÝ ÂÒãæä ÈÑÇí åÑ í˜ ÇÒ ÏÑæÓ ÂÒãæä
          if chkCourseMark.Checked then
            Dm.Select_Question_byExamID2CourseMark.Value:=StrToFloat(txtCourseMark.Text);
          //end Sanaye

          Dm.Select_Question_byExamID2.Post;
         end;
          dm.Select_Question_byExamID2.Next;

     end;
  end;

  FormActivate(nil);
end;

procedure TFrExamQuestionEdit.ebChange(Sender: TObject);
begin
  inherited;
  ee.Text:=eb.Text;
end;

procedure TFrExamQuestionEdit.xpBitBtn3Click(Sender: TObject);
var b,e,i : integer;
begin
  inherited;
  if not messageShowString('ÂíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ¿',True) then exit;

 with dm.Select_Question_byExamID2 do
  begin
    first;
    b:=StrToInt(del1.Text);
    e:=StrToInt(del2.Text);
    while not eof do
     begin
       if (dm.Select_Question_byExamID2Number.AsInteger>=b) and (dm.Select_Question_byExamID2Number.AsInteger<=e)   then
       begin
         //Add By Sanaye 941017
         // Qusetion æ ÍÐÝ ÇÒ ÌÏæá  QuestionDelete ÇäÊÞÇá ÓæÇá ÍÐÝ ÔÏå Èå ÌÏæá
         with uspDeleteQuestion do
         begin
           try
             Parameters.ParamByName('@QuestionID').Value := dm.Select_Question_byExamID2QuestionID.AsInteger;
             ExecProc;
           except
           end;
         end;
         //End Sanaye
         dm.Select_Question_byExamID2.Delete
       end
       else next;
     end;
     //Add Sanaye 950929
     //ÈÑæÒ ÑÓÇäí ÊÚÏÇÏ ÓæÇáÇÊ ÏÑ ÝÑã ÇÕáí
     with usp_UpdateNumberOfQuestion do
      begin
        try
          Close;
          Parameters.ParamByName('@ExamID').Value := Dm.Browse_ExamExamID.AsInteger;
          ExecProc;
        except
        end;
      end;
     //End Sanaye
  end;

end;

constructor TFrExamQuestionEdit.create(AOwner: TComponent;
  ExamID: integer);
begin
 inherited create(AOwner);
  with dm.Select_Question_byExamID2 do
   begin
     close;
     Parameters.ParamByName('@ExamID').Value:=ExamID;
     open;
   end;
end;

procedure TFrExamQuestionEdit.FormActivate(Sender: TObject);
begin
  inherited;
  //add Sanaye 950216
  //ËÈÊ äãÑå ÏÑæÓ ÂÒãæä ÇÒ ÍÏÇ˜ËÑ äãÑå ËÈÊí ÏÑ ÊÚÑíÝ ÂÒãæä ÈÑÇí åÑ í˜ ÇÒ ÏÑæÓ ÂÒãæä
  lblCourseMark.Caption := '';
  with usp_Calc_CourseMark_As_MaxMark, Parameters do
   begin
    try
      Close;
      ParamByName('@ExamID').Value := Dm.Browse_ExamExamID.AsInteger;
      Open;
      lblCourseMark.Caption := 'ãÌãæÚ äãÑÇÊ ÏÑæÓ [' +FieldByName('SumCourseMark').AsString+ '] ÇÒ äãÑå ˜á ÂÒãæä [' +FieldByName('MaxMark').AsString+ ']';
    except
    end;
   end;
   //end Sanaye...
end;

end.


