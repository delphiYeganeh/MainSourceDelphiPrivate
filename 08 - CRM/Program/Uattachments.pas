unit Uattachments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, ExtActns, ActnList, DB, StdCtrls, Buttons, Grids,
  DBGrids, YDbgrid, ExtCtrls,ADODB,YSHamsiDate,shellapi;

type
  TfrAttachments = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnAttachment: TBitBtn;
    btnDel: TBitBtn;
    btnAdd: TBitBtn;
    dbgFiles: TYDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAttachmentClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    IdName :String;
    Function LoadImageField(Field:TField; Path: String):Boolean;
    procedure SetColorForm;    
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
    ShowMessage('›«Ì·Ì ÊÃÊœ  ‰œ«—œ');
    Result := False
  end;
end;


procedure TfrAttachments.BitBtn1Click(Sender: TObject);
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
    CommandTimeout := 1200;
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
  if Dm.Y_InputQuery(' Ì — ›«Ì·','Ìê«‰Â',Prompt) then
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
    if messageShowString('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ',True) then
      qry.Delete;
end;

procedure TfrAttachments.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TfrAttachments.FormShow(Sender: TObject);
begin
  inherited;
  SetColorForm ;
end;

procedure TfrAttachments.SetColorForm;
begin
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

end;

end.
