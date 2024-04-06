unit UUserTable_Input;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Mask, UemsVCL, XPStyleActnCtrls, BaseUnit, xpWindow, ExtActns,ydbcombobox,
  xpBitBtn;

type

  TFrUserTable_Input = class(TMBaseForm)
    DSample: TDataSource;
    Panel1: TPanel;
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    FieldValues: TADOStoredProc;
    EditsPanel: TPanel;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    FieldValuesLetterFieldValueID: TAutoIncField;
    FieldValuesLetterID: TIntegerField;
    FieldValuesFieldID: TIntegerField;
    FieldValuesFieldValue: TWideStringField;
    FieldValuesorder: TIntegerField;
    FieldValuesDescription: TStringField;
    FieldValuesFieldTypeID: TWordField;
    FieldValuesReferenceTableID: TIntegerField;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSetDelete1Execute(Sender: TObject);
    Procedure ShowInPanel(P:TWinControl);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LetterID:integer;
  end;

var
  FrUserTable_Input: TFrUserTable_Input;

  const NumberOfColumns=2;
        EditLenght=210;
        HorSpaces=5;
        VerSpaces=25;
        EditStartTop=5;

implementation

uses Dmu, businessLayer;


{$R *.dfm}
var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits      : array[0..99] of TEdit;
    Memos      : array[0..99] of TMemo;
    ShamsiEdits: array[0..99] of TShamsiDateEdit;
    Lookups    : array[0..99] of TYDBComboBox;
    CheckBoxs  : array[0..99] of TCheckBox;



procedure TFrUserTable_Input.openFields;
begin
Exec_Make_FieldValues_by_LetterID(LetterID);
 with FieldValues do
  begin
   Close;
   Parameters.ParamByName('@LetterID').Value:=LetterID;
   Open;
  end;
end;

procedure TFrUserTable_Input. MakePanelFilter(Control:TWinControl);
 var
Labels:array[0..199] of TLabel;
  k: byte;
  EditTop,EditLeft,SpaceForOneField,
  i,EditStartLeft:integer;
  RowHasMemo:boolean ;
begin

 SpaceForOneField:=((Control.Width-HorSpaces)  div NumberOfColumns);
 LabelLength:=SpaceForOneField-EditLenght-HorSpaces;
 EditStartLeft:=Control.Width-SpaceForOneField;
 k:=0;


 with FieldValues do
  begin
   NumberOfRows:=RecordCount div NumberOfColumns;
   if RecordCount mod NumberOfColumns<>0 then inc(NumberOfRows);


     EditLeft:=EditStartLeft;
     Edittop:=EditStartTop;

   while not eof do
    begin
       Labels[k]:=TLabel.Create(self);
       Labels[k].Caption:=FieldValuesDescription.AsString;
       Labels[k].Parent:=Control;


       if  EditLeft<HorSpaces then
          begin
            EditLeft:=EditStartLeft;
            EditTop:=EditTop+VerSpaces;
            if RowHasMemo then
              EditTop:=EditTop+2*VerSpaces;

            RowHasMemo:=false;
          end;

       Labels[k].Left:=EditLeft+EditLenght+5;
       Labels[k].Top:=EditTop+3;

       case FieldValuesFieldTypeID.AsInteger of
        1,3:
           begin
            Edits[k]:=TEdit.Create(self);
            Edits[k].Parent:=Control;
            Edits[k].Left:=EditLeft;
            Edits[k].Width:=EditLenght;
            Edits[k].Top:=EditTop;
            Edits[k].Tag:=FieldValuesFieldID.AsInteger;
            Edits[k].Text:=FieldValuesFieldValue.AsString;
           end;
        2:
           begin
            Memos[k]:=TMemo.Create(self);
            Memos[k].Parent:=Control;
            Memos[k].Left:=EditLeft;
            Memos[k].Width:=EditLenght;
            Memos[k].Top:=EditTop;
            Memos[k].Height:=3*VerSpaces;
            Memos[k].Tag:=FieldValuesFieldID.AsInteger;
            Memos[k].Text:=FieldValuesFieldValue.AsString;
            RowHasMemo:=true;
           end;
        4:
           begin
            ShamsiEdits[k]:=TShamsiDateEdit.Create(self);
            ShamsiEdits[k].Parent:=Control;
            ShamsiEdits[k].Left:=EditLeft;
            ShamsiEdits[k].Width:=EditLenght;
            ShamsiEdits[k].Top:=EditTop;
            ShamsiEdits[k].Tag:=FieldValuesFieldID.AsInteger;
            ShamsiEdits[k].Text:=FieldValuesFieldValue.AsString;
           end;
        5:
           begin
            CheckBoxs[k]:=TCheckBox.Create(self);
            CheckBoxs[k].Parent:=Control;
            CheckBoxs[k].Left:=EditLeft;
            CheckBoxs[k].Width:=EditLenght;
            CheckBoxs[k].Top:=EditTop;
            CheckBoxs[k].Tag:=FieldValuesFieldID.AsInteger;
            CheckBoxs[k].Checked:=FieldValuesFieldValue.AsString='1';
           end;
        6:
           begin
            Lookups[k]:=TYDBComboBox.Create(self);
            Lookups[k].Parent:=Control;
            Lookups[k].Left:=EditLeft;
            Lookups[k].Width:=EditLenght;
            Lookups[k].Top:=EditTop;
            Lookups[k].Tag:=FieldValuesFieldID.AsInteger;
            dm.Refresh_ReferenceTableData(FieldValuesReferenceTableID.AsInteger);
            Lookups[k].FillItems(dm.get_ReferenceTableData_by_tableID,'DataID','DataTitle');
            lookups[k].SetKeyValue(FieldValuesFieldValue.AsString);
           end;

         end;

       EditLeft:=EditLeft-SpaceForOneField;
       inc(k);
       next;
    end;
   EditsPanel.Height:=EditTop+VerSpaces;
  end;
 NumberOfFields:=k;
