unit SSDBGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBTables, Db, ADODB;

type
  TSSDBGrid = class(TDBGrid)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    ColIndex : Integer ;
    Constructor create(AOwner : TComponent) ; override ;
    Procedure Initial(Ds : TDataSource);
    Procedure ReLoad(Ds : TDataSource);
    procedure Sort(Ds:TDataSource; Column : TColumn);
    procedure Search(Ds : TDataSource; SKey: Char=Char(vk_F1));
  published
    { Published declarations }
  end;

procedure Register;

implementation
 Var
  i : Integer;
  FieldName : String;
  FirstSqlStr: String = '';
  FieldNameStr,LikeStr: String;
  FieldDataType: TFieldType;
  TitleStatus: Boolean=False;//Title has not clicked
  LTFStyle: TFontStyles;
  LTCaption: String;
  LTColor,LColor: TColor;

Constructor TSSDBGrid.Create(AOwner:TComponent) ;
begin
 inherited create(aowner) ;
 color := $00EAFFFF ;
 width := 400 ;
 Height := 200 ;
 Ctl3D := false ;
 BidiMode := bdRightToLeft ;
 ReadOnly := True;
end ;

Procedure TSSDBGrid.Initial(Ds : TDataSource);
begin
TitleStatus:= False;
(*
if Ds.DataSet.ClassType = TQuery then begin
 With Ds.DataSet As TQuery do
  begin
   if Active then Close;
   FirstSqlStr := Sql.Text
   Open;
  end
end
else
  if Ds.DataSet.ClassType = TADOQuery then begin
   With Ds.DataSet As TADOQuery do
    begin
     if Active then Close;
     FirstSqlStr := Sql.Text;
     Open;
    end
  end
 *)
end;

Procedure TSSDBGrid.ReLoad(Ds : TDataSource);
begin
 if Ds.DataSet.ClassType = TQuery then begin
   Columns[ColIndex].Title.Font.Style := LTFStyle;
   Columns[ColIndex].Title.Caption := LTCaption;
   Columns[ColIndex].Title.Color := LTColor;
   Columns[ColIndex].Color := LColor;
 (*
   With Ds.DataSet As TQuery do begin
     if Active then Close;
     Sql.Text := FirstSqlStr;
     Open;
   end;
  *)
 end
 else
   if Ds.DataSet.ClassType = TADOQuery then begin
     Columns[ColIndex].Title.Font.Style := LTFStyle;
     Columns[ColIndex].Title.Caption := LTCaption;
     Columns[ColIndex].Title.Color := LTColor;
     Columns[ColIndex].Color := LColor;
    (*
     With Ds.DataSet As TADOQuery do begin
       if Active then Close;
       Sql.Text := FirstSqlStr;
       Open;
     end;
    *)
   end
   else begin
     Columns[ColIndex].Title.Font.Style := LTFStyle;
     Columns[ColIndex].Title.Caption := LTCaption;
     Columns[ColIndex].Title.Color := LTColor;
     Columns[ColIndex].Color := LColor;
    (*
     Ds.DataSet.Close;
     Ds.DataSet.Open;
    *)
   end;
end;

procedure TSSDBGrid.Sort(Ds : TDataSource; Column : TColumn);
 Var
  BufStr : String;
  x : Integer;
  TablePart: String;
  FoundIndex, j: Integer;
