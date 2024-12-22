using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using Cartable.Dal;

namespace Cartable.Bll.Letters
{
    public class Attachment : BllObject
    {
        #region Fields

        int _letterDataID;
        int _letterID;
        byte _pageNumber;
        byte[] _image;
        byte _extention;
        string _description;
        DateTime _lastUpdate;
        string _extentionTitle;
        string _extentionType;

        #endregion

        #region Properties

        public int LetterDataID
        {
            get { return _letterDataID; }
           // set { _letterDataID = value; }
        }

        public int LetterID
        {
            get { return _letterID; }
            //set { _letterID = value; }
        }

        public byte PageNumber
        {
            get { return _pageNumber; }
            //set { _pageNumber = value; }
        }

        public byte[] Image
        {
            get { return _image; }
            //set { _image = value; }
        }

        public byte Extention
        {
            get { return _extention; }
            //set { _extention = value; }
        }

        public string Description
        {
            get { return _description; }
            //set { _description = value; }
        }

        public DateTime LastUpdate
        {
            get { return _lastUpdate; }
            //set { _lastUpdate = value; }
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

        #region Events

        public static event ExceptionDelegate onException;

        #endregion

        #region Constructors

        public Attachment()
            : base(typeof(Attachment).Name)
        {
        }

        public Attachment
        (
            int letterDataID,
            int letterID,
            byte pageNumber,
            byte[] image,
            byte extention,
            string description,
            DateTime lastUpdate,
            string extentionTitle,
            string extentionType)
            : base(typeof(Attachment).Name)
        {
            this._letterDataID = letterDataID;
            this._letterID = letterID;
            this._pageNumber = pageNumber;
            this._image = image;
            this._extention = extention;
            this._description = description;
            this._lastUpdate = lastUpdate;
            this._extentionTitle = extentionTitle;
            this._extentionType = extentionType;
        }

        #endregion

        #region Methods

        public bool Add()
        {
            AttachmentDetails item = new AttachmentDetails();
            item.LetterID = this.LetterID;
            item.PageNumber=this.PageNumber;
            item.Image=this.Image;
            item.Extention=this.Extention;
            item.Description=this.Description;
            item.LastUpdate=this.LastUpdate;

            return AddAttachment(item);
        }

        public bool Update()
        {
            AttachmentDetails item = new AttachmentDetails();
            item.LetterDataID = this.LetterDataID;
            item.LetterID = this.LetterID;
            item.PageNumber = this.PageNumber;
            item.Image = this.Image;
            item.Extention = this.Extention;
            item.Description = this.Description;
            item.LastUpdate = this.LastUpdate;


            return UpdateAttachment(item);
        }

        public bool Delete()
        {
            AttachmentDetails item = new AttachmentDetails();
            item.LetterDataID = this.LetterDataID;

            return DeleteAttachment(item);
        }

        public AttachmentDetails GetItem(Int32 id)
        {
            try
            {
                return ((AttachmentProvider)Instance).GetItemById(id);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

        #endregion

        protected static Object Instance
        {
            get
            {
                Object _instance = Activator.CreateInstance(Type.GetType(Globals.Settings.Providers[Globals.Settings.ConnectionProviderName].TypeItems[TypeName].type));
                return _instance;
            }
        }

        #region Static Members

        public static List<Attachment> GetAttachments()
        {
            try
            {
                return GetAttachmentListFromAttachmentDetails(((AttachmentProvider)Instance).GetAll());
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

        public static Attachment GetAttachmentByDataID(Int32 id)
        {

            try
            {
                return GetAttachmentFromAttachmentDetails(((AttachmentProvider)Instance).GetItemById(id));
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

        //public static List<AttachmentDetails> GetAttachmentListFromReader(IDataReader reader)
        //{
        //    return null;
        //}

        private static Attachment GetAttachmentFromAttachmentDetails(AttachmentDetails detail)
        {
            if (detail != null)
                return new Attachment(detail.LetterDataID, detail.LetterID, detail.PageNumber, detail.Image, detail.Extention, detail.Description, detail.LastUpdate,detail.ExtentionTitle,detail.ExtentionType);
            else
                return null;
        }

        private static List<Attachment> GetAttachmentListFromAttachmentDetails(List<AttachmentDetails> details)
        {
            List<Attachment> list = new List<Attachment>();
            foreach (AttachmentDetails item in details)
            {
                list.Add(GetAttachmentFromAttachmentDetails(item));
            }
            return list;
        }

        public static List<Attachment> GetAllAttachmentByLetterId(Int32 id, string sortExpression)
        {
            try
            {
                return GetAttachmentListFromAttachmentDetails(((AttachmentProvider)Instance).GetAllByLetterId(id, sortExpression));
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

        public static byte GetPageNumber(FileExtentions extention, int letterId)
        {
            try
            {
                return ((AttachmentProvider)Instance).GetPageNumber(extention,letterId);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return 0;
            }
        }

        public static bool AddAttachment(AttachmentDetails item)
        {

            {
                try
                {
                    return ((AttachmentProvider)Instance).Add(item);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    return false;
                }
            }
        }

        public static bool UpdateAttachment(AttachmentDetails item)
        {
            {
                try
                {
                    return ((AttachmentProvider)Instance).Update(item);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    return false;
                }
            }
        }

        public static bool DeleteAttachment(AttachmentDetails item)
        {
            {
                try
                {
                    return ((AttachmentProvider)Instance).Delete(item);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    return false;
                }
            }
        }

        public static bool DeleteAttachment(Int32 Id)
        {
            {
                try
                {
                    return ((AttachmentProvider)Instance).Delete(Id);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    return false;
                }
            }
        }

        #endregion

    }
}
