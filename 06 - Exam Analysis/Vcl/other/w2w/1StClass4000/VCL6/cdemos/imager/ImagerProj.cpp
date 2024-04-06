//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
USERES("ImagerProj.res");
USEFORM("ImagerMain.cpp", ImagerForm);
USEFORM("PicEdt.cpp", fcPicEditor);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TImagerForm), &ImagerForm);
                 Application->CreateForm(__classid(TfcPicEditor), &fcPicEditor);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
