unit UUserTable_Input;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, YWhereEdit, Grids, DBGrids,
  YDbgrid, Buttons, ExtCtrls, DBCtrls, DBActns, ActnList, ImgList, ActnMan,
  Mask, UemsVCL, XPStyleActnCtrls, BaseUnit, xpWindow, ExtActns,ydbcombobox,
  xpBitBtn, Menus,YEDit, word2000, shellapi, AppEvnts;

type

  TFrUserTable_Input = class(TMBaseForm)
    DSample: TDataSource;
    Panel1: TPanel;
    ImageList1: TImageList;
    FieldValues: TADOStoredProc;
    EditsPanel: TScrollBox;
    xpBitBtn1: TBitBtn;
    xpBitBtn2: TBitBtn;
    FieldValuesLetterFieldValueID: TAutoIncField;
    FieldValuesLetterID: TIntegerField;
    FieldValuesFieldID: TIntegerField;
    FieldValuesFieldValue: TWideStringField;
    FieldValuesorder: TIntegerField;
    FieldValuesDescription: TStringField;
    FieldValuesFieldTypeID: TWordField;
    FieldValuesReferenceTableID: TIntegerField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    FieldValuesAccessTypeID: TWordField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FieldValuesFormOrder: TWordField;
    FieldValuesInsertUserID: TIntegerField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    YDBGrid1: TYDBGrid;
    dsSigners: TDataSource;
    Get_LetterFormSigners: TADOStoredProc;
    Get_LetterFormSignersiD: TAutoIncField;
    Get_LetterFormSignersletterFormID: TIntegerField;
    Get_LetterFormSignerssignerUserID: TIntegerField;
    Get_LetterFormSignersparaph: TWideStringField;
    Get_LetterFormSignersdate: TStringField;
    Get_LetterFormSignerstime: TStringField;
    Get_LetterFormSignerstitle: TStringField;
    Insert_LetterFormSigners: TADOStoredProc;
    FieldValuesuniqueID: TLargeintField;
    procedure MakePanelFilter(Control:TWinControl);
    procedure openFields;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure ShowInPanel(P:TWinControl);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    FormOrder:Integer  ;
    LetterID:integer;
   MaxHeight:integer;

  end;

var
  FrUserTable_Input: TFrUserTable_Input;


implementation
{$R *.dfm}

uses Dmu, businessLayer, YShamsiDate;



  const NumberOfColumns=2;
        EditLenght=210;
        HorSpaces=5;
        VerSpaces=25;
        EditStartTop=5;

var NumberOfRows: byte;
    LabelLength :integer;
    NumberOfFields:integer;
    Edits      : array[0..99] of TEdit;
    YEdits      : array[0..99] of TYEdit;
    Memos      : array[0..99] of TMemo;
    ShamsiEdits: array[0..99] of TShamsiDateEdit;
    Lookups    : array[0..99] of TYDBComboBox;
    CheckBoxs  : array[0..99] of TCheckBox;


procedure TFrUserTable_Input.openFields;
begin
   //LetterFieldValue ﬁ—«— œ«œ‰ „ﬁœ«— ‰«„Â Ê ›Ì·œÂ« œ— ÃœÊ·
   Exec_Make_FieldValues_by_LetterID(LetterID,FormOrder);

   with FieldValues do
   begin
      Close;
      Parameters.ParamByName('@LetterID').Value:=LetterID;
      Parameters.ParamByName('@FormOrder').Value:=FormOrder;
      Parameters.ParamByName('@UserID').Value:=_userid;
      Open;
   end;
end;

