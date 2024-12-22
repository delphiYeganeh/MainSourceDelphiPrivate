unit AllScanImageFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dbcgrids, ExtCtrls, ieview, imageenview, ievect,
  dbimageenvect, BaseUnit, Buttons, DBCtrls, dbimageen,imageenio,
  AdvSmoothImageListBox, DBAdvSmoothImageListBox, dximctrl,shellapi,
  ActnList,printers, AppEvnts;

type
  TFmAllScanImage = class(TMBaseForm)
    Panel2: TPanel;
    DBN1: TDBNavigator;
    Button1: TButton;
    btn1: TButton;
    cbb1: TComboBox;
    lbl1: TLabel;
    cbb2: TComboBox;
    lbl2: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    ActionList1: TActionList;
    Save: TAction;
    Print: TAction;
    SaveDialog1: TSaveDialog;
    ImageEnDBView1: TImageEnDBView;
    Button2: TButton;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure DBVectAllDblClick(Sender: TObject);
    procedure DBAdvSmoothImageListBox1Scroll(Sender: TObject;
      scrollposition: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBAdvSmoothImageListBox1KeyPress(Sender: TObject;
      var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvSmoothImageListBox1ItemClick(Sender: TObject;
      itemindex: Integer; Button: TMouseButton; Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure SaveExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure ImageEnDBView1DblClick(Sender: TObject);
    procedure ImageEnDBView1Click(Sender: TObject);
    procedure ImageEnDBView1Exit(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
    procedure LoadImages;
    procedure SaveImages;
    procedure PrintImages;
  public
     Valueid : Integer;
     ImageIDSelector:String;
  end;

var
  FmAllScanImage: TFmAllScanImage;

implementation

Uses ScanImageDM , YShamsidate , DB, ScanImageFm;

{$R *.dfm}

procedure TFmAllScanImage.FormShow(Sender: TObject);
begin
  inherited;

  //ShowMessage(FloatToStr(ImageEnDBView1.Zoom));
  //ImageEnDBView1.Zoom := 50;

  //DBVectAll.Fit;
  Valueid := 0;
  DBNav_Setup(DBN1);
  LoadImages;
  //HameD_Ansari_990630_S
  cbb1Change(Sender);
  cbb2Change(Sender);
  //HameD_Ansari_990630_E
end;

procedure TFmAllScanImage.DBVectAllDblClick(Sender: TObject);
begin
  inherited;

  if DBCtrlGrid1.ColCount = 1 then
  begin
    DBCtrlGrid1.ColCount := StrToInt(cbb1.text);
    DBCtrlGrid1.RowCount := StrToInt(cbb2.text);
  end
  else
  begin
    DBCtrlGrid1.ColCount := 1;
    DBCtrlGrid1.RowCount := 1;
  end;
       {  if DBCtrlGrid1.ColCount = 1 then
   begin
      DBCtrlGrid1.ColCount := 5;
      DBCtrlGrid1.RowCount := 3;
   end
      else
      begin
         DBCtrlGrid1.ColCount := 1;
         DBCtrlGrid1.RowCount := 1;
      end;}
end;

procedure TFmAllScanImage.DBAdvSmoothImageListBox1Scroll(Sender: TObject;
  scrollposition: Integer);
begin
  inherited;
  {HKH Owner}
//  if DMScanImage.SPAllImage.Active then
//    DBAdvSmoothImageListBox1.Header.Caption := ' ÔãÇÑå Ú˜Ó ' + DMScanImage.SPAllImagePageNumber.AsString;

end;

procedure TFmAllScanImage.SpeedButton1Click(Sender: TObject);
begin
  inherited;
//   Close;
//    DMScanImage.QrLetterData.Locate('LetterDataID',FmScanImage.Valueid,[loCaseInsensitive]);
  Valueid := 1;
  Close;
end;

procedure TFmAllScanImage.DBAdvSmoothImageListBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  if key = #27 then
  begin
    SpeedButton1Click(Self);
  end

end;

procedure TFmAllScanImage.LoadImages;
begin
//

//for I  := 1 to DMScanImage.SPAllImage.RecordCount do
//  begin
//    with DMScanImage do
//    begin
//      FilePatch:=SPAllImage.fieldbyname('path').AsString;
//
//      NewURL:=DownloadFiles(FilePatch);
//      SPAllImage.Edit;
//      SPAllImage.fieldbyname('Filetype').Value:=NewURL;
//      SPAllImage.Post;
//      Sleep(1000);
//      Application.ProcessMessages;
//      SPAllImage.Next;
//    end;
//  end;
end;

procedure TFmAllScanImage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//
// DMScanImage.SPAllImage.RecNo:=1;
//for I  := 1 to DMScanImage.SPAllImage.RecordCount do
//  begin
//    with DMScanImage do
//    begin
//      FilePatch:=SPAllImage.fieldbyname('Filetype').AsString;
//      DeleteFile(FilePatch);
//      Application.ProcessMessages;
//      SPAllImage.Next;
//    end;
//  end;
end;

procedure TFmAllScanImage.DBAdvSmoothImageListBox1ItemClick(
  Sender: TObject; itemindex: Integer; Button: TMouseButton;
  Shift: TShiftState);
begin
  inherited;

//ShowMessage(DMScanImage.SPAllImage.Fieldbyname('FileType').AsString);
end;

procedure TFmAllScanImage.btn1Click(Sender: TObject);
begin
  inherited;
//   DMScanImage.SPAllImage.Close;
//      DMScanImage.SPAllImage.Parameters.ParamByName('@LetterID').Value := '5199';
//      DMScanImage.SPAllImage.Open;

  ImageIDSelector:=DMScanImage.SPAllImage.FieldByName('LetterDataID').AsString;
  Close;
end;

procedure TFmAllScanImage.Button1Click(Sender: TObject);
begin
  inherited;
  Valueid := 1;
  Close;
end;

procedure TFmAllScanImage.cbb1Change(Sender: TObject);
begin
  inherited;
  DBCtrlGrid1.ColCount:=StrToInt(cbb1.Text)
end;

procedure TFmAllScanImage.cbb2Change(Sender: TObject);
begin
  inherited;
  DBCtrlGrid1.RowCount:=StrToInt(cbb2.Text)
end;

procedure TFmAllScanImage.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
   inherited;
   

   (*
  if index = DBCtrlGrid1.PanelIndex then
  begin
    R := Self.ClientRect;
    { the following line restores the beveled border of the panel,
     which is otherwise destroyed by painting the canvas }
    if DBCtrlGrid1.PanelBorder = gbRaised then InflateRect(R, -2, -2);
    DBCtrlGrid1.Canvas.Brush.Color := clRed;
    DBCtrlGrid1.Canvas.FillRect(R);
  end;
*)
end;

procedure TFmAllScanImage.SaveImages;
begin
  SaveDialog1.Execute;
  if SaveDialog1.FileName <> '' then
    ImageEnDBView1.io.SaveToFileJpeg(SaveDialog1.FileName + '.jpg');
end;

procedure TFmAllScanImage.PrintImages;
begin
//
//TODO

  Printer.BeginDoc;
  ImageEnDBView1.IO.PrintImage(Printer.Canvas, 0, 0, 0, 0, ievpCenter, iehpCenter, iesNormal);
  Printer.EndDoc;
  //ShowMessage('Ç   ÈÇ ãæÝÞíÊ ÇäÌÇã ÔÏ');
// ImageEnDBView1.IO.PrintImage(nil, 0, 0, 0, 0, ievpCenter,
//    iehpCenter, iesFITTOPAGE, 0, 0, 1);
end;

procedure TFmAllScanImage.SaveExecute(Sender: TObject);
begin
  inherited;
  SaveImages;
end;

procedure TFmAllScanImage.PrintExecute(Sender: TObject);
begin
  inherited;
  PrintImages;
end;

procedure TFmAllScanImage.ImageEnDBView1DblClick(Sender: TObject);
begin
  inherited;
  if DBCtrlGrid1.ColCount = 1 then
  begin
    DBCtrlGrid1.ColCount := StrToInt(cbb1.text);
    DBCtrlGrid1.RowCount := StrToInt(cbb2.text);
  end
  else
  begin
    DBCtrlGrid1.ColCount := 1;
    DBCtrlGrid1.RowCount := 1;
  end;
end;

procedure TFmAllScanImage.ImageEnDBView1Click(Sender: TObject);
begin
  inherited;
//
  ImageEnDBView1.Background := clRed;
end;

procedure TFmAllScanImage.ImageEnDBView1Exit(Sender: TObject);
begin
  inherited;
  ImageEnDBView1.Background := clBtnFace
end;

procedure TFmAllScanImage.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
begin
  inherited;
  if Msg.message = WM_MOUSEWHEEL then
  begin
    if Word(Msg.wParam) = MK_CONTROL then
    begin
      if Smallint(HiWord(Msg.wParam)) > 0 then
        DBCtrlGrid1.DataSource.DataSet.Prior
      else
        DBCtrlGrid1.DataSource.DataSet.Next;
    end;
  end;
end;

end.
