unit YDbgrid; //85-3-27

interface

uses
  Windows,Excel2000, Messages, SysUtils, Classes, Controls, Grids, DBGrids,
  Graphics,db,ADODB ,ComCtrls,QRCtrls, QuickRpt,Math,dialogs,QRExport,Printers,DBCtrls,
  OleCtrls,word2000,StdCtrls;

type
  TColumnWidthHelper = record
    Index : integer;
    MaxWidth : integer;
  end;
  TNeedColorCondition= procedure (Column: TColumn;  State: TGridDrawState;var Color:Tcolor) of object;
  TNeedFontCondition = procedure (Column: TColumn;  State: TGridDrawState;var F:TFont) of object;
  TNeedImageIndex    = procedure (Column: TColumn;var ImageIndex:integer) of object;
  TYDBGrid = class(TDBGrid)
  private
   FOnNeedColorCondition: TNeedColorCondition;
   FOnNeedFontCondition : TNeedFontCondition;
   FOnNeedImageIndex    : TNeedImageIndex;


   FOnMouseDown: TMouseEvent;
   FOnMouseUp: TMouseEvent;
   FOnTitleClick:TDBGridClickEvent;
   FWheelLinesMode:boolean;
   FWheelLinesMany:integer;
   FOriginalOptions : TDBGridOptions;
   FStatusBar:TStatusBar;

   FYeganehColor:boolean;
   FYeganehFinish:boolean;
   FTitleSort:boolean;
   FPageNumber    : boolean;
   FRecordNumber  : boolean;
   FHasTime       : boolean;
   FOriention     : TPrinterOrientation;
   FHasDate       : boolean;
   FHasindex      : boolean;
   FInvertFarsiDate   : boolean;
   FAutoInsert   : boolean;
   FPrintTitle    : String;
   FGroupbyField : String;
   FHeaderDataset :TDataSet;
   FImageList:TImageList;
   FFooterFields : String;
   procedure FDbgridMouseMove(Sender: TObject;  Shift: TShiftState; X, Y: Integer);
   procedure FDBGridKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
//   procedure FYDBGridTitleClick(Column: TColumn);
   Procedure SetyeganehColor(value:boolean);
   function GetPrintTitle:string;

   Procedure SetTitleSort(value:boolean);
    { Private declarations }
    procedure SaveBoolean;
    function GetTitle(FieldName:string): string;
    function GetSum(FieldName:string): string;
  protected
    { Protected declarations }
    procedure CellClick(Column: TColumn); override;
    procedure TitleClick(Column: TColumn); override;
    procedure ColEnter; override;
    procedure ColExit; override;
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyPress(var Key: Char); override;

    function DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint): Boolean; override;
    procedure DblClick;override;

    { Protected declarations }
  public
  SortedFieldName:string;
  SortDESC : boolean;
  constructor create(aowner:tcomponent);override;
  function NearColor(c:Tcolor;Distance:Word):Tcolor;
  function VisibleColumnCount:byte;
  Procedure Print;
  Procedure ExportToText;
  procedure ExportToWord(fileName:string=''); overload;
  procedure ExportToWord(fileName:string; quit : boolean);  overload;
  procedure ExportToExcel;
  procedure ExportToAccess;

  Procedure UpdateFooter;
  procedure HiddenFooter;
  function CustomizePrint:boolean;
  Procedure CreateWord;
  Procedure AutoFit;

    { Public declarations }
  published

   property  GroupByField    : string read FGroupByField write FGroupByField;
   property  YeganehColor    : boolean read Fyeganehcolor write SetyeganehColor;
   property  ImageList       : TImageList read FImageList write FImageList;
   property  YeganehFinish   : boolean read FyeganehFinish write FyeganehFinish;
   property  PageNumber      : boolean read FPageNumber write FPageNumber;
   property  RecordNumber    : boolean read FRecordNumber write FRecordNumber;
   property  HasTime         : boolean read FHasTime write FHasTime;
   property  Oriention       : TPrinterOrientation read FOriention write FOriention;
   property  HasDate         : boolean read FHasDate write FHasDate;
   property  HasIndex        : boolean read FHasIndex write FHasIndex;
   property  PrintTitle      : string read FPrintTitle write FPrintTitle;
   property  HeaderDataset   : TDataset read FHeaderDataset write FHeaderDataset;
   property  InvertFarsiDate : boolean read FInvertFarsiDate write FInvertFarsiDate;
   property  TitleSort:boolean read fTitleSort write SetTitleSort;
   property  AutoInsert:boolean read FAutoInsert write FAutoInsert;
   property  OnNeedColorCondition:TNeedColorCondition read FOnNeedColorCondition write FOnNeedColorCondition;
   property  FooterFields:String read FFooterFields write FFooterFields;
   property  OnNeedFontCondition:TNeedFontCondition read FOnNeedFontCondition write FOnNeedFontCondition;
   property  OnNeedImageIndex   :TNeedImageIndex    read FOnNeedImageIndex    write FOnNeedImageIndex;
   Property OnMouseDown : TMouseEvent read FOnMouseDown write FOnMouseDown ;
   Property OnMouseUp : TMouseEvent read FOnMouseUp write FOnMouseUp ;
   property OnMouseWheel;
   Property OnTitleClick : TDBGridClickEvent read FOnTitleClick write FOnTitleClick ;

    { Published declarations }
  end;

procedure Register;

implementation

uses DBGridCustomizeU, MakeText,YshamsiDate;

 var f: text;
  Sums,Items:TStrings;
ColumnWidthHelper : TColumnWidthHelper;
FitColumnWidth: array[0..50] of integer;


procedure Register;
begin
  RegisterComponents('Yeganeh', [TYDBGrid]);
end;

constructor TYDBGrid.create(aowner:tcomponent);
 begin
  inherited create(aowner);
  FWheelLinesMany :=1;
  FWheelLinesMode :=false;

  FFooterFields:='Count';
  InvertFarsiDate:=true;
  titlesort:=true;
  GroupByField:='';
  PrintTitle:='';


  if TitleSort then
   begin
    OnMouseMove:=FDbgridMouseMove;
    OnKeyDown:=FDBGridKeyDown;
   end;
 end;