end;

procedure TFrUserTable_Input.FormShow(Sender: TObject);
begin
//- Caption:='æÑæÏ ÇØáÇÚÇÊ '+TableDescription;
 openFields;
 MakePanelFilter(EditsPanel);
end;

procedure TFrUserTable_Input.Button4Click(Sender: TObject);
begin
close;

end;

procedure TFrUserTable_Input.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFrUserTable_Input.DataSetDelete1Execute(Sender: TObject);
begin
  if MessageDlg('ÂíÇ ÇÒ ÍÐÝ ãØãÆä åÓÊíÏ',mtConfirmation,[mbyes,mbno],0)<>mryes then
   exit;
end;
Procedure TFrUserTable_Input.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;

procedure TFrUserTable_Input.xpBitBtn1Click(Sender: TObject);
 var
  k: byte;
begin
 k:=0;
 with FieldValues do
  begin
    first;
   while not eof do
    begin
      edit;
       case  FieldValuesFieldTypeID.AsInteger of
        1,3: FieldValuesFieldValue.AsString:=Edits[k].Text;
        2:   FieldValuesFieldValue.AsString:=Memos[k].Text;
        4:   FieldValuesFieldValue.AsString:=ShamsiEdits[k].Text;
        5:
           begin
            if CheckBoxs[k].Checked then
             FieldValuesFieldValue.AsString:='1'
            else
             FieldValuesFieldValue.AsString:='0';
           end;
        6:
          if (Lookups[k].KeyValues.Count>0) and (lookups[k].ItemIndex>=0) then
            FieldValuesFieldValue.AsString:=lookups[k].KeyValues[lookups[k].ItemIndex];
       end;
       inc(k);
       Post;
       next;
    end;
  end;
end;

procedure TFrUserTable_Input.xpBitBtn2Click(Sender: TObject);
 var
  k: byte;
begin
 k:=0;
 with FieldValues do
  begin
    first;
   while not eof do
    begin
       case FieldValuesFieldTypeID.AsInteger of
        1,3: Edits[k].Text:=FieldValuesFieldValue.AsString;
        2  : Memos[k].Text:=FieldValuesFieldValue.AsString;
        4  : ShamsiEdits[k].Text:=FieldValuesFieldValue.AsString;
        5  : CheckBoxs[k].Checked:=FieldValuesFieldValue.AsString='1';
        6  :lookups[k].SetKeyValue(FieldValuesFieldValue.AsString);
       end;
       inc(k);
       next;
    end;
  end;

end;

end.
