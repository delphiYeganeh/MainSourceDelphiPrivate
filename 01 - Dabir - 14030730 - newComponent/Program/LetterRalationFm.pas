unit LetterRalationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBTreeView, ExtCtrls, DB, ADODB, DBCtrls, Grids,
  DBGrids, StdCtrls, UemsVCL, Mask, BaseUnit,  ExtActns, ActnList,
  Buttons, ImgList, ZipForge, Menus, dxtree, AppEvnts, dxGDIPlusClasses,
  xpPanel, AdvGlowButton;

  type
    PMyRec = ^TMyRec;
    TMyRec = record
      SetUserCode: string;
      SetCode: string;
      SetDscp: string;
  end;

type
  TFmLetterRalation = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TxpPanel;
    Panel4: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    Label12: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBShamsiDateEdit: TDBShamsiDateEdit;
    Label5: TLabel;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    DBMemo2: TDBMemo;
    Label6: TLabel;
    Select_Letter: TADOStoredProc;
    Select_LetterLetterID: TAutoIncField;
    Select_LetterIndicatorID: TIntegerField;
    Select_LetterMYear: TWordField;
    Select_LetterSecretariatID: TWordField;
    Select_LetterLetter_Type: TWordField;
    Select_Letterletterformat: TWordField;
    Select_LetterIncommingNO: TWideStringField;
    Select_LetterIncommingdate: TWideStringField;
    Select_LetterCenterNo: TWideStringField;
    Select_LetterCenterDate: TStringField;
    Select_LetterFromOrgID: TIntegerField;
    Select_LetterToOrgID: TIntegerField;
    Select_LetterSignerid: TWideStringField;
    Select_LetterClassificationID: TWordField;
    Select_LetterUrgencyID: TSmallintField;
    Select_LetterMemo: TWideStringField;
    Select_LetterAttachTitle: TWideStringField;
    Select_LetterNumberOfAttachPages: TSmallintField;
    Select_LetterNumberOfPage: TWordField;
    Select_LetterReceiveTypeID: TWordField;
    Select_LetterUserID: TIntegerField;
    Select_LetterRetroactionNo: TWideStringField;
    Select_LetterUserMemo: TWideStringField;
    Select_LetterRegistrationDate: TStringField;
    Select_LetterRegistrationTime: TStringField;
    Select_LetterFollowLetterNo: TWideStringField;
    Select_LetterToStaffer: TWideStringField;
    Select_LetterSentLetterID: TIntegerField;
    Select_LetterTemplateID: TIntegerField;
    Select_LetterHeaderID: TIntegerField;
    Select_LetterLetterRecommites: TWideStringField;
    Select_LetterPreCode: TWideStringField;
    Select_Letterfromstaffer: TWideStringField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterSendStatusID: TWordField;
    Select_LetterLastUpdate: TDateTimeField;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterUniqueID: TLargeintField;
    Select_LetterArchived: TBooleanField;
    Select_LetterLatestActionTypeID: TWordField;
    Select_LetterLatestActionReason: TWideStringField;
    Select_LetterSubjectDescription: TWideStringField;
    Select_LetterSubjectID: TIntegerField;
    Select_LetterDeadLineDate: TStringField;
    Select_LetterActionTypeID: TWordField;
    Select_LetterUserTableID2: TIntegerField;
    Select_LettersenderTitle: TWideStringField;
    Select_LetterIndicatorInnerNo: TWideStringField;
    BitBtn2: TAdvGlowButton;
    Images: TImageList;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    TreeView1: TTreeView;
    pnlMain: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure TreeView212Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TreeView1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TreeView212DblClick(Sender: TObject);
    procedure TreeView1Expanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
  private
    procedure ShowSelecttedItem;
    procedure GetLetter(LetterID: integer);
    Procedure GetFollow_Retro(aLetterID:integer;var Follow,Retro,IndicatorID,IncommingNo,aMemo:string;var aReciveMode:boolean) ;
    Procedure ExpandNode(aNode:TTreeNode);
    procedure LoadTree;
    procedure Expand(Node: TTreeNode);
  public
    LetterID : Integer;
  end;

Var
   FmLetterRalation: TFmLetterRalation;

implementation

uses Dmu , YShamsiDate , UMain , businessLayer;

{$R *.dfm}

Procedure TFmLetterRalation.FormCreate(Sender: TObject);
begin
   inherited;
   BidiModeToRight(TreeView1);
end;

Procedure TFmLetterRalation.FormShow(Sender: TObject);
//Var
   //C:^integer;
begin
   //New(C);
   //C^ := LetterID;
   //TreeView1.Items.AddChildObject(Nil,'����  ���� ',C);
   //ǐ� ���� �� ����� ���� �� ��� ���� ����� ��� ��� ���� ������ ������ ��������
   //ExpandNode(TreeView1.Items[0]);
   //TreeView1.FullExpand;
 LoadTree;
end;