procedure TYDBGrid.SetyeganehColor(value:boolean);
begin
 FYeganehColor:=value;
 color:=color+1;
 color:=color-1;
end;

function TYDBGrid.GetPrintTitle:string;
var i: byte;
begin
  result:=UpperCase(CorrectFarsi(PrintTitle));
  if assigned(HeaderDataset) then
    if HeaderDataset.Active then
      for i:=0 to HeaderDataset.FieldCount-1 do
        if not HeaderDataset.Fields[i].IsNull then
          result:=Replace(result,'(('+UpperCase(HeaderDataset.Fields[i].FieldName)+'))',HeaderDataset.Fields[i].Value)
end;


function TYDBGrid.CustomizePrint:boolean;
begin
  Result:=False;
  DBGCustomizeForm:=TDBGCustomizeForm.Create(Self);
  DBGCustomizeForm.YDBGrid:=Self;
  if DBGCustomizeForm.ShowModal = mrOk then
    result:=True;

end;

procedure TYDBGrid.CreateWord;
begin
   FCreateText := TFCreateText.Create(Self);
   FCreateText.YDBGrid:=Self;
   FCreateText.ShowModal;
end;

procedure TYDBGrid.Print;
var j,i:byte;
 QL:array[0..100] of TQRLabel;
 QS:array[0..100] of TQRShape;
 QT:array[0..100] of TQRDBText;
 w,QRL,DBGL :word;
 rate : real;
 MyQrep:TQuickRep;
 SummeryLabel,TitleLabel,SDate :TQRLabel;
 SPageNumber    ,
 SRecordNumber  ,
 STime       : TQRSysData;
 first:boolean;
 TitleCaption:string;
function Magnitate(t:integer):word;
begin
  Result:=floor(t/rate);
end;
begin
  TitleCaption:=PrintTitle;



 MyQrep:=TQuickRep.Create(Parent);
with Columns,MyQrep do
 begin
   Page.Orientation:=Oriention;
   Bands.HasTitle:=true;
   Bands.HasSummary:=true;
   Bands.HasColumnHeader:=true;
   Bands.HasDetail:=true;
   Bands.HasPageFooter:=FHasTime or FHasDate or FPageNumber or FRecordNumber;
   Bands.SummaryBand.Frame.DrawTop:=true;


 TitleLabel:=TQRLabel.Create(self);
 with TitleLabel do
  begin
   Parent:=Bands.TitleBand;
   Alignment:=taCenter;
   Caption:=TitleCaption;
   Font:=TitleFont;
   Font.Name:='Nazanin';
   Font.Style:=[fsBold];
   if Bands.TitleBand.Height>Height then
    Top:=(Bands.TitleBand.Height-Height) div 2;
   Width:=Bands.TitleBand.Width-10;
   AutoSize:=false;
   AlignToBand:=true;
  end;

   MyQrep.DataSet:=Grid.DataSource.DataSet;
     with  Frame do
      begin
       DrawTop:=true;
       DrawRight:=true;
       DrawLeft:=true;
     end;
   with Bands.ColumnHeaderBand do
   begin
    Color:=clSilver;
    with Frame do
    begin
       DrawTop:=true;
       DrawRight:=true;
       DrawLeft:=true;
       DrawBottom:=true;
     end;
   end;
if Bands.HasPageFooter then
   with Bands.PageFooterBand.Frame do
    begin
       w:=(Bands.PageFooterBand.Width-20)div 4;
       DrawTop:=true;
       DrawRight:=true;
       DrawLeft:=true;
       DrawBottom:=true;
     end;

if FPageNumber then
 with SPageNumber do
  begin
    SPageNumber  := TQRSysData.Create(Self);
    Parent:=Bands.PageFooterBand;
    Data:=qrsPageNumber;
    Width:=w;
    Font:=Columns.Items[0].Font;
    Left:=10;
  end;

if FRecordNumber then
 with SRecordNumber do
  begin
    SRecordNumber:= TQRSysData.Create(Self);
    Parent:=Bands.PageFooterBand;
    Data:=qrsDetailCount;
    Font:=Columns.Items[0].Font;
    Width:=w;
    Left:=w+10;
  end;

if FHasTime then
 with STime do
  begin
    STime := TQRSysData.Create(Self);
    Parent:=Bands.PageFooterBand;
    Data:=qrsTime;
    Width:=w;
    Font:=Columns.Items[0].Font;
    Left:=2*W+10;
  end;

if FHasDate then
 with SDate do
  begin
    SDate := TQRLabel.Create(Self);
    Parent:=Bands.PageFooterBand;
    Caption:=ShamsiString(Now);
    Font:=Columns.Items[0].Font;
    Width:=w;
    Left:=3*w+10;
  end;