Procedure TFrUserTable_Input.MakePanelFilter(Control:TWinControl);
Var
//   Labels:array[0..199] of TLabel;
   EditLabels:array[0..5000] of TEdit;
   k: byte;
   EditTop,EditLeft,SpaceForOneField,
   EditStartLeft:integer;
   RowHasMemo:boolean ;

   function GetEnabled:boolean;
   begin
      result:=True;
      if FieldValuesAccessTypeID.AsInteger in [1,2] then
         Result:=false;
      if (FieldValuesAccessTypeID.AsInteger=3) and (Trim(FieldValuesFieldValue.AsString)<>'') then
         Result:=false;
   end;

   function Getvisible:boolean;
   begin
      result:=True;
      if FieldValuesAccessTypeID.AsInteger=1 then
         Result:=false;
   end;

begin

   SpaceForOneField:=((Control.Width-HorSpaces)  div NumberOfColumns);
   LabelLength:=SpaceForOneField-EditLenght-HorSpaces;
   EditStartLeft:=Control.Width-SpaceForOneField;
   k:=0;

   //Add Sanaye 950923
   //Õ· „‘ò· ›—„ Â«Ì «÷«›Â ‘œÂ »Â ‰«„Â
   //«’·«Õ ‘œ [dbo].[trgInsDataToLetterFieldValue]  œ— uniqueID „ﬁœ«—
   k:= FieldValuesuniqueID.AsInteger;
   //End Sanaye

   with FieldValues do
   begin
     First;
      NumberOfRows:=RecordCount div NumberOfColumns;
      if RecordCount mod NumberOfColumns<>0 then
         inc(NumberOfRows);


      EditLeft:=EditStartLeft;
      Edittop:=EditStartTop;

      while not eof do
      begin
//         Labels[k]:=TLabel.Create(self);
//         Labels[k].Caption:=FieldValuesDescription.AsString;
//         Labels[k].Parent:=Control;

         EditLabels[k]:=TEdit.Create(self);
         EditLabels[k].Text        := FieldValuesDescription.AsString;
         EditLabels[k].Parent      := Control;
         EditLabels[k].ParentColor := True;
         EditLabels[k].BorderStyle := bsNone;
         EditLabels[k].TabStop     := False;
         EditLabels[k].BiDiMode    := bdRightToLeftNoAlign;
         EditLabels[k].ReadOnly    := True;

         if  EditLeft<HorSpaces then
            begin
              EditLeft:=EditStartLeft;
              EditTop:=EditTop+VerSpaces;
              if RowHasMemo then
              EditTop:=EditTop+6*VerSpaces;
              RowHasMemo:=false;
            end;

//         Labels[k].Left:=EditLeft+EditLenght+5;
//         Labels[k].Top:=EditTop+3;

         EditLabels[k].Left:=EditLeft+EditLenght+5;
         EditLabels[k].Top:=EditTop+3;

         case FieldValuesFieldTypeID.AsInteger of
          1:
             begin
                Edits [k]:=TEdit.Create(self);
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
          3:
             begin
                YEdits[k]:=TYEdit.Create(self);
                YEdits[k].Parent:=Control;
                YEdits[k].Left:=EditLeft;
                YEdits[k].Width:=EditLenght;
                YEdits[k].Top:=EditTop;
                YEdits[k].Tag:=FieldValuesFieldID.AsInteger;
                YEdits[k].Text:=FieldValuesFieldValue.AsString;
                YEdits[k].Visible:=Getvisible;
                YEdits[k].InputDigit:=true;
                YEdits[k].InputAlpha:=False;
                if not GetEnabled then
                begin
                   YEdits[k].ReadOnly:=true;
                   YEdits[k].Font.Color:=clGrayText;
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
              dm.Refresh_ReferenceTableData(FieldValuesReferenceTableID.AsInteger);
              Lookups[k].FillItems(dm.get_ReferenceTableData_by_tableID,'DataID','DataTitle');
              lookups[k].SetKeyValue(FieldValuesFieldValue.AsString);
              //Add Sanaye 950318
              //›ﬁÿ ŒÊ«‰œ‰Ì ò—œ‰ ·Ì”  »«ò” Â«Ì ›—„Â«Ì «‰ ﬁ«·Ì
              SendMessage(GetWindow(Lookups[k].Handle,GW_CHILD), EM_SETREADONLY, 1, 0);
               if not GetEnabled then
                 begin
                   lookups[k].Enabled:=false;
                 end;
              end;
           end;{case}

         EditLeft:=EditLeft-SpaceForOneField;
         next;
         //Add Sanaye 950923
         //Õ· „‘ò· ›—„ Â«Ì «÷«›Â ‘œÂ »Â ‰«„Â
         //«’·«Õ ‘œ [dbo].[trgInsDataToLetterFieldValue]  œ— uniqueID „ﬁœ«—
         k:= FieldValuesuniqueID.AsInteger;
         //End Sanaye
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

