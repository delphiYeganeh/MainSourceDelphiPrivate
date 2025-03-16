program Demo1stClass;





uses
  Forms,
  mainu in 'mainu.pas' {MainForm},
  StatusBars in 'StatusBar\StatusBars.pas' {StatusBarDemoForm},
  labelu in 'Labels\labelu.pas' {LabelDemo},
  Shapeu in 'Buttons\Shapeu.pas' {ShapeBtnDemoForm},
  ImgButtonDemo in 'Buttons\ImgButtonDemo.pas' {ImageBtnDemoForm},
  PaintUnit in 'OutlookBar\PaintUnit.pas' {PaintForm},
  InfoUnit in 'OutlookBar\InfoUnit.pas' {InfoForm},
  About in 'ButtonGroup\about.pas' {AboutBox},
  ImgCombos in 'ImageCombo\ImgCombos.pas' {TreeComboDemoForm},
  mapu in 'Buttons\mapu.pas' {MapForm},
  orderformu in 'ImageForm\orderformu.pas' {FunForm},
  tabbuttons in 'ButtonGroup\tabbuttons.pas' {TabBtnGroupForm},
  imagetabformu in 'ImageForm\imagetabformu.pas' {ImageTabForm},
  DBTreeSample1 in 'dbtreeview\DBTreeSample1.pas' {DMTreeViewForm},
  treedemo in 'TreeView\treedemo.pas' {TreeViewDemoForm},
  colordemou in 'ColorDemo\colordemou.pas' {ColorDemoForm},
  buttongroupdemo in 'ButtonGroup\buttongroupdemo.pas' {ButtonGroupDemo2},
  TilerUnit in 'Imager\TilerUnit.pas' {TilerForm},
  ImagerMain in 'Imager\ImagerMain.pas' {ImagerForm},
  ImagerDesc in 'Imager\ImagerDesc.pas' {ImagerDescForm},
  proportional in 'StatusBar\proportional.pas' {ProportionalDemo},
  OutlookBarUnit in 'OutlookBar\OutlookBarUnit.pas' {OutlookBarForm},
  PicEdt in 'imager\PicEdt.pas' {PicEditor},
  Frameu in 'framing\Frameu.pas' {FrameDemo},
  dbselftree in 'dbtreeview\DBSelfTree.pas' {SelfDBForm},
  PanelDemo in 'Panels\PanelDemo.pas' {PanelDemoForm},
  DBImageru in 'Imager\DBImageru.pas' {DBImagerDemoForm},
  dblabelu in 'Labels\dblabelu.pas' {JustifyLabelDemoForm},
  Panel2u in 'Panels\Panel2u.pas' {Panel2DemoForm},
  CalcDemoU in 'CalcCombo\CalcDemoU.pas' {CalculatorDemoForm},
  trackdemo in 'Trackbar\trackdemo.pas' {TrackbarForm},
  progressdemo in 'Trackbar\progressdemo.pas' {ProgressForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TProgressForm, ProgressForm);
  Application.Run;
end.
