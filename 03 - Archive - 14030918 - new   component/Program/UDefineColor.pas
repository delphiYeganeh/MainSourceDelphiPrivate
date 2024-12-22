unit UDefineColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, xpWindow, ExtActns, ActnList, DB, StdCtrls, ExtCtrls,
  Grids, DBGrids, ImgList, Buttons, MssDBGrid, DBCtrls, Mask,Adodb, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid,AdvUtil, AsgCombo, ColorCombo, AdvDropDown,
  AdvColorPickerDropDown, AdvGlowButton, AdvOfficeSelectors, ComCtrls;

type
  TFDefineColor = class(TMBaseForm)
    ColorDialog1: TColorDialog;
    acDel: TAction;
    acAdd: TAction;
    acPost: TAction;
    acEdit: TAction;
    acUndo: TAction;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    BitBtn3: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    acExit: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    csDefinColor: TAdvOfficeColorSelector;
    ImageList2: TImageList;
    tvColorView: TTreeView;
    lblParentTree: TLabel;
    lblId: TLabel;
    Label5: TLabel;
    acNew: TAction;
    BitBtn7: TAdvGlowButton;
    pnlMain: TPanel;
    Panel1: TPanel;
    ImageList1_old: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acUndoExecute(Sender: TObject);
    procedure acDelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvColorViewGetSelectedIndex(Sender: TObject; Node: TTreeNode);
    procedure tvColorViewChange(Sender: TObject; Node: TTreeNode);
    procedure acNewExecute(Sender: TObject);
  private
    { Private declarations }
    parentId : Integer;
    function CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):integer;
  public
    { Public declarations }
    procedure LoadDivider;
    procedure AddNodeINTreeView(_ID:String);
    function FindNodeFromID(Id:Integer):TTreeNode;
    function GetPatentTree(Id:Integer):String;
    procedure findNodeInColorView(findNode: TTreeNode;var Id : Integer; var Color : string);
  end;

type
   TNodeInfo = record
     id   : Integer;
     node : TTreeNode;
     color: string;
     name : string;
   end;

var
  FDefineColor: TFDefineColor;
  arrColorView : array of TNodeInfo;
  recColorView : TNodeInfo;
  currNode     : TTreeNode;

implementation

uses Dmu;

{$R *.dfm}

function TFDefineColor.CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):integer;
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

procedure SetWinControlBiDi(Control: TWinControl);
var
  ExStyle: Longint;
begin
  ExStyle := GetWindowLong(Control.Handle, GWL_EXSTYLE);
  SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT);
end;

procedure TFDefineColor.FormCreate(Sender: TObject);
begin
  inherited;
  Dm.qDefineColors.Close;
  Dm.qDefineColors.Open;
  DSForm.DataSet := Dm.qDefineColors;
end;

procedure TFDefineColor.acExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFDefineColor.acAddExecute(Sender: TObject);
begin
  inherited;
  if not(Dm.qDefineColors.State in [dsEdit, dsInsert]) then
  begin
    Dm.qDefineColors.Insert;
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    csDefinColor.Enabled := True;
  end;
end;

procedure TFDefineColor.acPostExecute(Sender: TObject);
var
  intId : Integer;
  strColor : String;
begin
  inherited;

  findNodeInColorView(currNode, intId, strColor);

  if Dm.qDefineColors.State in [dsInsert] then
  begin
    Dm.qDefineColors.FieldByName('Color').Value := ColorToString(csDefinColor.SelectedColor);
    if parentId = 0 then
      Dm.qDefineColors.FieldByName('Parent').Value := 0
    else
      Dm.qDefineColors.FieldByName('Parent').Value := intId;
    Dm.qDefineColors.FieldByName('ParentName').Value := DBEdit1.Text;
    Dm.qDefineColors.post;
  end
  else if Dm.qDefineColors.State in [dsEdit] then
  begin
    Dm.qDefineColors.FieldByName('Color').Value := ColorToString(csDefinColor.SelectedColor);
    Dm.qDefineColors.FieldByName('ParentName').Value := DBEdit1.Text;
    Dm.qDefineColors.post;
  end;

  LoadDivider;
  DBEdit1.Enabled := false;
  DBEdit2.Enabled := false;
  csDefinColor.Enabled := false;

  tvColorView.Selected := FindNodeFromID(intId);
  parentId := 1;
