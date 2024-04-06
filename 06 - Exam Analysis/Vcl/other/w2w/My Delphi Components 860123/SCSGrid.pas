unit SCSGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids,ADODB,Db,ComCtrls,DBCtrls, ExtCtrls, StdCtrls;

type
  TSCSGrid = class(tdbgrid)
  private
   FFirstFilter : String ;
   FFirstFiltered : Boolean ;
   FSBrushColor: TColor ;
   FSTitleColor: TColor ;
   FSSelfColor : TColor ;
   FTempStor:TADOStoredProc;
  protected
    { Protected declarations }
  public
    ColIndex : Integer ;
    TitleClicked : Boolean ;
    TitleStatus : Boolean ;
    constructor Create(AOwner:Tcomponent);Override;
    procedure TitleClick(Column: TColumn);Override;
    Procedure ReLoad;
    procedure KeyPress(Sender:TObject; var Key:Char);
    procedure DrawColumnCell(const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState); override;
  published
    Property FirstFilter : String read FFirstFilter write FFirstFilter;
    Property FirstFiltered : Boolean read FFirstFiltered write FFirstFiltered;
    Property SBrushColor : TColor read FSBrushColor write FSBrushColor;
    Property STitleColor: TColor read FSTitleColor write FSTitleColor;
    Property SSelfColor : TColor read FSSelfColor write FSSelfColor ;
    property GridStoredProcedure:TADOStoredProc read FTempStor write FTempStor;
  end;

  procedure Register;

implementation
 Var
 // FieldName : String;
  //Title has not clicked
  LTFStyle: TFontStyles;
  LTCaption: String;
  LTColor,LColor: TColor;

procedure Register;
begin
  RegisterComponents('Farsi', [TSCSGrid]);
end;

constructor TSCSGrid.Create(AOwner: Tcomponent);
begin
  inherited;
  Color := $00F0FFFF ;
  Self.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,
                 dgTabs,dgConfirmDelete,dgCancelOnExit];
  Self.BiDiMode:=bdRightToLeft;
  FFirstFiltered := False ;
  FSBrushColor := $00FFF4F4 ;
  FSTitleColor := clWindow ;
  FSSelfColor  := $00F0FFFF ;
end;

procedure TSCSGrid.DrawColumnCell(const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
  i:Integer;
begin
  inherited;
  i:=Self.DataSource.DataSet.RecNo;
  if (i mod 2)=0 then
   begin
    if(gdSelected in State)
     Or(gdFocused in State) then
     begin
      Self.Canvas.brush.Color:=clMoneyGreen;
      Self.Canvas.Font.Color:=clBlack;
     end
    else
     begin
      if Not self.SelectedRows.CurrentRowSelected then
       Self.Canvas.brush.Color:= FSSelfColor;
     end;
    Self.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
  else
   begin
    if(gdSelected in State)
     Or(gdFocused in State) then
     begin
      Self.Canvas.brush.Color:=clMoneyGreen;
      Self.Canvas.Font.Color:=clBlack;
     end
    else
     begin
      if Not self.SelectedRows.CurrentRowSelected then
       Self.Canvas.brush.Color:=FSBrushColor;
     end;
    //$00A4A4A4;
    Self.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
end;

Procedure TSCSGrid.ReLoad;
begin
   Columns[ColIndex].Title.Font.Style := LTFStyle;
   Columns[ColIndex].Title.Caption := LTCaption;
   Columns[ColIndex].Title.Color := LTColor;
   Columns[ColIndex].Color := LColor;
   TitleStatus := False ;
end;

procedure TSCSGrid.TitleClick(Column: TColumn);
begin
  inherited;
   if Not TitleStatus then
     TitleStatus := True
   else
    begin
     Columns[ColIndex].Title.Font.Style := LTFStyle;
     Columns[ColIndex].Title.Caption := LTCaption;
     Columns[ColIndex].Title.Color := LTColor;
     Columns[ColIndex].Color := LColor;
    end;
   ColIndex := Column.Index ;
   LTFStyle := [];
   LTCaption := Columns[ColIndex].Title.Caption;
   LTColor := Columns[ColIndex].Title.Color;
   LColor := Columns[ColIndex].Color;

   Columns[ColIndex].Title.Font.Style := [fsBold];
   Columns[ColIndex].Title.Caption := '';
   Columns[ColIndex].Title.Color := FSTitleColor ;
   Columns[ColIndex].Color := $00C9C9C9 ;
   TitleClicked := True;
   if DataSource.DataSet.ClassType = TADOQuery then
     (DataSource.DataSet As TADOQuery).Sort := Column.FieldName
    else
     if DataSource.DataSet.ClassType = TADOStoredProc then
       (DataSource.DataSet As TADOStoredProc).Sort := Column.FieldName
      else
       if DataSource.DataSet.ClassType = TADOTable then
         (DataSource.DataSet As TADOTable).Sort := Column.FieldName ;
end;

Procedure TSCSGrid.KeyPress(Sender:TObject; var Key:Char);
var
  Str : String ;
begin
  if Key = char(vk_Escape) then
   BEGIN
    IF TitleStatus Then
    begin
      DataSource.DataSet.Filtered := False ;
      DataSource.DataSet.Filter := FFirstFilter ;
      DataSource.DataSet.Filtered := True ;
      TitleStatus := False ;
      ReLoad ;
    end;
   END 
  else
    if Key = Char(vk_Back) then
      begin
        Str := Columns[ColIndex].Title.Caption ;
        delete(Str,Length(Str),1) ;
        Columns[ColIndex].Title.Caption := Str ;
      end
     else
      if TitleClicked then
       if Key <> Char(vk_Return) then
        begin
          if Key = Char(vk_Space) then
            Columns[ColIndex].Title.Caption := Columns[ColIndex].Title.Caption + ' '
           else
            Columns[ColIndex].Title.Caption := Columns[ColIndex].Title.Caption + Char(Key) ;
          DataSource.DataSet.Locate(Columns[ColIndex].FieldName,Columns[ColIndex].Title.Caption,[LoPartialKey]);
        end
       else
       IF TitleStatus Then
        if Ord(Key) = 13 then
          begin
//            DataSource.DataSet.FilterOptions := [foNoPartialCompare] ;
            if (FFirstFiltered) and (FFirstFilter <> '') then
              if DataSource.DataSet.Filter <> '' then
                DataSource.DataSet.Filter := DataSource.DataSet.Filter + ' and '
                                           + FFirstFilter + ' and '
                                           + Columns[ColIndex].FieldName + ' Like '
                                           + ''''+'%'+Columns[ColIndex].Title.Caption+'%'+''''
               else
                DataSource.DataSet.Filter := FFirstFilter + ' and '
                                           + Columns[ColIndex].FieldName + ' Like '
                                           + ''''+'%'+Columns[ColIndex].Title.Caption+'%'+''''
             else
              DataSource.DataSet.Filter := Columns[ColIndex].FieldName + ' Like ' +
                                           ''''+'%'+Columns[ColIndex].Title.Caption+'%'+'''' ;
            DataSource.DataSet.Filtered := True ;
            if Not FFirstFiltered then
              FFirstFiltered := True ;
(*            if (FFirstFiltered) and (FFirstFilter <> '') then
              if DataSource.DataSet.Filter <> '' then
                DataSource.DataSet.Filter := DataSource.DataSet.Filter + ' and '
                                           + FFirstFilter + ' and '
                                           + Columns[ColIndex].FieldName + '='
                                           + ''''+Columns[ColIndex].Title.Caption+''''
               else
                DataSource.DataSet.Filter := FFirstFilter + ' and '
                                           + Columns[ColIndex].FieldName + '='
                                           + ''''+Columns[ColIndex].Title.Caption+''''
             else
              DataSource.DataSet.Filter := Columns[ColIndex].FieldName + '=' +
                                           ''''+Columns[ColIndex].Title.Caption+'''' ;
            DataSource.DataSet.Filtered := True ;
            if Not FFirstFiltered then
              FFirstFiltered := True ;*)
          end
         else
          Key:= #0;
end ;


end.