begin
 i := Column.Index;
 FieldName := Columns[i].FieldName;
 if Ds.DataSet.ClassType = TQuery then begin
   if Not TitleStatus then begin
     TitleStatus := True;
   end
   else begin
     Columns[ColIndex].Title.Font.Style := LTFStyle;
     Columns[ColIndex].Title.Caption := LTCaption;
     Columns[ColIndex].Title.Color := LTColor;
     Columns[ColIndex].Color := LColor;
   end;

   (Ds.DataSet As TQuery).Close;
   BufStr := (Ds.DataSet As TQuery).Sql.Text;

   FoundIndex:= Pos(FieldName, BufStr);
   j:= FoundIndex - 1;
   if FoundIndex <> 0 then
    begin
     While (BufStr[j] <> ' ')And(BufStr[j] <> ',') do
      begin
       TablePart:= BufStr[j]+TablePart;
       j:= j-1;
      end;
     FieldName:= TablePart+FieldName;
     if UpperCase(FieldName) = 'SUBSTRING(RD.RESULT_DONE_DESC' then
      FieldName:= 'rd.RESULT_DONE_DESC';
     if UpperCase(FieldName) = 'CAST(LTRIM(RTRIM(DA.DICTUM_ANN_DESC' then
      FieldName:= 'da.DICTUM_ANN_DESC';
     if UpperCase(FieldName) = 'BIR_CITY_DESC' then
      FieldName:= 'ci1.CITY_DESC';
     if UpperCase(FieldName) = 'SOD_CITY_DESC' then
      FieldName:= 'ci2.CITY_DESC';
    end;

   x := Pos('ORDER',UpperCase(BufStr));
   if x <> 0 then
    Delete(BufStr,x,Length(BufStr)-x);
   BufStr := BufStr + ' ORDER BY ';
   BufStr := BufStr + Format('%S',[FieldName]);
   (Ds.DataSet As TQuery).Sql.Text := Bufstr;
   (Ds.DataSet As TQuery).Open;
   ColIndex := i ;

   LTFStyle := [];
   LTCaption := Columns[ColIndex].Title.Caption;
   LTColor := Columns[ColIndex].Title.Color;
   LColor := Columns[ColIndex].Color;

   Columns[ColIndex].Title.Font.Style := [fsBold];
   Columns[ColIndex].Title.Caption := '';
   Columns[ColIndex].Title.Color := $00616161;
   Columns[ColIndex].Color := $00FFEAEA ;
 end
 else
   if Ds.DataSet.ClassType = TADOQuery then begin
     if Not TitleStatus then
       TitleStatus := True
     else begin
       Columns[ColIndex].Title.Font.Style := LTFStyle;
       Columns[ColIndex].Title.Caption := LTCaption;
       Columns[ColIndex].Title.Color := LTColor;
       Columns[ColIndex].Color := LColor;
     end;

     (Ds.DataSet As TADOQuery).Close;
     BufStr := (Ds.DataSet As TADOQuery).Sql.Text;

     FoundIndex:= Pos(FieldName, BufStr);
     j:= FoundIndex - 1;
     if FoundIndex <> 0 then
      begin
       While (BufStr[j] <> ' ')And(BufStr[j] <> ',') do
        begin
         TablePart:= BufStr[j]+TablePart;
         j:= j-1;
        end;
       FieldName := TablePart+FieldName;
      end;

     x := Pos('ORDER',UpperCase(BufStr));
     if x <> 0 then
      Delete(BufStr,x,Length(BufStr)-x);
     BufStr := BufStr + ' ORDER BY ';
     BufStr := BufStr + Format('%S',[FieldName]);
     (Ds.DataSet As TADOQuery).Sql.Text := Bufstr;
     (Ds.DataSet As TADOQuery).Open;
     ColIndex := i ;

     LTFStyle := [];
     LTCaption := Columns[ColIndex].Title.Caption;
     LTColor := Columns[ColIndex].Title.Color;
     LColor := Columns[ColIndex].Color;

     Columns[ColIndex].Title.Font.Style := [fsBold];
     Columns[ColIndex].Title.Caption := '';
     Columns[ColIndex].Title.Color := clWindow;
     Columns[ColIndex].Color := $00FFEAEA ;
   end
   else
     if Ds.DataSet.ClassType = TTable then begin
       if Not TitleStatus then
         TitleStatus := True
       else begin
         Columns[ColIndex].Title.Font.Style := LTFStyle;
         Columns[ColIndex].Title.Caption := LTCaption;
         Columns[ColIndex].Title.Color := LTColor;
         Columns[ColIndex].Color := LColor;
       end;

       (Ds.DataSet As TTable).Close;
       (Ds.DataSet As TTable).IndexFieldNames := Columns[i].FieldName;
       (Ds.DataSet As TTable).Open;
       ColIndex := i ;

       LTFStyle := [];
       LTCaption := Columns[ColIndex].Title.Caption;
       LTColor := Columns[ColIndex].Title.Color;
       LColor := Columns[ColIndex].Color;

       Columns[ColIndex].Title.Font.Style := [fsBold] ;
       Columns[ColIndex].Title.Caption := '';
       Columns[ColIndex].Title.Color := clWindow;
       Columns[ColIndex].Color := $00FFEAEA ;
     end;
