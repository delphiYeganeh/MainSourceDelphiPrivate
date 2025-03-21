unit LetterRalationFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBTreeView, ExtCtrls, DB, ADODB, DBCtrls, Grids,
  DBGrids, StdCtrls, UemsVCL, Mask, BaseUnit,  ExtActns, ActnList,
  Buttons, ImgList, ZipForge, Menus, xpWindow, AdvGlowButton;

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
    DBMemo2: TDBMemo;
    Label6: TLabel;
    Select_Letter: TADOStoredProc;
    TreeView1: TTreeView;
    BitBtn2: TAdvGlowButton;
    Images: TImageList;
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
    Select_LetterFromStaffer: TWideStringField;
    Select_LetterLastUpdate: TDateTimeField;
    Select_LetterSendStatusID: TWordField;
    Select_LetterUserTableID: TIntegerField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterUserMemo1: TWideStringField;
    Select_LetterUserMemo2: TWideStringField;
    Select_LetterColor: TIntegerField;
    Select_LetterLinked_LetterID: TIntegerField;
    Select_LetterVersionDate: TStringField;
    Select_LetterVersionNumber: TStringField;
    Select_LettersenderTitle: TWideStringField;
    QTemp: TADOQuery;
    Select_LetterSecretariatName: TStringField;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    pnlMain: TPanel;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TreeView1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TreeView1DblClick(Sender: TObject);
    //
  private
    procedure ShowSelecttedItem;
    procedure GetLetter(LetterID: integer);
    Procedure GetFollow_Retro(aLetterID:integer;var Follow,Retro,IndicatorID,IncommingNo,aMemo:string;var aReciveMode:boolean; Var SecratariatID:Integer);
    Procedure ExpandNode(aNode:TTreeNode);

    function GetFollow:String;
    function GetSecretariatID(LetterID:Integer):Integer;
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
Var
   C:^integer;
begin
   New(C);
   C^ := LetterID;
   TreeView1.Items.AddChildObject(Nil,'��� ���� ',C);

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

Procedure TFmLetterRalation.GetFollow_Retro(aLetterID:integer; Var Follow,Retro,IndicatorID,IncommingNo,aMemo:String; Var aReciveMode:Boolean; Var SecratariatID:Integer);
begin
   GetLetter(aLetterID);

   Follow      := Trim(GetFollow); //Trim(Select_LetterFollowLetterNo.AsString);
   Retro       := Trim(Select_LetterRetroactionNo.AsString);
   aReciveMode := (Select_LetterLetter_Type.AsInteger=1);//����� �� �����
   IndicatorID := Select_LetterIndicatorID.AsString;
   IncommingNo := Trim(Select_LetterIncommingNO.AsString);
   aMemo       := Trim(Select_LetterMemo.AsString);
   if (Select_LetterLinked_LetterID.IsNull) then
      SecratariatID:=0
   else
      SecratariatID:=GetSecretariatID(Select_LetterLinked_LetterID.AsInteger);
end;

Procedure TFmLetterRalation.ExpandNode(aNode:TTreeNode);
var
   F,R,Ind,No,Memo : string;
   aLetterID,FLetterID,RLetterID,SecratariatID : integer;
   ReciveMode,Rr:boolean;
   C:^integer;
   FNode,RNode : TTreeNode;
begin
   if aNode.Level > 5 then
      Exit;

   C := aNode.Data;
   aletterID := C^;
   GetFollow_Retro(aLetterID,F,R,Ind,No,Memo,ReciveMode,SecratariatID);
   aNode.Text:='�������� : ' + Ind ;
   if No <> '' then
      aNode.Text := aNode.Text + ', ����� ��� : '+ No + ' , ����� : ' + Memo ;

   if dm.GetFollowAndRetRoAction(True,ReciveMode,F,FLetterID,Rr,SecratariatID) then
   begin
      New(c);
      C^ := FLetterID;
      FNode := TreeView1.Items.AddChildObject(aNode,'',C);
      FNode.ImageIndex := 0;
      ExpandNode(FNode);
   end;

   if dm.GetFollowAndRetRoAction(False,ReciveMode,R,RLetterID,Rr,SecratariatID) then
   begin
      New(C);
      C^ := RLetterID;
      RNode := TreeView1.Items.AddChildObject(aNode,IntToStr(RLetterID),C);
      RNode.ImageIndex:=1;
      ExpandNode(RNode);
   end;
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
//    with MainForm do
//    case Select_LetterLetter_Type.AsInteger of
//       1:ViewReceivedLetter(LetterID);
//       2:ViewSentLetter(LetterID);
//       3:ViewInnerLetter(LetterID);
//    end;
end;

function TFmLetterRalation.GetFollow: String;
begin
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT IncommingNO FROM Letter');
  QTemp.SQL.Add('WHERE LetterID='+IntToStr(Select_LetterLinked_LetterID.AsInteger));
  QTemp.Open;
  if not QTemp.IsEmpty then
      Result:=QTemp.FieldValues['IncommingNO']
  else
      Result:='';
end;

function TFmLetterRalation.GetSecretariatID(LetterID: Integer): Integer;
begin
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT SecretariatID FROM Letter');
  QTemp.SQL.Add('WHERE LetterID='+IntToStr(LetterID));
  QTemp.Open;
  if not QTemp.IsEmpty then
      Result:=QTemp.FieldValues['SecretariatID']
  else
      Result:=0;

end;

end.
