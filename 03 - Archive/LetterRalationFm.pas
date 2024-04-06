unit LetterRalationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBTreeView, ExtCtrls, DB, ADODB, DBCtrls, Grids,
  DBGrids, StdCtrls, UemsVCL, Mask, BaseUnit,  ExtActns, ActnList,
  Buttons, ImgList, ZipForge, Menus, xpWindow;

type
  TFmLetterRalation = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
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
    TreeView1: TTreeView;
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
    BitBtn2: TBitBtn;
    Images: TImageList;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TreeView1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TreeView1DblClick(Sender: TObject);

  private
    procedure ShowSelecttedItem;
    procedure GetLetter(LetterID: integer);
    Procedure GetFollow_Retro(aLetterID:integer;var Follow,Retro,IndicatorID,IncommingNo,aMemo:string;var aReciveMode:boolean) ;
    Procedure ExpandNode(aNode:TTreeNode);

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
   BidiModeToRight(TreeView1);
end;

Procedure TFmLetterRalation.FormShow(Sender: TObject);
Var
   C:^integer;
begin
   New(C);
   C^ := LetterID;
   TreeView1.Items.AddChildObject(Nil,'‰«„Â  Ã«—Ì ',C);
   //«ê— ‰«„Â «Ì œ«—«Ì ÅÌ—Ê Ì« ⁄ÿ› »«‘œ  Ê«»⁄ “Ì— »Ì‰ ¬‰Â« «— »«ÿ »—ﬁ—«— „Ì‰„«Ì‰œ
   ExpandNode(TreeView1.Items[0]);
   TreeView1.FullExpand;
   
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
   aReciveMode := (Select_LetterLetter_Type.AsInteger=1);//Ê«—œÂ Ì« ’«œ—Â
   IndicatorID := Select_LetterIndicatorID.AsString;
   IncommingNo := Trim(Select_LetterIncommingNO.AsString);
   aMemo       := Trim(Select_LetterMemo.AsString);
*)
end;

//Edit By Sanaye 950521
// €ÌÌ—«   »Â œ·Ì· À»  ⁄ÿ› Ê ÅÌ—Ê ÃœÌœ Ê ç‰œê«‰Â
Procedure TFmLetterRalation.ExpandNode(aNode:TTreeNode);
var
   IndicatorID,InCommingNo,aMemo : string;
   aLetterID : integer;
   C:^integer;

   FR_Node : TTreeNode;
  Procedure ExpandNode_Follow_Retroaction(aNode1:TTreeNode);
  var
     IndID,InComNo,aMem : string;
     aLetID : integer;
     C1:^integer;
  begin
     C1 := aNode1.Data;
     aLetID := C1^;
     GetLetter(aLetID);
     IndID := Select_LetterIndicatorID.AsString;
     InComNo := Trim(Select_LetterIncommingNO.AsString);
     aMem       := Trim(Select_LetterMemo.AsString);

     aNode1.Text:='«‰œÌò« Ê— : ' + IndID ;
     if InComNo <> '' then
        aNode1.Text := aNode1.Text + ', ‘„«—Â ‰«„Â : '+ InComNo + ' , „÷„Ê‰ : ' + aMem ;
  end;
begin
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

   aNode.Text:='«‰œÌò« Ê— : ' + IndicatorID ;
   if InCommingNo <> '' then
      aNode.Text := aNode.Text + ', ‘„«—Â ‰«„Â : '+ InCommingNo + ' , „÷„Ê‰ : ' + aMemo ;

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


   //End Sanaye
end;

procedure TFmLetterRalation.ShowSelecttedItem;
Var
   C : ^integer;
   LetterID : integer;
begin
   inherited;
   C := TreeView1.Selected.Data;
   LetterId := C^;
   GetLetter(LetterID);
end;

procedure TFmLetterRalation.TreeView1Click(Sender: TObject);
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

procedure TFmLetterRalation.TreeView1DblClick(Sender: TObject);
Var
   C : ^integer;
   LetterID : integer;
begin
   inherited;
   C := TreeView1.Selected.Data;
   LetterId := C^;
   GetLetter(LetterID);
    with MainForm do
    case Select_LetterLetter_Type.AsInteger of
       1:ViewReceivedLetter(LetterID);
       2:ViewSentLetter(LetterID);
       3:ViewInnerLetter(LetterID);
    end;
end;

end.
