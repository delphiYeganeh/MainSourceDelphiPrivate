//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("Demo.cpp", MainDemo);
USERES("Pdemo.res");
USEFORM("Combos.cpp", LookupForm);
USEFORM("DemoLoc.cpp", Locate);
USEFORM("Filtdlg.cpp", FilterDialogForm);
USEFORM("Grdbitmp.cpp", BitmapForm);
USEFORM("Grdbttn.cpp", BtnGridForm);
USEFORM("Grdlook.cpp", GridDemo);
USEFORM("Grdmemo.cpp", GridMemoApp);
USEFORM("isearch.cpp", SearchForm);
USEFORM("Lkdtl.cpp", DetailComboForm);
USEFORM("Lkquery.cpp", TableQueryForm);
USEFORM("multi.cpp", MultiSelectForm);
USEFORM("Packdlgs.cpp", GetTablesForm);
USEFORM("Packtest.cpp", PackMain);
USEFORM("Pictures.cpp", PictureForm);
USEFORM("Qbe.cpp", QBEForm);
USEFORM("rcdvw.cpp", RecordViewDemoForm);
USEFORM("Search.cpp", IncrSearch);
USEFORM("savefilt.cpp", SaveFilterDemo);
USEFORM("selfilt.cpp", SelectSaveFilter);
USEUNIT("wwsavflt.cpp");
USEFORM("dtpicker.cpp", DateTimePickerForm);
USEFORM("monthcalu.cpp", MonthCalendarForm);
USEFORM("mnthyear.cpp", YearCalendar);
USEFORM("navmany.cpp", NavigatorForm1);
USEFORM("navigatorcomb.cpp", CombinedForm);
USEFORM("Rcdpnldemo.cpp", RecordPanelDemo);
USEFORM("rcdpnldemo2.cpp", RecordViewDemoForm2);
USEFORM("DataInspectorU.cpp", DataInspectorDemo);
USEFORM("dbchecku.cpp", CustomFramingForm);
USEFORM("gridctrl.cpp", GridControlsForm);
USEFORM("GridMasterDetail.cpp", MasterDetailGridForm);
USEFORM("GridExpand.cpp", GridExpandForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	try
	{
		Application->Initialize();
		Application->CreateForm(__classid(TMainDemo), &MainDemo);
                 Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	return 0;
}
//---------------------------------------------------------------------------