end;

procedure TFDefineColor.acEditExecute(Sender: TObject);
begin
  inherited;
  if Dm.qDefineColors.State = dsBrowse then
  begin
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    csDefinColor.Enabled := True;
    Dm.qDefineColors.Edit;
  end;
end;

procedure TFDefineColor.acUndoExecute(Sender: TObject);
begin
  inherited;
  if Dm.qDefineColors.State in [dsEdit,dsInsert] then
    Dm.qDefineColors.Cancel;
  DBEdit1.Enabled := false;
  DBEdit2.Enabled := false;
  csDefinColor.Enabled := false;
end;

procedure TFDefineColor.acDelExecute(Sender: TObject);
var
  intId : Integer;
  strColor : String;
begin
  inherited;
  if MessageDlg('ÂíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ', mtConfirmation, [mbyes,mbno], 0) = mryes then
  begin
    findNodeInColorView(currNode, intId, strColor);
    with TADOQuery.Create(nil) do
    begin
      sql.Clear;
      sql.Add('Select * From DefineColors Where Parent = ' + IntTostr(intId));
      try
        Connection := Dm.YeganehConnection;
        open;
        if IsEmpty then
        begin
          dm.qDefineColors.Delete;
          LoadDivider;
        end
        else
        begin
          ShowMessage('ÇÈÊÏÇ ÒíÑ ÔÇÎå åÇ ÑÇ ÍÐÝ ˜äíÏ');
        end;
      except on E:Exception do
            Showmessage(E.Message);
      end;
      free;
    end;
  end;
end;

procedure TFDefineColor.FormShow(Sender: TObject);
begin
  inherited;
  parentId := 1;
  ImageList2.Clear;
  LoadDivider;
  SetWinControlBiDi(tvColorView);
  tvColorView.Refresh;
  if Dm.qDefineColors.State in [dsEdit, dsInsert] then
    Dm.qDefineColors.Cancel;
end;

procedure TFDefineColor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  arrColorView := nil;
  Dm.qDefineColors.Close;
end;

procedure TFDefineColor.LoadDivider;
var
  strQuery : String;
  LDestNode : TTreeNode;
begin
  parentId := 1;
  strQuery := 'Select * From DefineColors where parent =0 Order by Id Desc';
  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(strQuery);
    Connection := Dm.YeganehConnection;
    try
      arrColorView := nil;
      tvColorView.Items.Clear;
      open;
      if IsEmpty then
      begin
        Free;
        Exit;
      end;

      repeat
        try
          LDestNode := tvColorView.Items.AddFirst(nil, FieldByName('Descriptions').asstring);
          LDestNode.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');

          recColorView.id := FieldByName('ID').AsInteger;
          recColorView.color:= FieldByName('Color').AsString;
          recColorView.name := FieldByName('Descriptions').AsString;
          recColorView.node := LDestNode;

          SetLength(arrColorView, Length(arrColorView) + 1);
          arrColorView[High(arrColorView)] := recColorView;

          AddNodeINTreeView(FieldByName('ID').asstring);
        except on E:Exception do
          //Showmessage('Error Child:'+E.Message);
        end;
        Next;
      until Eof;
      tvColorView.Selected := arrColorView[Low(arrColorView)].node;
      //tvColorViewChange(Sender, Node);
    except on E:Exception do
      //Showmessage('Error Child::'+E.Message);
    end;
    free;
  end;
end;

procedure TFDefineColor.AddNodeINTreeView(_ID: String);
var
  strQuery : String;
  nodeParent, nodeCurrIns:TTreeNode;
