//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("PLabel.res");
USEFORM("labelu.cpp", LabelForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TLabelForm), &LabelForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