procedure TFmLetterRalation.GetLetter(LetterID: integer);
begin
  inherited;
  with Select_Letter do
  begin
     Close;
     Parameters.ParamByName('@LetterID').Value := LetterID;
     Open;
  end;
end;

Procedure TFmLetterRalation.GetFollow_Retro(aLetterID:integer; Var Follow,Retro,IndicatorID,IncommingNo,aMemo:String; Var aReciveMode:Boolean) ;
begin
(*
   GetLetter(aLetterID);

   Follow      := Trim(Select_LetterFollowLetterNo.AsString);
   Retro       := Trim(Select_LetterRetroactionNo.AsString);
   aReciveMode := (Select_LetterLetter_Type.AsInteger=1);//����� �� �����
   IndicatorID := Select_LetterIndicatorID.AsString;
   IncommingNo := Trim(Select_LetterIncommingNO.AsString);
   aMemo       := Trim(Select_LetterMemo.AsString);
*)
end;

//Edit By Sanaye 950521
//�������  �� ���� ��� ��� � ���� ���� � ��ϐ���
Procedure TFmLetterRalation.ExpandNode(aNode:TTreeNode);
(*
var
   IndicatorID,InCommingNo,aMemo : string;
   aLetterID : integer;
   C:^integer;

   FR_Node : TTreeNode;
   PR_Node : TTreeNode;
   AQry : TADOQuery;
  Procedure ExpandNode_Follow_Retroaction(aNode1:TTreeNode);
  var
     IndID,InComNo,aMem : string;
     aLetID : integer;
     C1, C2:^integer;
  begin
     C1 := aNode1.Data;
     aLetID := C1^;
     GetLetter(aLetID);
     IndID := Select_LetterIndicatorID.AsString;
     InComNo := Trim(Select_LetterIncommingNO.AsString);
     aMem       := Trim(Select_LetterMemo.AsString);

     aNode1.Text:='�������� : ' + IndID ;
     if InComNo <> '' then
        aNode1.Text := aNode1.Text + ', ����� ���� : '+ InComNo + ' , ����� : ' + aMem ;

  end;
  *)
