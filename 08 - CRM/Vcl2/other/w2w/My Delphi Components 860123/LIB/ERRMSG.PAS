unit ErrMsg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Db, DBTables;

Procedure ErrMessage(S:String);
Function YesNo(S:String):Boolean;
Function CodePasswd(S:String):String;
Procedure DocSpec(DocName:String;Var DocCode,DocRev:String);
Function CheckLock(tblname:String):Boolean;
Function DecodeLock(S:String):String;
Function CodeLock(S:String):String;

Const
  MaxRowNo = 0;
  BoundedRowMsg ='≠ñó≠ï≤é„ì†¶êç›ÑåÅ¶ÿõâÉô”ñîwúÇöÃëvèw«ulur';

type
  TErrMsgForm = class(TForm)
    OKBtn: TButton;
    ErrPanel: TPanel;
    AbortButton: TButton;
    Query1: TQuery;
    procedure OKBtnClick(Sender: TObject);
    procedure AbortButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ErrMsgForm: TErrMsgForm;
  MyChang : Boolean;
  OkFlag:Boolean;
  CurrentKindCode,CurrentKindDesc:String;
implementation

{$R *.DFM}
Function DecodeLock(S:String):String;
Var S1:String;I:Integer;
begin
  S1:='Faranegar Consulltants ..................';
  for I:=1 to Length(S) Do
      S1[i]:=char(integer(S[i])+(53+i));
  SetLength(S1,Length(S));
  DecodeLock:=S1;
end;

Function CodeLock(S:String):String;
Var S1:String;I:Integer;
begin
  S1:='Faranegar Consulltants ..................';
  for I:=1 to Length(S) Do
      S1[i]:=char(integer(S[i])-(53+i));
  SetLength(S1,Length(S));
  CodeLock:=S1;
end;

Function CheckLock(tblname:String):Boolean;
Begin
   if MaxRowNo=0 Then
   Begin
      CheckLock:=False;
      Exit;
   End;
   ErrMsgForm.Query1.Close;
   ErrMsgForm.Query1.Sql.Text:='select count(*) from '+tblname;
   ErrMsgForm.Query1.ExecSql;
   ErrMsgForm.Query1.Open;
   CheckLock:=False;
   if MaxRowNo<=ErrMsgForm.Query1.Fields[0].AsInteger Then
   Begin
       ErrMessage(DecodeLock(BoundedRowMsg));
       CheckLock:=True;
   End;
End;


Procedure DocSpec(DocName:String;Var DocCode,DocRev:String);
Begin
 with ErrMsgForm Do
 Begin
{   Query1.Close;
   Query1.Sql.Text:='select DocCode,Revision from documents where docname='''+DocName+'''';
   Query1.ExecSql;
   Query1.OPen;
   DocCode:=Query1.Fields[0].AsString;
   DocRev:=Query1.Fields[1].AsString;
}
   DocCode:='--';
   DocRev:='--';
 End;
End;

Procedure ErrMessage(S:String);
Begin
   ErrMsgForm.Errpanel.Caption := S;
   ErrMsgForm.Showmodal;
End;

Function YesNo(S:String):Boolean;
Begin
   ErrMsgForm.Errpanel.Caption := S;
   ErrMsgForm.Showmodal;
   YesNo:=OkFlag;
End;

Function CodePasswd(S:String):String;
Begin
   CodePasswd:=S;
End;

procedure TErrMsgForm.OKBtnClick(Sender: TObject);
begin
     OkFlag:=True;
     ErrMsgForm.Close;
     MyChang:= True;
end;

procedure TErrMsgForm.AbortButtonClick(Sender: TObject);
begin
     AbortButton.Visible := False;
     OkFlag:=False;
     ErrMsgForm.Close;

end;

end.
