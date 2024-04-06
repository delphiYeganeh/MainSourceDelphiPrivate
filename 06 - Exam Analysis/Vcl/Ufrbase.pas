unit UfrBase;

{ Written by:           Alireza Mohammadizadeh }
{ First developement:   1379/6/13 }
{ Last update:          1380/1/17 }
{ E-Mail: arm@molavi.ut.ac.ir }

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DbTables, ComCtrls, DB, StdCtrls, QRCtrls, Buttons, Menus, mxGraph, Registry,
  ActnList, ADODB, Grids, DBGrids, DBCGrids, DBCtrls, extCtrls, QuickRpt;

type
  TMySType = (stStudent, stLesson);
  TMyDataType = (mdCodeTitle, mdString, mdInteger, mdFloat);// use for pass parameter to the store proc or...

  TBaseForm = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FReadOnly: Boolean;
    procedure SetReadOnly(const Value: Boolean);
  public

    UserId: integer;  //nano
    { Public declarations }
    function  OpenTables: Boolean;    // Opens all tables in form
    procedure CloseTables;            // Closes all tables in form
    function  OpenADOTables: Boolean; // Opens all datasets in form
    procedure CloseADOTables;         // Closes all datasets in form
    function OpenUsedTables: boolean;
    procedure CloseUsedTables;
    function ConfirmClose: Boolean;
    function ConfirmSave: Boolean; // Confirm form close
    constructor Create(AOwner: TComponent); override;  // Create the form
    procedure DoBeforeClose(Sender: TObject); virtual; // Anything to do before closing the form
    procedure AddTables(TableList: array of TADOTable);
    procedure EmptyReport(Sender: TObject);
    procedure EmptyPicture(Sender: TObject; Image: TPicture);
  protected
    UsedTables: TStringList;
    CodePageChanged: boolean;
  published
    property ReadOnly: Boolean read FReadOnly write SetReadOnly;
  end;

  TBaseClass = class of TBaseForm;

var
  BaseForm: TBaseForm;
  ApplicationTitle: integer;

var
  MyVariantFieldName : Variant;      //use for pass FieldName for an ACT from ActionList to stored proc or ...
  MyFieldType : TMyDataType;         //use for pass type of field to stored proc from ActionList
  MyVariantFieldValue : Variant;     //use for pass Value for an ACT to Stored proc...
  Del_ADDLessonGroupChange: Boolean; //Use for Determine Changing Group of Lesson During the Del_Add
  Del_ADDLessonHazf: Boolean;        //Use for Determine "Hazf" Lesson in the Del_Add
  Del_ADDNewRecord: Boolean;         //Use for know when suscode should be =>3
  Del_ADDReturnLesson: Boolean;      //Use for know when Action is return lesson from "Hazf" status to "Entekhab vahed"
  Dummy: integer;                    // For dummy use. Do not trust its value
  MStream: TMemoryStream;
  function UEMSText(const Tag: integer): string;
  procedure Initialize;
  procedure UpdateComponents(NC: TComponent);  // Update codepage in all components of NC


 const
  RegistryKey = 'Software\RPN\Uems\79';
  ActiveCodePage='Microsoft';

implementation

{$R *.DFM}
 uses  tools;

 var
  UEMSDir: string;

 var
  Language: TADOTable;
  QMS: TADOQuery;
  tbUniv: TADOTable;
  UnivARMData, UnivLogoData, UnivTramData: TBlobField;
  DataModule: TDataModule;

 //********************************************
 //Task:   Find the string associated with a tag in Language batabase
 //Input:  Tag to return the string
 //Output: The string in current codepage
 //
 // Used in pascal sources to return a string.
 // Another method is used for components...
 //********************************************
 function UEMSText(const Tag: integer): string;
  begin
    if not Language.Active then Language.Open;
    if Language.Locate('Tag', Tag, []) then
     UEMSText:=Language.FieldByName(ActiveCodePage).AsString;;
  end;