if FFooterFields<>'' then
  with SummeryLabel do
   begin
    SummeryLabel := TQRLabel.Create(Self);
    Parent:=Bands.SummaryBand;
    Caption:='';

  if  Assigned(FStatusBar) then
   with FStatusBar do
    for i:=0 to panels.Count-1 do
      Caption:=Caption+'  '+Panels[i].Text;

    Font:=Columns.Items[0].Font;
    AlignToBand:=true;
    Alignment:=taRightJustify;
    Width:=Bands.SummaryBand.Width;
 end;

 DBGL:=0;
 for I:=0 to Count-1 do
  if Items[i].Visible then
   begin
    DBGL:=DBGL+Items[i].Width;
    j:=i
   end;

  QRL:=Bands.ColumnHeaderBand.Width;
  bands.DetailBand.Frame.DrawBottom:=true;
  Bands.ColumnHeaderBand.Height:=20;
  Bands.DetailBand.Height:=20;
  first:=true;
 rate:= (DBGL/QRL);

 for i:=0 to Count-1 do
 if Items[i].Visible then
  begin
    QL[i]:=TQRLabel.Create(Bands.ColumnHeaderBand);
    Ql[i].Parent:=Bands.ColumnHeaderBand;
    ql[i].Width:=Magnitate(Items[i].Width);
    QRL:=QRL-ql[i].Width;
    QL[i].Left:=QRL;
    QL[i].AutoSize:=false;
    QL[i].Caption:=Items[i].Title.Caption;
    ql[i].Font:=Items[i].Title.Font;
    ql[i].Font.Name:='Nazanin';
    Ql[i].Alignment:=taCenter;
    ql[i].Transparent:=true;
    QL[i].Show;

    QT[i]:=TQRDBText.Create(Bands.DetailBand);
    QT[i].Parent:=Bands.DetailBand;
    QT[i].Left:=QRL;
    QT[i].AutoSize:=false;
    QT[i].AutoStretch:=True;
    QT[i].Width:=Magnitate(Items[i].Width);
    QT[i].DataSet:=DataSet;
    QT[i].DataField:=Items[i].DisplayName;
    QT[i].Font:=Items[i].Font;
    QT[i].Font.Name:='Nazanin';
    if first or (Self.BiDiMode =bdLeftToRight) then
     begin
      QT[i].Alignment:=taCenter;
      first:=false;
     end
    else
      QT[i].Alignment:=taRightJustify;

  end;

 for i:=0 to Count-1 do
 if Items[i].Visible and (i<>j) then
  begin
    qs[i]:=TQRShape.Create(Bands.DetailBand);
    Qs[i].Parent:=Bands.DetailBand;
    Qs[i].Left:=qt[i].Left;
    Qs[i].Top:=0;
    Qs[i].Width:=2;
    Qs[i].Shape:=qrsVertLine;
    QS[i].Height:=51;
  end;
 Preview;
 Free;
end;
end;
procedure TYDBGrid.SetTitleSort(value:boolean);
begin
 FTitleSort:=value;
end;
function TYDBGrid.NearColor(c:Tcolor;Distance:Word):Tcolor;
function correct(i:Integer):byte;
begin
 i:=i-Distance;
 if i>255 then Result:=i-255
 else if i<0 then Result:=255+i
 else Result:=i;
end;
begin
Result:=rgb(correct(GetRValue(c)),correct(GetGValue(c)),correct(GetBValue(c)))
end;

function CommaSeperated(s:string):string;
var     i: integer;
begin
   i:=length(s) mod 3;
   if i<>0 then
    result:=copy(s,1,i)
   else
    result:='';

   while i<length(s) do
    begin
     if result<>'' then
      result:=result+','+copy(s,i+1,3)
     else
      result:=copy(s,i+1,3);
     i:=i+3
    end;
end;


procedure TYDBGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn;  State: TGridDrawState);
var   c1,c2,c:tcolor;
      f:Tfont;
      j,w : word;
      S:STRING;
      t:byte;
        DrawState: Integer;
  DrawRect: TRect;

  var imageindex : integer;
  var Icon: TBitmap;
 CheckBoxRectangle : TRect;

Const
 CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);


begin
 inherited DrawColumnCell(Rect,DataCol,Column,State);
  if DataCol = ColumnWidthHelper.Index then
    if Assigned(Column.Field) then
      begin
       ColumnWidthHelper.MaxWidth := Max(ColumnWidthHelper.MaxWidth, Canvas.TextWidth(Column.Field.DisplayText));
       ColumnWidthHelper.MaxWidth := Max(ColumnWidthHelper.MaxWidth, Canvas.TextWidth(Column.Title.Caption));
      end;

 if Assigned(Column.Field) then
  begin
   FitColumnWidth[DataCol]:=Max(FitColumnWidth[DataCol], Canvas.TextWidth(Column.Field.DisplayText));
   FitColumnWidth[DataCol]:=Max(FitColumnWidth[DataCol], Canvas.TextWidth(Column.Title.Caption));
  END;

  
    try
      s:=Column.Field.Text;
  except
  s:=''
  end;

  if YeganehFinish then
   begin
    w:=self.Canvas.TextWidth(s);
    if w>Column.Width then
     begin
      j:=Column.Width*Length(s) div w -3;
      if j>0 then  s:=copy(s,1,j)+'...'
     end;
  end;

    c1:=Self.Color;
    if FYeganehColor then
     c2:=NearColor(c1,30)
    else
    c2:=c1;

