//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("Demo1stClass.res");
USEFORM("MainU.cpp", MainForm);
USEFORM("OutlookBar\outlookbaru.cpp", OutlookBarForm);
USEFORM("OutlookBar\paintu.cpp", PaintForm);
USEFORM("OutlookBar\infounit.cpp", InfoForm);
USEFORM("ButtonGroup\tabbuttons.cpp", TabBtnGroupForm);
USEFORM("Buttons\shapeu.cpp", ShapeBtnDemoForm);
USEFORM("Buttons\mapu.cpp", MapForm);
USEFORM("Buttons\imagebuttonu.cpp", ImageBtnDemoForm);
USEFORM("ColorDemo\colordemou.cpp", ColorDemoForm);
USEFORM("ImageForm\imagetabformu.cpp", ImageTabForm);
USEFORM("TreeView\TreeDemo.cpp", TreeViewDemoForm);
USEFORM("DBTreeView\DBTreeSample.cpp", DMTreeViewForm);
USEFORM("Imager\TilerUnit.cpp", TilerDemoForm);
USEFORM("Imager\ImagerMain.cpp", ImagerForm);
USEFORM("Labels\labelu.cpp", LabelForm);
USEFORM("StatusBar\statusbaru.cpp", StatusBarDemoForm);
USEFORM("StatusBar\proportionalu.cpp", ProportionalStatusBarForm);
USEFORM("ImageForm\orderformu.cpp", OrderForm);
USEFORM("ButtonGroup\buttongroupdemo.cpp", ButtonGroupDemoForm);
USEFORM("TreeCombos\TreeCombos.cpp", TreeComboDemoForm);
USEFORM("Imager\PicEdt.cpp", fcPicEditor);
USEFORM("Framing\FrameU.cpp", FrameDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TMainForm), &MainForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
