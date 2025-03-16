//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PMap.res");
USEFORM("mapu.cpp", MapForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TMapForm), &MapForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
