unit MakeReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, AdvGlowButton;

type

  TFrMakeReport = class(TForm)
    Sample: TADODataSet;
    DSample: TDataSource;
    YDBG: TYDBGrid;
    Panel1: TPanel;
    report: TAdvGlowButton;
    Button1: TAdvGlowButton;
    Button2: TAdvGlowButton;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    FilterPanel: TPanel;
    Label1: TLabel;
    Fields: TADODataSet;
    FieldsID: TAutoIncField;
    FieldsTableID: TWordField;
    FieldsFieldName: TStringField;
    FieldsDescription: TStringField;
    FieldsIsWhere: TBooleanField;
    FieldsISString: TBooleanField;
    FieldsIsLike: TBooleanField;
    FieldsEveryLike: TBooleanField;
    FieldsVisibleInGrid: TBooleanField;
    Button5: TAdvGlowButton;
    pnlMain: TPanel;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure FillReport;
    procedure SetGrid;
    procedure reportClick(Sender: TObject);
    procedure CreateWhereEdits;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure UpdateVisibleFields;
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    BaseNewWidth : Integer;
    BaseNewHeight: Integer;
    TableName    :string ;
    TableDescription:string;
    TableID:integer;
    Connection:TADOConnection;
    function  Where:string;

  end;

var
  FrMakeReport: TFrMakeReport;

  const NumberOfColumns=2;
        EditLenght=220;
        HorSpaces=3;
        VerSpaces=30;


implementation

uses Dmu, MakeInputData;
{$R *.dfm}
var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits:array[0..199] of TYWhereEdit;

procedure TFrMakeReport.openFields;
begin
 with Fields do
  begin
   Close;
   Parameters.ParamByName('@tableid').Value:=TableID;
   Open;
  end;
end;

procedure TFrMakeReport. MakePanelFilter(Control:TWinControl);
 var
Labels:array[0..199] of TLabel;
  k: byte;
  EditTop,EditLeft,SpaceForOneField,
  EditStartLeft,EditStartTop:integer;
begin

 SpaceForOneField:=((Control.Width-HorSpaces)  div NumberOfColumns);
 LabelLength:=SpaceForOneField-EditLenght-HorSpaces;
 EditStartLeft:=Control.Width-SpaceForOneField;
 EditStartTop:=5;
 k:=0;


 with Fields do
  begin
   NumberOfRows:=RecordCount div NumberOfColumns;
   if RecordCount mod NumberOfColumns<>0 then inc(NumberOfRows);

   if Control.Height<NumberOfRows*VerSpaces+10 then
     Control.Height:=NumberOfRows*VerSpaces+10;

     EditLeft:=EditStartLeft;
     Edittop:=EditStartTop;

   while not eof do
    begin
       Labels[k]:= TLabel.Create(self);
       Labels[k].Caption := FieldsDescription.AsString;
       Labels[k].Parent  := Control;

       Edits[k]:= TYWhereEdit.Create(self);
       Edits[k].Parent   := Control;
       Edits[k].FieldName:= FieldsFieldName.AsString;
       Edits[k].isLike   := FieldsIsLike.AsBoolean;
       Edits[k].EveryLike:= FieldsEveryLike.AsBoolean;
       Edits[k].isString := FieldsIsString.AsBoolean;
       Edits[k].TableName:= TableName;

       if  EditLeft<HorSpaces then
          begin
            EditLeft:= EditStartLeft;
            EditTop := EditTop + VerSpaces;
          end;

       Labels[k].Left:= EditLeft + EditLenght + 5;
       Labels[k].Top := EditTop + 3;

       Edits[k].Left := EditLeft;
       Edits[k].Width:= EditLenght;
       Edits[k].Top  := EditTop;

       EditLeft:= EditLeft - SpaceForOneField;
       inc(k);
       next;
    end;
  end;
 NumberOfFields:=k;
end;

