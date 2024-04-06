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
    public partial class OutgoingLetter : System.Web.UI.UserControl
    {
        #region Properties

        private int LetterId
        {
            get { return (int)ViewState["lettId"]; }
            set { ViewState["lettId"] = value; }
        }

        private int RecommiteId
        {
            get { return (int)ViewState["recommiteId"]; }
            set { ViewState["recommiteId"] = value; }
        }

        int IndicatorId
        {
            get { return (int)ViewState["indicatorId"]; }
            set { ViewState["indicatorId"] = value; }
        }

        int letterId;
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            letterId = Convert.ToInt32(Page.Request.QueryString["letterId"]);

            switch (Request.QueryString["mode"])
            {
                case "Sent":
                    if (!Users.IsInRole(((BaseForm)Page).CartableUser.Id, "Outgoing") && letterId==0) 
                    {
                        Response.Write(@"<div dir='rtl' style='text-align:center;font-family:tahoma;font-size:14px;'>شما به اين صفحه دسترسی نداريد!<a href='default.aspx'> بازگشت ...</a></div>");
                        Response.End();
                    }
                    break;
                case "Draft":
                    if (!Users.IsInRole(((BaseForm)Page).CartableUser.Id, "Draft") && letterId == 0)  
                    {
                        Response.Write(@"<div dir='rtl' style='text-align:center;font-family:tahoma;font-size:14px;'>شما به اين صفحه دسترسی نداريد!<a href='default.aspx'> بازگشت ...</a></div>");
                        Response.End();
                    }
                    break;
            }

            if (!IsPostBack)
            {
                cmbClassification.DataSource = Helpers.GetClassifications();
                cmbClassification.DataTextField = "Title";
                cmbClassification.DataValueField = "Id";
                cmbClassification.DataBind();

                cmbRecieveType.DataSource = Helpers.GetReceiveTypes();
                cmbRecieveType.DataTextField = "Title";
                cmbRecieveType.DataValueField = "Id";
                cmbRecieveType.DataBind();

                cmbUrgancy.DataSource = Helpers.GetUrgenceis();
                cmbUrgancy.DataTextField = "Title";
                cmbUrgancy.DataValueField = "Id";
                cmbUrgancy.DataBind();

                cmbFromOrg.DataSource = FromOrganizations.GetFromOrganization();
                cmbFromOrg.DataTextField = "Title";
                cmbFromOrg.DataValueField = "Id";
                cmbFromOrg.DataBind();
                cmbFromOrg.Attributes.Add("onChange", "ToOrgChanged(" + cmbFromOrg.ClientID +"," + txtFromStaffer.ClientID + ")");

                //cmbToOrg.DataSource = FromOrganizations.GetOuterFromOrganization();
                //cmbToOrg.DataTextField = "Title";
                //cmbToOrg.DataValueField = "Id";
                //cmbToOrg.DataBind();
                //cmbToOrg.Attributes.Add("onChange", "ToOrgChanged(" + cmbToOrg.ClientID +"," + txtToStaffer.ClientID + ")");
                //txtToStaffer.Text = cmbToOrg.SelectedValue;
            }
            if (letterId != 0)
            {
                LetterId = letterId;
                Letter letter = Letter.GetLetterByID(LetterId);

                if (Request.QueryString["mode"] == "Answer")
                {
                    if (letter.SentLetterID != 0)
                    {
                        LetterId = letter.SentLetterID;
                        letter = Letter.GetLetterByID(LetterId);
                    }
                }

                lblIndicator.Text = letter.IndicatorID.ToString();
                lblRegistrationDate.Text = letter.RegistrationDate;
                txtFromStaffer.Text = letter.Fromstaffer;
                cmbFromOrg.SelectedValue = letter.FromOrgID.ToString();
                txtToStaffer.Text = letter.ToStaffer;
                //cmbToOrg.SelectedValue = letter.ToOrgID.ToString();
                ReadOnlyAll();

                if (Request.QueryString["mode"] == "Answer")
                {
                    txtRetroactionNo.Text = letter.IncommingNO;
                }
                else
                {
                    txtRetroactionNo.Text = letter.RetroactionNo;
                }
                txtFollowLetterNo.Text = letter.FollowLetterNo;
                txtMemo.Text = letter.Memo;
                txtUserMemo.Text = letter.UserMemo;
                cmbClassification.SelectedValue = letter.ClassificationID.ToString();
                cmbRecieveType.SelectedValue = letter.ReceiveTypeID.ToString();
                cmbUrgancy.SelectedValue = letter.UrgencyID.ToString();
                lblUserName.Text = Users.GetItemById(letter.UserID).Title;

            }
            else
            {
                cmbFromOrg.SelectedValue = ((BaseForm)Page).CartableUser.FromOrgID.ToString();
                //cmbFromOrg.Enabled = false;
            }
        }

        private void ReadOnlyAll()
        {
            foreach (Control item in this.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).ReadOnly = true;
                }
                if (item is Panel)
                {
                    foreach (Control item2 in item.Controls)
                    {
                        if (item2 is TextBox)
                        {
                            ((TextBox)item2).ReadOnly = true;
                        }
                        if (item2 is DropDownList)
                        {
                            ((DropDownList)item2).Enabled = false;
                        }
                    }
                }
            }
            btnOK.Visible = false;
        }

        protected void btnCancel_Click(object sender, ImageClickEventArgs e)
        {
            Server.Transfer("Default.aspx");
        }

        protected void btnOK_Click(object sender, ImageClickEventArgs e)
        {
            BaseForm page = (BaseForm)Page;
            int indicatorId;
            int recommiteId;

            switch (Request.QueryString["mode"])
            {
                case "Answer":
                    LetterId = Letter.AddLetterAnswer(txtToStaffer.Text, "", Convert.ToByte(cmbClassification.SelectedValue), Convert.ToInt16(cmbUrgancy.SelectedValue), txtMemo.Text, page.CartableUser.Id, txtRetroactionNo.Text, txtUserMemo.Text, txtFollowLetterNo.Text, txtToStaffer.Text, txtFromStaffer.Text, Convert.ToInt32(cmbFromOrg.SelectedValue), LetterId, out indicatorId, out recommiteId);
                    break;
                case "Sent":
                    LetterId = Letter.AddSentLetter(txtToStaffer.Text, "", Convert.ToByte(cmbClassification.SelectedValue), Convert.ToInt16(cmbUrgancy.SelectedValue), txtMemo.Text, page.CartableUser.Id, txtRetroactionNo.Text, txtUserMemo.Text, txtFollowLetterNo.Text, txtToStaffer.Text, txtFromStaffer.Text,Convert.ToInt32(cmbFromOrg.SelectedValue),Convert.ToByte(txtPageCount.Text),Convert.ToByte(cmbRecieveType.SelectedValue), out indicatorId, out recommiteId);
                    IndicatorId = indicatorId;
                    RecommiteId = recommiteId;
                    break;
                case "Draft":
                    LetterId = Letter.AddDraft(txtToStaffer.Text, "", Convert.ToByte(cmbClassification.SelectedValue), Convert.ToInt16(cmbUrgancy.SelectedValue), txtMemo.Text, page.CartableUser.Id, txtRetroactionNo.Text, txtUserMemo.Text, txtFollowLetterNo.Text, txtToStaffer.Text, txtFromStaffer.Text, out indicatorId, out recommiteId);
                    IndicatorId = indicatorId;
                    RecommiteId = recommiteId;
                    break;
            }

            if (LetterId != 0)
            {
                lblMessage.Text = "نامه با موفقیت با شماره  " + IndicatorId.ToString() + " افزوده شد. ";
                btnOK.Visible = false;
                btnAttach.Visible = true;
                btnRecommite.Visible = true;
            }
            else
            {
                lblMessage.Text = "نامه افزوده نشد.";
            }
        }

        protected void btnAttach_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LetterActions.aspx?letterId=" + LetterId.ToString() + "&recommiteId=" + RecommiteId.ToString() + "&tabId=0");
        }

        protected void btnRecommite_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Recommites.aspx?Id=" + RecommiteId.ToString());
        }
}
}