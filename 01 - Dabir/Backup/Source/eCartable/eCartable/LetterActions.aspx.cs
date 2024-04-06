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
using Cartable.Bll;
using System.Collections.Generic;
using Cartable.Bll.Letters;
using Cartable;
using Cartable.Dal;

namespace Cartable.UI
{

    public partial class LetterActions : BaseForm
    {
        int letterId;
        int recommiteId;
        byte tabId;

        protected void Page_Load(object sender, EventArgs e)
        {
            tabId= Convert.ToByte(Request.QueryString["tabId"]);
            letterId = Convert.ToInt32(Request.QueryString["LetterId"]);
            recommiteId = Convert.ToInt32(Request.QueryString["RecommiteId"]);
              
            Recommite recommite = Recommite.GetRecommitByID(recommiteId);
            if (recommite.Proceeded)
            {
                mnuTabStrip.Items[3].Enabled = false;
            }

            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = tabId;
                mnuTabStrip.Items[tabId].Selected = true;
            }
            else
            {
                if (MultiView1.ActiveViewIndex == 2)
                {
                    MultiView1_ActiveViewChanged(null, null);
                }
            }

        }

        public bool ShowDeleteAttach()
        {
            return Users.IsInRole(CartableUser.Id, "Drop_Attach");
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

            switch (MultiView1.ActiveViewIndex)
            {
                case 0:
                    odsAttachments.SelectParameters["id"].DefaultValue = letterId.ToString();
                    imgAttach.Visible = false;

                    break;

                case 1:
                    odsRecommites.SelectParameters["letterId"].DefaultValue = letterId.ToString();
                    odsRecommites.SelectParameters["type"].DefaultValue = "3";
                    if (trvRecommites.Nodes.Count == 0)
                    {
                        MakeRecommiteTree((List<Recommite>)odsRecommites.Select(), null, true);
                        trvRecommites.Nodes[0].ExpandAll();
                    }
                    break;
                case 2:

                    Letter letter = Letter.GetLetterByID(letterId);
                    Control ctrl;
                    switch (letter.Letter_Type)
                    {
                        case 1:
                            ctrl = Page.LoadControl("Controls/IncomingLetter.ascx");
                            viwDetails.Controls.Add(ctrl);
                            break;
                        case 2:
                            ctrl = Page.LoadControl("Controls/OutgoingLetter.ascx");
                            viwDetails.Controls.Add(ctrl);
                            break;
                        case 3:
                            ctrl = Page.LoadControl("Controls/InnerLetter.ascx");
                            viwDetails.Controls.Add(ctrl);
                            break;
                    }
                    
                    break;

                case 3:
                    DataTable table = Users.GetUserArchiveFolder(CartableUser.Id);
                    trvArchiveFolder.Nodes.Clear();
                    MakeArchiveTree(table, null, true);
                    break;

                case 4:
                    DataTable history = Letter.GetLetterArchiveHistory(letterId, CartableUser.Id);
                    if (history.Rows.Count > 0)
                    {
                        grdArchiveHistory.DataSource = history;
                        grdArchiveHistory.DataBind();
                    }
                    else
                    {
                        lblHistoryMessage.Text = "اين نامه بايگاني نشده است.";
                    }
                    break;
            }
        }

        private void MakeRecommiteTree(List<Recommite> table, TreeNode root, bool isFirstNode)
        {
            TreeNode node = null;
            if (table == null) return;
            foreach (Recommite item in table)
            {
                if (isFirstNode)
                {
                    node = new TreeNode(item.RecommiterTitle, item.ID.ToString());
                    trvRecommites.Nodes.Add(node);
                    MakeRecommiteTree(table, node, false);
                    break;
                }
                else if (item.ParentId.ToString() == root.Value)
                {
                    node = new TreeNode(item.RecommiterTitle, item.ID.ToString());
                    root.ChildNodes.Add(node);
                    MakeRecommiteTree(table, node, false);
                }
            }
        }

        void MakeArchiveTree(DataTable table, TreeNode root, bool isFirstNode)
        {
            TreeNode node = null;
            if (table == null) return;
            foreach (DataRow row in table.Rows)
            {
                if (isFirstNode)
                {
                    node = new TreeNode(row["title"].ToString(), row["folderid"].ToString());
                    node.Selected = true;
                    trvArchiveFolder.Nodes.Add(node);
                    MakeArchiveTree(table, node, false);
                    break;
                }
                else if (row["parentfolderid"].ToString() == root.Value)
                {
                    node = new TreeNode(row["title"].ToString(), row["folderid"].ToString());
                    root.ChildNodes.Add(node);
                    MakeArchiveTree(table, node, false);
                }
            }
        }

        protected void btnNewAttach_Click(object sender, ImageClickEventArgs e)
        {
                int extention=0;
            if (filePage.HasFile)
            {
                string fileName = filePage.FileName;
                  string strExtention = fileName.Substring(fileName.LastIndexOf('.') + 1);
            
                extention = Attachment.GetExtentionID(strExtention);


           


            AttachmentDetails attach = new AttachmentDetails();
            attach.Extention = extention;
            attach.Image = filePage.FileBytes;
            attach.LetterID = letterId;
            attach.Description = txtDescription.Text;
            attach.PageNumber = Attachment.GetPageNumber(extention, letterId);

            Attachment.AddAttachment(attach);

            grdAttachs.DataBind();
 }
        }

        protected void grdAttachs_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //string letterDataId = grdAttachs.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text;

            switch (e.CommandName)
            {
                case "Preview":
                    imgAttach.ImageUrl = "LoadImage.aspx?letterDataId=" + e.CommandArgument;
                    //lnkAttach.NavigateUrl = "LoadImage.aspx?letterDataId=" + letterDataId;
                    //Response.Redirect("LoadImage.aspx?letterDataId=" + letterDataId);
                    imgAttach.Visible = true;
                    break;
                case "Delete":
                    odsAttachments.DeleteParameters["id"].DefaultValue = e.CommandArgument.ToString();
                    break;
            }
        }

        protected void mnuTabStrip_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiView1.ActiveViewIndex = Convert.ToInt32(e.Item.Value);
        }

        protected void btnReturn_Click(object sender, ImageClickEventArgs e)
        {
           Response.Redirect("Default.aspx");
        }

        protected void trvRecommites_SelectedNodeChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(trvRecommites.SelectedValue);
            List<Recommite> recommites = (List<Recommite>)odsRecommites.Select();
            foreach (Recommite item in recommites)
            {
                if (item.ID == id)
                {
                    txtRecommiteDate.Text = item.RecommiteDate;
                    txtParaph.Text = item.Paraph;
                    chkReadOnly.Checked = item.IsCopy;
                    chkProceeded.Checked = item.Proceeded;
                    break;
                }
            }
        }

        protected void btnArchiveLetter_Click(object sender, ImageClickEventArgs e)
        {
            Recommite.ArchiveRecommite(recommiteId,Convert.ToInt32(trvArchiveFolder.SelectedValue), Helpers.GetCurrentDate(), 1,"", txtArchiveNote.Text);
            Response.Redirect("default.aspx");
        }
        protected void grdAttachs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}