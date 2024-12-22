using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Threading;

namespace Cartable.UI
{
    public class BaseForm : System.Web.UI.Page
    {
        public Dal.UserDetails CartableUser
        {
            get
            {
                if (Session["CartableUser"] == null)
                {
                   Session.Add("CartableUser", Bll.Users.GetItemByUserName(Context.User.Identity.Name));
                }

                return (Dal.UserDetails)Session["CartableUser"];
            }
        }

        protected override void OnPreInit(EventArgs e)
        {
            DropDownList cmbStyle = (DropDownList)Master.FindControl("cmbStyle");

            try
            {
                if (Request.Form[cmbStyle.UniqueID] == null || Request.Form[cmbStyle.UniqueID] == "")
                {
                    this.Theme = (CartableUser.ECartableTheme == "" || CartableUser.ECartableTheme == null) ? "Default" : CartableUser.ECartableTheme;
                }
                else
                {
                    this.Theme = Request.Form[cmbStyle.UniqueID].ToString();
                }
            }
            catch
            {
                this.Theme = "Default";
            }
            base.OnPreInit(e);
        }

        protected override void OnLoad(EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("login.aspx");
            }

            base.OnLoad(e);
        }
    
        protected override void InitializeCulture()
        {
            //Control cmbLang = Master.FindControl("cmbLang");
            //if (Request.Form[cmbLang.UniqueID] != null)
            //{
            //    string culture = Request.Form[cmbLang.UniqueID];
            //    this.Culture = culture;
            //    Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(culture);
            //    Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(culture);
            //}
            //else
            //{
            //    Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo("en-US");
            //    Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-US");
            //}
            //base.InitializeCulture();
        }

        public void ShowAlert(string message)
        {
            //Response.Write("");
            //Response.Write("<script>\n function ShowMessage(message){\n");
            //Response.Write("    MessageBox.style.visibility='visible';\n");
            //Response.Write("    MessageBox.innerHTML=message;\n");
            //Response.Write("}\n");
            //Response.Write("ShowMessage('" + message + "');</script>");
        }
    }
}
