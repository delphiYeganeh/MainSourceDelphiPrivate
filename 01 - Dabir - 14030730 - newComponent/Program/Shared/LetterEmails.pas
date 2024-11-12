unit LetterEmails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Grids, DBGrids, ExtCtrls, AppEvnts, Menus,
  ExtActns, ActnList, DB, ADODB, Buttons, DBClient;

type
  TfrmLetterEmails = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    ADOQueryEmails: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQueryEmailsId: TAutoIncField;
    ADOQueryEmailsEmailAddress: TStringField;
    ADOQueryEmailsTitle: TWideStringField;
    ClientDataSetEmailType: TClientDataSet;
    ClientDataSetEmailTypeTo: TStringField;
    chBoxSSL: TCheckBox;
    ADOQueryEmailsResType: TStringField;
    ClientDataSetEmails: TClientDataSet;
    ClientDataSetEmailsTitle: TStringField;
    ClientDataSetEmailsEmail: TStringField;
    ClientDataSetEmailsTo: TStringField;
    ClientDataSetEmailsToo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
   ToList, CCList, BCCList : TStringList;
  end;

var
  frmLetterEmails: TfrmLetterEmails;

implementation

uses Dmu;

{$R *.dfm}

procedure TfrmLetterEmails.FormShow(Sender: TObject);
begin
  inherited;
  ADOQueryEmails.Close;
  ADOQueryEmails.Open;
  ADOQueryEmails.First;
  ClientDataSetEmailType.CreateDataSet;
  ClientDataSetEmailType.Insert;
  ClientDataSetEmailTypeTo.AsString := 'TO';
  ClientDataSetEmailType.Post;
  ClientDataSetEmailType.Insert;
  ClientDataSetEmailTypeTo.AsString := 'CC';
  ClientDataSetEmailType.Post;
  ClientDataSetEmailType.Insert;
  ClientDataSetEmailTypeTo.AsString := 'BCC';
  ClientDataSetEmailType.Post;
  ClientDataSetEmails.CreateDataSet;
   while not ADOQueryEmails.Eof do
    begin
     ClientDataSetEmails.Insert;
     ClientDataSetEmailsEmail.AsString := ADOQueryEmailsEmailAddress.AsString;
     ClientDataSetEmailsTitle.AsString := ADOQueryEmailsTitle.AsString;
     ClientDataSetEmailsTo.AsString := ADOQueryEmailsResType.AsString;
     ClientDataSetEmails.Post;
     ADOQueryEmails.Next;
    end;
  ClientDataSetEmails.Insert;
end;

procedure TfrmLetterEmails.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ToList := TStringList.Create;
  CCList := TStringList.Create;
  BCCList := TStringList.Create;
  ClientDataSetEmails.First;
  while not ClientDataSetEmails.Eof do
   begin
    if not ADOQueryEmails.Locate('EmailAddress',ClientDataSetEmailsEmail.AsString,[loPartialKey]) then
     begin
      ADOQueryEmails.Insert;
      ADOQueryEmailsEmailAddress.AsString := ClientDataSetEmailsEmail.AsString;
      ADOQueryEmailsTitle.AsString := ClientDataSetEmailsTitle.AsString;
      if ClientDataSetEmailsToo.AsString = 'TO' then
       ADOQueryEmailsResType.AsString := ClientDataSetEmailsToo.AsString;
      ADOQueryEmails.Post;
     end
    else
     begin
      ADOQueryEmails.Edit;
      if ClientDataSetEmailsToo.AsString = 'TO' then
       ADOQueryEmailsResType.AsString := ClientDataSetEmailsToo.AsString
      else
       ADOQueryEmailsResType.AsString := '';
      ADOQueryEmails.Post;
     end;
    if ClientDataSetEmailsToo.AsString = 'TO' then
     ToList.Add(ClientDataSetEmailsEmail.AsString);
    if ClientDataSetEmailsToo.AsString = 'CC' then
     CCList.Add(ClientDataSetEmailsEmail.AsString);
    if ClientDataSetEmailsToo.AsString = 'BCC' then
     BCCList.Add(ClientDataSetEmailsEmail.AsString);
    ClientDataSetEmails.Next;
   end;
end;

end.
