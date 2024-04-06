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
using Cartable.Dal;
using Cartable.Bll;

namespace Cartable.UI
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Users.onException += new ExceptionDelegate(Users_onException);
        }

        void Users_onException(object sender, CartableExceptionEventArgs e)
        {
            lblMsg.Text = e.Message;
        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            string Username = txtUsername.Text.Trim();
            string Password = txtPassword.Text.Trim();

            UserDetails user = Users.Login(Username, Password);

            if (user != null)
            {
                if (user.UserName != "" & user.UserName != null)
                {
                    FormsAuthentication.SetAuthCookie(Username, false);
                    Response.Redirect("Default.aspx");
                }
                else
                    lblMsg.Text = "نام کاربري و يا رمز عبور نادرست است. دوباره تلاش نمایید.";
            }
        }
    }
}