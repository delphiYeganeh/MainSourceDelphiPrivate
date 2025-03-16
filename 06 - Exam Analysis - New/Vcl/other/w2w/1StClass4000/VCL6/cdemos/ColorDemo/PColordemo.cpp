//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PColordemo.res");
USEFORM("colordemou.cpp", ColorDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TColorDemoForm), &ColorDemoForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
