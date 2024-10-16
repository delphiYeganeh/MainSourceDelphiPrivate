unit Upd_latererdata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DBCtrls, ExtCtrls, DB, ADODB,
  ImgList;

type
  TfrmUpd_latererdata = class(TForm)
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    TreeView1: TTreeView;
    ImageList2: TImageList;
    Label1: TLabel;
    edtSearch: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DefineColorTreeView;
    function CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):Integer;
    procedure AddNodeINTreeView(LDestNode: TTreeNode;_ID:String);
    procedure edtSearchChange(Sender: TObject);
    procedure SearchNode(const ANode: TTreeNode; const AText: string);
    procedure SelectNode(const Tx: string; Tree: TTreeView);
    function FindDefineColorId : Integer;
  private
    { Private declarations }
  public
    { Public declarations }
    LetterDataID : Integer;
    DefineColor : String;
  end;

var
  frmUpd_latererdata: TfrmUpd_latererdata;

implementation

uses Dmu, ScanImageDM;

{$R *.dfm}
procedure SetWinControlBiDi(Control: TWinControl);
var
  ExStyle: Longint;
begin
  ExStyle := GetWindowLong(Control.Handle, GWL_EXSTYLE);
  SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT );
end;

procedure TfrmUpd_latererdata.FormShow(Sender: TObject);
begin
  DefineColorTreeView();
end;
procedure TfrmUpd_latererdata.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

function TfrmUpd_latererdata.FindDefineColorId : Integer;
 var
  _Query : String;
begin
  Result:=-1;
  if  TreeView1.Selected.Level >= 1 then
  begin
    _Query:=' Select s.id,s.color,d.Descriptions DsName,s.Descriptions DsParent From DefineColors d ' +
            'join DefineColors s on d.ID = s.Parent Where d.Descriptions =N' + QuotedStr(TreeView1.Selected.Parent.Text) +
           ' and s.Descriptions=N'+QuotedStr(TreeView1.Selected.Text) + '' ;
  end
  else _Query:='SELECT * FROM DefineColors where Parent=0 and Descriptions = N'+QuotedStr(TreeView1.Selected.Text)+'';

  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if recordcount > 0 then Result := Fieldbyname('id').Value;
    except on E : Exception do
     begin
      ShowMessage('���� ������' + E.Message);
      Exit;
     end;
    end;
  end;
end;

procedure TfrmUpd_latererdata.BitBtn1Click(Sender: TObject);
begin
  DMScanImage.DSSelImage.DataSet.Close;
  With Dm.spIns_laterdata do
  begin
    Parameters.ParamByName('@ColorID').Value      := FindDefineColorId;
    Parameters.ParamByName('@LetterDataID').Value := LetterDataID;
    ExecProc;
  end;
  DMScanImage.DSSelImage.DataSet.Open;
  Close;
end;

function TfrmUpd_latererdata.CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):Integer;
var
  bmp : TBitmap;
begin
  bmp := TBitmap.Create;
  try
    bmp.PixelFormat := pf24bit;
    bmp.Width := Width;
    bmp.Height := Height;
    bmp.Canvas.Brush.Color := Color;
    bmp.Canvas.FillRect(Rect(0, 0, Width, Height));
    ImageList2.Add(bmp,bmp);
    Result := ImageList2.Count - 1;
  finally
    bmp.Free;
  end;
end;

procedure TfrmUpd_latererdata.AddNodeINTreeView(LDestNode: TTreeNode;_ID:String);
var
  _Query:String;
  LDestNode2:TTreeNode;
begin
  _Query:='SELECT * FROM DefineColors where parent ='+_ID;
  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
      begin
        Free;
        Exit;
      end;
      repeat
        try
          LDestNode2:= TreeView1.Items.AddChild(LDestNode, FieldByName('Descriptions').asstring);
          LDestNode2.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');
          AddNodeINTreeView(LDestNode2,FieldByName('ID').asstring);
        except
        end;
        Next;
      until Eof;
    except
    end;
    free
  end;
end;

procedure TfrmUpd_latererdata.DefineColorTreeView;
var
  UserIdCreator : Integer;
  LDestNode : TTreeNode;
  AQry : TADOQuery;
  _Query : String;
begin
  inherited;
  ImageList2.Clear;
  SetWinControlBiDi(TreeView1);
  TreeView1.Refresh;
  try
    _Query:='Select * From DefineColors where parent=0 Order by Id Desc';
    Dm.qDefineColors.SQL.Clear;
    Dm.qDefineColors.SQL.Add(_Query);
    Dm.qDefineColors.Open;

    TreeView1.Items.Clear;
    Dm.qDefineColors.First;
    repeat
      try
        LDestNode:=TreeView1.Items.AddFirst(nil,Dm.qDefineColors.FieldByName('Descriptions').asstring);
        LDestNode.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(Dm.qDefineColors.FieldByName('Color').asString),'');
        AddNodeINTreeView(LDestNode,Dm.qDefineColors.FieldByName('ID').asstring);
      except
       on E : Exception do
        begin
          ShowMessage('���� ������' + E.Message);
          Exit;
        end;
      end;
      Dm.qDefineColors.Next;
    until Dm.qDefineColors.Eof;
    Dm.qDefineColors.RecNo:=1;
  except
   on E : Exception do
    begin
      ShowMessage('���� ������' + E.Message);
      Exit;
    end;
  end;
end;

function ContainsText(const AText, ASubText: string): Boolean;
begin
    Result := Pos(AnsiUpperCase(ASubText), AnsiUpperCase(AText)) > 0;
end;

procedure TfrmUpd_latererdata.SearchNode(const ANode: TTreeNode; const AText: string);
var
  ChildNode: TTreeNode;
begin
 if  ContainsText(ANode.Text, AText) then
 begin
   Exit;
 end;
 ChildNode := ANode.GetFirstChild;
 While ChildNode <> nil do
 begin
   SearchNode(ChildNode, AText);
   ChildNode := ANode.GetNextChild(ChildNode);
 end;
end;

procedure TfrmUpd_latererdata.edtSearchChange(Sender: TObject);
begin
   if edtSearch.Text <> '' then
     SelectNode(edtSearch.Text,TreeView1);
end;

procedure TfrmUpd_latererdata.SelectNode(const Tx: string; Tree: TTreeView);
var
  node : TTreeNode;
begin
  if Tx = '' then exit;
  node := Tree.Items[0];
  while (node <> nil) do
  begin
    if CompareText(Tx, node.Text) = 0 then
    begin
      Tree.SetFocus;
      Tree.Selected := node;
      node.MakeVisible;
      break;
    end else
    begin
       node := node.GetNext;
    end;
  end;
end;
end.
