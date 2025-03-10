// Borland C++ Builder
// Copyright (c) 1995, 2002 by Borland Software Corporation
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Wwlocate.pas' rev: 6.00

#ifndef WwlocateHPP
#define WwlocateHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <wwDialog.hpp>	// Pascal unit
#include <Wwstr.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <DBTables.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Wwlocate
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TwwLocateMatchType { mtExactMatch, mtPartialMatchStart, mtPartialMatchAny };
#pragma option pop

#pragma option push -b-
enum TwwFieldSortType { fsSortByFieldNo, fsSortByFieldName };
#pragma option pop

#pragma option push -b-
enum TwwDefaultButtonType { dbFindFirst, dbFindNext };
#pragma option pop

#pragma option push -b-
enum TwwFieldSelection { fsAllFields, fsVisibleFields };
#pragma option pop

class DELPHICLASS TwwLocateDlg;
typedef void __fastcall (__closure *TwwOnInitLocateDlgEvent)(TwwLocateDlg* Dialog);

typedef void __fastcall (__closure *TwwLocateSelectFieldEvent)(TwwLocateDlg* Dialog, AnsiString SearchField);

#pragma option push -b-
enum TwwLocateDlgOption { ldoCaseSensitiveBelow, ldoCloseOnMatch, ldoPreserveSearchText };
#pragma option pop

typedef Set<TwwLocateDlgOption, ldoCaseSensitiveBelow, ldoPreserveSearchText>  TwwLocateDlgOptions;

class PASCALIMPLEMENTATION TwwLocateDlg : public Forms::TForm 
{
	typedef Forms::TForm inherited;
	
__published:
	Stdctrls::TGroupBox* SearchTypeGroup;
	Stdctrls::TGroupBox* FieldsGroup;
	Stdctrls::TCheckBox* CaseSensitiveCheckBox;
	Stdctrls::TRadioButton* ExactMatchBtn;
	Stdctrls::TRadioButton* PartialMatchStartBtn;
	Stdctrls::TRadioButton* PartialMatchAnyBtn;
	Extctrls::TPanel* Panel1;
	Stdctrls::TGroupBox* FieldValueGroup;
	Stdctrls::TEdit* SearchValue;
	Stdctrls::TButton* FirstButton;
	Stdctrls::TButton* NextButton;
	Stdctrls::TComboBox* FieldNameComboBox;
	void __fastcall FindFirst(System::TObject* Sender);
	void __fastcall FindNextBtnClick(System::TObject* Sender);
	void __fastcall BitBtn1KeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall FieldNameComboBoxChange(System::TObject* Sender);
	void __fastcall FieldNameComboBoxEnter(System::TObject* Sender);
	void __fastcall FieldNameComboBoxExit(System::TObject* Sender);
	void __fastcall FieldNameComboBoxKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	void __fastcall FormShow(System::TObject* Sender);
	
private:
	AnsiString __fastcall GetFieldNameFromTitle(AnsiString fieldTitle);
	void __fastcall ApplyIntl(void);
	
public:
	Db::TDataSet* DataSet;
	Stdctrls::TButton* CancelBtn;
	Classes::TComponent* DlgComponent;
	bool __fastcall FindMatch(bool FromBeginning);
	__fastcall virtual TwwLocateDlg(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TCustomForm.CreateNew */ inline __fastcall virtual TwwLocateDlg(Classes::TComponent* AOwner, int Dummy) : Forms::TForm(AOwner, Dummy) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCustomForm.Destroy */ inline __fastcall virtual ~TwwLocateDlg(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TwwLocateDlg(HWND ParentWindow) : Forms::TForm(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TwwLocateDialog;
class PASCALIMPLEMENTATION TwwLocateDialog : public Wwdialog::TwwCustomDialog 
{
	typedef Wwdialog::TwwCustomDialog inherited;
	
private:
	AnsiString FCaption;
	AnsiString FDataField;
	Db::TDataLink* FDataLink;
	AnsiString FFieldValue;
	TwwLocateMatchType FMatchType;
	bool FCaseSensitive;
	TwwFieldSortType FSortFields;
	TwwDefaultButtonType FDefaultButton;
	TwwFieldSelection FFieldSelection;
	bool FShowMessages;
	TwwLocateDlgOptions FOptions;
	TwwOnInitLocateDlgEvent FOnInitDialog;
	TwwLocateSelectFieldEvent FOnSelectField;
	bool FUseLocateMethod;
	void __fastcall SetDataSource(Db::TDataSource* value);
	Db::TDataSource* __fastcall GetDataSource(void);
	
protected:
	virtual void __fastcall DoInitDialog(void);
	
public:
	TwwLocateDlg* Form;
	Variant Patch;
	virtual Db::TDataSet* __fastcall GetPrimaryDataSet(void);
	__fastcall virtual TwwLocateDialog(Classes::TComponent* AOwner);
	__fastcall virtual ~TwwLocateDialog(void);
	virtual bool __fastcall Execute(void);
	bool __fastcall FindPrior(void);
	bool __fastcall FindNext(void);
	bool __fastcall FindFirst(void);
	__property AnsiString FieldValue = {read=FFieldValue, write=FFieldValue};
	
__published:
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property AnsiString SearchField = {read=FDataField, write=FDataField};
	__property TwwLocateMatchType MatchType = {read=FMatchType, write=FMatchType, nodefault};
	__property bool CaseSensitive = {read=FCaseSensitive, write=FCaseSensitive, nodefault};
	__property TwwFieldSortType SortFields = {read=FSortFields, write=FSortFields, nodefault};
	__property TwwDefaultButtonType DefaultButton = {read=FDefaultButton, write=FDefaultButton, nodefault};
	__property TwwFieldSelection FieldSelection = {read=FFieldSelection, write=FFieldSelection, nodefault};
	__property bool ShowMessages = {read=FShowMessages, write=FShowMessages, nodefault};
	__property bool UseLocateMethod = {read=FUseLocateMethod, write=FUseLocateMethod, default=0};
	__property TwwLocateDlgOptions Options = {read=FOptions, write=FOptions, default=2};
	__property TwwOnInitLocateDlgEvent OnInitDialog = {read=FOnInitDialog, write=FOnInitDialog};
	__property TwwLocateSelectFieldEvent OnSelectField = {read=FOnSelectField, write=FOnSelectField};
};


//-- var, const, procedure ---------------------------------------------------
#pragma error Unsupported symbol type (23, Wwlocate)
extern PACKAGE TwwLocateDlg* wwLocateDlg;
extern PACKAGE bool __fastcall wwFindMatch(bool FromBeginning, Db::TDataSet* DataSet, AnsiString searchField, AnsiString searchValue, TwwLocateMatchType matchType, bool caseSens, bool UseLocateMethod = false);

}	/* namespace Wwlocate */
using namespace Wwlocate;
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Wwlocate
