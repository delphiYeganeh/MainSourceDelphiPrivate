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
using System.Collections.Generic;
using Cartable.Dal;
using Cartable.Bll;
using Cartable.Bll.Letters;

namespace Cartable.UI
{
    public partial class Recommites : BaseForm
    {
        int recommiteId;
        Recommite recommite;

        protected void Page_Load(object sender, EventArgs e)
        {

            recommiteId = Convert.ToInt32(Request.QueryString["Id"]);
            recommite = Recommite.GetRecommitByID(recommiteId);

            if (!IsPostBack)
            {

                List<FromOrganizationDetails> organs = FromOrganizations.GetFromOrganization();
                MakeOrgChart(organs, null, true);
            }
        }

        void MakeOrgChart(List<FromOrganizationDetails> table, TreeNode root, bool isFirstNode)
        {
            TreeNode node = null;
            if (table == null) return;
            foreach (FromOrganizationDetails item in table)
            {
                if (isFirstNode)
                {
                    node = new TreeNode(item.Title, item.ID.ToString());
                    trvOrgChart.Nodes.Add(node);
                    MakeOrgChart(table, node, false);
                    break;
                }
                else if (item.ParentID.ToString() == root.Value)
                {
                    node = new TreeNode(item.Title, item.ID.ToString());
                    root.ChildNodes.Add(node);
                    MakeOrgChart(table, node, false);
                }
            }
        }

        protected void btnOK_Click(object sender, ImageClickEventArgs e)
        {
            RecommitDetails item = new RecommitDetails();

            if (chkArchived.Checked)
            {
                Recommite.ProceedRecommite(recommiteId);
            }
            foreach (TreeNode node in trvOrgChart.CheckedNodes)
            {
                item.LetterID = recommite.LetterID;
                item.OrgID = Convert.ToInt32(node.Value);
                item.Paraph = txtParaph.Text;
                item.DeadLineDate = txtDeadline.Text;
                item.IsCopy = chkReadOnly.Checked;
                //item.Proceeded = chkArchived.Checked;
                item.RecommiteID = recommiteId;
                item.Type = recommite.Type;
                item.RecommiteDate = Helpers.GetCurrentDate();
                item.ParentId = recommite.ID;
                item.UserID = CartableUser.Id;

                if (Bll.Letters.Recommite.AddRecommit(item))
                {
                    lblMessage.Text = "ارجاع بدرستی انجام شد.";
                }
                else
                {
                    lblMessage.Text = "ارجاع انجام نشد.";
                }
            }
            btnCancel_Click(null, null);
        }

        protected void btnCancel_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
}
}