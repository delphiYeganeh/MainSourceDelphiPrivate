//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PPaintDemo.res");
USEFORM("paintu.cpp", PaintForm);
USEFORM("infounit.cpp", InfoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TPaintForm), &PaintForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