end;


procedure TSSDBGrid.Search(Ds : TDataSource; SKey: Char=Char(vk_F1));
var
  s, TablePart: string;
  len: integer;
  SqlStr,AddStr: String;
  Ind, FoundIndex, j: Integer;

begin
 if (SKey = Char(vk_F1)) And (Columns[ColIndex].Title.Caption = '') then
  begin
   Columns[ColIndex].Title.Caption := '0';
  end;

 if Ds.DataSet.ClassType = TQuery then begin
   if (Skey<>Char(vk_Back))And(SKey<>Char(vk_F1)) then begin
     Columns[i].Title.Caption := Columns[i].Title.Caption + Skey;
     Exit;
   end
   else
     if Skey = Char(vk_Back) then begin
       s := Columns[i].Title.Caption;
       len := length(s)-1;
       Columns[i].Title.Caption := copy(s,1,len);
       Exit;
     end
     else
       if SKey = Char(vk_F1) then begin
         FieldNameStr := Columns[ColIndex].FieldName;
         FieldDataType := (Ds.DataSet As TQuery).FieldByName(FieldNameStr).DataType;
         LikeStr := ''+'%'+''+Columns[ColIndex].Title.Caption+''+'%'+'';
         LikeStr := ''''+LikeStr+'''';
         (Ds.DataSet As TQuery).Close;
         SqlStr := (Ds.DataSet As TQuery).SQL.Text;

         FoundIndex:= Pos(FieldNameStr, SqlStr);
         j:= FoundIndex - 1;
         if FoundIndex <> 0 then
          begin
           While (SqlStr[j] <> ' ')And(SqlStr[j] <> ',') do
            begin
             TablePart:= SqlStr[j]+TablePart;
             j:= j-1;
            end;
           FieldNameStr:= TablePart+FieldNameStr;
           if UpperCase(FieldNameStr) = 'SUBSTRING(RD.RESULT_DONE_DESC' then
            FieldNameStr:= 'rd.RESULT_DONE_DESC';
           if UpperCase(FieldNameStr) = 'CAST(LTRIM(RTRIM(DA.DICTUM_ANN_DESC' then
            FieldNameStr:= 'da.DICTUM_ANN_DESC';
           if UpperCase(FieldNameStr) = 'BIR_CITY_DESC' then
            FieldNameStr:= 'ci1.CITY_DESC';
           if UpperCase(FieldNameStr) = 'SOD_CITY_DESC' then
            FieldNameStr:= 'ci2.CITY_DESC';
          end;

         if Pos('WHERE',UpperCase(SqlStr))=0 then begin
           Case FieldDataType of
            ftString:
              AddStr := Format(' WHERE %S LIKE %S',[FieldNameStr,LikeStr]);
            ftInteger:
              AddStr := Format(' WHERE %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
            ftSmallint:
              AddStr := Format(' WHERE %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
            ftFloat:
              AddStr := Format(' WHERE %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
           end; //Case
         end
         else begin
           Case FieldDataType of
            ftString:
              AddStr := Format(' AND %S LIKE %S',[FieldNameStr,LikeStr]);
            ftInteger:
              AddStr := Format(' AND %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
            ftSmallint:
              AddStr := Format(' AND %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
            ftFloat:
              AddStr := Format(' And %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
           end; //Case
         end;

         if Pos('GROUP BY',UpperCase(SqlStr))<>0 then begin
           Ind := Pos('GROUP',UpperCase(SqlStr));
           Insert(AddStr,SqlStr,Ind-1);
           (Ds.DataSet As TQuery).SQL.Text := SqlStr;
           (Ds.DataSet As TQuery).Open;
           Exit;
         end
         else
           if Pos('ORDER BY',UpperCase(SqlStr))<>0 then begin
             Ind := Pos('ORDER',UpperCase(SqlStr));
             Insert(AddStr,SqlStr,Ind-1);
             (Ds.DataSet As TQuery).SQL.Text := SqlStr;
             (Ds.DataSet As TQuery).Open;
             Exit;
           end;

       end;
 end
 else
   if Ds.DataSet.ClassType = TADOQuery then begin
     if (Skey<>Char(vk_Back))And(SKey<>Char(vk_F1)) then begin
       Columns[i].Title.Caption := Columns[i].Title.Caption + Skey;
       Exit;
     end
     else
       if Skey = Char(vk_Back) then begin
         s := Columns[i].Title.Caption;
         len := length(s)-1;
         Columns[i].Title.Caption := copy(s,1,len);
         Exit;
       end
       else
         if SKey = Char(vk_F1) then begin
           FieldNameStr := Columns[ColIndex].FieldName;
           FieldDataType := (Ds.DataSet As TADOQuery).FieldByName(FieldNameStr).DataType;
           LikeStr := ''+'%'+''+Columns[ColIndex].Title.Caption+''+'%'+'';
           LikeStr := ''''+LikeStr+'''';
           (Ds.DataSet As TADOQuery).Close;
           SqlStr := (Ds.DataSet As TADOQuery).SQL.Text;

           FoundIndex:= Pos(FieldNameStr, SqlStr);
           j:= FoundIndex - 1;
           if FoundIndex <> 0 then
            begin
             While (SqlStr[j] <> ' ')And(SqlStr[j] <> ',') do
              begin
               TablePart:= SqlStr[j]+TablePart;
               j:= j-1;
              end;
             FieldNameStr:= TablePart+FieldNameStr;
            end;

           if Pos('WHERE',UpperCase(SqlStr))=0 then begin
             Case FieldDataType of
              ftString:
                AddStr := Format(' WHERE %S LIKE %S',[FieldNameStr,LikeStr]);
              ftInteger:
                AddStr := Format(' WHERE %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
              ftSmallint:
                AddStr := Format(' WHERE %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
              ftFloat:
                AddStr := Format(' WHERE %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
             end; //Case
           end
           else begin
             Case FieldDataType of
              ftString:
                AddStr := Format(' AND %S LIKE %S',[FieldNameStr,LikeStr]);
              ftInteger:
                AddStr := Format(' AND %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
              ftSmallint:
                AddStr := Format(' AND %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
              ftFloat:
                AddStr := Format(' And %S = %S',[FieldNameStr,Columns[ColIndex].Title.Caption]);
             end; //Case
           end;

           if Pos('GROUP BY',UpperCase(SqlStr))<>0 then begin
             Ind := Pos('GROUP',UpperCase(SqlStr));
             Insert(AddStr,SqlStr,Ind-1);
             (Ds.DataSet As TADOQuery).SQL.Text := SqlStr;
             (Ds.DataSet As TADOQuery).Open;
             Exit;
           end
           else
             if Pos('ORDER BY',UpperCase(SqlStr))<>0 then begin
               Ind := Pos('ORDER',UpperCase(SqlStr));
               Insert(AddStr,SqlStr,Ind-1);
               (Ds.DataSet As TADOQuery).SQL.Text := SqlStr;
               (Ds.DataSet As TADOQuery).Open;
               Exit;
             end;

         end;
   end
   else if Ds.DataSet.ClassType = TTable then
    begin
      if Skey<>chr(8)then
        begin
          Columns[i].Title.Caption := Columns[i].Title.Caption + Skey;

          (Ds.DataSet as TTable).setkey;
          Case (Ds.DataSet as TTable).FieldByName(FieldName).DataType of
            ftString:
              (Ds.DataSet as TTable).FieldByName(FieldName).value
                := Columns[i].Title.Caption;
            ftInteger:
              (Ds.DataSet as TTable).FieldByName(FieldName).value
                := StrToInt(Columns[i].Title.Caption);
          end;
          (Ds.DataSet as TTable).GoToNearest;
        end
      else
        begin
          s := Columns[i].Title.Caption;
          len := length(s)-1;
          Columns[i].Title.Caption := copy(s,1,len);
          (Ds.DataSet as TTable).FindNearest([Columns[i].Title.Caption]);
        end;
   end;

end;

procedure Register;
begin
  RegisterComponents('Farsi', [TSSDBGrid]);
end;

end.


