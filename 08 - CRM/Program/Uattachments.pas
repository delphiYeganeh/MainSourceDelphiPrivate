unit Uattachments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Buttons, Grids,
  DBGrids, YDbgrid, ExtCtrls,ADODB,YSHamsiDate,shellapi;

type
  TfrAttachments = class(TMBaseForm)
    Panel1: TPanel;
    dbgFiles: TYDBGrid;
    BitBtn2: TBitBtn;
    btnAttachment: TBitBtn;
    btnDel: TBitBtn;
    btnAdd: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAttachmentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
    IdName :String;
    Function LoadImageField(Field:TField; Path: String):Boolean;
  public
    { Public declarations }
    qry :TADOQuery;
    gID :Integer;
    constructor Create(AOwner:TComponent;OpenType:Byte;ID:Integer;ShowOnly :Boolean);reintroduce;virtual; // 1 Can Add Delete , 2 Just View

  end;

var
  frAttachments: TfrAttachments;

implementation

uses dmu;

{$R *.dfm}
Function TfrAttachments.LoadImageField(Field:TField; Path: String):Boolean;
begin
   if not Field.IsNull then
    begin
           TBlobField(Field).SaveToFile(path);
           Result := True;
    end else
    begin
      ShowMessage('İÇíáí æÌæÏ  äÏÇÑÏ');
      Result := False
    end;
end;


procedure TfrAttachments.BitBtn2Click(Sender: TObject);
begin
  inherited;
Close;
end;

constructor TfrAttachments.Create(AOwner: TComponent; OpenType: Byte;ID:Integer;ShowOnly :Boolean);
begin
inherited create(AOwner);
  qry :=  TADOQuery.Create(nil);
  gID:=id;
  with qry do
  begin
    Connection := dm.YeganehConnection;
    if   OpenType = 1 then
    begin
        IdName :=  'TaskID';
        SQL.Text :='select * from TaskFiles where TaskID = '+IntToStr(Id)
    end
    else
    begin
        SQL.Text :='select * from CaseFiles where CaseID = '+IntToStr(Id) ;
        IdName :=  'CaseID';
    end;

    Open;

    DSForm.DataSet := qry;

  end;
  btnAdd.Enabled := not ShowOnly;
  btnDel.Enabled := not ShowOnly;
end;

procedure TfrAttachments.btnAttachmentClick(Sender: TObject);
var Path :String;
begin
  inherited;
    Path := Directory+'Contract'+IntToStr(gID)+Replace(_Today,'/','-')+Trim(qry.FieldByName('FileType').AsString);
    if LoadImageField(qry.FieldByName('Data'),path) then
       if (Trim(qry.FieldByName('FileType').AsString) = '.docx') or (Trim(qry.FieldByName('FileType').AsString) = '.doc')then
               dm.OpenWordFile(path)
       else
          ShellExecute(0,'open',pchar(Trim(path) ),'',nil,SW_HIDE)

end;

procedure TfrAttachments.FormCreate(Sender: TObject);
begin
  inherited;
   Directory := ExtractFilePath(Application.ExeName)+'\DataFile\';
   if not DirectoryExists(Directory) then
          MkDir(Directory);

end;

procedure TfrAttachments.btnAddClick(Sender: TObject);
var Prompt:String;
begin
  inherited;
  if Dm.Y_InputQuery('ÊíÊÑ İÇíá','íÇäå',Prompt) then
  begin
    qry.Append;
    qry.FieldByName('title').Value := prompt;
    qry.FieldByName(IdName).Value := gID;
    qry.FieldByName('FileType').Value := AddImageField(qry.FieldByName('Data'),'Files Doc,Docx,Jpeg,Jpg|*.doc;*.docx;*.jpeg;*.jpg');
    qry.Post;
  end;
end;

procedure TfrAttachments.btnDelClick(Sender: TObject);
begin
  inherited;
if qry.RecordCount > 0 then
  if messageShowString('ÂíÇ ÇÒ ÍĞİ ãØãÆä åÓÊíÏ',True) then
    qry.Delete;
end;

end.
