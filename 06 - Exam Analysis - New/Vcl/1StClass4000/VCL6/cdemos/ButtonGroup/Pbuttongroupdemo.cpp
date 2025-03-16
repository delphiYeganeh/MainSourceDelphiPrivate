//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("Pbuttongroupdemo.res");
USEFORM("buttongroupdemo.cpp", ButtonGroupDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TButtonGroupDemoForm), &ButtonGroupDemoForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
