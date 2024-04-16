unit MakeText;

interface

uses
  Forms,YDbgrid,  Dialogs, ActnMan, Grids, DBGrids, StdCtrls, Controls,
  ExtCtrls, Classes, ActnList, DB, ExtActns,graphics, ADODB, DBCtrls,
  ComCtrls, XPStyleActnCtrls, Buttons ;

type
  TFCreateText = class(TForm)
    ActionManager1: TActionManager;
    Aclose: TAction;
    SaveDialog: TSaveDialog;
    aINSERfIELD: TAction;
    ListBox1: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Button6: TButton;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    BBClose: TBitBtn;
    Editor: TMemo;
    procedure AcloseExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure aINSERfIELDExecute(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure BBCloseClick(Sender: TObject);

  private
    { Private declarations }
  public
   YDBGrid:TYDBGrid;

    { Public declarations }
  end;

var
  FCreateText: TFCreateText;


implementation
{$R *.dfm}

   var a: array[0..100] of string;

procedure TFCreateText.AcloseExecute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFCreateText.Button2Click(Sender: TObject);
 function WithExtend(s:String):string;
  begin
    Result:=s;
    if Pos('.',s)=0 then Result:=Result+'.Txt';
  end;
begin
  inherited;
  if SaveDialog.Execute then
  Editor.Lines.SaveToFile(WithExtend(SaveDialog.FileName));
end;

procedure TFCreateText.Button3Click(Sender: TObject);
begin
  inherited;
   Editor.SelectAll;
  Editor.CopyToClipboard;
end;

procedure TFCreateText.aINSERfIELDExecute(Sender: TObject);
 var i:byte;
begin
  inherited;
for i := 0 to (ListBox1.Items.Count - 1) do
    if ListBox1.Selected[i] then
    Editor.SelText:=' (('+a[i]+')) ';

end;

procedure TFCreateText.Edit1Enter(Sender: TObject);
begin
  inherited;
 TEdit(Sender).Text:='';
end;

procedure TFCreateText.Button6Click(Sender: TObject);
begin
  inherited;
   Editor.SelText:='((ÈÚÏ))';
end;

procedure TFCreateText.FormShow(Sender: TObject);
var i: byte;
begin
  inherited;
 ListBox1.Items.Clear;
 with YDBGrid do
   for i:=0 to Columns.Count-1 do
     begin
      ListBox1.Items.Add(Columns[i].Title.Caption);
      a[i]:=Columns[i].FieldName;
    end;

end;

procedure TFCreateText.ListBox1DblClick(Sender: TObject);
begin
aINSERfIELD.Execute;

end;

procedure TFCreateText.BBCloseClick(Sender: TObject);
begin
   Button3.Click;
   close;
end;

end.
