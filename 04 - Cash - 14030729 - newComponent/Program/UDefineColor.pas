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
    ImageList1: TImageList;
    acDel: TAction;
    acAdd: TAction;
    acPost: TAction;
    acEdit: TAction;
    acUndo: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    acExit: TAction;
    MssDBGrid1: TMssDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    AdvOfficeColorSelector1: TAdvOfficeColorSelector;
    DBAdvGrid2: TDBAdvGrid;
    Button1: TButton;
    ImageList2: TImageList;
    TreeView1: TTreeView;
    procedure FormCreate(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acPostExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acUndoExecute(Sender: TObject);
    procedure acDelExecute(Sender: TObject);
    procedure MssDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MssDBGrid1EditButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBAdvGrid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure TreeView1Click(Sender: TObject);
    procedure TreeView1GetSelectedIndex(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
    ImgIndexSelected : Integer;
    _MaxNumber:String;
    procedure AddParentItems;
    function FindColors(NodeName:String):string;
    function CreateBitmapSolidColor(Width,Height:Word;Color:TColor;const FileName : TFileName):integer;
  public
    { Public declarations }
    _OldQuery ,_MyID:String;
    procedure LoadDivider;
    procedure AddNodeINTreeView(LDestNode: TTreeNode;_ID:String);
    function FindID(_Name:String):String;
  end;

var
  FDefineColor: TFDefineColor;

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
 SetWindowLong(Control.Handle, GWL_EXSTYLE, ExStyle or WS_EX_RTLREADING or WS_EX_RIGHT
   or WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT );
end;

procedure TFDefineColor.FormCreate(Sender: TObject);
begin
  inherited;
  Dm.qDefineColors.Close;
  Dm.qDefineColors.Open;
  DSForm.DataSet:=Dm.qDefineColors;
end;

procedure TFDefineColor.acExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFDefineColor.acAddExecute(Sender: TObject);
begin
  inherited;
 AddParentItems;
 //Dm.qDefineColors.Last;

 _MaxNumber:=IntToStr(Dm.qDefineColors.FieldByname('ID').AsInteger+1);
  if not(Dm.qDefineColors.State in [dsEdit,dsInsert]) then
    begin
      Dm.qDefineColors.Insert;
      DBComboBox1.ItemIndex:=0;
      DBComboBox2.ItemIndex:=0;
         DBEdit1.Enabled:=True;
      DBEdit2.Enabled:=True;
      DBComboBox1.Enabled:=True;
            AdvOfficeColorSelector1.Enabled:=true;
      end;
end;

procedure TFDefineColor.acPostExecute(Sender: TObject);
begin
  inherited;

  if Dm.qDefineColors.State in [dsEdit,dsInsert] then
    begin
      Dm.qDefineColors.FieldByName('Color').Value:=ColorToString(AdvOfficeColorSelector1.SelectedColor) ;
      Dm.qDefineColors.FieldByName('Parent').Value:=DBComboBox2.Text;
      Dm.qDefineColors.FieldByName('ParentName').Value:= DBEdit1.Text;
      Dm.qDefineColors.post;


        Dm.qDefineColors.SQL.Text:=_OldQuery;
        Dm.qDefineColors.Open;

        LoadDivider;
        AddParentItems;
      DBEdit1.Enabled:=false;
      DBEdit2.Enabled:=false;
      DBComboBox1.Enabled:=false;
      AdvOfficeColorSelector1.Enabled:=false;

      exit;
      if DBComboBox2.ItemIndex=0 then
      begin
        if not Dm.qDefineColors.IsEmpty then
        begin
          Dm.qDefineColors.FieldByName('Parent').Value:=_MaxNumber;
          Dm.qDefineColors.FieldByName('ParentName').Value:= DBEdit1.Text;

        end;

      end
      else
       if not Dm.qDefineColors.RecordCount=1  then
      Dm.qDefineColors.FieldByName('Parent').Value:=DBComboBox2.Items[DBComboBox1.ItemIndex];

     Dm.qDefineColors.Post;
    end;

        if Dm.qDefineColors.RecordCount=1 then
        begin
          //Dm.qDefineColors.Last;
          _MaxNumber:=IntToStr(Dm.qDefineColors.FieldByname('ID').AsInteger+1);
          Dm.qDefineColors.Edit;
          Dm.qDefineColors.FieldByName('Parent').Value:=_MaxNumber;
          Dm.qDefineColors.FieldByName('ParentName').Value:= DBEdit1.Text;
          Dm.qDefineColors.Post

        end;

// AddParentItems;

end;

procedure TFDefineColor.acEditExecute(Sender: TObject);
var
  _Query:String;
begin
  inherited;

  if Dm.qDefineColors.State=dsBrowse then
    begin
      FindID('');
      DBEdit1.Enabled:=True;
      DBEdit2.Enabled:=True;
      DBComboBox1.Enabled:=True;
            AdvOfficeColorSelector1.Enabled:=true;
      Dm.qDefineColors.Edit;

     end;
end;

procedure TFDefineColor.acUndoExecute(Sender: TObject);
begin
  inherited;
  if Dm.qDefineColors.State in [dsEdit,dsInsert] then
     Dm.qDefineColors.Cancel;
     DBEdit1.Enabled:=false;
      DBEdit2.Enabled:=false;
      DBComboBox1.Enabled:=false;
      AdvOfficeColorSelector1.Enabled:=false;
end;

procedure TFDefineColor.acDelExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('ÂíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ',mtConfirmation,[mbyes,mbno],0)=mryes then
     begin
      with TADOQuery.Create(nil) do
      begin
       sql.Clear;
       sql.Add(' select * from DefineColors where Parent = '+_MyID)  ;
       try
           Connection:=Dm.YeganehConnection;
           open;
           if IsEmpty then
            begin
            dm.qDefineColors.Delete;
            LoadDivider;
            AddParentItems;
            end
            else
              begin
              ShowMessage('ÇÈÊÏÇ ÒíÑ ÔÇÎå åÇ ÑÇ ÍÐÝ ˜äíÏ');
              end;
       except
       end;
       free;
      end;
     end;
end;

procedure TFDefineColor.MssDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if not MssDBGrid1.DataSource.DataSet.IsEmpty then
    if not (MssDBGrid1.DataSource.DataSet.State in [dsEdit,dsInsert]) then
    if UpperCase(Column.FieldName)=UpperCase('Color') then
    begin
        MssDBGrid1.Canvas.Brush.Color:=StringToColor(Dm.qDefineColorsColor.AsString);
        MssDBGrid1.Canvas.FillRect(Rect);
    end;
end;

procedure TFDefineColor.MssDBGrid1EditButtonClick(Sender: TObject);
begin
  if UpperCase(MssDBGrid1.SelectedField.FieldName)=UpperCase('Color') then
  begin
      ColorDialog1.Execute;
      Dm.qDefineColors.Edit;
      Dm.qDefineColorsColor.AsString:=ColorToString(ColorDialog1.Color);
  end;
end;

procedure TFDefineColor.AddParentItems;

 var
  I:Integer;
begin
//  if Dm.qDefineColors.IsEmpty then Exit;

 Dm.qDefineColors.SQL.Text:='select * from DefineColors';
 Dm.qDefineColors.Active:=False;
Application.ProcessMessages;
Dm.qDefineColors.Active:=True;
DBComboBox1.Items.Clear;

DBComboBox2.Items.clear;
DBComboBox1.Items.Add('ÈÏæä ÒíÑ ÔÇÎå') ;
DBComboBox2.Items.Add('0') ;
    if Dm.qDefineColors.IsEmpty then Exit;
    Dm.qDefineColors.RecNo:=1;
for I :=  1 to Dm.qDefineColors.RecordCount do
  begin
    DBComboBox1.Items.Add(Dm.qDefineColors.FieldbyName('Descriptions').asstring) ;
    DBComboBox2.Items.Add(Dm.qDefineColors.FieldbyName('ID').asstring) ;
//    DBAdvGrid2.AddShape(1,i,csRectangle,StringToColor(Dm.qDefineColors.FieldByName('Color').AsString),clBlack, haBeforeText, vaCenter);

    Dm.qDefineColors.Next;
  end;
  exit;
Dm.qDefineColors.RecNo:=1;
DBAdvGrid2.Cells[0,0]:='';
DBAdvGrid2.Cells[1,0]:='';
DBAdvGrid2.Cells[2,0]:='';
DBAdvGrid2.Cells[3,0]:='';
DBAdvGrid2.Cells[4,0]:='';
DBAdvGrid2.Cells[5,0]:='';
DBAdvGrid2.Cells[6,0]:='';

for I := 1 to Dm.qDefineColors.RecordCount do
  begin
    try
    DBAdvGrid2.AddShape(1,i,csRectangle,StringToColor(Dm.qDefineColors.FieldByName('Color').AsString),clBlack, haBeforeText, vaCenter);
    except
    end;

    Dm.qDefineColors.Next;
  end;

   DBAdvGrid2.Grouping.MergeHeader := true;
  DBAdvGrid2.Grouping.HeaderColor := clWhite;
  DBAdvGrid2.Grouping.HeaderColorTo := clInfoBk;
  DBAdvGrid2.SaveFixedCells := false;

DBAdvGrid2.Grouping.ShowGroupCount:=True;
//DBAdvGrid2.Group(2);
//DBAdvGrid1.SubGroup(2);

//  DBAdvGrid2.ContractAll;
     DBAdvGrid2.Group(2);
     DBAdvGrid2.SubGroup(2);
//  advstringgrid1.SubGroup(1);
//  DBAdvGrid2.ContractAll;
//  DBAdvGrid2.HideColumn(0);
    DBAdvGrid2.HideColumn(4);
end;

procedure TFDefineColor.FormShow(Sender: TObject);
var
  I:Integer;
begin
  inherited;
  ImageList2.Clear;
  _OldQuery:=Dm.qDefineColors.SQL.Text;
  AddParentItems ;
  LoadDivider;
  SetWinControlBiDi(TreeView1);
  TreeView1.Refresh;
  if Dm.qDefineColors.State in [dsEdit,dsInsert] then
     Dm.qDefineColors.Cancel;
end;

procedure TFDefineColor.DBComboBox1Change(Sender: TObject);
begin
  inherited;
DBComboBox2.ItemIndex:=DBComboBox1.ItemIndex ;
_MaxNumber:=DBComboBox2.Text;
end;

procedure TFDefineColor.DBAdvGrid2GetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
   VAlign := vtaCenter;
   HAlign:=taleftJustify
end;

procedure TFDefineColor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   Dm.qDefineColors.SQL.Text:=_OldQuery;
   Dm.qDefineColors.Close;
end;

procedure TFDefineColor.Button1Click(Sender: TObject);
begin
  inherited;
AddParentItems
end;

procedure TFDefineColor.LoadDivider;
var
  _Query:String;
  LDestNode:TTreeNode;
begin
try
   _Query:='SELECT * FROM DefineColors where  parent =0 Order by Id Desc';
   Dm.qDefineColors.SQL.Clear;
   Dm.qDefineColors.SQL.Add(_Query);
   Dm.qDefineColors.Open;

//Add Father
TreeView1.Items.Clear;
if Dm.qDefineColors.IsEmpty then Exit;
Dm.qDefineColors.First;
   repeat
     try
    LDestNode:=TreeView1.Items.AddFirst(nil, Dm.qDefineColors.FieldByName('Descriptions').asstring);
    LDestNode.ImageIndex := CreateBitmapSolidColor(16,16,StringToColor(Dm.qDefineColors.FieldByName('Color').asString),'');
    AddNodeINTreeView(LDestNode,Dm.qDefineColors.FieldByName('ID').asstring);
    except
    end;
    Dm.qDefineColors.Next;
   until Dm.qDefineColors.Eof;
   Dm.qDefineColors.RecNo:=1;
    DBAdvGrid2.Cells[0,0]:='';
    DBAdvGrid2.Cells[1,0]:='';
    DBAdvGrid2.Cells[2,0]:='';
    DBAdvGrid2.Cells[3,0]:='';
    DBAdvGrid2.Cells[4,0]:='';
    DBAdvGrid2.Cells[5,0]:='';
    DBAdvGrid2.Cells[6,0]:='';
   Button1.Click;
  except
  end;
end;

procedure TFDefineColor.AddNodeINTreeView(LDestNode: TTreeNode;
  _ID: String);
var
  _Query:String;
  LDestNode2:TTreeNode;
begin
   _Query:='SELECT * FROM DefineColors where parent =' + _ID;
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

procedure TFDefineColor.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var
    SColors:String;
begin
  inherited;
  { with Sender as TCustomTreeView do Hamed_Ansari_981211
        begin
        SColors:=FindColors(Node.Text);
        Canvas.Brush.Color:=StringToColor(SColors);
        Canvas.Font.Color := clWhite;

      end;
}
end;

function TFDefineColor.FindColors(NodeName: String): string;
begin
//
Result:='0';
with TADOQuery.Create(Nil) do
  begin
    sql.Clear;
    SQL.Add('SELECT * FROM DefineColors where  Descriptions = N'+QuotedStr(NodeName)+'');
    try
        Connection:=Dm.YeganehConnection;
        open;
          if not IsEmpty then  Result:=FieldByName('color').asstring;
    except
    end;
    free;
  end;
end;

function TFDefineColor.FindID(_Name: String): String;
 var
  _Query:String;
begin
if  TreeView1.Selected.Level >= 1 then
 begin

 _Query:='SELECT s.AccessDesc,s.id,s.color,d.Descriptions DsName, s.Descriptions DsParent, s.parent,s.ParentName,s.Descriptions FROM DefineColors d join  DefineColors  s on d.ID = s.Parent  where d.ParentName =N'+
                  QuotedStr(TreeView1.Selected.Parent.Text)+
                ' and  s.ParentName=N'+QuotedStr(TreeView1.Selected.Text)+'';
 end
 else
  begin
   _Query:='SELECT * FROM DefineColors  where Parent =0 and Descriptions = N'+QuotedStr(TreeView1.Selected.Text)+'';

 end;

with Dm.qDefineColors do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      if IsEmpty then
        begin

          exit;

        end;
        _MyID:=FieldByName('ID').asstring;

    except
       on E:Exception DO
        ShowMessage(e.Message);
    end;

  end;
  _Query:='SELECT * FROM DefineColors  where ID = '+ _MyID;
  with Dm.qDefineColors do
  begin
    SQL.Clear;
    SQL.Add(_Query);
    Connection:=Dm.YeganehConnection;
    try
      open;
      AdvOfficeColorSelector1.SelectedColor:=StringToColor(FieldByName('color').asstring)

    except
       on E:Exception DO
        ShowMessage(e.Message);
    end;

    DBComboBox2.ItemIndex:=DBComboBox1.ItemIndex;

  end;
end;

procedure TFDefineColor.TreeView1Click(Sender: TObject);
begin
  inherited;
    if Dm.qDefineColors.State in [dsEdit,dsInsert] then
     Dm.qDefineColors.Cancel;
FindID('')
end;

procedure TFDefineColor.TreeView1GetSelectedIndex(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Node.SelectedIndex := Node.ImageIndex;
end;

end.