procedure TBaseForm.EmptyReport(Sender: TObject);
 var
  i:integer;
  c: TComponent;
  chBorder: TCheckBox;
 begin
   chBorder:=TCheckBox(Sender);
   For i:=1 to ComponentCount-1 do
    begin
     c:=Components[i];
     if c.ClassNameIs('TQrshape') then
       TQRShape(C).Enabled:=chBorder.Checked
      else if C.ClassNameIs('Tquickrep') then
       with TQuickRep(c).Frame do
        begin
         DrawBottom:=chBorder.Checked;
         DrawLeft:=chBorder.Checked;
         DrawTop:=chBorder.Checked;
         DrawRight:=chBorder.Checked;
        end
        else if c.ClassNameIs('TQRBand') then
         with  TQRBand(c).Frame do
          begin
           DrawBottom:=chBorder.Checked;
           DrawLeft:=chBorder.Checked;
           DrawTop:=chBorder.Checked;
           DrawRight:=chBorder.Checked;
          end
          else if UpperCase(Copy(C.Name, 1, Length('George'))) = 'GEORGE' then
                TControl(C).Enabled:=chBorder.Checked;
    end;{For}
 end;

 //******************************************************
 //Task:   Fills the string list L with data in field 'DataFieldName' of Table
 //        Language based on index field 'IndexFieldName'
 //Input:  See above
 //Output: None
 //******************************************************
{ procedure FillStringList(Language: TDataset; IndexFieldName, DataFieldName: string; var L: TStringList);
  var
   i: integer;
  begin
   if L=nil then L:=TStringList.Create else L.Clear;

   Q.Open;
   for i:=0 to Q.FieldByName('MaxOfMyField').AsInteger do
      L.Add('');
   Q.Close;

   T.Open;
   T.First;
   while not T.EOF do
    begin
      L.Strings[T.FieldByName(IndexFieldName).AsInteger]:=T.FieldByName(DataFieldName).AsString;
      T.Next;
    end;
   T.Close;
  end;
}
 //******************************************************
 //Task:   Change program's codepage.     Sina<-->Microsoft
 //Input:  None
 //Output: None
 //
 //Note:   This method writes current codepage to the registry.
 //******************************************************
procedure TBaseForm.CloseUsedTables;
 var
  i: integer;
  Cap: string;
  T: TADOTable;
 begin
  Cap:=Caption;
  with UsedTables do
   for i:=0 to Count-1 do
    begin
     T:=TADOTable(Strings[i]);
     Caption:=T.TableName+UEMSText(1743);
     if T.Active then T.Close;
    end;
  Caption:=Cap;
 end;

