unit UFillPicture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons,FileCtrl, YFillPictureFields, xpWindow, AppEvnts, ExtCtrls, Menus;

type
  TFFillPicture = class(TMBaseForm)
    maintablename: TDBLookupComboBox;
    Fields1: TADOTable;
    Fields1ID: TAutoIncField;
    Fields1TableID: TWordField;
    Fields1FieldName: TStringField;
    Fields1Description: TStringField;
    Fields1ISString: TBooleanField;
    Fields1IsLike: TBooleanField;
    Fields1EveryLike: TBooleanField;
    Fields1IsWhere: TBooleanField;
    Fields1VisibleInGrid: TBooleanField;
    DFields1: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Fields2: TADOTable;
    AutoIncField1: TAutoIncField;
    WordField1: TWordField;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    DFields2: TDataSource;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    YFillPictureFields: TYFillPictureFields;
    Memo1: TMemo;
    Memo2: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Table: TADOTable;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFillPicture: TFFillPicture;

implementation

uses Dmu;

{$R *.dfm}

procedure TFFillPicture.Button2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFFillPicture.FormCreate(Sender: TObject);
begin
  inherited;
 Fields1.Open;
 Fields2.Open;
end;

procedure TFFillPicture.SpeedButton1Click(Sender: TObject);
 var s: string;
begin
  inherited;
if SelectDirectory(_Yeganeh,'c:',s) then
  Edit1.Text:=s+'\';
end;

procedure TFFillPicture.Button1Click(Sender: TObject);
begin
  inherited;
 if MessageDlg('¬Ì« „ÿ„∆‰ Â” Ìœ',mtConfirmation,[mbyes,mbno],0)<>mryes then
    exit;
    with YFillPictureFields do
     begin
      Table.Close;
      Table.TableName:=maintablename.KeyValue;
      Table.Open;
      YFillPictureFields.Dataset:=Table;
      NameField:=DBLookupComboBox2.KeyValue;
      PictureField:=DBLookupComboBox1.KeyValue;
      Folder:=Edit1.Text;
      Extention:=Edit2.Text;
      Fill;
      Memo1.Text:=OpenedFiles;
      Memo2.Text:=Errors;
     end;
end;

end.
