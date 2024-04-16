unit UserTableInputFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Mask, UemsVCL, XPStyleActnCtrls, BaseUnit, xpWindow, ExtActns,ydbcombobox,
  xpBitBtn, Menus;

type

  TFmUserTableInput = class(TMBaseForm)//MBaseForm
    DSample: TDataSource;
    Panel1: TPanel;
    ImageList1: TImageList;
    FieldValues: TADOStoredProc;
    EditsPanel: TScrollBox;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FieldValuesID: TAutoIncField;
    FieldValuesUserTableContentID: TIntegerField;
    FieldValuesFieldID: TIntegerField;
    FieldValuesFieldValue: TWideStringField;
    FieldValuesLastUpdate: TDateTimeField;
    FieldValuesInsertUserID: TIntegerField;
    FieldValuesorder: TIntegerField;
    FieldValuesDescription: TWideStringField;
    FieldValuesFieldTypeID: TIntegerField;
    FieldValuesReferenceTableID: TIntegerField;
    SpeedButton1: TSpeedButton;
    procedure MakePanelFilter(Control:TWinControl);
    procedure OpenFields;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure ShowInPanel(P:TWinControl);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private

  public
    UserTableContentID:integer;
    MaxHeight:integer
  end;

var FmUserTableInput:TFmUserTableInput;

implementation

{$R *.dfm}

uses Dmu, businessLayer;

Const NumberOfColumns=2;
      EditLenght=210;
      HorSpaces=5;
      VerSpaces=25;
      EditStartTop=5;

var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits      : Array[0..99] of TEdit;
    Memos      : Array[0..99] of TMemo;
    ShamsiEdits: Array[0..99] of TShamsiDateEdit;
    Lookups    : Array[0..99] of TYDBComboBox;
    CheckBoxs  : Array[0..99] of TCheckBox;


procedure TFmUserTableInput.OpenFields;
begin
   with FieldValues do
   begin
      Close;
      Parameters.ParamByName('@UserTableContentID').Value := UserTableContentID;
      Open;
   end;
end;

Procedure TFmUserTableInput.MakePanelFilter(Control:TWinControl);
Var
   Labels:array[0..199] of TLabel;
   k: byte;
   EditTop,EditLeft,SpaceForOneField,
   EditStartLeft:integer;
   RowHasMemo:boolean ;

   function GetEnabled:boolean;
   begin
      result:=True;
(*      if FieldValuesAccessTypeID.AsInteger in [1,2] then
         Result:=false;
      if (FieldValuesAccessTypeID.AsInteger=3) and (Trim(FieldValuesFieldValue.AsString)<>'') then
         Result:=false;*)
   end;

   function Getvisible:boolean;
   begin
      result:=True;
    (*  if FieldValuesAccessTypeID.AsInteger=1 then
         Result:=false;*)
   end;

