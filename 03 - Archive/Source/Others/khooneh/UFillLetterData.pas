unit UFillLetterData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, DB, ADODB, DBCtrls, ExtActns, ActnList,
  Buttons,FileCtrl, YFillPictureFields, xpWindow, xpBitBtn;

type
  TFillLetterData = class(TMBaseForm)
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Button1: TxpBitBtn;
    Button2: TxpBitBtn;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    FdataSet: TADODataSet;
    Label1: TLabel;
    Edit3: TEdit;
    FdataSetLetterDataID: TAutoIncField;
    FdataSetLetterID: TIntegerField;
    FdataSetPageNumber: TWordField;
    FdataSetImage: TBlobField;
    FdataSetextention: TWordField;
    procedure Button2Click(Sender: TObject);
    procedure FindLetterData(FileName:string);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    Procedure Fill;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FillLetterData: TFillLetterData;

implementation

uses Dmu, UMain, businessLayer;

{$R *.dfm}
var
  Errors,OpenedFiles,Folder,Extention,Delimeter:string;


procedure TFillLetterData.Button2Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFillLetterData.SpeedButton1Click(Sender: TObject);
 var s: string;
begin
  inherited;
if SelectDirectory('םַהו','c:',s) then
  Edit1.Text:=s+'\';
end;

procedure TFillLetterData.FindLetterData(FileName:string);
var j,IndicatorID,PageNumber,LetterID:integer;

begin
   j:=pos(delimeter,FileName);
   if j=0 then
   try
     IndicatorID:=StrToInt(FileName);
     PageNumber:=0;
   except
     Errors:=Errors+','+FileName;
     exit;
   end
  else
   try
     IndicatorID:=StrToInt(copy(FileName,1,j-1));
     PageNumber:=StrToInt(Copy(FileName,j+1,length(filename)-j));
   except
     Errors:=Errors+','+FileName;
     exit;
    end;

 LetterID:=Exec_get_LetterID_ByIndicatorid(IndicatorID,0,0,dm.CurrentMyear,Dm.SecId);
  if LetterID=0 then
   begin
     Errors:=Errors+','+FileName;
     exit;
   end;

 with FdataSet,Parameters do
  begin
   Close;
   ParamByName('@Myear').Value:=dm.CurrentMYear;
   ParamByName('@secID').Value:=Dm.SecId;
   ParamByName('@PageNumber').Value:=PageNumber;
   ParamByName('@IndicatorID').Value:=IndicatorID;
   Open;
   if Recordcount>0 then
    begin
     Edit;
     FdataSetImage.LoadFromFile(Folder+FileName+'.'+Extention);
     Post;
    end
   else
    begin
     FdataSet.insert;
     FieldByName('LetterID').AsInteger:=LetterID;
     FieldByName('PageNumber').AsInteger:=PageNumber;
     FdataSetImage.LoadFromFile(Folder+FileName+'.'+Extention);
     Post;
     OpenedFiles:=OpenedFiles+','+FileName;
    end;
  end;
end;


Procedure TFillLetterData.Fill;
var Find,FileName: string;
  sr: TSearchRec;
  FileAttrs: Integer;
begin
  inherited;
   if Folder[length(Folder)]<>'\' then
      Folder:=Folder+'\';
FileName:=Folder + '*.'+Extention;
  FileAttrs := 0;
  Errors:='';
  OpenedFiles:='';
  if FindFirst(fileName, FileAttrs, sr) = 0 then
    begin
      repeat
       Find:=ExtractFileName(sr.Name);
       Find:=COPY(Find,1,LENGth(Find)-4);
       FindLetterData(find);
      until FindNext(sr) <> 0;
    end;
 FindClose(sr);
end;

procedure TFillLetterData.Button1Click(Sender: TObject);
begin
  inherited;
  Delimeter:=Edit3.Text;
   if not messageShow(46,True) then
    exit;
      Folder:=edit1.Text;
      Extention:=Edit2.Text;
      Fill;
      Memo1.Text:=OpenedFiles;
      Memo2.Text:=Errors;
end;

end.
