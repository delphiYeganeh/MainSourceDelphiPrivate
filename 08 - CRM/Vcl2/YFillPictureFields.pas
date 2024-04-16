unit YFillPictureFields;

interface

uses
  Windows, Messages, SysUtils, Classes,DB,dialogs;

type
  TYFillPictureFields = class(TComponent)
  private
    FNameField,
    FPictureField,
    FFolder,
    FExtention,
    FOpenedFiles,
    FErrors :string;
    FDataset :TDataSet;
    { Published declarations }
    { Private declarations }
  protected
    { Protected declarations }
  public
  Constructor Create(aowner:tcomponent);override;
  procedure Fill;

    { Public declarations }
  published
    property  NameField    : string read  FNameField    write  FNameField;
    property  PictureField : string read  FPictureField write  FPictureField;
    property  Folder       : string read  FFolder       write  FFolder;
    property  Extention    : string read  FExtention    write  FExtention;
    property  Errors    : string read  FErrors    write  FErrors;
    property  OpenedFiles    : string read  FOpenedFiles    write  FOpenedFiles;
    property  Dataset      : TDataset read  FDataset      write  FDataset;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Yeganeh', [TYFillPictureFields]);
end;
constructor TYFillPictureFields.Create(aowner:tcomponent);
 begin
  inherited Create(aowner);
  FExtention :='';
end;


Procedure TYFillPictureFields.Fill;
var Find,FileName: string;
  sr: TSearchRec;
  FileAttrs: Integer;
  s:string;
begin
  inherited;
   if FFolder[length(FFolder)]<>'\' then
      FFolder:=FFolder+'\';
FileName:=FFolder + '*.'+FExtention;
  FileAttrs := 0;
  FErrors:='';
  FOpenedFiles:='';
  if FindFirst(fileName, FileAttrs, sr) = 0 then
    begin
      repeat
       Find:=copy(sr.Name,1,pos('.',sr.Name)-1);
       with FDataset do
        begin
          if Locate(FNameField,Find,[]) then
            begin
              Edit;
              TBlobField(FieldByName(FPictureField)).LoadFromFile(FFolder+sr.Name);
              FOpenedFiles:=FOpenedFiles+','+Find;
              post;
            end{with} else FErrors:=FErrors+Find+' , ';
         end;
      until FindNext(sr) <> 0;
    end;
 FindClose(sr);


end;

end.