// Open all tables used in this form from data modules
function TBaseForm.OpenUsedTables: boolean;
 var
  i: integer;
  Cap: string;
  T: TADOTable;
 begin
  Cap:=Caption;
  with UsedTables do
   for i:=0 to Count-1 do
    begin
     T:=TADOTable(Objects[i]);
     Caption:=UEMSText(1738)+T.TableName;
     try
      if not T.Active then T.Open;
     except
      on EDatabaseError do
       begin
        ShowMessage(T.TableName+UEMSText(1740));
        OpenUsedTables:=False;
        Exit;
       end
     end;
    end;
  OpenUsedTables:=True;
  Caption:=Cap;
 end;

 //******************************************************
 //Task:   Open all tables in form
 //Input:  None
 //Output: True = Success
 //******************************************************
 Function TBaseForm.OpenTables:Boolean;
  var
   i: integer;
   c: TComponent;
   T: TTable;
   _Cp:String;
  begin
   _Cp:=Caption;
   Caption:=UEMSText(1737);
   for i:= 0 to ComponentCount-1 do
    begin
     c:=Components[i];
     if c.ClassType=TTable then
      begin
       T:=TTable(c);
       if (not T.active) then
       Begin
         Caption:=UEMSText(1738)+T.TableName;
         Try
	   T.Open;
         Except
           On E:EdbengineError Do
            IF Pos('locked',E.Message)<>0 Then
               Begin
                  ShowMessage(UEMSText(1739)+T.TableName+UEMSText(1740));
                  OpenTables:=False;
                  Exit;
               End;
              Else
              Begin
                ShowMessage(UEMSText(1741) +T.TableName+  UEMSText(1742));
                 Raise;
              End;
         End;
       end;
      end;
    end;
    Caption:=_Cp;
    OpenTables:=True;
  end;

 //******************************************************
 //Task:   Close all tables in form
 //Input:  None
 //Output: None
 //******************************************************
 procedure TBaseForm.CloseTables;
  var
   i: integer;
   c: TComponent;
   T: TTable;
  begin
   for i:= 0 to ComponentCount-1 do
    begin
     c:=Components[i];
     if c.ClassType=TTable then
      begin
       T:=TTable(c);
       if T.active then
        Begin
          Caption:=T.TableName+UEMSText(1743);
          if (T.Modified) and ((T.State=dsInsert) or (T.State=dsEdit)) then
           if MessageDlg('Table '+T.TableName+' modified. Save?', mtWarning,
            [mbYes, mbNo], 0)=ID_YES then
             T.Post else T.Cancel;
          T.Close;
        end;
      end;
    end;
  end;

 //******************************************************
 //Task:   Open all datasets in form
 //Input:  None
 //Output: True = Success
 //******************************************************
 function TBaseForm.OpenADOTables:Boolean;
  var
   i: integer;
   c: TComponent;
   T: TADOTable;
  begin
   for i:= 0 to ComponentCount-1 do
    begin
     c:=Components[i];
     if c.ClassType=TADOTable then
      begin
       T:=TADOTable(c);
       if (not T.active) then
       Begin
         Try
	   T.Open;
         Except
           On E:EdbengineError Do
            IF Pos('locked',E.Message)<>0 Then
               Begin
                  ShowMessage(UEMSText(1739)+UEMSText(1740));
                  OpenADOTables:=False;
                  Exit;
               End;
              Else
              Begin
                ShowMessage(UEMSText(1741));
                 Raise;
              End;
         End;
       end;
      end;
    end;
    OpenADOTables:=True;
  end;

 //******************************************************
 //Task:   Close all tables in form
 //Input:  None
 //Output: None
 //******************************************************
 procedure TBaseForm.CloseADOTables;
  var
   i: integer;
   c: TComponent;
   T: TADOTable;
  begin
   for i:= 0 to ComponentCount-1 do
    begin
     c:=Components[i];
     if c.ClassType=TADOTable then
      begin
       T:=TADOTable(c);
       if T.active then
        Begin
          T.Post;
          T.Close;
        end;
      end;
    end;
  end;

 //******************************************************
 //Task:   Display a dialog box and confirm to save the changes,
 //        if Datasets have been changed
 //Input:  None
 //Output: True = Yes
 //******************************************************
function TBaseForm.ConfirmClose: Boolean;
 begin
  ConfirmClose:=MessageDlg(UEMSText(172) ,mtConfirmation, [MbYes,MbNo],0)=ID_YES;
 end;

 //******************************************************
 //Task:   Display a dialog box and confirm to save the changes,
 //        if Datasets have been changed
 //Input:  None
 //Output: True = Yes
 //******************************************************
function TBaseForm.ConfirmSave: Boolean;
 begin
  ConfirmSave:=True;
  if DatasetsModified(Datamodule) or DatasetsModified(Self) then
   ConfirmSave:=MessageDlg(UEMSText(1831) ,mtConfirmation, [MbYes,MbNo],0)=ID_YES;
 end;

 //******************************************************
 //Task:  Auto-created FormClose
 //
 //Note:  Datsets will be saved if ConfirmSave returns True.
 //******************************************************
procedure TBaseForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if ConfirmSave then
    begin
     SaveDatasets(DataModule);
     SaveDatasets(Self);
    end
   else
    begin
     CancelDatasets(DataModule);
     CancelDatasets(Self);
    end;
   DoBeforeClose(Sender);
   Action:=caFree;
end;

 //******************************************************
 //Task:  Create the form's instance, or show it if created before.
 //
 //Note:  The form will be created if it was not created before. In this case
 //       it will be only Showed. The input parameter AOwner has no effect
 //       because Applicaton will be the owner of all forms.
 //******************************************************
