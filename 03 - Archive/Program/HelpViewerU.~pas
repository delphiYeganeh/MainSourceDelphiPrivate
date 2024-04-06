unit HelpViewerU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, ExtCtrls, ImgList, ComCtrls, Buttons,
  StdCtrls;

type
  THelpViewer = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Splitter1: TSplitter;
    TreeView1: TTreeView;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure WebBrowser1NavigateComplete2(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
   HelpRoot = 'E:\Mahamed\Archive\Program\Help\';
var
  HelpViewer: THelpViewer;

implementation

{$R *.dfm}

procedure THelpViewer.FormCreate(Sender: TObject);
begin
   webBrowser1.Navigate(HelpRoot+ListBox1.Items[1]);
end;

procedure THelpViewer.TreeView1Expanded(Sender: TObject; Node: TTreeNode);
var
   Node2 : TTreeNode;
i: Integer;
begin
  if TreeView1.Items.Count > 0 then
  begin
    for i := 0 to TreeView1.Items.Count - 1 do
    begin
      Node2 := TreeView1.Items[i];

      case Node2.ImageIndex of
        0, 1:
          begin
            if Node2.HasChildren then
            begin
              if Node2.Expanded then
              begin
                Node2.ImageIndex := 1;
                Node2.SelectedIndex := 1;
              end
              else
              begin
                Node2.ImageIndex := 0;
                Node2.SelectedIndex := 0;
              end
            end
            else
            begin
              Node2.ImageIndex := 2;
              Node2.SelectedIndex := 2;
            end;
          end;
      end;
    end;
  end;
end;

procedure THelpViewer.TreeView1Collapsed(Sender: TObject; Node: TTreeNode);
var
   Node2 : TTreeNode;
i: Integer;
begin
  if TreeView1.Items.Count > 0 then
  begin
    for i := 0 to TreeView1.Items.Count - 1 do
    begin
      Node2 := TreeView1.Items[i];

      case Node2.ImageIndex of
        0, 1:
          begin
            if Node2.HasChildren then
            begin
              if Node2.Expanded then
              begin
                Node2.ImageIndex := 1;
                Node2.SelectedIndex := 1;
              end
              else
              begin
                Node2.ImageIndex := 0;
                Node2.SelectedIndex := 0;
              end
            end
            else
            begin
              Node2.ImageIndex := 2;
              Node2.SelectedIndex := 2;
            end;
          end;
      end;
    end;
  end;
end;

procedure THelpViewer.SpeedButton2Click(Sender: TObject);
begin
   try
      WebBrowser1.GoBack;
   except
   end;
end;

procedure THelpViewer.SpeedButton1Click(Sender: TObject);
begin
   try
      WebBrowser1.GoForward;
   except
   end;
end;

procedure THelpViewer.SpeedButton4Click(Sender: TObject);
begin
   WebBrowser1.Navigate(HelpRoot+ListBox1.Items[1]);
end;

procedure THelpViewer.SpeedButton3Click(Sender: TObject);
begin
   WebBrowser1.Stop;
end;

procedure THelpViewer.SpeedButton8Click(Sender: TObject);
begin
   WebBrowser1.Refresh;
end;

procedure THelpViewer.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
   WebBrowser1.Navigate(HelpRoot+ListBox1.Items[TreeView1.Selected.stateindex]);
end;

procedure THelpViewer.WebBrowser1NavigateComplete2(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
   htmFileName : string;
   i : integer;
begin
{   htmFileName := URL;
   htmFileName := ExtractFileName(htmFileName);
   for i:= 0 to ListBox1.Count-1 do
   begin
      if ListBox1.Items[i]=htmFileName then
         Exit;
   end;
   TreeView1.Selected := TreeView1.Items[i];      }
end;

end.
