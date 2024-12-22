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
using Cartable.Bll.Letters;

namespace Cartable.UI
{
    public partial class LoadImage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("login.aspx");
            }

            int id = Convert.ToInt32(Request.QueryString["letterDataId"]);

            Attachment attach = Attachment.GetAttachmentByDataID(id);

            if (attach != null)
            {
                switch (attach.ExtentionType)
                {
                    case "jpg":
                        Response.ContentType = "image/jpeg";
                        break;
                    case "tif":
                        Response.ContentType = "image/tiff";
                        break;
                    case "doc":
                        Response.ContentType = "application/msword";
                        break;
                    case "txt":
                        Response.ContentType = "text/plain";
                        break;
                    case "wav":
                        Response.ContentType = "audio/basic";
                        break;
                }
                if (attach.Image != null)
                {
                    Response.OutputStream.Write(attach.Image, 0, attach.Image.Length - 1);
                }
            }
            else
            {
                Response.Write("<h4>پيوست مورد نظر يافت نشد.</h4>");
            }
        }
    }
}