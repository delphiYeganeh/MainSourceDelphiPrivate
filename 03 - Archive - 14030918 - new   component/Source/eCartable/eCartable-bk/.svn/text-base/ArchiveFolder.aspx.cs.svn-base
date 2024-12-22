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
using System.Collections.Generic;
using Cartable.Bll;
using Cartable.Dal;

namespace Cartable.UI
{
    public partial class ArchiveFolder : BaseForm
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArchiveFolders.onException += new ExceptionDelegate(ArchiveFolders_onException);

            if (!IsPostBack)
            {
                BindArchiveTree();
                trvArchiveFolder_SelectedNodeChanged(null, null);
            }
        }

        void ArchiveFolders_onException(object sender, CartableExceptionEventArgs e)
        {
            ShowAlert("خطا : " + e.Message);
        }


        private void BindArchiveTree()
        {
            DataTable table = Users.GetUserArchiveFolder(CartableUser.Id);
            trvArchiveFolder.Nodes.Clear();
            MakeArchiveTree(table, null, true);
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

        protected void btnNewFolder_Click(object sender, ImageClickEventArgs e)
        {
            ArchiveFolderDetails folder = new ArchiveFolderDetails();
            folder.Title = txtTitle.Text;
            folder.Place = txtPlace.Text;
            folder.Notes = txtNotes.Text;
            folder.UserId = CartableUser.Id;

            if (trvArchiveFolder.SelectedNode != null)
            {
                folder.ParentFolderId = Convert.ToInt32(trvArchiveFolder.SelectedValue);
                if (ArchiveFolders.AddArchiveFolder(folder))
                {
                    lblMessage.Text = "پرونده بايگانی به درستی افزوده شد.";
                    BindArchiveTree();
                }
                else
                {
                    lblMessage.Text = "پرونده بايگانی افزوده نشد!!";
                }
            }
            else
            {
                if (trvArchiveFolder.Nodes.Count == 0)
                {
                    folder.ParentFolderId = 0;
                    if (ArchiveFolders.AddArchiveFolder(folder))
                    {
                        lblMessage.Text = "پرونده بايگانی به درستی افزوده شد.";
                        BindArchiveTree();
                    }
                    else
                    {
                        lblMessage.Text = "پرونده بايگانی افزوده نشد!!";
                    }
                }
            }
        }

        protected void btnDeleteFolder_Click(object sender, ImageClickEventArgs e)
        {
            if (trvArchiveFolder.SelectedNode != null)
            {
                int id = Convert.ToInt32(trvArchiveFolder.SelectedValue);
                List<ArchiveFolders> childs = ArchiveFolders.GetChilds(id);
                if (childs.Count > 0)
                {
                    ShowAlert("ابتدا زیر شاخه های این شاخه را پاک کنید.");
                }
                else if (ArchiveFolders.DeleteArchiveFolder(id))
                {
                    BindArchiveTree();
                }
            }
        }

        protected void trvArchiveFolder_SelectedNodeChanged(object sender, EventArgs e)
        {
            ArchiveFolders folder = ArchiveFolders.GetArchiveFolderByID(Convert.ToInt32(trvArchiveFolder.SelectedValue));
            txtTitle.Text = folder.Title;
            txtPlace.Text = folder.Place;
            txtNotes.Text = folder.Notes;
        }

        protected void btnEditFolder_Click(object sender, ImageClickEventArgs e)
        {
            ArchiveFolderDetails item = new ArchiveFolderDetails();
            item.Title = txtTitle.Text;
            item.Notes = txtNotes.Text;
            item.Place = txtPlace.Text;
            item.FolderId = Convert.ToInt32(trvArchiveFolder.SelectedValue);

            if (ArchiveFolders.UpdateArchiveFolder(item))
            {
                lblMessage.Text = "پرونده بايگانی به درستی ویرایش شد.";
            }
            else
            {
                lblMessage.Text = "پرونده بايگانی ویرایش نشد!!";
            }
        }

        protected void btnCancelArchive_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
}
}