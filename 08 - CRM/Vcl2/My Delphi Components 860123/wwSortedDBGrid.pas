unit wwSortedDBGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Grids, DB, DBTables,
  Wwdbigrd, Wwdbgrid, wwQuery, wwTable, wwstorep, wwidlg, Math, Graphics;

type
  TwwSortedDBGrid = class(TwwDBGrid)
  private
    fSelIndexedColumn: String;
    fSearchDialog: TwwSearchDialog;
  protected
    { Protected declarations }
  public
    Constructor Create(AOwner : TComponent) ; override ;
    Procedure DoTitleButtonClick(AFieldName: string); override;
    property SelIndexedColumn:String read fSelIndexedColumn write fSelIndexedColumn;
  published
    property GridSearchDialog: TwwSearchDialog read fSearchDialog write fSearchDialog;
  end;

procedure Register;

implementation

Constructor TwwSortedDBGrid.Create(AOwner : TComponent);
begin
 inherited create(AOwner) ;
 Color := $00EAFFFF ;
 width := 400 ;
 Height := 200 ;
 BidiMode := bdRightToLeft ;
 PaintOptions.AlternatingRowColor:= $00F0E1DF;
 TitleAlignment:= taCenter;
 TitleButtons:= True;
 TitleLines:= 2;
 fSelIndexedColumn:= '';
 ReadOnly := True;
end ;

Procedure TwwSortedDBGrid.DoTitleButtonClick(AFieldName: string);
var
  ss: string;
  FieldSize: integer;
  wwGridDataSet: TDataSet;
  BufStr : String;
  x : Integer;
//  CellBrush: TBrush;
begin
  inherited;
  wwGridDataSet:= Self.DataSource.DataSet;
  ss:= wwGridDataSet.FieldByName(AFieldName).DisplayName;
  FieldSize:= Max(wwGridDataSet.FieldByName(AFieldName).DataSize, 25);
  if (wwGridDataSet.ClassType = TwwQuery) or
     (wwGridDataSet.ClassType = TQuery) then begin
    if (wwGridDataSet as TQuery).FieldByName(AFieldName).DataType in [ftString,
         ftSmallint, ftInteger, ftWord, ftBoolean, ftFloat, ftCurrency, ftDate,
         ftTime, ftDateTime, ftBytes, ftVarBytes, ftAutoInc, ftFixedChar,
         ftWideString, ftLargeint, ftADT, ftGuid, ftTimeStamp] then begin
       with (wwGridDataSet as TQuery) do begin
         (wwGridDataSet As TQuery).Close;
         BufStr := (wwGridDataSet As TQuery).Sql.Text;
         x := Pos('ORDER BY',UpperCase(BufStr));
         if x <> 0 then
           System.Delete(BufStr,x,Length(BufStr)-x);
         BufStr := BufStr + ' ORDER BY ';
         BufStr := BufStr + Format('%S',['['+AFieldName+']']);
         (wwGridDataSet As TQuery).Sql.Text := Bufstr;
         (wwGridDataSet As TQuery).Open;
       end;
//       CellBrush:= TBrush.Create;
//       CellBrush.Color:= ClRed;
//       Self.DoCalcCellColors(wwGridDataSet.FieldByName(AFieldName),[gdFixed],True,Self.Font,CellBrush);
//       CellBrush.Destroy;
       fSelIndexedColumn:= AFieldName;
       if fSearchDialog<>nil then
         fSearchDialog.ShadowSearchTable:= (wwGridDataSet as TQuery);
    end;
  end
  else
  if (wwGridDataSet.ClassType = TwwTable) or
       (wwGridDataSet.ClassType = TTable) then begin
     with (wwGridDataSet as TwwTable) do begin
       Close;
       DefaultIndex:= False;
       IndexFieldNames:= '['+ AFieldName + ']';
       Open;
       if fSearchDialog<>nil then
         fSearchDialog.ShadowSearchTable:= (wwGridDataSet as TwwTable);
     end;
  end
  else
  if (wwGridDataSet.ClassType = TwwStoredProc) or
       (wwGridDataSet.ClassType = TStoredProc) then begin
(*     with (wwGridDataSet as TStoredProc) do begin
       (wwGridDataSet As TQuery).Close;
       BufStr := (wwGridDataSet As TQuery).Sql.Text;
       x := Pos('ORDER BY',UpperCase(BufStr));
       if x <> 0 then
         System.Delete(BufStr,x,Length(BufStr)-x);
       BufStr := BufStr + ' ORDER BY ';
       BufStr := BufStr + Format('%S',[AFieldName]);
       (wwGridDataSet As TQuery).Sql.Text := Bufstr;
       (wwGridDataSet As TQuery).Open;
     end;
     fSelIndexedColumn:= AFieldName;
     if fSearchDialog<>nil then
       fSearchDialog.ShadowSearchTable:= (wwGridDataSet as TQuery);*)
  end;
{ else
   showmessage('Unknown DataSet');}

  if fSearchDialog<>nil then
    with fSearchDialog do begin
      Caption:= 'Ã” ÃÊ —ÊÌ' + ' :    ' + ss;
      Selected.Clear;
      Selected.Text:= AFieldName + Chr(vk_Tab)+ IntToStr(FieldSize) +
                       Chr(vk_Tab) + ' ' + chr(vk_Tab)+'F'+ chr(vk_Tab);
      GridSearchDialog.Execute;
    end;

end;

procedure Register;
begin
  RegisterComponents('Farsi', [TwwSortedDBGrid]);
end;

end.
