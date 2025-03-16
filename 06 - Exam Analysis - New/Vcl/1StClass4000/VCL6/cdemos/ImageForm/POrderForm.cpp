//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("POrderForm.res");
USEFORM("orderformu.cpp", OrderForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TOrderForm), &OrderForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