constructor TBaseForm.Create(AOwner: TComponent);
 var
  LastCreated: TForm;
 begin
  {Look for the form in Application}
  LastCreated:=TForm(Application.FindComponent(Copy(Self.ClassName, 2, 255)));

  if LastCreated=nil then                       {Found?}
    begin
     inherited Create(Application);             {No, Create it}
     UpdateComponents(Self);
    end
   else
    begin
      Self:=TBaseForm(LastCreated);             {Yes, Show it}
      Self.Show;
      Self.SetFocus;
    end;
 end;

 //******************************************************
 //Task:  Anything to do before closing the form.
 //Input: Sender = form which sends this request
 //
 //Note:  Override this method in descendant classes to do something before
 //       TForm.Close is to be executed, if you don't want to override the
 //       FormClose method and call the ConfirmSave method...
 //******************************************************
 procedure TBaseForm.DoBeforeClose(Sender: TObject);
  begin
  end;

 //******************************************************
 //Task:  Auto-created OnActivate
 //
 //Note:  Opens all tables used in this form
 //******************************************************
 procedure TBaseForm.FormActivate(Sender: TObject);
  begin
   // Do not Delete!
   OpenUsedTables;
   OpenADOTables;
   OpenTables;

   if CodePageChanged then
     UpdateComponents(Self);
   if ReadOnly then Caption:=Caption+UEMSText(1806);
  end;

//**************************************
// Copied from UEMS\MyUnits\SomeTool.Pas
//**************************************
procedure NoTabStopSelectNext(Sender:TObject);
 var
  SParent:TWinControl;
  SWCtl:TWinControl;
  O:TControl;
  STOrder,CCount:integer;
  i:integer;
  FWCtl:TWinControl;
 begin
  SWCtl:=Sender as TWinControl;
  STOrder:=SWCtl.TabOrder;
  SParent:=(SWCtl.Parent) as TWinControl;
  CCount:=SParent.ControlCount;
  for i:=0 to CCount-1 do
   begin
    O:=SParent.Controls[i mod CCount];
    if (O is TEdit) or (O is TButton) or (O is TComboBox) or (O is TDBEdit)
    or (O is TDBGrid) or (O is TDBComboBox) or (O is TDBLookupComboBox) then
     begin
      FWCtl:=O as TWinControl;
      if FWCtl.TabOrder=(CCount+STOrder+1) mod CCount then
       begin
        FWCtl.SetFocus;
        break;         {exit the loop: i}
       end;
     end;
   end; {For}
 end;

 //******************************************************
 //Task:   Set focus on the control next to Sender in this form
 //Input:  Sender = the control to select next to
 //        Key has no effects right now
 //Output: None
 //******************************************************
procedure TBaseForm.GotoNext(Sender: TObject; var key: Word; Shift: TShiftState);
 begin
  case key of
     vk_return:
             begin
               If (Sender is TDblookUpCombobox) then (TDblookUpCombobox(sender).closeup(true));
               SelectNext(Sender as TwinControl,True,True);
             end;
     Vk_Down: if not(Sender is TDblookUpCombobox) then  SelectNext(Sender as TwinControl,True,True);
     Vk_Up: if not(Sender is TDblookUpCombobox) then  SelectNext(Sender as TwinControl,False,True);
     Vk_Left:begin
               if Sender is TDblookUpCombobox then SelectNext(Sender as TwinControl,True,True);
               if (Sender as TwinControl).tag=1  then  NoTabStopSelectNext(Sender);
             end;
     Vk_right:if Sender is TDblookUpCombobox then SelectNext(Sender as TwinControl,False,True);
     Vk_Space:begin
                if (Sender as TwinControl).tag=1 then   NoTabStopSelectNext(Sender);
                if (Sender is TDblookUpCombobox) then (TDblookUpCombobox(sender).DropDown);
              end;
   end;
 end;

 //******************************************************
 //Task:
 //
 //Note:
 //******************************************************
procedure TBaseForm.FormCreate(Sender: TObject);
 begin
   inherited;
   BiDiMode:=bdRightToLeft;
   UsedTables:=TStringList.Create;
   CodePageChanged:=False;
 end;

 //******************************************************
 //Task:   Update the Active Codepage on all controls and components lying
 //        in the form.
 //Input:  None
 //Output: None
 //
 //Note:   UpdateComponents looks at each component owned by this form. Then for
 //        all Components having Caption or properties like it, reads the
 //        corresponding value for its Tag from Language table.
 //
 //        Also updates some other properties of components
 //******************************************************