begin
  strQuery := 'With CTE As ( ' +
              'Select ID, Parent, Color, Descriptions	From DefineColors	Where Parent = ' + _ID + ' ' +
              'Union ALL ' +
              'Select P.ID, P.Parent, P.Color, P.Descriptions	From DefineColors P Inner Join CTE M ON M.ID = P.Parent) ' +
              'Select * From CTE';
  with TADOQuery.Create(nil) do
  begin
    SQL.Clear;
    SQL.Add(strQuery);
    Connection := Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
      begin
        Free;
        Exit;
      end;

      repeat
        try
          nodeParent := FindNodeFromID(FieldByName('Parent').AsInteger);

          nodeCurrIns:= tvColorView.Items.AddChild(nodeParent, FieldByName('Descriptions').asstring);
          nodeCurrIns.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(FieldByName('Color').asString),'');

          recColorView.id := FieldByName('ID').AsInteger;
          recColorView.color:= FieldByName('Color').AsString;
          recColorView.name := FieldByName('Descriptions').AsString;
          recColorView.node := nodeCurrIns;

          SetLength(arrColorView, Length(arrColorView) + 1);
          arrColorView[High(arrColorView)] := recColorView;

        except on E:Exception do
          //Showmessage('Error Child:'+E.Message);
        end;
        Next;
      until Eof;
    except on E:Exception do
      //Showmessage('Error Child::'+E.Message);
    end;
    free;
  end;
end;

procedure TFDefineColor.tvColorViewGetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex := Node.ImageIndex;
end;

function TFDefineColor.FindNodeFromID(Id: Integer): TTreeNode;
var
  index : Integer;
  nodeResult : TTreeNode;
begin
  nodeResult := nil;

  for index := Low(arrColorView) to High(arrColorView) do
  begin
    if arrColorView[index].id = Id then
    begin
      nodeResult := arrColorView[index].node;
      Break;
    end;
  end;

  Result := nodeResult;
end;

procedure TFDefineColor.tvColorViewChange(Sender: TObject; Node: TTreeNode);
var
  intId : Integer;
  strColor : string;
begin
  inherited;
  if Dm.qDefineColors.State in [dsEdit, dsInsert] then
    Dm.qDefineColors.Cancel;

  if Assigned(Node) then
  begin
    currNode := Node;

    findNodeInColorView(currNode, intId, strColor);

    Dm.qDefineColors.Locate('ID', intId, []);

    csDefinColor.SelectedColor := StringToColor(strColor);

    lblParentTree.Caption := GetPatentTree(intId);
    lblId.Caption := IntToStr(intId);
  end;
end;

procedure TFDefineColor.findNodeInColorView(findNode: TTreeNode;
  var Id: Integer; var Color: string);
var
  index, idResult : Integer;
  colorResult : String;
begin
  idResult := -1;
  colorResult := 'clBtnFace';

  for index := Low(arrColorView) to High(arrColorView) do
  begin
    if arrColorView[index].node = findNode then
    begin
      idResult := arrColorView[index].id;
      colorResult := arrColorView[index].color;
      Break;
    end;
  end;

  Id := idResult;
  Color := colorResult;
end;

function TFDefineColor.GetPatentTree(Id: Integer): String;
begin
  Result := '';
  with TADOQuery.Create(Nil) do
  begin
    sql.Clear;
    SQL.Add('With CTE As ( ' +
	          'Select Parent, ID, CAST([Descriptions] As nvarchar(max)) As List	From DefineColors	Where ID = ' + IntToStr(Id) + ' ' +
 	          'Union All ' +
  	        'Select P.Parent, C.ID, CONCAT(CAST(P.[Descriptions] As nvarchar(max)), N'' -> '', Cast(C.List As nvarchar(max)))	From DefineColors AS P Join CTE AS C ON C.Parent = P.ID) ' +
            'Select List From CTE Where Parent = 0');
    try
      Connection := Dm.YeganehConnection;
      open;
      if not IsEmpty then
        Result := FieldByName('list').asstring;
    except
    end;
    free;
  end;
end;

procedure TFDefineColor.acNewExecute(Sender: TObject);
begin
  inherited;
  if not(Dm.qDefineColors.State in [dsEdit, dsInsert]) then
  begin
    Dm.qDefineColors.Insert;
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    csDefinColor.Enabled := True;
    parentId := 0;
  end;
end;

end.
