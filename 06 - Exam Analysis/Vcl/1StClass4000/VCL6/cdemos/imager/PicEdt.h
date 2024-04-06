//---------------------------------------------------------------------------
#ifndef PicEdtH
#define PicEdtH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ExtDlgs.hpp>
//---------------------------------------------------------------------------
class TfcPicEditor : public TForm
{
__published:	// IDE-managed Components
        TButton *OKButton;
        TButton *CancelButton;
        TPanel *Panel;
        TPanel *ImagePanel;
        TImage *Image;
        TButton *LoadButton;
        TButton *SaveButton;
        TButton *ClearButton;
        TOpenPictureDialog *OpenDialog;
        TSavePictureDialog *SaveDialog;
        void __fastcall LoadButtonClick(TObject *Sender);
        void __fastcall SaveButtonClick(TObject *Sender);
        void __fastcall ClearButtonClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
private:	// User declarations
        void UpdateImage();
public:		// User declarations
        __fastcall TfcPicEditor(TComponent* Owner);
        TPicture* StoredImage;
        static bool ExecutePictureEditor(TGraphic* AGraphic, TPersistent* DestGraphic);
};
//---------------------------------------------------------------------------
extern PACKAGE TfcPicEditor *fcPicEditor;
//---------------------------------------------------------------------------
#endif
