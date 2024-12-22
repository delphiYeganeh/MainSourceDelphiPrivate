using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.ComponentModel;

namespace Cartable.UI.Controls
{
    [DefaultProperty("Message")]
    [ToolboxData("<{0}:ClientDialogBox runat=server></{0}:ClientDialogBox>")]
    public class ClientDialogBox : CompositeControl, IPostBackEventHandler
    {
        #region Properties

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Message
        {
            get
            {
                String s = (String)ViewState["Message"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["Message"] = value;
                EnsureChildControls();
                //lblMessage.Text = value;
            }
        }

        #endregion

        #region Contructors

        public ClientDialogBox()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        #endregion


        #region Methods

        protected override void AddAttributesToRender(HtmlTextWriter writer)
        {
            base.AddAttributesToRender(writer);
        }

        public override void RenderControl(HtmlTextWriter writer)
        {
            writer.RenderBeginTag("div");
            writer.WriteAttribute("class", "messageBox");
            writer.RenderBeginTag("span");
            writer.Write(Message);
            writer.RenderEndTag();
            writer.RenderEndTag();
            base.RenderControl(writer);
        }

        #endregion

        #region IPostBackEventHandler Members

        public void RaisePostBackEvent(string eventArgument)
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}