begin
   (*
   // Amin 1391/12/06 Start
   {if aNode.Level > 5 then
      Exit;              }
   // Amin 1391/12/06 End

   C := aNode.Data;
   aletterID := C^;

   //GetFollow_Retro(aLetterID,F,R,Ind,No,Memo,ReciveMode);
   GetLetter(aLetterID);
   IndicatorID := Select_LetterIndicatorID.AsString;
   IncommingNo := Trim(Select_LetterIncommingNO.AsString);
   aMemo       := Trim(Select_LetterMemo.AsString);

   aNode.Text:='�������� : ' + IndicatorID ;
   if InCommingNo <> '' then
      aNode.Text := aNode.Text + ', ����� ���� : '+ InCommingNo + ' , ����� : ' + aMemo ;

   with Dm.adoFollow_Retroaction_Letter do
   begin
    Close;
    Parameters.ParamByName('LetterID').Value := aLetterID;
    Open;
    if RecordCount > 0 then
    begin
      First;
      while not EOF do
      begin
        New(c);
        C^ := Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger;
        FR_Node := TreeView1.Items.AddChildObject(aNode,'',C);
        FR_Node.ImageIndex := Dm.adoFollow_Retroaction_LetterFR_Kind.Value;
        ExpandNode_Follow_Retroaction(FR_Node);
        AQry := TADOQuery.Create(Self);
        try
         AQry.Connection := Dm.YeganehConnection;
         AQry.Close;
         AQry.SQL.Text := 'Select * from Follow_Retroaction_Letter where Letterid = ' + IntToStr(Dm.adoFollow_Retroaction_LetterFR_LetterID.AsInteger);
         AQry.Open;
         while not AQry.Eof do
          begin
           GetLetter(AQry.fieldByName('Letterid').AsInteger);
           IndicatorID := Select_LetterIndicatorID.AsString;
           IncommingNo := Trim(Select_LetterIncommingNO.AsString);
           aMemo       := Trim(Select_LetterMemo.AsString);
           ExpandNode_Follow_Retroaction(PR_Node);
           AQry.Next;
          end;
        finally
         AQry.Free;
        end;
        Next;
      end;
    end;
   end;

  (*
   if dm.GetFollowAndRetRoAction(True,ReciveMode,F, _Year, FLetterID,Rr) then // Amin 1391/12/05 Edited
   begin
      New(c);
      C^ := FLetterID;
      FNode := TreeView1.Items.AddChildObject(aNode,'',C);
      FNode.ImageIndex := 0;
      ExpandNode(FNode);
   end;

   if dm.GetFollowAndRetRoAction(False,ReciveMode,R,_Year, RLetterID,Rr) then  // Amin 1391/12/05 Edited
   begin
      New(C);
      C^ := RLetterID;
      RNode := TreeView1.Items.AddChildObject(aNode,IntToStr(RLetterID),C);
      RNode.ImageIndex:=1;
      ExpandNode(RNode);
   end;
   *)


   //End Sanaye*)
end;

procedure TFmLetterRalation.ShowSelecttedItem;
Var
   C : ^integer;
   LetterID : integer;
begin
   inherited;
   LetterId := StrToInt(PMyRec(TreeView1.Selected.Data)^.SetUserCode);
   GetLetter(LetterID);
end;

procedure TFmLetterRalation.TreeView212Click(Sender: TObject);
begin
   inherited;
   ShowSelecttedItem;

end;

procedure TFmLetterRalation.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFmLetterRalation.TreeView1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   inherited;
   ShowSelecttedItem;
end;

procedure TFmLetterRalation.TreeView212DblClick(Sender: TObject);
Var
   C : ^integer;
   LetterID : integer;
begin
   inherited;
   LetterId := StrToInt(PMyRec(TreeView1.Selected.Data)^.SetUserCode);
   GetLetter(LetterID);
    with MainForm do
    case Select_LetterLetter_Type.AsInteger of
       1:ViewReceivedLetter(LetterID);
       2:ViewSentLetter(LetterID);
       3:ViewInnerLetter(LetterID);
    end;
end;

procedure TFmLetterRalation.LoadTree;
var
  Node_: TTreeNode;
  MyPtr: PMyRec;
  SetCode_Temp: string;
  adoqryAllOperation : TADOQuery;
begin
  try
    adoqryAllOperation := TADOQuery.Create(Self);
    adoqryAllOperation.Connection := Dm.YeganehConnection;
    adoqryAllOperation.Close;
    adoqryAllOperation.SQL.Text :=
      '  select ''�������� : '' + cast(indicatorid as varchar(10)) as Dscp,LetterId,MYear from Letter Where LetterId = ' + IntToStr(LetterID);
    adoqryAllOperation.Open;

    new(MyPtr);
    MyPtr^.setusercode := adoqryAllOperation.FieldByName('MYear').Value;
    MyPtr^.setcode := adoqryAllOperation.FieldByName('LetterID').AsString;
    MyPtr^.SetDscp := adoqryAllOperation.FieldByName('Dscp').AsString;

    Node_ := TreeView1.Items.AddObject(nil, adoqryAllOperation.FieldByName('Dscp').Value, MyPtr);
    Node_.HasChildren := true;
    TreeView1.Items.Item[0].Selected := True;
    TreeView1.Items.Item[0].Expand(False);
  finally
  end;
end;

procedure TFmLetterRalation.Expand(Node: TTreeNode);
var
  Node_: TTreeNode;
  MyPtr: PMyRec;
  AQry,BQry : TADOQuery;
  S, P : String;
begin
 try
  AQry := TADOQuery.Create(Self);
  AQry.Connection := Dm.YeganehConnection;
  BQry := TADOQuery.Create(Self);
  BQry.Connection := Dm.YeganehConnection;
  TreeView1.Selected := Node;
  TreeView1.Selected.DeleteChildren;
  AQry.Close;
  AQry.SQL.Text :=
    ' select Letter.indicatorid,letter.IncommingNO,Letter.Memo as Dscp ' +
    ' , Follow_Retroaction_Letter.FR_LetterID,Letter.LetterID,Follow_Retroaction_Letter.FR_Kind from Follow_Retroaction_Letter ' +
    ' left outer join Letter on letter.LetterID = Follow_Retroaction_Letter.FR_LetterID ' +
    ' where Follow_Retroaction_Letter.LetterId = ' + PMyRec(TreeView1.Selected.Data)^.SetCode +
    ' Order By Follow_Retroaction_Letter.FR_LetterID' ;
  AQry.Open;
  while not AQry.Eof do
  begin
    new(MyPtr);
    MyPtr^.setusercode := AQry.FieldByName('LetterId').Value;
    MyPtr^.setcode := AQry.FieldByName('FR_LetterID').Value;
    S := '';
    S := AQry.FieldByName('Dscp').AsString + #$D#$A;
    S := S + ' �����: ';
    S := S + StringReplace(AQry.FieldByName('IncommingNO').AsString,' ','',[rfReplaceAll]);
    S := S + '  ��������: ';
    S := S + AQry.FieldByName('indicatorid').AsString + ' ';
    S := S + ' �����: ';
    MyPtr^.SetDscp := S;
    Node_ := TreeView1.Items.AddChildObject(TreeView1.Selected, S, MyPtr);
    Node_.ImageIndex := AQry.FieldByName('FR_Kind').Value;
    BQry.Close;
    BQry.SQL.Text := 'Select Count(FR_LetterID)as HasChild from Follow_Retroaction_Letter Where LetterId = ' + AQry.FieldByName('LetterId').AsString;
    BQry.Open;
    if BQry.FieldByName('HasChild').AsInteger > 0 then
     Node_.HasChildren := true;
    AQry.Next;
  end;
 finally
 end;
end;

procedure TFmLetterRalation.TreeView1Expanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
begin
  inherited;
  if Node.Count <= 0 then
    Expand(Node);
end;


end.
