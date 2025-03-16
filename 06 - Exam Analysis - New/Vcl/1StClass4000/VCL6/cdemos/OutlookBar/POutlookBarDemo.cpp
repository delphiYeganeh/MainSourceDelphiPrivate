//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("POutlookBarDemo.res");
USEFORM("outlookbaru.cpp", OutlookBarForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TOutlookBarForm), &OutlookBarForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
