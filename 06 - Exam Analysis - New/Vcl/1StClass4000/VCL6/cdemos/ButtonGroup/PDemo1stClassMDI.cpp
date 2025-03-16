//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PDemo1stClassMDI.res");
USEFORM("mainmdi.cpp", MainMdiForm);
USEFORM("About.cpp", AboutBox);
USEFORM("childwin.cpp", MDIChild);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TMainMdiForm), &MainMdiForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
