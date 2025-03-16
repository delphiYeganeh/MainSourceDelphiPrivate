//Add Sanaye 941204
// äãÇíÔ áíÓÊ Êİ˜í˜í ˜á æ ÑİÊä ÎÑæÌí Ç˜Óá
unit unt_ListTafkikiKol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, YDbgrid, DB, ADODB, xpBitBtn, StdCtrls, ExtCtrls;

type
  Tfrm_ListTafkikiKol = class(TForm)
    usp_ListTafkikiKol: TADOStoredProc;
    dusp_ListTafkikiKol: TDataSource;
    YDBGrid1: TYDBGrid;
    Number: TLabel;
    Panel1: TPanel;
    Button5: TxpBitBtn;
    Button3: TxpBitBtn;
    Button4: TxpBitBtn;
    xpBitBtn1: TxpBitBtn;
    usp_Course_Count_ForExam: TADOStoredProc;
    usp_Course_Count_ForExamCourseCount: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ListTafkikiKol: Tfrm_ListTafkikiKol;

implementation

uses dmu, UApplicantExamInfo;

{$R *.dfm}

procedure Tfrm_ListTafkikiKol.FormShow(Sender: TObject);
begin
  with usp_ListTafkikiKol do
  begin
    try
      Parameters.ParamByName('@ExamId').Value := dm.Browse_ExamExamID.AsInteger;
      Open;
    except
    on E : Exception do
     begin
       ShowMessage('ãÔ˜á ÏÑ İÑÇÎæÇäí ÇØáÇÚÇÊ');
       ShowMessage('Exception class name = '+E.ClassName);
       ShowMessage('Exception message = '+E.Message);
       Close;
     end;
    end;
  end;
end;

procedure Tfrm_ListTafkikiKol.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ListTafkikiKol.Button4Click(Sender: TObject);
begin
  YDBGrid1.ExportToExcel;
end;

procedure Tfrm_ListTafkikiKol.Button3Click(Sender: TObject);
begin
  YDBGrid1.ExportToWord;
end;

procedure Tfrm_ListTafkikiKol.xpBitBtn1Click(Sender: TObject);
begin
  with usp_Course_Count_ForExam do
  begin
    try
      Close;
      Parameters.ParamByName('@ExamID').Value := dm.Browse_ExamExamID.AsInteger;
      Open;
      if Fields[0].AsInteger > 5 then
      begin
        ShowMessage('ÊÚÏÇÏ ÏÑæÓ ÂÒãæä ÈíÔ ÇÒ 5 ãæÑÏ ãíÈÇÔÏ Çã˜Çä ÒÇÑÔ íÑí äãíÈÇÔÏ'+#13#10+'ÏÑ ÕæÑÊ áÒæã ÇÒ ÎÑæÌí Ç˜Óá íÇ ææÑÏ ÇÓÊİÇÏå äãÇííÏ');
        Abort;
      end
      else
        FrApplicantExam.QuickRep1.Preview;
    finally
      Close;
    end;
  end;
end;

end.
//End Sanaye