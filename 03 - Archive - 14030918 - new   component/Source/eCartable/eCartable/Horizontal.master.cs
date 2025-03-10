using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Cartable;
using Cartable.Bll;

namespace Cartable.UI
{
    public partial class Horizontal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Context.User.Identity.IsAuthenticated)
            {
                lblWelcome.Text = Context.User.Identity.Name + " خوش آمدید.";
                lblNow.Text = Helpers.GetCurrentDate();
            }

            if (!IsPostBack)
            {
                cmbStyle.SelectedValue = ((BaseForm)Page).CartableUser.ECartableTheme;
            }
        }

        protected void btnLExit_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void btnExit_Click(object sender, ImageClickEventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void cmbStyle_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Session["Theme"] = cmbStyle.SelectedValue;
            Users.SetUserTheme(((BaseForm)Page).CartableUser.Id, cmbStyle.SelectedValue);
            ((BaseForm)Page).CartableUser.ECartableTheme = cmbStyle.SelectedValue;
        }
        protected void mainMenu_MenuItemClick(object sender, MenuEventArgs e)
        {

        }
}
}