begin

   SpaceForOneField:=((Control.Width-HorSpaces)  div NumberOfColumns);
   LabelLength:=SpaceForOneField-EditLenght-HorSpaces;
   EditStartLeft:=Control.Width-SpaceForOneField;
   k:=0;


   with FieldValues do
   begin
      NumberOfRows:=RecordCount div NumberOfColumns;
      if RecordCount mod NumberOfColumns<>0 then
         inc(NumberOfRows);

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
                Edits[k].Visible:=Getvisible;
                if not GetEnabled then
                begin
                   Edits[k].ReadOnly:=true;
                   Edits[k].Font.Color:=clGrayText;
                end;
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
                Memos[k].Visible:=Getvisible;
                RowHasMemo:=true;
                if not GetEnabled then
                begin
                   Memos[k].ReadOnly:=true;
                   Memos[k].Font.Color:=clGrayText;
                end;
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
              ShamsiEdits[k].Visible:=Getvisible;
              ShamsiEdits[k].CheckValidity:=true;
               if not GetEnabled then
                 begin
                   ShamsiEdits[k].ReadOnly:=true;
                   ShamsiEdits[k].Font.Color:=clGrayText;
                 end;
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
              CheckBoxs[k].Visible:=Getvisible;
               if not GetEnabled then
                 begin
                   CheckBoxs[k].Enabled:=False;
                   CheckBoxs[k].Font.Color:=clGrayText;
                 end;
             end;
          6:
             begin
              Lookups[k]:=TYDBComboBox.Create(self);
              Lookups[k].Parent:=Control;
              Lookups[k].Left:=EditLeft;
              Lookups[k].Width:=EditLenght;
              Lookups[k].Top:=EditTop;
              Lookups[k].Tag:=FieldValuesFieldID.AsInteger;
              Lookups[k].Visible:=Getvisible;
              Refresh_ReferenceTableData(FieldValuesReferenceTableID.AsInteger);
              Lookups[k].FillItems(dm.get_ReferenceTableData_by_tableID,'DataID','DataTitle');
              lookups[k].SetKeyValue(FieldValuesFieldValue.AsString);
               if not GetEnabled then
                 begin
                   lookups[k].Enabled:=false;
                   lookups[k].Font.Color:=clGrayText;
                 end;
              end;
           end;{case}

         EditLeft:=EditLeft-SpaceForOneField;
         inc(k);
         next;
      end;{while}

      if RowHasMemo then
         EditsPanel.Height:=EditTop+3*VerSpaces
      else
         EditsPanel.Height:=EditTop+VerSpaces

   end;{width}
   NumberOfFields:=k;
   IF EditsPanel.Height > MaxHeight THEN
      EditsPanel.Height := MaxHeight;
end;

procedure TFmUserTableInput.FormShow(Sender: TObject);
begin
   MaxHeight:=560;
   MakeUserTableContentValue(UserTableContentID);

   openFields;
   MakePanelFilter(EditsPanel);
end;

procedure TFmUserTableInput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

Procedure TFmUserTableInput.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
 end;

procedure TFmUserTableInput.xpBitBtn1Click(Sender: TObject);
 var
  k: byte;
begin
 k:=0;
 with FieldValues do
  begin
    first;
   while not eof do
    begin
       Edit;
       Case  FieldValuesFieldTypeID.AsInteger of
          1,3: FieldValuesFieldValue.AsString := Edits[k].Text;
          2:   FieldValuesFieldValue.AsString := Memos[k].Text;
          4:   FieldValuesFieldValue.AsString := ShamsiEdits[k].Text;
          5: begin
                if CheckBoxs[k].Checked then
                   FieldValuesFieldValue.AsString := '1'
                else
                   FieldValuesFieldValue.AsString := '0';
             end;
          6: if (Lookups[k].KeyValues.Count>0) and (lookups[k].ItemIndex>=0) then
                FieldValuesFieldValue.AsString := lookups[k].KeyValues[lookups[k].ItemIndex];
       end;
       inc(k);
       if Trim(FieldValuesFieldValue.AsString) <> '' then
          if FieldValuesInsertUserID.AsInteger = 0 then
             FieldValuesInsertUserID.AsInteger := _UserID;
       Post;
       Next;
    end;
  end;
  messageShowString(' «ÿ·«⁄«  ›—„ »« „Ê›ﬁÌ   €ÌÌ— ò—œ',false);
end;

procedure TFmUserTableInput.xpBitBtn2Click(Sender: TObject);
var
  K: byte;
begin
   K := 0;
   with FieldValues do
   begin
      First;
      While not eof do
      begin
         Case FieldValuesFieldTypeID.AsInteger of
           1,3: Edits[k].Text := FieldValuesFieldValue.AsString;
           2  : Memos[k].Text := FieldValuesFieldValue.AsString;
           4  : ShamsiEdits[k].Text := FieldValuesFieldValue.AsString;
           5  : CheckBoxs[k].Checked := FieldValuesFieldValue.AsString='1';
           6  : Lookups[k].SetKeyValue(FieldValuesFieldValue.AsString);
         end;
         Inc(K);
Cancel;
         Next;
      end;
   end;
end;

procedure TFmUserTableInput.BitBtn1Click(Sender: TObject);
begin
   //dm.ExportLetterField(LetterID,FormOrder,1);
end;

procedure TFmUserTableInput.BitBtn2Click(Sender: TObject);
begin
   //dm.ExportLetterField(LetterID,FormOrder,2);
end;

procedure TFmUserTableInput.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

end.