procedure TFrUserTable_Input.FormShow(Sender: TObject);
begin
   MaxHeight:=560;
   openFields;
   MakePanelFilter(EditsPanel);
   Get_LetterFormSigners.Close;
   Get_LetterFormSigners.Parameters.ParamByName('@FormID').Value :=  FieldValuesFormOrder.AsInteger;
   Get_LetterFormSigners.Open;
   Refresh;
   Repaint;
end;

procedure TFrUserTable_Input.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DisableTimer := false;
 Action:=caFree;
end;

Procedure TFrUserTable_Input.ShowInPanel(P:TWinControl);
 begin
   ManualDock(p,nil,alClient);
   Show;
   Align:=alClient;
   EditsPanel.Constraints.MaxHeight:= p.Height- panel1.Height; // Amin 1391/05/18
 end;

procedure TFrUserTable_Input.xpBitBtn1Click(Sender: TObject);
 var
  k: byte;
  valuenew : String;
begin
 k:=0;


 with FieldValues do
  begin
   first;

   //Add Sanaye 950923
   //Õ· „‘ò· ›—„ Â«Ì «÷«›Â ‘œÂ »Â ‰«„Â
   //«’·«Õ ‘œ [dbo].[trgInsDataToLetterFieldValue]  œ— uniqueID „ﬁœ«—
   k:= FieldValuesuniqueID.AsInteger;
   //End Sanaye

   while not eof do
    begin
      edit;
       case  FieldValuesFieldTypeID.AsInteger of
        1: FieldValuesFieldValue.AsString:=Edits[k].Text;
        2:   FieldValuesFieldValue.AsString:=Memos[k].Text;
        3: FieldValuesFieldValue.AsString:=YEdits[k].Text;
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

       if trim(FieldValuesFieldValue.AsString)<>'' then
         if FieldValuesInsertUserID.AsInteger=0 then
           FieldValuesInsertUserID.AsInteger:=_userid;
       Post;
       next;
       //Add Sanaye 950923
       //Õ· „‘ò· ›—„ Â«Ì «÷«›Â ‘œÂ »Â ‰«„Â
       //«’·«Õ ‘œ [dbo].[trgInsDataToLetterFieldValue]  œ— uniqueID „ﬁœ«—
       k:= FieldValuesuniqueID.AsInteger;
       //End Sanaye
    end;

  end;
  messageShowString(' «ÿ·«⁄«  ›—„ »« „Ê›ﬁÌ   €ÌÌ— ò—œ',false);
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
        1  : Edits[k].Text:=FieldValuesFieldValue.AsString;
        2  : Memos[k].Text:=FieldValuesFieldValue.AsString;
        3  : YEdits[k].Text:=FieldValuesFieldValue.AsString;
        4  : ShamsiEdits[k].Text:=FieldValuesFieldValue.AsString;
        5  : CheckBoxs[k].Checked:=FieldValuesFieldValue.AsString='1';
        6  :lookups[k].SetKeyValue(FieldValuesFieldValue.AsString);
       end;
       inc(k);
       next;
    end;
  end;

end;



procedure TFrUserTable_Input.BitBtn1Click(Sender: TObject);
begin
  dm.ExportLetterField(LetterID,FormOrder,1);
end;
procedure TFrUserTable_Input.BitBtn2Click(Sender: TObject);
begin
 dm.ExportLetterField(LetterID,FormOrder,2);