function  TFrMakeReport.where:string;
 var i: integer;
begin
 Result:='';
 for i:=0 to NumberOfFields-1 do
   begin
   if Edits[i].Resultwhere<>'' then
      if Result='' then Result:='('+edits[i].Resultwhere+')'
      else  Result:=Result+' and ('+edits[i].Resultwhere+')'
   end;
end;

procedure TFrMakeReport.FillReport;
begin
 with Sample do
  begin
   Close;
   CommandText:='select * from '+TableName;
   if where<>'' then
     CommandText:=CommandText+' where '+where;
   Open;
   Label1.Caption:='ÊÚÏÇÏ:'+IntToStr(RecordCount);
  end;
end;

procedure TFrMakeReport.SetGrid;
 var i: byte;
begin
  with Fields,YDBG,Columns do
   begin
    for i:=0 to Count-1 do
     begin
       if Locate('FieldName',Items[i].FieldName,[]) then
          begin
           Items[i].Title.Caption:=FieldsDescription.AsString;
           Items[i].Visible:=FieldsVisibleInGrid.AsBoolean;
           if not FieldsISString.AsBoolean then
            Items[i].width:=30
           else
           if FieldsEveryLike.AsBoolean then
            Items[i].Width:=130
           else
            Items[i].Width:=80;
          end;
     end;
   end;
end;

procedure TFrMakeReport.FormShow(Sender: TObject);
begin
  Fields.Connection:=Connection;
  Sample.Connection:=Connection;
  Caption:='Êåíå ÒÇÑÔ ÇÒ'+TableDescription;
  openFields;
  CreateWhereEdits;
  { TODO -oparsa : 14030717 }
  BaseNewWidth := Self.Width;
  BaseNewHeight:= Self.Height;
  { TODO -oparsa : 14030717 }
end;

procedure TFrMakeReport.reportClick(Sender: TObject);
begin
 FillReport;
 SetGrid;
end;

procedure TFrMakeReport.CreateWhereEdits;
begin
 MakePanelFilter(FilterPanel);

end;

procedure TFrMakeReport.Button3Click(Sender: TObject);
begin
 YDBG.ExportToWord;
end;

procedure TFrMakeReport.Button2Click(Sender: TObject);
begin
 YDBG.Print;
end;

procedure TFrMakeReport.Button1Click(Sender: TObject);
begin
 ydbg.CustomizePrint;
 UpdateVisibleFields;
end;

procedure TFrMakeReport.UpdateVisibleFields;
 var i: byte;
begin
 with Fields,YDBG.Columns do
  for i:=0 to Count-1 do
   if Locate('FieldName',Items[i].FieldName,[]) then
    Begin
     edit;
     FieldsVisibleInGrid.AsBoolean:=Items[i].Visible;
     Post;
    end;
end;

procedure TFrMakeReport.Button4Click(Sender: TObject);
begin
close;

end;

procedure TFrMakeReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrMakeReport.Button5Click(Sender: TObject);
begin
   FrMakeInputData:=TFrMakeInputData.Create(self);
   with dm,FrMakeInputData do
   begin
      Connection:=YeganehConnection;
      if Self.Sample.Active then
         if Self.Sample.RecordCount>0 then
            where := self.Sample.Fields[0].FieldName+' = '+QuotedStr(Self.Sample.Fields[0].AsString);

      TableID := TablesTableId.AsInteger;
      TableName := TablesTableName.AsString;
      TableDescription := TablesDescription.AsString;
      ShowModal;
   end;

end;

procedure TFrMakeReport.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030717 }
  if (NewWidth < BaseNewWidth)  or (NewHeight < BaseNewHeight) then
    Resize := False
  else Resize := True;
  { TODO -oparsa : 14030717 }
end;

procedure TFrMakeReport.FormCreate(Sender: TObject);
begin
  Self.Color := _Color1 ;
  Self.Font.Name :=  _MainFont ;  
end;

end.
