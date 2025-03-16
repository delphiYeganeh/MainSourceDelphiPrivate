//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PStatusBarDemo.res");
USEFORM("statusbaru.cpp", StatusBarDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TStatusBarDemoForm), &StatusBarDemoForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
