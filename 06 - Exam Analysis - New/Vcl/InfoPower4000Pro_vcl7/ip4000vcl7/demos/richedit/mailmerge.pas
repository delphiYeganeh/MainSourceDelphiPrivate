unit mailmerge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker, Buttons, wwSpeedButton, wwDBNavigator,
  ExtCtrls, wwclearpanel, Grids, Wwdbigrd, Wwdbgrid, Db, DBTables, Wwtable,
  Wwdatsrc, ComCtrls, wwriched, Mask, wwdbedit, DBCtrls, wwcheckbox;

type
  TRichEditMerge = class(TForm)
    TemplateRichedit: TwwDBRichEdit;
    wwDataSource1: TwwDataSource;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    DatabaseRichEdit: TwwDBRichEdit;
    Table1: TwwTable;
    Table1LAST_NAME: TStringField;
    Table1FIRST_NAME: TStringField;
    Table1ACCT_NBR: TFloatField;
    Table1ADDRESS_1: TStringField;
    Table1CITY: TStringField;
    Table1STATE: TStringField;
    Table1ZIP: TStringField;
    Table1TELEPHONE: TStringField;
    Table1DATE_OPEN: TDateField;
    Table1SS_NUMBER: TFloatField;
    Table1PICTURE: TStringField;
    Table1BIRTH_DATE: TDateField;
    Table1RISK_LEVEL: TStringField;
    Table1OCCUPATION: TStringField;
    Table1OBJECTIVES: TStringField;
    Table1INTERESTS: TStringField;
    Table1IMAGE: TBlobField;
    Table1RINTERESTS: TBlobField;
    Table1SEX: TStringField;
    Table1EDUCATION: TSmallintField;
    Table1CREDRATING: TStringField;
    Table1MARRIED: TBooleanField;
    Table1PAYMETHOD: TSmallintField;
    Table1BALANCEDUE: TFloatField;
    DBImage1: TDBImage;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    wwDBRichEdit3: TwwDBRichEdit;
    wwCheckBox1: TwwCheckBox;
    procedure wwDataSource1DataChange(Sender: TObject; Field: TField);
    procedure wwCheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RichEditMerge: TRichEditMerge;
  NewDateEntered:Boolean;

implementation

{$R *.DFM}

// Updates richedit2 with new record information
procedure TRichEditMerge.wwDataSource1DataChange(Sender: TObject; Field: TField);
  procedure UpdateRichEdit;
  var i:integer;
  begin
     with DatabaseRichEdit do begin
       Readonly := False;
       Lines.beginupdate;
       TemplateRichEdit.CopyRichEditTo(DatabaseRichEdit);
       for i:= 0 to table1.fieldcount-1 do begin
          selstart := 0;
          while FindReplaceText('<'+table1.Fields[i].FieldName+'>',
             table1.fieldbyname(table1.Fields[i].FieldName).AsString, []) do;
       end;
       selstart := 0;
       if FindText('<INSERT_IMAGE>',0,Length('<INSERT_IMAGE>'),[])=0 then begin
          DBImage1.CopyToClipboard;
          SelLength:=SelStart+14;
          PasteFromClipboard;
       end;
    // HideCaret(wwDBRIchEdit2.Handle);
       Lines.endupdate;
       Readonly := True;
    end;
  end;
begin
  if (Sender as TwwDatasource).state=dsbrowse then
     UpdateRichEdit;
end;

procedure TRichEditMerge.wwCheckBox1Click(Sender: TObject);
begin
  if (Sender as TwwCheckBox).Checked then
  begin
     DatabaseRichEdit.BorderStyle := bsNOne;
     DatabaseRichedit.Color := clBtnFace;
  end
  else
  begin
     DatabaseRichEdit.BorderStyle := bsSingle;
     DatabaseRichEdit.Color := clWindow;
  end;
end;

procedure TRichEditMerge.BitBtn1Click(Sender: TObject);
begin
 DatabaseRichEdit.PrintHeader.CenterText:= 'Name: ' +
    table1.fieldbyname('First_Name').asString +
    table1.fieldbyname('Last_Name').asString;

 DatabaseRichEdit.Print('PrintJob');
end;

end.
