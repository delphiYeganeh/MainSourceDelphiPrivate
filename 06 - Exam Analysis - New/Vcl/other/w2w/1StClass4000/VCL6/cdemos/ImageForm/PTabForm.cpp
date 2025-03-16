//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PTabForm.res");
USEFORM("imagetabformu.cpp", ImageTabForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TImageTabForm), &ImageTabForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