if not(gdselected in state) then
 with Self do
   begin
    t:=TDataSet(Column.Grid.DataSource.DataSet).RecNo mod 2 ;
    c:=t*c1+(1-t)*c2;
    if Assigned(FOnNeedColorCondition) then    FOnNeedColorCondition(Column,State,C);
    Canvas.Brush.Color:=c;
    f:=Canvas.Font;
    if Assigned(FOnNeedFontCondition) then    FOnNeedFontCondition(Column,State,F);
  end;

  imageindex:=-1;
  if Assigned(FOnNeedImageIndex) then
    OnNeedImageIndex(Column,imageindex);

    if imageindex>=0 then
     begin
      Icon:=TBitmap.Create;
      with  Self.Canvas do
       begin
        FillRect(Rect);
        ImageList.GetBitmap(imageindex,Icon);
        if imageindex>0 then Draw(round((Rect.Left+Rect.Right-Icon.Width)/2),Rect.Top,Icon);
        icon.Free;
       end;
       exit;
    end
   else
    with self.Canvas do
     TextRect(Rect, Rect.Left, Rect.Top, s);

  try
  if  Column.FieldName<>'' then
   if Column.Field.DataType = ftBoolean then
    begin
     Canvas.FillRect(Rect);
     CheckBoxRectangle.Left := Rect.Left + 2;
     CheckBoxRectangle.Right := Rect.Right - 2;
     CheckBoxRectangle.Top := Rect.Top + 2;
    CheckBoxRectangle.Bottom := Rect.Bottom - 2;
    DrawFrameControl(Canvas.Handle,CheckBoxRectangle,
      DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
   end;
  except end;

end;

procedure TYDBGrid.FDBGridKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
 VAR next:integer;
begin
  if key=13 then
 begin

   next:=SelectedIndex+1;
   if ssShift in Shift then
     next:=SelectedIndex-1;

   if (next>Columns.Count-1) or (next<0) then
    SelectedIndex:=0
   else
    SelectedIndex:=next;
 end;
 IF key=Vk_Up then
    if (DataSource.DataSet.RecNo<=1)and(DataSource.DataSet.RecNo>0) then Selectnext(Sender as TwinControl,False,True);
 IF key=Vk_down then
    if (DataSource.DataSet.RecNo=DataSource.DataSet.RecordCount) Then Selectnext(Sender as TwinControl,True,True);

end;
procedure TYDBGrid.FDbgridMouseMove(Sender: TObject;
   Shift: TShiftState; X, Y: Integer);
var  pt: TGridcoord;
begin
  pt:= MouseCoord(x, y);

  if pt.y=0 then
    Cursor:=crHandPoint
  else
    Cursor:=crDefault;
end;


procedure TYDBGrid.ExportToText;
var
   s,TitleLine,Line:string;
   i: byte;
   OpenD:TOpenDialog;
   {Ranjbar 89.08.01 ID=152}
   Data : String;
   //---
begin
    OpenD:=TOpenDialog.Create(self);
    OpenD.Filter:='������� ����|*.txt|��� ������|*.*';
    OpenD.Title:='����� ���� ���� ����';
    if DataSource.DataSet.Active then
   if OpenD.Execute then
     begin

        AssignFile(f,OpenD.FileName+'.txt');
        Rewrite(f);
        Line:='';

          for i:= 0 to Columns.Count-1 do
           if Columns[i].Visible then
             begin
              Line:=Line+Columns[i].Title.Caption+#9;
              TitleLine:=TitleLine+' '#9;
             end;
          s:=GetPrintTitle;
          Insert(TitleLine, s, length(TitleLine) div 2);

          line:=copy(line,1,length(line)-1);
          Titleline:=copy(Titleline,1,length(Titleline)-1);
          writeln(f,titleline);
          writeln(f,line);
        with DataSource.DataSet do
         begin
           First;
           while not eof do
            begin
              line:='';
             for i:= 0 to Columns.Count-1 do
               if Columns[i].Visible then
               begin
                  {Ranjbar 89.08.01 ID=152}
                  //Line:=Line+Columns[i].Field.AsString+#9;
                  Data := Columns[i].Field.AsString;
                  if UpperCase(Data) = 'FALSE' then
                        Data := ''
                     else
                        if UpperCase(Data) = 'TRUE' then
                           Data := 'X';
                  Line := Line + Data + #9;
                  //---
               end;

              line:=copy(Line,1,length(line)-1);
              writeln(f,line);
              next;
            end;

         end;
     end;
     CloseFile(f);
 end;
 
function TYDBGrid.VisibleColumnCount:byte;
var i: byte;
begin
Result:=0;
    for i:= 0 to Columns.Count-1 do
    if Columns[i].Visible then
           inc(Result)
end;



procedure TYDBGrid.ExportToWord(fileName:string='');
var
   HNDL:THandle;
   HLine, Line:string;
   i: byte;
   L,m: Integer;
   WordApplication:TWordApplication; WordDocument:TWordDocument;
   Template,f1,f2,f3,f4,f5,f6, ItemIndex,fals,tru:OleVariant;
   Old_GroupField_Value:string;
   PageBreak,Story,f:OleVariant;
   {Ranjbar 89.08.01 ID=152}
   Data : String;
   DataSetRecorIndicator : integer;  // Amin 1391/10/13
   //---
begin
   if VisibleColumnCount>15 then
   begin
      ShowMessage('����� ����� �� ��� �� 15 ���� ���� ���� ����');
      exit;
   end;

   WordApplication:=TWordApplication.Create(self);
   WordDocument:=TWordDocument.Create(self);
   WordApplication.Visible :=true;
     WordApplication.Caption :='YYY';
     HNDL :=FindWindow('OpusApp',pansichar('YYY'));
     SetForegroundWindow(HNDL);

   PageBreak:=wdPageBreak;

   if GroupByField<>'' then
      TAdoDataSet(self.DataSource.DataSet).Sort:=GroupByField ;

   with WordApplication,Selection do
   begin
      fals:=false;
      tru:=true;
      ItemIndex := 1;
      Template := EmptyParam;
      Documents.Add(Template, fals,Template,Template);

      WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
      with WordDocument do
         if FOriention=poLandscape then
            PageSetup.Orientation:=wdOrientLandscape
         else
            PageSetup.Orientation:=wdOrientPortrait;
      Selection.RtlPara;
   end;


   with DataSource,DataSet do
      if Active then
      begin
         if FHasindex then
            HLine:='����'+ListSeparator
         else
            HLine:='';
         m:=0;
         L := 0;
         for i:= 0 to Columns.Count-1 do
            if Columns[i].Visible then
            begin
               HLine:=HLine+Columns[i].Title.Caption+ListSeparator;
               inc(m)
            end;
            HLine[length(Hline)]:=#13;
            WordApplication.Selection.TypeText(HLine);
            inc(l);
            First;
            // Amin 1391/10/13 while not eof do

            for DataSetRecorIndicator:= 1 to RecordCount do // Amin 1391/10/13
            begin
               if FHasindex then
                  line:=IntToStr(l)+ListSeparator
               else
                  line:='';
               for i:= 0 to Columns.Count-1 do
                  if Columns[i].Visible then
                  begin
                     {Ranjbar 89.08.01 ID=152}
                     //Line:=Line+Replace(Replace(CorrectFarsi(Columns[i].Field.AsString),#13,' '),#10,' ')+ListSeparator;

                     if (NOT Columns[i].Field.IsBlob) AND (NOT Columns[i].Field.IsNull) then
                        Data := Trim(Columns[i].Field.AsString)
                        ELSE
                        Data := '';

                     if UpperCase(Data) = 'FALSE' then
                        Data := ''
                     else
                        if UpperCase(Data) = 'TRUE' then
                           Data := 'X';
                     Line:=Line+Replace(Replace((Data),#13,' '),#10,' ')+ListSeparator;
//    have bug                 Line:=Line+Replace(Replace(CorrectFarsi(Data),#13,' '),#10,' ')+ListSeparator;
                     //---
                  end;

               line[length(line)]:=#13;
               Inc(L);
               WordApplication.Selection.TypeText(line);
               next;
               if  FGroupByField<>'' then
               if  Old_GroupField_Value<>FieldByName(FGroupByField).AsString then
               begin
                   if Old_GroupField_Value<>'' then
                     WordApplication.Selection.TypeParagraph;
                   Old_GroupField_Value:=FieldByName(FGroupByField).AsString
               end;

            end;{while}

               line:='';
          if FooterFields<>'' then
            begin
              for i:= 0 to Columns.Count-1 do
               if Columns[i].Visible then
                if pos(UpperCase( Columns[i].FieldName),UpperCase(FFooterFields))<>0 then
                 Line:=Line+GetSum(Columns[i].FieldName)+ListSeparator
                else
                 line :=line+ListSeparator;
                 line[length(line)]:=#13;
                 Inc(L);
                 WordApplication.Selection.TypeText(line);
           end;

     if m>15 then exit;

       WordApplication.Selection.WholeStory;
       f1:=wdSeparateByCommas;  f2:=wdAutoFitFixed;
       f5:=100;    f6:=16;
       f3:=l-1;
       if FHasindex then
        f4:=m+1
       else
        f4:=m;
       WordApplication.Selection.ConvertToTable(f1,f3,f4,f5,f6,tru,tru,tru,tru,tru,tru,tru,tru,tru,f2,tru);


      with WordApplication,Selection,Tables.Item(1) do
       begin
        Select;
        AutoFitBehavior(wdAutoFitContent);
        AutoFitBehavior (wdAutoFitContent);
        AutoFitBehavior (wdAutoFitWindow);
        AutoFitBehavior (wdAutoFitWindow);
        f3:=wdStory;
        HomeKey(f3,tru);
        SelectRow;
        Selection.Shading.Texture := wdTextureNone ;
        Selection.Shading.ForegroundPatternColor := wdColorAutomatic;
        Selection.Shading.BackgroundPatternColor := wdColorGray30;
        Selection.Font.Bold := wdToggle;
        Selection.Font.BoldBi := wdToggle;
        Selection.Rows.HeadingFormat := wdToggle;
     end;
     end;{with dataset}


    with WordApplication.Selection do
     begin
        f3:=wdStory;
        HomeKey(f3,tru);
        SplitTable;
         ParagraphFormat.Alignment := wdAlignParagraphCenter;
         Font.Bold := wdToggle;
         Font.BoldBi := wdToggle;
        TypeText(GetPrintTitle);
        WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
        WholeStory;
        ParagraphFormat.Alignment:=wdAlignParagraphLeft;
        TypeText('����� ���� ����� '+CheckFarsiDate(ShamsiString(now)));
        WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
      end;
    if fileName<>'' then
     begin
        f:=fileName;
      WordDocument.SaveAs(f);
      WordDocument.Close;
      WordApplication.Disconnect;
      WordApplication.Visible:=false;
     end;

end;{proc}

procedure TYDBGrid.ExportToWord(fileName:string; quit : boolean);
var
   HLine, Line:string;
   i: byte;
   L,m: Integer;
   WordApplication:TWordApplication; WordDocument:TWordDocument;
   Template,f1,f2,f3,f4,f5,f6, ItemIndex,fals,tru:OleVariant;
   Old_GroupField_Value:string;
   PageBreak,Story,f:OleVariant;
   {Ranjbar 89.08.01 ID=152}
   Data : String;
   DataSetRecorIndicator : integer;  // Amin 1391/10/13
   //---
begin
   if VisibleColumnCount>15 then
   begin
      ShowMessage('����� ����� �� ��� �� 15 ���� ���� ���� ����');
      exit;
   end;

   WordApplication:=TWordApplication.Create(self);
   WordDocument:=TWordDocument.Create(self);
   PageBreak:=wdPageBreak;

   if GroupByField<>'' then
      TAdoDataSet(self.DataSource.DataSet).Sort:=GroupByField ;

   with WordApplication,Selection do
   begin
      fals:=false;
      tru:=true;
      ItemIndex := 1;
      Template := EmptyParam;
      Documents.Add(Template, fals,Template,Template);

      WordDocument.ConnectTo(WordApplication.Documents.Item(itemindex));
      with WordDocument do
         if FOriention=poLandscape then
            PageSetup.Orientation:=wdOrientLandscape
         else
            PageSetup.Orientation:=wdOrientPortrait;
      Selection.RtlPara;
      Visible:=true;
   end;

   with DataSource,DataSet do
      if Active then
      begin
         if FHasindex then
            HLine:='����'+ListSeparator
         else
            HLine:='';
         m:=0;
         L := 0;
         for i:= 0 to Columns.Count-1 do
            if Columns[i].Visible then
            begin
               HLine:=HLine+Columns[i].Title.Caption+ListSeparator;
               inc(m)
            end;
            HLine[length(Hline)]:=#13;
            WordApplication.Selection.TypeText(HLine);
            inc(l);
            First;
            // Amin 1391/10/13 while not eof do
            for DataSetRecorIndicator:= 1 to RecordCount do // Amin 1391/10/13
            begin
               if FHasindex then
                  line:=IntToStr(l)+ListSeparator
               else
                  line:='';
               for i:= 0 to Columns.Count-1 do
                  if Columns[i].Visible then
                  begin
                     {Ranjbar 89.08.01 ID=152}
                     //Line:=Line+Replace(Replace(CorrectFarsi(Columns[i].Field.AsString),#13,' '),#10,' ')+ListSeparator;
                     Data := Trim(Columns[i].Field.AsString);
                     if UpperCase(Data) = 'FALSE' then
                        Data := ''
                     else
                        if UpperCase(Data) = 'TRUE' then
                           Data := 'X';
                     Line:=Line+Replace(Replace(CorrectFarsi(Data),#13,' '),#10,' ')+ListSeparator;
                     //---
                  end;

               line[length(line)]:=#13;
               Inc(L);
               WordApplication.Selection.TypeText(line);
               next;
               if  FGroupByField<>'' then
               if  Old_GroupField_Value<>FieldByName(FGroupByField).AsString then
               begin
                   if Old_GroupField_Value<>'' then
                     WordApplication.Selection.TypeParagraph;
                   Old_GroupField_Value:=FieldByName(FGroupByField).AsString
               end;

            end;{while}

               line:='';
          if FooterFields<>'' then
            begin
              for i:= 0 to Columns.Count-1 do
               if Columns[i].Visible then
                if pos(UpperCase( Columns[i].FieldName),UpperCase(FFooterFields))<>0 then
                 Line:=Line+GetSum(Columns[i].FieldName)+ListSeparator
                else
                 line :=line+ListSeparator;
                 line[length(line)]:=#13;
                 Inc(L);
                 WordApplication.Selection.TypeText(line);
           end;

     if m>15 then exit;

       WordApplication.Selection.WholeStory;
       f1:=wdSeparateByCommas;  f2:=wdAutoFitFixed;
       f5:=100;    f6:=16;
       f3:=l-1;
       if FHasindex then
        f4:=m+1
       else
        f4:=m;
       WordApplication.Selection.ConvertToTable(f1,f3,f4,f5,f6,tru,tru,tru,tru,tru,tru,tru,tru,tru,f2,tru);


      with WordApplication,Selection,Tables.Item(1) do
       begin
        Select;
        AutoFitBehavior(wdAutoFitContent);
        AutoFitBehavior (wdAutoFitContent);
        AutoFitBehavior (wdAutoFitWindow);
        AutoFitBehavior (wdAutoFitWindow);
        f3:=wdStory;
        HomeKey(f3,tru);
        SelectRow;
        Selection.Shading.Texture := wdTextureNone ;
        Selection.Shading.ForegroundPatternColor := wdColorAutomatic;
        Selection.Shading.BackgroundPatternColor := wdColorGray30;
        Selection.Font.Bold := wdToggle;
        Selection.Font.BoldBi := wdToggle;
        Selection.Rows.HeadingFormat := wdToggle;
     end;
     end;{with dataset}

    with WordApplication.Selection do
     begin
        f3:=wdStory;
        HomeKey(f3,tru);
        SplitTable;
         ParagraphFormat.Alignment := wdAlignParagraphCenter;
         Font.Bold := wdToggle;
         Font.BoldBi := wdToggle;
        TypeText(GetPrintTitle);
        WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
        WholeStory;
        ParagraphFormat.Alignment:=wdAlignParagraphLeft;
        TypeText('����� ���� ����� '+CheckFarsiDate(ShamsiString(now)));
        WordDocument.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
      end;
    if fileName<>'' then
     begin
        f:=fileName;
      WordDocument.SaveAs(f);
      WordDocument.Close;
      WordApplication.Disconnect;
      WordApplication.Visible:=false;
      if quit then
         WordApplication.Quit;
     end;
end;{proc}

procedure TYDBGrid.ExportToExcel;
var
   i,j,k: integer;
   ExcelApplication:TExcelApplication;
   Template,f1:OleVariant;
   {Ranjbar 89.08.01 ID=152}
   Data : String;
   //---
   function CheckFarsiDate(s:string):string;
   begin
      Result:=s;
      If InvertFarsiDate then
         if (length(s)=10) then
            if (Pos('/',s)<>0) then
               if pos('/',copy(s,pos('/',s)+1,length(s)-pos('/',s)))<>0 then
                  Result:=Copy(s,9,2)+Copy(s,5,4)+Copy(s,1,4);
   end;
begin
   ExcelApplication:=TExcelApplication.Create(self);
   j:=1;
   with ExcelApplication do
   begin
       Template := EmptyParam;
       Workbooks.Add(Template,0);
       Visible[0]:=true;
       //Add Sanaye 950411
       //����� ���� ���� ������� ���� �� ���� - �� ���� ����� ����� �� ���� �����
       Columns.NumberFormat := '@';
       //End Sanaye
   end;

   with DataSource,DataSet do
      if Active then
      begin
         First;
          k:=0;
         for i:= 0 to Columns.Count-1 do
          if Columns[i].Visible then
           begin
            if k<26 then
             f1:=char(65+k)+IntToStr(j)
            else  if k<52 then
              f1:='A'+char(65+k-26)+IntToStr(j)
            else if k<78 then
              f1:='B'+char(65+k-52)+IntToStr(j)
            else if k<104 then
               f1:='C'+char(65+k-78)+IntToStr(j)
            else if k<130 then
               f1 := 'D'+char(65+k-104)+IntToStr(j)
            else if k<156  then
               f1 := 'E'+char(65+k-130)+IntToStr(j)
            else if k<182  then
               f1 := 'F'+char(65+k-156)+IntToStr(j)
            else if k<208  then
               f1 := 'G'+char(65+k-182)+IntToStr(j)
            else if k<234 then
               f1 := 'H'+char(65+k-208)+IntToStr(j)
            else if k<260 then
               f1 := 'I'+char(65+k-234)+IntToStr(j)
            else if k<286 then
               f1 := 'J'+char(65+k-260)+IntToStr(j)
            else if k<312 then
               f1 := 'K'+char(65+k-286)+IntToStr(j)
            else if k<338 then
               f1 := 'L'+char(65+k-312)+IntToStr(j);
            ExcelApplication.Range[f1,f1].Select;
            ExcelApplication.ActiveCell.FormulaR1C1 := Columns[i].Title.Caption;
            inc(k);
         end;

        while not eof do
         begin
          j:=j+1;
          k:=0;
          for i:= 0 to Columns.Count-1 do
           if Columns[i].Visible then
              begin

            if k<26 then
             f1:=char(65+k)+IntToStr(j)
            else if k<52 then
              f1:='A'+char(65+k-26)+IntToStr(j)
            else if k<78 then
              f1:='B'+char(65+k-52)+IntToStr(j)
            else if k<104 then
               f1:='C'+char(65+k-78)+IntToStr(j)
            else if k<130 then
               f1 := 'D'+char(65+k-104)+IntToStr(j)
            else if k<156  then
               f1 := 'E'+char(65+k-130)+IntToStr(j)
            else if k<182  then
               f1 := 'F'+char(65+k-156)+IntToStr(j)
            else if k<208  then
               f1 := 'G'+char(65+k-182)+IntToStr(j)
            else if k<234 then
               f1 := 'H'+char(65+k-208)+IntToStr(j)
            else if k<260 then
               f1 := 'I'+char(65+k-234)+IntToStr(j)
            else if k<286 then
               f1 := 'J'+char(65+k-260)+IntToStr(j)
            else if k<312 then
               f1 := 'K'+char(65+k-286)+IntToStr(j)
            else if k<338 then
               f1 := 'L'+char(65+k-312)+IntToStr(j);

               ExcelApplication.Range[f1,f1].Select;
               try
                  {Ranjbar 89.08.01 ID=152}
                  //ExcelApplication.ActiveCell.FormulaR1C1 := Columns[i].Field.AsString
                  Data := Columns[i].Field.AsString;
                  if UpperCase(Data) = 'FALSE' then
                        Data := ''
                     else
                        if UpperCase(Data) = 'TRUE' then
                           Data := 'X';
                  ExcelApplication.ActiveCell.FormulaR1C1 := Data;
                  //---
               except
               end;
               inc(k);
             end;
          next;
         end;{eof}
     end;{with dataset}
end;{proc}

procedure TYDBGrid.TitleClick(Column: TColumn);
var
   FieldName: string;
   i: byte;
begin
   if Assigned(FOnTitleClick) then
      FOnTitleClick(Column);

   try
      with TAdoDataSet(Column.Grid.DataSource.DataSet) do
         if Active then
         begin
            if Column.Field.FieldKind=fkLookup then
               FieldName:='['+Column.Field.KeyFields+']'
            else
               FieldName:='['+Column.Field.FieldName+']';

            if sort=FieldName+ ' ASC' then
            begin
               sort:=FieldName+ ' DESC';
               SortDESC := true;
            end
            else
            begin
               sort:=FieldName+ ' ASC';
               SortDESC := false;
            end;
            for i:= 0 to Columns.Count-1 do
               with Columns[i].title.Font do
                  Style :=Style - [fsBold] ;
            SortedFieldName:=Column.FieldName;
            Column.Title.Font.Style :=Column.Title.Font.Style + [fsBold];
         end ;

   except
      ShowMessage('�� ���� ��� ���� ��� ���� ������� �� ���� ���');
   end;

end;

procedure TYDBGrid.ExportToAccess;
  var OpenD:TOpenDialog;
  adoConn:TADOConnection;

  i: byte;
  SQLCmd:string;
  {Ranjbar 89.08.01 ID=152}
  Data : String;
  //---
begin
    OpenD:=TOpenDialog.Create(self);
    OpenD.Filter:='MS ACCESS|*.mdb|All files|*.*';
    OpenD.Title:='Export to Yeganeh Access';

    if DataSource.DataSet.Active then
   if OpenD.Execute then
     begin
      adoConn:=TADOConnection.Create(self);
      adoConn.ConnectionString :=
       'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+OpenD.FileName+
       ';Persist Security Info=False';
      adoConn.Provider := 'Microsoft.Jet.OLEDB.4.0';
      adoconn.LoginPrompt:=false;

      SQLCmd:=' drop TABLE tbl_ExportedTable';

      try adoConn.Execute(SQLCmd);except end;

      SQLCmd:=' create TABLE tbl_ExportedTable(';

          for i:= 0 to Columns.Count-1 do
           if Columns[i].Visible then
             SQLCmd:=SQLCmd+'['+Columns[i].Title.Caption+'] TEXT(255),';

            SQLCmd[LENGTH(SQLCmd)]:=')';
           adoConn.Execute(SQLCmd);


        with DataSource.DataSet do
         begin
           First;
           while not eof do
            begin
              SQLCmd:='INSERT INTO tbl_ExportedTable values(';
             for i:= 0 to Columns.Count-1 do
               if Columns[i].Visible then
               begin
                  {Ranjbar 89.08.01 ID=152}
                  //SQLCmd:=SQLCmd+''''+Columns[i].Field.AsString+''',';
                  Data := Trim(Columns[i].Field.AsString);
                  if UpperCase(Data) = 'FALSE' then
                     Data := ''
                  else
                     if UpperCase(Data) = 'TRUE' then
                        Data := 'X';
                  SQLCmd:=SQLCmd+''''+ Data +''',';
                  //---      
               end;
               SQLCmd[LENGTH(SQLCmd)]:=')';
               adoConn.Execute(SQLCmd);
               next;
            end;

         end;
     end;
     adoConn.Close;

 end;


procedure TYDBGrid.SaveBoolean;
begin
 SelectedField.Dataset.Edit;
 SelectedField.AsBoolean := not SelectedField.AsBoolean;
 SelectedField.Dataset.Post;
end;
procedure TYDBGrid.KeyPress(var Key: Char);
begin
 inherited KeyPress(key);
 if (SelectedField.DataType = ftBoolean) and (not (readonly)) and (key=' ') then
  SaveBoolean();
end;

procedure TYDBGrid.CellClick(Column: TColumn);
begin
inherited CellClick(Column);
if (SelectedField.DataType = ftBoolean) and (not (readonly)) then
  SaveBoolean();
end;
procedure TYDBGrid.ColEnter;
begin
inherited ColEnter;
 try
 if (SelectedField.DataType = ftBoolean) and (not readonly) then
  begin
   Self.FOriginalOptions := Options;
   Options := Options - [dgEditing];
  end;
 except end;
end;

procedure TYDBGrid.ColExit;
begin
 inherited ColExit;
 try
 if (SelectedField.DataType = ftBoolean) and (not readonly) then
  Options := FOriginalOptions;
 except end;
end;
function TYDBGrid.DoMouseWheel(Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint): Boolean;
var
  Direction: Shortint;
function GetNumScrollLines: Integer;
begin
  SystemParametersInfo(SPI_GETWHEELSCROLLLINES, 0, @Result, 0);
end;
begin
  Result := inherited DoMouseWheel(Shift, WheelDelta, MousePos);
  Direction := 1;
  if WheelDelta = 0 then
    Exit
  else if WheelDelta > 0 then
    Direction := -1;

 if Assigned(DataSource) and Assigned(DataSource.DataSet) then
  begin
   if FWheelLinesMode
    then
     DataSource.DataSet.MoveBy(Direction * GetNumScrollLines)
    else
     DataSource.DataSet.MoveBy(Direction * FWheelLinesMany);
  end;
  Invalidate;
end;


procedure TYDBGrid.MouseDown(Button: TMouseButton; Shift: TShiftState;
X, Y: Integer);
begin
  if Assigned(FOnMouseDown) then
    FOnMouseDown(Self,Button,Shift,X,Y);
  inherited MouseDown(Button,Shift,X,Y);
end;

procedure TYDBGrid.MouseUp(Button: TMouseButton; Shift: TShiftState; X,
Y: Integer);
begin
  if Assigned(FOnMouseUp) then
    FOnMouseUp(Self,Button,Shift,X,Y);
  inherited MouseUp(Button,Shift,X,Y);
end;


 function TYDBGrid.GetTitle(FieldName:string): string;
  var i: byte;
  begin
   result:=FieldName;
   for i:=0 to Columns.Count-1 do
     if UpperCase(Columns[i].FieldName)=UpperCase(FieldName) then
       begin
        Result:=Columns[i].Title.Caption;
        exit;
      end;

  end;

 function TYDBGrid.GetSum(FieldName:string): string;
  var i: byte;
  begin
   result:='';
   for i:=0 to items.Count-1 do
     if UpperCase(items[i])=UpperCase(FieldName) then
       begin
        Result:=sums[i];
        exit;
      end;

  end;

Procedure TYDBGrid.UpdateFooter;
var i:byte;
 tmp:TDataSource;
 SumTextLength:integer;
begin
  if FFooterFields='' then exit;

  if not Assigned(FStatusBar) then
   begin
    FStatusBar := TStatusBar.Create(Self);
    FStatusBar.Parent:=self;
    FStatusBar.Align:=alBottom;
    Items:=TStringList.Create;
    Sums:=TStringList.Create;
   end;

   Items.Clear;
   Sums.Clear;
   SetWords(FFooterFields,',',Items);

   for i:=0 to Items.Count-1 do
    Sums.Add('0');

     tmp:=DataSource;
     DataSource:=nil;

     if tmp.DataSet.Active then
     if not tmp.DataSet.IsEmpty then
     begin
        with tmp.DataSet do
         begin
           First;
           while not eof do
            begin
             for i:=0 to Items.Count-1 do
               if upperCase(Items[i])<>'COUNT' then
                Sums[i]:=IntToStr(StrToInt64(Sums[i])+TLargeintField(FieldByname(Items[i])).AsLargeInt)
               else
                Sums[i]:=IntToStr(StrToInt64(Sums[i])+1);

              next;
            end;
           First;
         end;


FStatusBar.Panels.Clear;
SumTextLength:=0;

   for i:=0 to Sums.Count-1 do
     with FStatusBar.Panels.Add do
      begin
       if upperCase(Items[i])<>'COUNT' then
         Text:= '����� '+GetTitle(Items[i])+' = '+CommaSeperated(Sums[i])
        else
         Text:= '����� '+CommaSeperated(Sums[i]);
       SumTextLength:=SumTextLength+Length(Text)
      end;

   for i:=0 to Sums.Count-1 do
     with FStatusBar.Panels[i] do
       width:=Self.width*length(Text) div SumTextLength;

  FStatusBar.Visible:=True;
  FStatusBar.Show;
     end;
  DataSource:=tmp;

end;

procedure TYDBGrid.DblClick;
var  mouseInGrid : TPoint;
  gridCoord: TGridCoord;
begin
inherited DblClick;
  mouseInGrid := ScreenToClient(Mouse.CursorPos);
  gridCoord := MouseCoord(mouseInGrid.X, mouseInGrid.Y);

  if not (dgTitles in Options) then Exit;

  if gridCoord.Y <> 0 then Exit;

  if dgIndicator in Options then
    ColumnWidthHelper.Index :=  -1 + gridCoord.x
  else
    ColumnWidthHelper.Index := gridCoord.x;

  if ColumnWidthHelper.Index < 0 then Exit;

  ColumnWidthHelper.MaxWidth := -1;

  Repaint;
  Columns[ColumnWidthHelper.Index].Width := 4 + ColumnWidthHelper.MaxWidth;
end;

Procedure TYDBGrid.AutoFit;
var i: byte;
begin
   for i:=0 to Columns.Count-1 do
    FitColumnWidth[i]:=-1;

Repaint;

   for i:=0 to Columns.Count-1 do
    if Columns[i].Visible then
     if FitColumnWidth[i]<>-1 then
      Columns[i].Width :=FitColumnWidth[i]+4;
end;

procedure TYDBGrid.HiddenFooter;
begin
   Items.Clear;
   Sums.Clear;
   if Assigned(FStatusBar) then
   begin
    FStatusBar.Visible:=False;
   end;
end;

end.

