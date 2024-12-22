using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cartable.UI
{
    [DefaultProperty("Message")]
    [ToolboxData("<{0}:MessageBox runat=server></{0}:MessageBox>")]
    public class MessageBox : CompositeControl , IPostBackEventHandler
    {

        #region Properties

        private Label lblMessage;
        private Label lblCaption;
        private Label lblDetails;
        private ImageButton btnOK;
        private ImageButton btnCancel;

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
                lblMessage.Text = value;
            }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string ImageUrl
        {
            get
            {
                String s = (String)ViewState["ImageUrl"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["ImageUrl"] = value;
                //EnsureChildControls();
                //imgIcon.ImageUrl = value;
            }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string OkImageUrl
        {
            get
            {
                String s = (String)ViewState["OkImageUrl"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["OkImageUrl"] = value;
                EnsureChildControls();
                btnOK.ImageUrl = value;
            }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        [Description("The URL of Image used for Cancel button")]
        public string CancelImageUrl
        {
            get
            {
                String s = (String)ViewState["CancelImageUrl"];
                return ((s == null) ? String.Empty : s);
            }

            set
            {
                ViewState["CancelImageUrl"] = value;
                EnsureChildControls();
                btnCancel.ImageUrl = value;
            }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public override bool Visible
        {
            get
            {
                return base.Visible;
            }
            set
            {
                base.Visible = value;
            }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Caption
        {
            get
            {
                String s = (String)ViewState["Caption"];
                return ((s == null) ? String.Empty : s);
            }
            set
            {
                ViewState["Caption"] = value;
                EnsureChildControls();
                lblCaption.Text = value;
            }
        }

        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        public string Details
        {
            get
            {
                String s = (String)ViewState["Details"];
                return ((s == null) ? String.Empty : s);
            }
            set
            {
                ViewState["Details"] = value;
                lblDetails.Text = value;
            }
        }

        
        #endregion

        #region Contructors

        public MessageBox()
        {

        }

        #endregion

        #region Events

        public event ImageClickEventHandler Ok;
        public event ImageClickEventHandler Cancel;

        #endregion

        #region Methods

        protected override void CreateChildControls()
        {
            Controls.Clear();

            lblMessage = new Label();
            lblMessage.ID = "lblMessage";
            lblMessage.CssClass = "DialogBoxMessage";
            this.Controls.Add(lblMessage);

            lblCaption = new Label();
            lblCaption.ID = "lblCaption";

            lblDetails = new Label();
            lblDetails.ID = "lblDetails";

            btnOK = new ImageButton();
            btnOK.AlternateText = "OK";
            btnOK.SkinID = "btnOK";
            btnOK.ID = "btnOK";
            btnOK.Click += new ImageClickEventHandler(btnOK_Click);

            btnCancel = new ImageButton();
            btnCancel.AlternateText = "Cancel";
            btnCancel.SkinID = "btnCancel";
            btnCancel.ID = "btnCancel";
            btnCancel.Click += new ImageClickEventHandler(btnCancel_Click);

            
            //divDialogBox = new System.Web.UI.HtmlControls.HtmlGenericControl("<div id='divDialogBox' class='divDialogBox' visible='false' runat='server' >");

            //divDialogBox.Controls.Add(lblMessage);
            
            //this.Controls.Add(btnOK);

            base.CreateChildControls();
        }

        void btnCancel_Click(object sender, ImageClickEventArgs e)
        {
            if (Cancel != null)
            {
                Cancel(sender, e);
            }
        }

        void btnOK_Click(object sender, ImageClickEventArgs e)
        {
            if (Ok != null)
            {
                Ok(sender,e);
            }
        }

 
        protected override void RenderContents(HtmlTextWriter writer)
        {
            //if (Page != null)
            //{
            //    Page.VerifyRenderingInServerForm(this);
            //}
            writer.WriteLine("<div id='divDialogBox' class='divDialogBox' visible='" + Visible.ToString() + "' >");
            writer.WriteLine("<div id='divDialogCaption' class='divDialogCaption'>");
            lblCaption.RenderControl(writer);
            writer.WriteLine("</div>");
            writer.WriteLine("<div class='divDialogMessage'>");
            writer.WriteLine("<img src='" + ImageUrl + "' height=50 width=50 align='absmiddle'> ");
            lblMessage.RenderControl(writer);
            writer.WriteLine("</div>");
            writer.WriteLine("<div class='divDialogDetails'> Details :");
            writer.WriteLine("<div class='divDialogDetailsMsg'>");
            lblDetails.RenderControl(writer);
            writer.WriteLine("</div>");
            writer.WriteLine("</div>");
            writer.WriteLine("<div style='position: relative; vertical-align: bottom; text-align: center;padding-bottom:5px;padding-left:5px;padding-right:5px;padding-top:5px;'>");
            string pbo = Page.ClientScript.GetPostBackEventReference(btnOK, "Ok");
            btnOK.Attributes.Add("onClick", pbo);
            btnOK.RenderControl(writer);
            btnCancel.RenderControl(writer);
            writer.WriteLine("</div>");

            writer.WriteLine("</div>");

        }

        public void Show(string message,string caption)
        {
            Message = message;
            Caption = caption;
            Visible = true;
        }

        #endregion

        #region IPostBackEventHandler Members

        void IPostBackEventHandler.RaisePostBackEvent(string eventArgument)
        {
            if (eventArgument == "Ok")
            {
                if (Ok != null)
                {
                    Ok(null, null);
                }
            }
            if (eventArgument == "Cencel")
            {
            }
        }

        #endregion
    }
}