end;

procedure TFrUserTable_Input.BitBtn3Click(Sender: TObject);
var
   paraph : string;
begin
  // ShowMessage('emza');
  //TODO   »—”Ì ÊÃÊœ «„÷«
   dm.QrUserSign.Close;
   dm.QrUserSign.Parameters.ParamByName('Pa_UserID').Value := _Userid;
   dm.QrUserSign.Open;
   if dm.QrUserSign.RecordCount = 0 then
   begin
      MBaseForm.MessageShowString('ﬂ«—»— ê—«„Ì ‘„« œ«—«Ì «„÷« ‰„Ì »«‘Ìœ', False);
      Exit;
   end;

  //TODO                 »——”Ì «Ì‰òÂ ﬁ»·« «„÷« ‰ò—œÂ »«‘œ
   Get_LetterFormSigners.First;
   while not Get_LetterFormSigners.Eof do
   begin
      if Get_LetterFormSignerssignerUserID.AsInteger = _UserID then
      begin
         MBaseForm.MessageShowString('«Ì‰ ›—„ ﬁ»·«  Ê”ÿ ‘„« «„÷« ‘œÂ «” ', False);
         Exit;
      end;
      Get_LetterFormSigners.Next;
   end;

   paraph := InputBox( '·ÿ›« „ ‰ Å«—«› —« Ê«—œ ò‰Ìœ','', '');
   try
      Insert_LetterFormSigners.Close;
      Insert_LetterFormSigners.Parameters.ParamByName('@letterFormID').Value := FieldValuesFormOrder.AsInteger;
      Insert_LetterFormSigners.Parameters.ParamByName('@signerUserID').Value := _UserID;
      Insert_LetterFormSigners.Parameters.ParamByName('@date').Value := _Today;
      Insert_LetterFormSigners.Parameters.ParamByName('@time').Value := Exec_Get_NowTime;
      Insert_LetterFormSigners.Parameters.ParamByName('@paraph').Value := paraph;
      Insert_LetterFormSigners.ExecProc;
      //ShowMessage('');
      Get_LetterFormSigners.Close;
      Get_LetterFormSigners.Parameters.ParamByName('@FormID').Value :=  FieldValuesFormOrder.AsInteger;
      Get_LetterFormSigners.Open;
   except
   end;
end;
procedure TFrUserTable_Input.BitBtn4Click(Sender: TObject);
Var
   y:TydbGrid;
   s,tmpWordFileName: string;
   tempDOC, tempPDF : string;
begin
   DisableTimer := true;
   y := TYDBGrid.create(Application);
   tempDOC := _ApplicationPath+'tmpWord.docx';

   dm.Open_GetfieldValueByLetterID(letterId,FormOrder);
   y.DataSource := dm.DGetfieldValueByLetterID;
   y.Columns[0].Title.Caption := '‰«„ ›Ì·œ';
   y.Columns[1].Title.Caption := '„ﬁœ«—';
   y.ExportToWord(tempDOC,true);


   Get_LetterFormSigners.First;

   OpenWord(tempDOC);
   while not Get_LetterFormSigners.Eof do
   begin
      AddUserSign(tempDOC,Get_LetterFormSignerssignerUserID.AsInteger,Get_LetterFormSignersparaph.AsString);
      Get_LetterFormSigners.Next;
   end;
   CloseWord();

   tempPDF := _ApplicationPath+'tmp.pdf';
   if FileExists(tempPDF)then
   begin
     SysUtils.FileSetReadOnly(pchar(tempPDF), false);
     DeleteFile(pchar(tempPDF));
   end;
   if WordToPDF(tempDOC,tempPDF) then
   begin
      SysUtils.FileSetReadOnly(pchar(tempDOC), false);
      DeleteFile(pchar(tempDOC));
      ShellExecute(handle, 'open', pchar(tempPDF), nil, nil, SW_SHOWNORMAL);
   end;
   
end;

end.


