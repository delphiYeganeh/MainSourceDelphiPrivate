program PrjDBSample2;

uses
  Forms,
  DBTreeSample2 in 'DBTreeSample2.pas' {DMTreeViewForm2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDMTreeViewForm2, DMTreeViewForm2);
  Application.Run;
end.
