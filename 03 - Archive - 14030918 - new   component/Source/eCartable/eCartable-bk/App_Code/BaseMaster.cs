using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Cartable.UI
{
    public class BaseMaster : System.Web.UI.MasterPage
    {

        //protected override void CreateChildControls()
        //{
        //    UI.MessageBox ctrl = new MessageBox();
        //    //ctrl.Ok += new ImageClickEventHandler(ctrl_Ok);
        //    ctrl.ID = "MessageBox";

        //    Page.Controls.Add(ctrl);

        //    base.CreateChildControls();
        //}

        //public UI.MessageBox MessageBox
        //{
        //    get
        //    {
        //        return (UI.MessageBox)Page.FindControl("MessageBox");
        //    }
        //}

    }
}
