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
using Cartable;
using Cartable.Bll;
using Cartable.Dal;

namespace Cartable.UI
{
    public partial class Container : BaseForm
    {
        string pageName;

        protected void Page_Load(object sender, EventArgs e)
        {
            //ShowAlert("This is Test");            
            pageName = Request.QueryString["page"];

            Control ctrl = Page.LoadControl("Controls\\" + pageName + ".ascx");
            if (ctrl != null)
            {
                placeHolder.Controls.Add(ctrl);
            }

        }
    }
}