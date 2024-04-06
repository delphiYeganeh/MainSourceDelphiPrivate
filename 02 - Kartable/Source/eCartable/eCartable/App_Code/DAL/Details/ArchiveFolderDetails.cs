using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Cartable.Dal
{
    public class ArchiveFolderDetails
    {
        #region Fields

        int _folderId;
        int _parentFolderId;
        string _title;
        int _userId;
        string _notes;
        string _place;

        #endregion

        #region Properties

        public int FolderId
        {
            set { _folderId = value; }
            get { return _folderId; }
        }

        public int ParentFolderId
        {
            set { _parentFolderId = value; }
            get { return _parentFolderId; }
        }

        public string Title
        {
            set { _title = value; }
            get { return _title; }
        }

        public int UserId
        {
            set { _userId = value; }
            get { return _userId; }
        }

        public string Notes
        {
            set { _notes = value; }
            get { return _notes; }
        }

        public string Place
        {
            set { _place = value; }
            get { return _place; }
        }


        #endregion

        #region Constructor

        public ArchiveFolderDetails()
        {
        }

        public ArchiveFolderDetails(int folderId,int parentFolderId, string title, int userId, string notes, string place)
        {
            this.FolderId = folderId;
            this.ParentFolderId = parentFolderId;
            this.Title = title;
            this.UserId = userId;
            this.Notes = notes;
            this.Place = place;
        }

        #endregion
    }
}