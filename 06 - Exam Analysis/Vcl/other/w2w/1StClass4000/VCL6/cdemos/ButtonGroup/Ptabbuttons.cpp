//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("Ptabbuttons.res");
USEFORM("tabbuttons.cpp", TabBtnGroupForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TTabBtnGroupForm), &TabBtnGroupForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