procedure UpdateComponents(NC: TComponent);
 var
  i: integer;
 procedure UpdateComponent(Component: TComponent);
  var
    j: integer;
    c: TComponent;
    StBar: TStatusBar;
    f: TField;
    S, ToT: String;
    Stream: TStream;
    ImageType: string;
  function IsImageType(var it: string; const s: string): boolean;
   begin
     Result:=UpperCase(Copy(Component.Name, 1, Length(s)))=Uppercase(s);
     if Result then it:=s;
   end;
  begin
    c:=Component;
    if c=nil then exit;
    if UpperCase(Copy(Component.Name, 1, Length('UNIV')))='UNIV' then
      begin
       if IsImageType(ImageType, 'UnivArm') or IsImageType(ImageType, 'UnivLogo') or
          IsImageType(ImageType, 'UnivTram') or IsImageType(ImageType, 'UnivAboutSama') then
       begin
        tbUniv.Open;
        tbUniv.First;
        Stream := tbUniv.CreateBlobStream(tbUniv.FieldByName(ImageType) as TBlobField, bmRead);
        if Stream<>nil then
         begin
          if Component.ClassType=TImage then
           with TImage(Component) do
            begin
              Picture.Bitmap.LoadFromStream(Stream);
              Stretch:=True;
            end else
          if Component.ClassType=TQRImage then
           with TQRImage(Component) do
            begin
              Picture.Bitmap.LoadFromStream(Stream);
              Stretch:=True;
            end;
          Stream.Free;
         end;
       end;
      end
     else if Language.Locate('Tag', C.Tag, []) then
       begin
        ToT:=Language.FieldByName(ActiveCodePage).AsString;
        if c.InheritsFrom(TLabel) then TLabel(C).Caption:=ToT

         else if c.InheritsFrom(TBitBtn) then TBitBtn(C).Caption:=ToT

         else if c.InheritsFrom(TButton) then TButton(C).Caption:=ToT

         else if c.InheritsFrom(TQRLabel) then TQRLabel(C).Caption:=ToT

         else if C.InheritsFrom(TForm) then TForm(C).Caption:=ToT

{         else if C.InheritsFrom(TControl) and (TControl(C).Action<>nil) and
           (TControl(C).Action.Tag<UEMSTextList.Count) then
             TAction(TControl(C).Action).Caption:=UEMSTextList.Strings[TControl(C).Action.Tag]

         else if C.InheritsFrom(TMenuItem) and (TMenuItem(C).Action<>nil) and
           (TMenuItem(C).Action.Tag<UEMSTextList.Count) then
             TAction(TMenuItem(C).Action).Caption:=UEMSTextList.Strings[TMenuItem(C).Action.Tag]}

         else if c.InheritsFrom(TCheckBox) then TCheckBox(C).Caption:=ToT

         else if c.InheritsFrom(TRadioButton) then TRadioButton(C).Caption:=ToT

         else if c.InheritsFrom(TMenuItem) then TMenuItem(C).Caption:=ToT

         else if c.InheritsFrom(TTabSheet) then TTabSheet(C).Caption:=ToT

         else if c.InheritsFrom(TAction) then TAction(C).Caption:=ToT

         else if c.InheritsFrom(TGroupBox) then TGroupBox(C).Caption:=ToT

         else if c.InheritsFrom(TRadioGroup) then TRadioGroup(C).Caption:=ToT

         else if c.InheritsFrom(TSpeedButton) then TSpeedButton(C).Hint:=ToT

         else if c.InheritsFrom(TDataset) then
           with TDataset(C).Fields do
            for j:=0 to Count-1 do
             begin
              f:=Fields[j];
              if Language.Locate('Tag', f.Tag, []) then
                f.DisplayLabel:=Language[ActiveCodePage]
             end


      end;

      if (C.InheritsFrom(TDBGrid)) or (C.InheritsFrom(TButton)) or
         (C.InheritsFrom(TBitBtn)) or (C.InheritsFrom(TDBNavigator)) then
            TControl(C).Cursor:=crHandPoint;
    end;

 begin
   if not Language.Active then
     Language.Open;
        
   Updatecomponent(NC);

   for i:=0 to NC.ComponentCount-1 do
    UpdateComponent(NC.Components[i]);

   if NC.InheritsFrom(TBaseForm) then
     TBaseForm(NC).CodePageChanged:=False;
 end;

