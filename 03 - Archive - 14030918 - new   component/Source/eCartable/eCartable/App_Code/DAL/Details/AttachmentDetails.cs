using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Cartable.Bll;


namespace Cartable.Dal
{

    public class AttachmentDetails
    {
        #region Properties

        int _letterDataID;
        int _letterID;
        int _pageNumber;
        byte[] _image;
        int _extention;
        string _description;
        DateTime _lastUpdate;
        string _extentionTitle;
        string _extentionType;

        public int LetterDataID
        {
            get { return _letterDataID; }
            set { _letterDataID = value; }
        }

        public int LetterID
        {
            get { return _letterID; }
            set { _letterID = value; }
        }

        public int PageNumber
        {
            get { return _pageNumber; }
            set { _pageNumber = value; }
        }

        public byte[] Image
        {
            get { return _image; }
            set { _image = value; }
        }

        public int Extention
        {
            get { return _extention; }
            set { _extention = value; }
        }

        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public DateTime LastUpdate
        {
            get { return _lastUpdate; }
            set { _lastUpdate = value; }
        }

        public string ExtentionTitle
        {
            get { return _extentionTitle; }
        }

        public string ExtentionType
        {
            get { return _extentionType; }
        }

        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }

        #endregion

        #region Constructors

        public AttachmentDetails()
        {
        }

        public AttachmentDetails
        (
            int letterID,
            int pageNumber,
            byte[] image,
            byte extention,
            string description,
            DateTime lastUpdate,
            string extentionTitle,
            string extentionType)
        {
            this._letterID = letterID;
            this._pageNumber = pageNumber;
            this._image = image;
            this._extention = extention;
            this._description = description;
            this._lastUpdate = lastUpdate;
            this._extentionTitle = extentionTitle;
            this._extentionType = extentionType;
        }

        public AttachmentDetails
        (
            int letterDataID,
            int letterID,
            int pageNumber,
            byte[] image,
            byte extention,
            string description,
            DateTime lastUpdate,
            string extentionTitle,
            string extentionType)
        {
            this._letterID = letterID;
            this._letterDataID = letterDataID;
            this._pageNumber = pageNumber;
            this._image = image;
            this._extention = extention;
            this._description = description;
            this._lastUpdate = lastUpdate;
            this._extentionTitle = extentionTitle;
            this._extentionType = extentionType;
        }

        #endregion
    }
}
