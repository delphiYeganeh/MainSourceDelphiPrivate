//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "orderformu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcDemoRichEdit"
#pragma link "fcImage"
#pragma link "fcImageForm"
#pragma link "fcImager"
#pragma link "fcImgBtn"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcOutlookBar"
#pragma link "fcShapeBtn"
#pragma resource "*.dfm"
TOrderForm *OrderForm;
//---------------------------------------------------------------------------
__fastcall TOrderForm::TOrderForm(TComponent* Owner)
        : TForm(Owner)
{
}

//---------------------------------------------------------------------------
//Get position of start of the current word.
int GetStartOfWord(Char c1,Char c2,String s,int Index)
{
  if (Index == 0) Index = s.Length();
  int i=Index;
  if (i>s.Length()) i=s.Length();
  while (i>=1) {
    if ((s[i]==c1) || (s[i]==c2)) break;
    i--;
  }
  return(i);
}
//---------------------------------------------------------------------------
//Get the clicked on Word From a Point
String GetWordFromPoint(TRichEdit *CurRichEdit,int x,int y)
{
  TPoint p=Point(x,y);
  int CurSel = SendMessage(CurRichEdit->Handle, EM_CHARFROMPOS, 0, long(&p));
  int Line = SendMessage(CurRichEdit->Handle, EM_EXLINEFROMCHAR, 0, CurSel);
  String CurLineStr = CurRichEdit->Lines->Strings[Line];
  int LineIndex = SendMessage(CurRichEdit->Handle, EM_LINEINDEX, Line, 0);

  int Offset = CurSel - LineIndex;
  if ((Offset > 0) && (CurLineStr[Offset] == ' ')) Offset=Offset+1;
  if ((CurLineStr.Length()==0) || (Offset==0)) return ("");

  //Get Start Index of Current Word.
  int startWord = GetStartOfWord(' ','\t' , CurLineStr, Offset + 1) + 1;

  //Loop from current offset til next whitespace.
  if (Offset <= CurLineStr.Length()) 
  while (!((CurLineStr[Offset] == ' ') ||
         (CurLineStr[Offset] == '\t') ||
         (CurLineStr[Offset] == '\n') ||
         (CurLineStr[Offset] == '\0') ||
         (CurLineStr[Offset] == '\r')))
  {
    Offset++;
    if (Offset>=CurLineStr.Length()){
      Offset++;
      break;
     }
  }
  return(CurLineStr.SubString(startWord,Offset-startWord));
}

void __fastcall TOrderForm::OrderingButtonClick(TObject *Sender)
{
  fcOutlookBar1->ActivePage = Ordering;
}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::AboutButtonClick(TObject *Sender)
{
  fcOutlookBar1->ActivePage = About;
}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::PricesButtonClick(TObject *Sender)
{
  fcOutlookBar1->ActivePage = Prices;
}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::CloseBtnClick(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------
void __fastcall TOrderForm::OrderingDescriptionMouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
 if ((GetWordFromPoint((TRichEdit *)Sender,X,Y) == "http://www.woll2woll.com") ||
     (GetWordFromPoint((TRichEdit *)Sender,X,Y) == "sales@woll2woll.com")) {
    ((TRichEdit *)Sender)->Cursor = crHandPoint;
 } else ((TRichEdit *)Sender)->Cursor = crDefault;
}
//---------------------------------------------------------------------------
void __fastcall TOrderForm::OrderingDescriptionMouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
 if (GetWordFromPoint((TRichEdit *)Sender,X,Y) == "http://www.woll2woll.com") {
     ShellExecute(Handle, "OPEN",
     PChar("https://www.he.net/cgi-bin/suid/~wol2wol/ordering/order.cgi"), 0, 0, SW_SHOWNORMAL);
 } else if (GetWordFromPoint((TRichEdit *)Sender,X,Y) == "sales@woll2woll.com") {
     ShellExecute(Handle, "OPEN",
     PChar("mailto:sales@woll2woll.com"), 0, 0, SW_SHOWNORMAL);
 }
}
//---------------------------------------------------------------------------
