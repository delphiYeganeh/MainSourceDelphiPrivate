//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PrjDBSample.res");
USEFORM("DBTreeSample.cpp", DMTreeViewForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TDMTreeViewForm), &DMTreeViewForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
