unit DBImageru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcImager, Db, DBTables, ComCtrls, ExtCtrls, DBCtrls, fcLabel, DBCGrids,
  StdCtrls,jpeg, ExtDlgs, Mask, Buttons;

type
  TDBImagerDemoForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DataSource1: TDataSource;
    Table1: TTable;
    Panel1: TPanel;
    Panel2: TPanel;
    fcLabel5: TfcLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    fcDBImager2: TfcDBImager;
    fcLabel6: TfcLabel;
    MultiImager: TfcDBImager;
    Table2: TTable;
    DataSource2: TDataSource;
    DBNavigator2: TDBNavigator;
    Table1SpeciesNo: TFloatField;
    Table1Category: TStringField;
    Table1Common_Name: TStringField;
    Table1SpeciesName: TStringField;
    Table1Lengthcm: TFloatField;
    Table1Length_In: TFloatField;
    Table1Notes: TMemoField;
    Table1Graphic: TGraphicField;
    Table2PictureID: TIntegerField;
    Table2PictureType: TStringField;
    Table2Picture: TBlobField;
    OpenPictureDialog1: TOpenPictureDialog;
    ComboBox1: TComboBox;
    fcLabel8: TfcLabel;
    fcLabel9: TfcLabel;
    CheckBox1: TCheckBox;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    fcDBImager1: TfcDBImager;
    DBImage1: TDBImage;
    fcLabel3: TfcLabel;
    Label1: TLabel;
    Label2: TLabel;
    fcLabel1: TfcLabel;
    CheckBox2: TCheckBox;
    procedure Table2BeforeOpen(DataSet: TDataSet);
    procedure MultiImagerDblClick(Sender: TObject);
    procedure MultiImagerCalcPictureType(ImageControl: TfcDBImager;
      var PictureType: TfcImagerPictureType; var GraphicClassName: String);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBImagerDemoForm: TDBImagerDemoForm;

implementation

{$R *.DFM}

procedure TDBImagerDemoForm.Table2BeforeOpen(DataSet: TDataSet);
begin
  if GetClass('TJPEGImage') = nil then RegisterClass(TJpegImage);
end;

procedure TDBImagerDemoForm.MultiImagerDblClick(Sender: TObject);
 var
  blobstream:TBlobStream;
  photostream:TFileStream;
  extension:string;
begin
  with (Sender as TfcDBImager),DataSource do
  try
    if openpicturedialog1.execute then begin
      DataSet.Edit;
      photostream:=tfilestream.create(openpicturedialog1.filename,
                                      fmopenread or fmsharedenywrite);
      blobstream :=Tblobstream.create(DataSet.fieldbyname(DataField) as TBlobField,bmwrite);
      try
        with Openpicturedialog1 do
        extension := AnsiUpperCase(ExtractFileExt(FileName));

        If (extension='.JPG') or (extension='.JPEG') then
           Dataset.FieldByName('PictureType').asstring := 'JPG'
        else If (extension='.WMF') or (extension='.EMF') then
           Dataset.FieldByName('PictureType').asstring := 'WMF'
        else If (extension='.ICO') then
           Dataset.FieldByName('PictureType').asstring := 'ICO'
        else If (extension='.BMP') then
           Dataset.FieldByName('PictureType').asstring := 'BMP';

        blobstream.copyfrom(photostream,photostream.size);
      except
        photostream.free;
        blobstream.free;
        Dataset.Cancel;
      end;
    end;
    if (DataSet.State in [dsInsert,dsEdit]) then DataSet.Post;
  except
    ShowMessage('Invalid Picture!');
  end;
end;

procedure TDBImagerDemoForm.MultiImagerCalcPictureType(
  ImageControl: TfcDBImager; var PictureType: TfcImagerPictureType;
  var GraphicClassName: String);
begin
  with ImageControl.DataSource do
    if DataSet.fieldbyname('PictureType').asstring = 'WMF' then
      PictureType := fcptMetafile
    else if DataSet.fieldbyname('PictureType').asstring = 'BMP' then
      PictureType := fcptBitmap
    else if DataSet.fieldbyname('PictureType').asstring = 'JPG' then
      PictureType := fcptjpg
    else if DataSet.fieldbyname('PictureType').asstring = 'ICO' then
      PictureType := fcptIcon;
end;

procedure TDBImagerDemoForm.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then MultiImagerDblClick(MultiImager);
end;

procedure TDBImagerDemoForm.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.itemindex of
  0:MultiImager.DrawStyle := dsCenter;
  1:MultiImager.DrawStyle := dsNormal;
  2:MultiImager.DrawStyle := dsProportionalCenter;
  3:MultiImager.DrawStyle := dsStretch;
  4:MultiImager.DrawStyle := dsTile;
  end;
end;

procedure TDBImagerDemoForm.FormShow(Sender: TObject);
begin
  combobox1.itemindex := 2;
end;

procedure TDBImagerDemoForm.CheckBox1Click(Sender: TObject);
begin
  if Checkbox1.Checked then MultiImager.SmoothStretching := True
  else MultiImager.SmoothStretching := False;
end;

procedure TDBImagerDemoForm.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  with (Sender as TDatasource).DataSet do
    if FieldByName('PictureType').Text = 'JPG' then fcLabel9.Caption := 'JPG/JPEG'
    else if FieldByName('PictureType').Text = 'BMP' then fcLabel9.Caption := 'BITMAP'
    else if FieldByName('PictureType').Text = 'WMF' then fcLabel9.Caption := 'METAFILE'
    else if FieldByName('PictureType').Text = 'ICO' then fcLabel9.Caption := 'ICON';
end;

procedure TDBImagerDemoForm.CheckBox2Click(Sender: TObject);
begin
  if Checkbox2.Checked then MultiImager.BitmapOptions.GrayScale := True
  else MultiImager.BitmapOptions.GrayScale := False;
  MultiImager.Invalidate;
end;

end.
