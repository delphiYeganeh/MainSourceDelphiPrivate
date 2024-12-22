using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Cartable.Bll;
using Cartable.Dal;
using Cartable.Bll.Letters;

namespace Cartable.UI.Controls
{
    public partial class InnerLetter : System.Web.UI.UserControl
    {
        int letterId;
        int indicatorid;

        protected void Page_Load(object sender, EventArgs e)
        {
            letterId = Convert.ToInt32(Page.Request.QueryString["letterId"]);
            
            if (!Users.IsInRole(((BaseForm)Page).CartableUser.Id, "Inner") && letterId ==0 )
            {
                Response.Write(@"<div dir='rtl' style='text-align:center;font-family:tahoma;font-size:14px;'>شما به اين صفحه دسترسی نداريد!<a href='default.aspx'> بازگشت ...</a></div>");
                Response.End();
            }

            if (!IsPostBack)
            {
                
                cmbFromOrg.DataSource = FromOrganizations.GetFromOrganization();
                cmbFromOrg.DataTextField = "Title";
                cmbFromOrg.DataValueField = "Id";
                cmbFromOrg.DataBind();

                if (letterId != 0)
                {
                    Letter letter = Letter.GetLetterByID(letterId);

                    //ChangeDetailsView(letter.Letter_Type);
                    lblIndicator.Text = letter.IndicatorID.ToString();
                    lblRegistrationDate.Text = letter.RegistrationDate;
                    txtFromStaffer.Text = letter.Fromstaffer;
                    cmbFromOrg.SelectedValue = letter.FromOrgID.ToString();
                    //txtIncommingNo.Text = letter.IncommingNO;
                    //txtIncommingDate.Text = letter.Incommingdate;
                    txtMemo.Text = letter.Html;
                    //txtCenterNo.Text = letter.CenterNo;
                    //txtCenterDate.Text = letter.CenterDate;
                    txtUserMemo.Text = letter.UserMemo;
                    lblUserName.Text = Users.GetItemById(letter.UserID).Title;
                    indicatorid = letter.IndicatorID;
                }
            }

            BaseForm page = (BaseForm)Page;
            cmbFromOrg.SelectedValue= page.CartableUser.FromOrgID.ToString();
        }

        protected void btnCancel_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Default.aspx");
        }

        protected void btnOK_Click(object sender, ImageClickEventArgs e)
        {
            BaseForm page = (BaseForm)Page;
            letterId = Letter.AddInnerLetter(txtMemo.Text, page.CartableUser.Id, txtUserMemo.Text, txtMemo.Text);
            if (letterId != 0)
            {
                 lblMessage.Text = "نامه داخلی با موفقیت با شماره  " + letterId.ToString() + " افزوده شد. ";
            }
            else
            {
                lblMessage.Text = "نامه داخلی افزوده نشد.";
            }
        }
    }
}