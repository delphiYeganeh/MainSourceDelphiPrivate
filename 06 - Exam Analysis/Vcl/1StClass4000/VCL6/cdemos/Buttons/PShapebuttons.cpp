//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PShapebuttons.res");
USEFORM("shapeu.cpp", ShapeBtnDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TShapeBtnDemoForm), &ShapeBtnDemoForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
