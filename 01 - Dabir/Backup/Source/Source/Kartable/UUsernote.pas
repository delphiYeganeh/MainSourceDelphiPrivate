unit UUsernote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ADODB, Grids, DBGrids, YDbgrid, ExtCtrls,
  ActnList, StdCtrls, Buttons, YWhereEdit, Mask, DBCtrls, ExtActns,
  xpWindow, xpBitBtn, Menus;

type
  TFUserNote = class(TMBaseForm)
    Panel1: TPanel;
    Psearch: TPanel;
    sp_checkusernotes: TADOStoredProc;
    Panel3: TPanel;
    YDBGrid1: TYDBGrid;
    sp_distinctDate: TADODataSet;
    sp_distinctDateid: TIntegerField;
    sp_distinctDateTitle: TWideStringField;
    sp_distinctDatebeginDate: TStringField;
    sp_distinctDateEnddate: TStringField;
    Dsp_checkusernotes: TDataSource;
    sp_checkusernotesUserNoteID: TAutoIncField;
    sp_checkusernotesUserID: TIntegerField;
    sp_checkusernotesNote: TMemoField;
    sp_checkusernotesCreateDate: TStringField;
    DateWhere: TYWhereEdit;
    Label3: TLabel;
    Label4: TLabel;
    NoteWhere: TYWhereEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    sp_checkusernotesAbstract: TWideStringField;
    YDBGrid2: TYDBGrid;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure sp_distinctDateAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure YDBGrid2DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUserNote: TFUserNote;

implementation

uses Dmu;

{$R *.dfm}

procedure TFUserNote.FormCreate(Sender: TObject);
Var
   MyYear:String;
begin
   inherited;
   //Ranjbar
   if dm.CurrentMyear < 1300 then
      MyYear := IntToStr(1300 + dm.CurrentMyear)
   else
      MyYear := IntToStr(dm.CurrentMyear);

   with Sp_distinctDate do
   begin
      Close;
      //Ranjbar
      Parameters.ParamByName('@MyFarsiToday').Value := MyYear + Copy( Trim(_Today) ,5,6 ); //ãæÑÏ ÇÓÊÝÇÏå ÈÑÇí ÓÇáåÇí ÞÈá
      //---
      Open;
      AfterScroll:=sp_distinctDateAfterScroll;
   end;
end;

procedure TFUserNote.sp_distinctDateAfterScroll(DataSet: TDataSet);
begin
   inherited;
   with Sp_checkusernotes,Parameters do
   begin
      Close;
      ParamByName('@userid').Value := _userid;
      ParamByName('@dateid').Value := sp_distinctDateid.AsInteger;
      ParamByName('@where').Value := '';
      Open;
      YDBGrid2.Show;
   end;
end;

procedure TFUserNote.BitBtn1Click(Sender: TObject);
 var w: string;
begin
  inherited;
  if DateWhere.Resultwhere<>'' then
    w:=DateWhere.Resultwhere;

  if NoteWhere.Resultwhere<>'' then
   if w<>'' then
    w:=w+' and '+NoteWhere.Resultwhere
   else
    w:=NoteWhere.Resultwhere;

  with sp_checkusernotes,Parameters do
   begin
    Close;
    ParamByName('@userid').Value:=_userid;
    ParamByName('@dateid').Value:=0;
    ParamByName('@where').Value:=w;
    Open;
    YDBGrid2.show;
   end;


end;

procedure TFUserNote.BitBtn3Click(Sender: TObject);
begin
   inherited;
   YDBGrid2.Hide;
   sp_checkusernotes.Insert;
   sp_checkusernotesCreateDate.AsString:=_Today;
   sp_checkusernotesUserID.AsInteger:=_userid;
   DBMemo1.SetFocus;
end;

procedure TFUserNote.BitBtn4Click(Sender: TObject);
begin
  inherited;
 YDBGrid2.Hide;
 sp_checkusernotes.Edit;

end;

procedure TFUserNote.YDBGrid2DblClick(Sender: TObject);
begin
  inherited;
 YDBGrid2.Hide;
end;

procedure TFUserNote.BitBtn5Click(Sender: TObject);
begin
  inherited;
if sp_checkusernotes.State in [dsinsert,dsedit] then
 sp_checkusernotes.Post;
 YDBGrid2.show;
end;

procedure TFUserNote.BitBtn2Click(Sender: TObject);
begin
  inherited;
close;
end;

end.
