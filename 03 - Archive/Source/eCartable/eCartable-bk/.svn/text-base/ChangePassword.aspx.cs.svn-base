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

namespace Cartable.UI
{
    public partial class ChangePassword : BaseForm
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bll.Users.onException += new ExceptionDelegate(Users_onException);
        }

        void Users_onException(object sender, CartableExceptionEventArgs e)
        {
            lblMessage.Text = "خطا : تغيير رمز عبور انجام نشد!";
        }

        protected void btnCancel_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        
        protected void btnOK_Click(object sender, ImageClickEventArgs e)
        {
            Dal.UserDetails user = ((BaseForm)Page).CartableUser;
            if (txtOldPass.Text == user.Password)
            {
                Bll.Users.ChangePassword(user.Id, txtOldPass.Text, txtNewPass.Text);
                lblMessage.Text = "رمز عبور به درستی تغيير يافت.";
            }
        }
}
}