unit griddatagroup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, Wwdbigrd, Wwdbgrid, DBClient, ImgList,
  Menus, wwDialog, wwidlg, Buttons, Wwlocate, ComCtrls, ExtCtrls, StdCtrls,
  wwriched;

type
  TDataGroupForm = class(TForm)
    wwDBGrid1: TwwDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Company: TStringField;
    ClientDataSet1OrderNo: TFloatField;
    ClientDataSet1SaleDate: TDateTimeField;
    ClientDataSet1ShipDate: TDateTimeField;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1ShipToContact: TStringField;
    ClientDataSet1ShipToAddr1: TStringField;
    ClientDataSet1ShipToAddr2: TStringField;
    ClientDataSet1ShipToCity: TStringField;
    ClientDataSet1ShipToState: TStringField;
    ClientDataSet1ShipToZip: TStringField;
    ClientDataSet1ShipToCountry: TStringField;
    ClientDataSet1ShipToPhone: TStringField;
    ClientDataSet1ShipVIA: TStringField;
    ClientDataSet1PO: TStringField;
    ClientDataSet1Terms: TStringField;
    ClientDataSet1PaymentMethod: TStringField;
    ClientDataSet1ItemsTotal: TCurrencyField;
    ClientDataSet1TaxRate_1: TFloatField;
    ClientDataSet1Freight: TCurrencyField;
    ClientDataSet1AmountPaid: TCurrencyField;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    ClientDataSet1CustNo_1: TFloatField;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    GroupByThisColumn1: TMenuItem;
    wwDBGrid1IButton: TwwIButton;
    MemorySearch: TwwLocateDialog;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    wwDBRichEdit1: TwwDBRichEdit;
    N1: TMenuItem;
    SortAscending1: TMenuItem;
    SortDescending1: TMenuItem;
    N2: TMenuItem;
    FindValue1: TMenuItem;
    N3: TMenuItem;
    BestFit1: TMenuItem;
    Alignment1: TMenuItem;
    Left1: TMenuItem;
    Center1: TMenuItem;
    Right1: TMenuItem;
    procedure wwDBGrid1TopRowChanged(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid1CalcTitleImage(Sender: TObject; Field: TField;
      var TitleImageAttributes: TwwTitleImageAttributes);
    procedure GroupByThisColumn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FindValue1Click(Sender: TObject);
    procedure SortAscending1Click(Sender: TObject);
    procedure SortDescending1Click(Sender: TObject);
    procedure BestFit1Click(Sender: TObject);
    procedure Left1Click(Sender: TObject);
    procedure Center1Click(Sender: TObject);
    procedure Right1Click(Sender: TObject);
  private
    { Private declarations }
    FPopupField:string;
    FCurrentCol:Integer;
  public
    { Public declarations }
    procedure DoSorting(cdsName:TClientDataset; AFieldName: String);
  end;

var
  DataGroupForm: TDataGroupForm;

implementation

{$R *.dfm}

procedure TDataGroupForm.wwDBGrid1TopRowChanged(Sender: TObject);
begin
end;

// Draw line separators to group records with the same company together
procedure TDataGroupForm.DoSorting(cdsName:TClientDataset; AFieldName: String);
const
  NONSORTABLE: Set of TFieldType=[ftBlob,ftMemo,ftOraBlob,ftOraCLob];
begin
  with cdsName do
  begin
    if IsEmpty or (FieldByName(AFieldName).DataType in NONSORTABLE) then
      Exit;

    if (IndexFieldNames=AFieldName) then
    begin
       IndexDefs.Update;
       if IndexDefs.IndexOf('w2wTempIndex')>-1  then
       begin
         DeleteIndex('w2wTempIndex');
         IndexDefs.Update;
       end;
       AddIndex('w2wTempIndex',AFieldName,[ixDescending,ixCaseInsensitive],'','',0);
       IndexName:='w2wTempIndex';
    end
    else
    begin
       IndexFieldNames := AFieldName;
    end;
  end;
end;

procedure TDataGroupForm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  DoSorting(TClientDataset((Sender as TwwDBGrid).Datasource.Dataset),AFieldName);
end;

procedure TDataGroupForm.wwDBGrid1CalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
  with (Sender as TwwDBGrid) do
  if Field.FieldName=TClientDataset(Datasource.Dataset).indexfieldnames then
  begin
    TitleImageAttributes.ImageIndex := 0;
  end
  else if TClientDataset(Datasource.Dataset).indexname = 'w2wTempIndex' then
  begin
     TClientDataset(Datasource.Dataset).indexdefs.Update;
     if TClientDataset(Datasource.Dataset).indexdefs.Find('w2wTempIndex').Fields = Field.Fieldname then
       TitleImageAttributes.ImageIndex := 1;
  end;
end;

procedure TDataGroupForm.GroupByThisColumn1Click(Sender: TObject);
begin
  wwdbgrid1.GroupFieldName:= FPopupField;
  clientdataset1.FieldByName(FPopupField).Index := 0;
  DoSorting(TClientDataset(wwDBGrid1.Datasource.Dataset),
            FPopupField);
  wwdbgrid1.Invalidate;
end;

procedure TDataGroupForm.FormShow(Sender: TObject);
begin
  wwdbgrid1.GroupFieldName:= 'Company';
end;

procedure TDataGroupForm.wwDBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var pt:TPoint;
    gc:TGridCoord;
begin
  with (Sender as TwwDBGrid) do
  begin
    gc := MouseCoord(x,y);
    if gc.Y<>0 then exit;
    if gc.x<=0 then exit;
    pt := (Sender as TwwDBGrid).ClientToScreen(Point(x,y));
    if Button=mbRight then
    begin
      FPopupField:=Columns[gc.x-1].FieldName;
      FCurrentCol:=gc.X;
      PopupMenu1.Items[0].Caption := 'Group by '+Columns[gc.x-1].DisplayLabel+'?';
      if ClientDataset1.IndexFieldNames = Columns[gc.x-1].FieldName then
        PopupMenu1.Items[2].Enabled := False
      else PopupMenu1.Items[2].Enabled := True;
      if ClientDataset1.IndexName = 'w2wTempIndex' then
        PopupMenu1.Items[3].Enabled := False
      else PopupMenu1.Items[3].Enabled := True;
      PopupMenu1.Items[5].Caption := 'Find '+Columns[gc.x-1].DisplayLabel+'?';
      PopupMenu1.Popup(pt.x,pt.y);
    end;
  end;
end;

procedure TDataGroupForm.wwDBGrid1IButtonClick(Sender: TObject);
begin
  MemorySearch.execute;
end;

type TCheatGrid=class(TwwDBGrid);

procedure TDataGroupForm.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
  var s,compstr:string;
      l:integer;
      startpos,lastwidth:integer;
      highlightcolor:Tcolor;
begin
  if field.fieldname=TwwDBGrid(Sender).GroupFieldName then highlightcolor := clYellow
  else highlightcolor := clBlue;

  with MemorySearch do
    if Field.Fieldname = SearchField then begin
      s:=field.asstring;
      l:=2;
      if MatchType = mtPartialMatchStart then
      begin
      // Color Matching Text First.  Then Color remaining text.
        if (Fieldvalue<>'') and (ansipos(AnsiUpperCase(Fieldvalue),AnsiUpperCase(Field.asstring))=1) then begin
           if not TCheatGrid(Sender).DrawCellInfo.DefaultDrawContents then exit;
           (Sender as TwwDBGrid).Canvas.Font.Color := highlightcolor;
           compstr := Copy(s,1,length(Fieldvalue));
           (Sender as TwwDBGrid).Canvas.TextOut(rect.left+l,rect.top+2,compstr);
           s:= Copy(s,length(Fieldvalue)+1,length(s));
           l := 2+(Sender as TwwDBGrid).Canvas.TextWidth(compstr);
        end;
      end
      else if MatchType = mtPartialMatchAny then
      begin
        startpos :=ansipos(AnsiUpperCase(Fieldvalue),AnsiUpperCase(Field.asstring));
        if (Fieldvalue<>'') and (startpos>0) then begin
           if not TCheatGrid(Sender).DrawCellInfo.DefaultDrawContents then exit;

           (Sender as TwwDBGrid).Canvas.Font.Color := clBlack;
           compstr := Copy(s,1,startpos-1);
           (Sender as TwwDBGrid).Canvas.TextOut(rect.left+l,rect.top+2,compstr);
           if compstr <> '' then
             lastwidth := Canvas.TextWidth(compstr)
           else lastwidth := 0;

           (Sender as TwwDBGrid).Canvas.Font.Color := highlightcolor;
           compstr := Copy(s,startpos,length(Fieldvalue));
           (Sender as TwwDBGrid).Canvas.TextOut(rect.left+lastwidth+2,rect.top+2,compstr);
           lastwidth := lastwidth+canvas.TextWidth(compstr);

           s:= Copy(s,startpos+length(Fieldvalue)+1,length(s));
           l := 2+lastwidth;
        end;
      end
      else
      begin
        if (Fieldvalue<>'') and (AnsiUpperCase(Fieldvalue)=AnsiUpperCase(Field.asstring)) then begin
           if not TCheatGrid(Sender).DrawCellInfo.DefaultDrawContents then exit;
           (Sender as TwwDBGrid).Canvas.Font.Color := highlightcolor;
           compstr := Copy(s,1,length(Fieldvalue));
           (Sender as TwwDBGrid).Canvas.TextOut(rect.left+l,rect.top+2,compstr);
        end;
      end;
   end;
end;

procedure TDataGroupForm.wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f3 then MemorySearch.Findnext;
end;

procedure TDataGroupForm.FindValue1Click(Sender: TObject);
begin
  MemorySearch.SearchField := FPopupField;
  MemorySearch.execute;
end;

procedure TDataGroupForm.SortAscending1Click(Sender: TObject);
begin
  DoSorting(ClientDataset1,FPopupField);
end;

procedure TDataGroupForm.SortDescending1Click(Sender: TObject);
begin
  DoSorting(ClientDataset1,FPopupField);
end;

procedure TDataGroupForm.BestFit1Click(Sender: TObject);
begin
   wwDBGrid1.AutoSizeColumn(FCurrentCol);
end;

procedure TDataGroupForm.Left1Click(Sender: TObject);
begin
  ClientDataset1.FieldByName(FPopupFIeld).Alignment := taLeftJustify;
end;

procedure TDataGroupForm.Center1Click(Sender: TObject);
begin
  ClientDataset1.FieldByName(FPopupFIeld).Alignment := taCenter;
end;

procedure TDataGroupForm.Right1Click(Sender: TObject);
begin
  ClientDataset1.FieldByName(FPopupFIeld).Alignment := taRightJustify;
end;

end.
