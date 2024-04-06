//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PImgDemo.res");
USEFORM("imagebuttonu.cpp", ImageBtnDemoForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TImageBtnDemoForm), &ImageBtnDemoForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
