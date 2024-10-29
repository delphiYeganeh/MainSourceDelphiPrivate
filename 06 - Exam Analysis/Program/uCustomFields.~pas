unit uCustomFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, xpBitBtn, Mask, DBCtrls;

type
  TfrmCustomFields = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    xpBitBtn1: TxpBitBtn;
    lblApplicantCFC1: TLabel;
    lblApplicantCFC2: TLabel;
    lblApplicantCFC3: TLabel;
    lblApplicantCFC4: TLabel;
    lblApplicantCFC5: TLabel;
    edApplicantCFC1: TEdit;
    edApplicantCFC2: TEdit;
    edApplicantCFC3: TEdit;
    edApplicantCFC4: TEdit;
    edApplicantCFC5: TEdit;
    TabSheet2: TTabSheet;
    lblExamCFC1: TLabel;
    edExamCFC1: TEdit;
    edExamCFC2: TEdit;
    lblExamCFC2: TLabel;
    lblExamCFC3: TLabel;
    edExamCFC3: TEdit;
    edExamCFC4: TEdit;
    lblExamCFC4: TLabel;
    lblExamCFC5: TLabel;
    edExamCFC5: TEdit;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustomFields: TfrmCustomFields;

implementation

uses dmu, ADODB, UMainForm;

{$R *.dfm}

procedure TfrmCustomFields.xpBitBtn1Click(Sender: TObject);
begin
   with dm.sp_Update_Table_CustomFieldsCaption do
   begin
      close;
      Parameters.ParamByName('@TableName').Value := 'Applicant';
      Parameters.ParamByName('@cfc1').Value := edApplicantCFC1.Text;
      Parameters.ParamByName('@cfc2').Value := edApplicantCFC2.Text;
      Parameters.ParamByName('@cfc3').Value := edApplicantCFC3.Text;
      Parameters.ParamByName('@cfc4').Value := edApplicantCFC4.Text;
      Parameters.ParamByName('@cfc5').Value := edApplicantCFC5.Text;
      ExecProc;
   end;

   with dm.sp_Update_Table_CustomFieldsCaption do
   begin
      close;
      Parameters.ParamByName('@TableName').Value := 'Exam';
      Parameters.ParamByName('@cfc1').Value := edExamCFC1.Text;
      Parameters.ParamByName('@cfc2').Value := edExamCFC2.Text;
      Parameters.ParamByName('@cfc3').Value := edExamCFC3.Text;
      Parameters.ParamByName('@cfc4').Value := edExamCFC4.Text;
      Parameters.ParamByName('@cfc5').Value := edExamCFC5.Text;
      ExecProc;
   end;

   Close;
   MainForm.CustomFieldsRefresh;
end;

procedure TfrmCustomFields.FormShow(Sender: TObject);
begin
   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Applicant';
   dm.sp_Table_CustomFieldsCaption.Open;
   edApplicantCFC1.Text := dm.sp_Table_CustomFieldsCaptionCFC1.AsString;
   edApplicantCFC2.Text := dm.sp_Table_CustomFieldsCaptionCFC2.AsString;
   edApplicantCFC3.Text := dm.sp_Table_CustomFieldsCaptionCFC3.AsString;
   edApplicantCFC4.Text := dm.sp_Table_CustomFieldsCaptionCFC4.AsString;
   edApplicantCFC5.Text := dm.sp_Table_CustomFieldsCaptionCFC5.AsString;

   dm.sp_Table_CustomFieldsCaption.Close;
   dm.sp_Table_CustomFieldsCaption.Parameters.ParamByName('@TableName').Value := 'Exam';
   dm.sp_Table_CustomFieldsCaption.Open;
   edExamCFC1.Text := dm.sp_Table_CustomFieldsCaptionCFC1.AsString;
   edExamCFC2.Text := dm.sp_Table_CustomFieldsCaptionCFC2.AsString;
   edExamCFC3.Text := dm.sp_Table_CustomFieldsCaptionCFC3.AsString;
   edExamCFC4.Text := dm.sp_Table_CustomFieldsCaptionCFC4.AsString;
   edExamCFC5.Text := dm.sp_Table_CustomFieldsCaptionCFC5.AsString;
end;

end.
