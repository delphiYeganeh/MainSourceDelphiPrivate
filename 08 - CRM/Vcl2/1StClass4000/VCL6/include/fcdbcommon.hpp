// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcDBCommon.pas' rev: 5.00

#ifndef fcDBCommonHPP
#define fcDBCommonHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <TypInfo.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcdbcommon
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Db::TDataSource* __fastcall fcGetControlDataSource(Classes::TComponent* ctrl);
extern PACKAGE Db::TDataSource* __fastcall fcGetControlMasterSource(Classes::TComponent* ctrl);
extern PACKAGE Db::TDataSet* __fastcall fcGetControlMasterDataSet(Classes::TComponent* ctrl);
extern PACKAGE bool __fastcall fcSetSQLProp(Db::TDataSet* ctrl, Classes::TStrings* sql);
extern PACKAGE bool __fastcall fcSetDatabaseName(Db::TDataSet* ctrl, AnsiString df);
extern PACKAGE AnsiString __fastcall fcGetDatabaseName(Db::TDataSet* dataSet);
extern PACKAGE AnsiString __fastcall fcGetTableName(Db::TDataSet* dataSet);
extern PACKAGE Db::TParams* __fastcall fcGetParamsProp(Db::TDataSet* ctrl);
extern PACKAGE bool __fastcall fcSetParamsProp(Db::TDataSet* ctrl, Db::TParams* Params);

}	/* namespace Fcdbcommon */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcdbcommon;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcDBCommon
