unit UUniversity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ActnList, Grids, DBGrids, YDbgrid, StdCtrls,
  xpBitBtn, ExtCtrls, DB, ADODB;

type
  TFUniversity = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    xpBitBtn1: TxpBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    YDBGrid1: TYDBGrid;
    xpBitBtn2: TxpBitBtn;
    xpBitBtn3: TxpBitBtn;
    xpBitBtn4: TxpBitBtn;
    procedure xpBitBtn4Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUniversity: TFUniversity;

implementation

uses dmu, YInputQuery ;

{$R *.dfm}

procedure TFUniversity.xpBitBtn4Click(Sender: TObject);
var
  s : string;
  qry :TADOQuery;
begin
  inherited;
  
  with dm,Tuniversity do
  //if dm.Y_InputQuery('‰«„ œ«‰‘ê«Â','‰«„ œ«‰‘ê«Â',s) then
  if dm.Y_InputQuery('‰«„ œ«‰‘ê«Â','‰«„ œ«‰‘ê«Â ÃœÌœ',s) then
  begin
    try
     Insert;
     TuniversityUTName.AsString:=s;
     post;
    finally
      qry := TADOQuery.Create(self);
      qry.Connection := YeganehConnection;
      qry.SQL.Text   := ' IF (SELECT COUNT(1) FROM [dbo].[GroupExam] WHERE ISNULL(UTID,0) = '+TuniversityUTID.AsString+')  = 0 ' +
                          ' INSERT INTO [dbo].[GroupExam] ([Code],[Title],[UTID]) '+
                           ' SELECT ''1'',''«·›'','+ TuniversityUTID.AsString     +
                           ' UNION SELECT ''2'',''»'','+ TuniversityUTID.AsString +
                           ' UNION SELECT ''3'',''Ã'','+ TuniversityUTID.AsString +
                           ' UNION SELECT ''4'',''œ'',' + TuniversityUTID.AsString ;

      qry.ExecSQL;

      qry.SQL.Text   := '  DECLARE @max INT = 0   SET @max = ISNULL((SELECT MAX(DiscriminationID)  FROM [dbo].[Discrimination]),0) '+
                          'IF (SELECT COUNT(1) FROM [dbo].[Discrimination] WHERE ISNULL(UTID,0) = '+TuniversityUTID.AsString+')  = 0 ' +
                          ' INSERT INTO [dbo].[Discrimination] ([DiscriminationID],[DiscriminationTitle],[MinValue],[MaxValue],[UTID]) '+
                           ' SELECT @max+1 , ''ŒÊ»'','+'0.3,1,'+ TuniversityUTID.AsString     +
                           ' UNION SELECT  @max+2 , ''„ Ê”ÿ'','+'0.1,0.3,'+ TuniversityUTID.AsString +
                           ' UNION SELECT @max+3 , ''÷⁄Ì›'','+'0,0.1,'+ TuniversityUTID.AsString +
                           ' UNION SELECT @max+4 , ''„‰›Ì'',' +'-1,0,'+ TuniversityUTID.AsString ;

      qry.ExecSQL;

      qry.SQL.Text   := '  DECLARE @max INT = 0   SET @max = ISNULL((SELECT MAX(DifficultyID)  FROM [dbo].[Difficulty]),0) '+
                          ' IF (SELECT COUNT(1) FROM [dbo].[Difficulty] WHERE ISNULL(UTID,0) = '+TuniversityUTID.AsString+')  = 0 ' +
                          ' INSERT INTO [dbo].[Difficulty] ([DifficultyID],[DifficultyTitle],[MinValue],[MaxValue],[UTID]) '+
                           ' SELECT @max+1, ''”«œÂ'','+'0.85,1.001,'+ TuniversityUTID.AsString     +
                           ' UNION SELECT  @max+2, ''„ Ê”ÿ'','+'0.65,0.85,'+ TuniversityUTID.AsString +
                           ' UNION SELECT @max+3, ''œ‘Ê«—'','+'0.45,0.65,'+ TuniversityUTID.AsString +
                           ' UNION SELECT @max+4, ''ŒÌ·Ì œ‘Ê«—'',' +'0.25,0.45,'+ TuniversityUTID.AsString +
                           ' UNION SELECT @max+5, ''›Êﬁ «·⁄«œÂ œ‘Ê«—'',' +'0,0.25,'+ TuniversityUTID.AsString ;

      qry.ExecSQL;

      qry.SQL.Text   := ' IF (SELECT COUNT(1) FROM [dbo].[ExamType] WHERE ISNULL(UTID,0) = '+TuniversityUTID.AsString+')  = 0 ' +
                          ' INSERT INTO [dbo].[ExamType] ([ExamTypeTitle],[UTID]) '+
                           ' SELECT ''—ﬁ«» Ì'','+ TuniversityUTID.AsString     +
                           ' UNION SELECT ''Õœ ‰’«»'',' + TuniversityUTID.AsString ;

      qry.ExecSQL;

      qry.Free;
    end;

  end;
end;

procedure TFUniversity.xpBitBtn3Click(Sender: TObject);
var
  s : string;
begin
  inherited;
  s := dm.TuniversityUTName.AsString ;
  with dm,Tuniversity do
  if dm.Y_InputQuery('‰«„ œ«‰‘ê«Â',s,s) then
  //if dm.Y_InputQuery('‰«„ œ«‰‘ê«Â','‰«„ œ«‰‘ê«Â ÃœÌœ',s) then
  begin
   edit;
   TuniversityUTName.AsString:=s;
   post;
  end;
end;

procedure TFUniversity.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFUniversity.FormShow(Sender: TObject);
begin
  inherited;
  Dm.Tuniversity.Close;
  Dm.Tuniversity.Open;
end;

end.