// ********************************************************************
// Initializes the program for running: Creates and sets initial values
// for Datasets used in codepage management.
//
// Caution: Must be called Before any auto-created Forms inherited from
//          TBaseForm and After any other auto-created Forms and Data modules
// ********************************************************************
procedure Initialize;
 var
  Connection: TADOConnection;
 begin
   DataModule:=TDatamodule(Application.FindComponent('DM1'));

   Language:=TADOTable.Create(Application);
   QMS:=TADOQuery.Create(Application);
   tbUniv:=TADOTable.Create(Application);

   Connection:=nil;
   if DataModule<>nil then
    Connection:=TADOConnection(DataModule.FindComponent('UEMSConnection'));
   if (Connection<>nil) and Connection.Connected then
    begin
     Language.Connection:=Connection;
     Language.TableName:='Language';

     QMS.Connection:=Connection;
     QMS.SQL.Add('select Microsoft, Sina from '+Language.TableName);

     tbUniv.Connection:=Connection;
     tbUniv.TableName:='University';

     UnivARMData:=TBlobField.Create(tbUniv);
     with UnivARMData do
      begin
       FieldKind:=fkData;
       FieldName:='UnivARM';
       DataSet:=tbUniv;
       Name:='FUnivArmdata';
      end;

     UnivLogoData:=TBlobField.Create(tbUniv);
     with UnivLogoData do
      begin
       FieldKind:=fkData;
       FieldName:='UnivLogo';
       DataSet:=tbUniv;
       Name:='FUnivLogoData';
      end;

     UnivTramData:=TBlobField.Create(tbUniv);
     with UnivTramData do
      begin
       FieldKind:=fkData;
       FieldName:='UnivTram';
       DataSet:=tbUniv;
       Name:='FUnivTramData';
      end;

     with TBlobField.Create(tbUniv) do
      begin
       FieldKind:=fkData;
       FieldName:='UnivAboutSama';
       DataSet:=tbUniv;
       Name:='FUnivAboutSama';
      end;

     MStream:=TMemoryStream.Create;

     Application.Title:=UEMSText(ApplicationTitle);
    end
 end;

procedure TBaseForm.AddTables(TableList: array of TADOTable);
 var
  i: integer;
 begin
  UsedTables.Clear;
  for i:=Low(TableList) to High(TableList) do
     UsedTables.AddObject(TableList[i].Name, TableList[i]);
 end;

procedure TBaseForm.EmptyPicture(Sender: TObject; Image: TPicture);
 begin
  if not TCheckBox(Sender).Checked then
   begin
    Image.Bitmap.SaveToStream(MStream);
    Image.Bitmap.Canvas.Pen.Color:=clwhite;
    Image.Bitmap.Canvas.Rectangle(0, 0, Width, Height);
    
   end
  else
   begin
     MStream.Position:=0;
     Image.Bitmap.LoadFromStream(MStream);
   end;
 end;

procedure TBaseForm.SetReadOnly(const Value: Boolean);
 var
  i: integer;
  c: TControl;
 begin
  FReadOnly := Value;
  for i:=0 to ControlCount-1 do
   begin
    c:=Controls[i];
    if C.InheritsFrom(TDBEdit) then TDBEdit(C).ReadOnly:=Value
    else if C.InheritsFrom(TDBCheckBox) then TDBCheckBox(C).ReadOnly:=Value
    else if C.InheritsFrom(TDBLookupComboBox) then TDBLookupComboBox(C).ReadOnly:=Value
    else if C.InheritsFrom(TDBRadioGroup) then TDBRadioGroup(C).ReadOnly:=Value
    else if C.InheritsFrom(TDBGrid) then TDBGrid(C).ReadOnly:=Value;
   end;
 end;

var
 reg: TRegistry;

initialization
   Reg:=TRegistry.Create;
   with Reg do
    begin
     RootKey:=HKEY_Current_User;
     OpenKey(RegistryKey, True);

     UEMSDir:=ReadString('Directory');
     if UEMSDir='' then
      begin
       UEMSDir:=ExtractFileDir(ParamStr(0));
       WriteString('Directory', UEMSDir);
      end
    end;
end.

