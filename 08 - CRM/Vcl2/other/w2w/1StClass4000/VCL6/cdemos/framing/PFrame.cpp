//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PFrame.res");
USEFORM("frameu.cpp", FrameDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TFrameDemoForm), &FrameDemoForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
