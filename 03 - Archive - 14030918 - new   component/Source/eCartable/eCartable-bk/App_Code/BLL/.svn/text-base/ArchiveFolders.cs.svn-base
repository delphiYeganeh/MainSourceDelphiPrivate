using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Cartable.Dal;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Cartable.Bll
{
    public class ArchiveFolders : BllObject
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

        #region Events

        public static event ExceptionDelegate onException;

        #endregion

        #region Constructors

        public ArchiveFolders()
            : base(typeof(ArchiveFolders).Name)
        {
        }

        public ArchiveFolders(int folderId, int parentFolderId, string title, int userId, string notes, string place)
            : base(typeof(ArchiveFolders).Name)
        {
            this.FolderId = folderId;
            this.ParentFolderId = parentFolderId;
            this.Title = title;
            this.UserId = userId;
            this.Notes = notes;
            this.Place = place;
        }

        #endregion

        protected static Object Instance
        {
            get
            {
                Object _instance = Activator.CreateInstance(System.Type.GetType(Globals.Settings.Providers[Globals.Settings.ConnectionProviderName].TypeItems[TypeName].type));
                return _instance;
            }
        }

        #region Static Members

        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }

        private static ArchiveFolders GetArchiveFolderFromDetail(ArchiveFolderDetails detail)
        {
            if (detail != null)
            {
                return new ArchiveFolders(detail.FolderId, detail.ParentFolderId, detail.Title, detail.UserId, detail.Notes, detail.Place);
            }
            else
            {
                return null;
            }
        }

        private static List<ArchiveFolders> GetArchiveFolderListFromDetails(List<ArchiveFolderDetails> details)
        {
            List<ArchiveFolders> list = new List<ArchiveFolders>();
            if (details != null)
            {
                foreach (ArchiveFolderDetails item in details)
                {
                    list.Add(GetArchiveFolderFromDetail(item));
                }
            }
            return list;
        }

        public static List<ArchiveFolders> GetAllArchiveFolders()
        {
            try
            {
                return GetArchiveFolderListFromDetails(((ArchiveFolderProvider)Instance).GetAll());
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

        public static List<ArchiveFolders> GetArchiveFolderByUserId(int userId)
        {
            try
            {
                return GetArchiveFolderListFromDetails(((ArchiveFolderProvider)Instance).GetAll(userId));
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

        public static ArchiveFolders GetArchiveFolderByID(Int32 id)
        {

            try
            {
                return GetArchiveFolderFromDetail(((ArchiveFolderProvider)Instance).GetItemById(id));
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

        public static List<ArchiveFolders> GetChilds(int parentId)
        {
            try
            {
                return GetArchiveFolderListFromDetails(((ArchiveFolderProvider)Instance).GetChilds(parentId));
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

        public static bool AddArchiveFolder(ArchiveFolderDetails item)
        {

            {
                try
                {
                    return ((ArchiveFolderProvider)Instance).Add(item);
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

        public static bool UpdateArchiveFolder(ArchiveFolderDetails item)
        {
            {
                try
                {
                    return ((ArchiveFolderProvider)Instance).Update(item);
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

        public static bool DeleteArchiveFolder(ArchiveFolderDetails item)
        {
            {
                try
                {
                    return ((ArchiveFolderProvider)Instance).Delete(item);
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

        public static bool DeleteArchiveFolder(Int32 Id)
        {
            {
                try
                {
                    return ((ArchiveFolderProvider)Instance).Delete(Id);
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