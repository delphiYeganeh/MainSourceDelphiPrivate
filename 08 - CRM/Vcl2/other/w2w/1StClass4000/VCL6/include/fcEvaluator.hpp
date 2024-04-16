// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcEvaluator.pas' rev: 5.00

#ifndef fcEvaluatorHPP
#define fcEvaluatorHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcCommon.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcevaluator
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TOperator { opMultiply, opDivide, opAdd, opSubtract };
#pragma option pop

typedef Set<TOperator, opMultiply, opSubtract>  TOperators;

class DELPHICLASS TfcEvaluator;
class PASCALIMPLEMENTATION TfcEvaluator : public System::TObject 
{
	typedef System::TObject inherited;
	
protected:
	/*         class method */ static bool __fastcall GetOperands(TMetaClass* vmt, AnsiString s, TOperators Operators, AnsiString &LOperand, AnsiString &ROperand, TOperator &FoundOp);
	/*         class method */ static void __fastcall ValidateString(TMetaClass* vmt, AnsiString s);
	/*         class method */ static void __fastcall FixString(TMetaClass* vmt, AnsiString &s);
	
public:
	/*         class method */ static int __fastcall Evaluate(TMetaClass* vmt, AnsiString s);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcEvaluator(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcEvaluator(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE char OPERATORSCHAR[4];

}	/* namespace Fcevaluator */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcevaluator;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcEvaluator
