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

namespace Cartable.Bll.Letters
{
    public class Recommite : BllObject
    {
        #region Fields

        int _recommiteID;
        int _letterID;
        Int16 _id;
        byte _type;
        Int16 _parentId;
        int _orgID;
        string _paraph;
        string _recommiteDate;
        string _recommiterTitle;
        int _userID;
        Boolean _isCopy;
        Boolean _proceeded;
        string _proceedDate;
        string _staffmemo;
        string _viewdate;
        string _orgStaff;
        string _deadLineDate;

        #endregion

        #region Properties

        public int RecommiteID
        {
            get { return _recommiteID; }
            set { _recommiteID = value; }
        }

        public int LetterID
        {
            get { return _letterID; }
            set { _letterID = value; }
        }

        public Int16 ID
        {
            get { return _id; }
            set { _id = value; }
        }

        public byte Type
        {
            get { return _type; }
            set { _type = value; }
        }

        public Int16 ParentId
        {
            get { return _parentId; }
            set { _parentId = value; }
        }

        public int OrgID
        {
            get { return _orgID; }
            set { _orgID = value; }
        }

        public string Paraph
        {
            get { return _paraph; }
            set { _paraph = value; }
        }

        public string RecommiteDate
        {
            get { return _recommiteDate; }
            set { _recommiteDate = value; }
        }

        public string RecommiterTitle
        {
            get { return _recommiterTitle; }
            set { _recommiterTitle = value; }
        }

        public int UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        public Boolean IsCopy
        {
            get { return _isCopy; }
            set { _isCopy = value; }
        }

        public Boolean Proceeded
        {
            get { return _proceeded; }
            set { _proceeded = value; }
        }

        public string ProceedDate
        {
            get { return _proceedDate; }
            set { _proceedDate = value; }
        }

        public string Staffmemo
        {
            get { return _staffmemo; }
            set { _staffmemo = value; }
        }

        public string Viewdate
        {
            get { return _viewdate; }
            set { _viewdate = value; }
        }

        public string OrgStaff
        {
            get { return _orgStaff; }
            set { _orgStaff = value; }
        }

        public string DeadLineDate
        {
            get { return _deadLineDate; }
            set { _deadLineDate = value; }
        }

        #endregion

        #region Events

        public static event ExceptionDelegate onException;

        #endregion

        #region Constructors

        public Recommite()
            : base(typeof(Recommite).Name)
        {
        }

        public Recommite
        (
        int recommiteID,
        int letterID,
        Int16 id,
        byte type,
        Int16 parentId,
        int orgID,
        string paraph,
        string recommiteDate,
        int userID,
        Boolean isCopy,
        Boolean proceeded,
        string proceedDate,
        string staffmemo,
        string viewdate,
        string orgStaff,
        string deadLineDate,
        string recommiterTitle)
            : base(typeof(Recommite).Name)
        {
            this.RecommiteID = recommiteID;
            this.LetterID = letterID;
            this.ID = id;
            this.Type = type;
            this.ParentId = parentId;
            this.OrgID = orgID;
            this.Paraph = paraph;
            this.RecommiteDate = recommiteDate;
            this.UserID = userID;
            this.IsCopy = isCopy;
            this.Proceeded = proceeded;
            this.ProceedDate = proceedDate;
            this.Staffmemo = staffmemo;
            this.Viewdate = viewdate;
            this.OrgStaff = orgStaff;
            this.DeadLineDate = deadLineDate;
            this.RecommiterTitle = recommiterTitle;
        }

        #endregion

        #region Methods

        public bool Add()
        {
            RecommitDetails item = new RecommitDetails();
            item.LetterID = this.LetterID;
            item.ID = this.ID;
            item.Type = this.Type;
            item.ParentId = this.ParentId;
            item.OrgID = this.OrgID;
            item.Paraph = this.Paraph;
            item.RecommiteDate = this.RecommiteDate;
            item.UserID = this.UserID;
            item.IsCopy = this.IsCopy;
            item.Proceeded = this.Proceeded;
            item.ProceedDate = this.ProceedDate;
            item.Staffmemo = this.Staffmemo;
            item.Viewdate = this.Viewdate;
            item.OrgStaff = this.OrgStaff;
            item.DeadLineDate = this.DeadLineDate;

            return AddRecommit(item);
        }

        public bool Update()
        {
            RecommitDetails item = new RecommitDetails();
            //item.RecommiteID = this.RecommiteID;
            item.LetterID = this.LetterID;
            item.ID = this.ID;
            item.Type = this.Type;
            item.ParentId = this.ParentId;
            item.OrgID = this.OrgID;
            item.Paraph = this.Paraph;
            item.RecommiteDate = this.RecommiteDate;
            item.UserID = this.UserID;
            item.IsCopy = this.IsCopy;
            item.Proceeded = this.Proceeded;
            item.ProceedDate = this.ProceedDate;
            item.Staffmemo = this.Staffmemo;
            item.Viewdate = this.Viewdate;
            item.OrgStaff = this.OrgStaff;
            item.DeadLineDate = this.DeadLineDate;


            return UpdateRecommit(item);
        }

        public bool Delete()
        {
            RecommitDetails item = new RecommitDetails();
            item.RecommiteID = this.RecommiteID;

            return DeleteRecommit(item);
        }

        public bool Delete(Int32 Id)
        {
            Id = this.RecommiteID;

            return DeleteRecommit(Id);
        }

        public RecommitDetails GetItem(Int32 id)
        {
            try
            {
                return ((RecommitProvider)Instance).GetItemById(id);
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

        public void ActivateItem(int RecommiteID)
        {
            try
            {
                //return
                ((RecommitProvider)Instance).ActivateRecommite(RecommiteID);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                //return null;
            }
        }

        public static void AnswerRecommitNote(int RecommiteID)
        {
            try
            {
                //return 
                ((RecommitProvider)Instance).AnswerNote(RecommiteID);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                //return null;
            }
        }

        public static int ArchiveRecommite(int letterID, int archiveFolderID, string archiveDate, int page, string archiveNote, string staffMemo)
        {
            try
            {
                return ((RecommitProvider)Instance).ArchiveRecommite(letterID, archiveFolderID, archiveDate, page, archiveNote, staffMemo);
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

        public static void ProceedRecommite(int RecommiteID)
        {
            try
            {
                //return 
                ((RecommitProvider)Instance).Proceed(RecommiteID);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                //return null;
            }
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

        private static Recommite GetRecommitFromDetail(RecommitDetails detail)
        {
            if (detail != null)
            {
                return new Recommite(detail.RecommiteID,detail.LetterID,detail.ID,detail.Type,detail.ParentId,detail.OrgID,detail.Paraph,
                    detail.RecommiteDate,detail.UserID,detail.IsCopy,detail.Proceeded,detail.RecommiteDate,detail.Staffmemo,detail.Viewdate,
                    detail.OrgStaff,detail.DeadLineDate,detail.RecommiterTitle);
            }
            else
            {
                return null;
            }
        }

        private static List<Recommite> GetLetterListFromDetails(List<RecommitDetails> details)
        {
            List<Recommite> list = new List<Recommite>();
            if (details != null)
            {
                foreach (RecommitDetails item in details)
                {
                    list.Add(GetRecommitFromDetail(item));
                }
            }
            return list;
        }

        public static List<RecommitDetails> GetAllRecommites()
        {
            try
            {
                return ((RecommitProvider)Instance).GetAll();
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

        public static List<Recommite> GetLetterRecommites(int letterId, byte type)
        {
            try
            {
                return GetLetterListFromDetails(((RecommitProvider)Instance).GetLetterRecommits(letterId,type));
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

        public static Recommite GetRecommitByID(Int32 id)
        {

            try
            {
                return GetRecommitFromDetail(((RecommitProvider)Instance).GetItemById(id));
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

        public static void ActivateRecommite(int RecommiteID)
        {
            try
            {
                //return 
                ((RecommitProvider)Instance).ActivateRecommite(RecommiteID);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                //return null;
            }
        }

        public static void AnswerNote(int RecommiteID)
        {
            try
            {
                //return 
                ((RecommitProvider)Instance).AnswerNote(RecommiteID);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                //return null;
            }
        }

        public static List<RecommitDetails> GetRecommitListFromReader(IDataReader reader)
        {
            return null;
        }

        public static bool AddRecommit(RecommitDetails item)
        {

            {
                try
                {
                    return ((RecommitProvider)Instance).Add(item);
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

        public static bool UpdateRecommit(RecommitDetails item)
        {
            {
                try
                {
                    return ((RecommitProvider)Instance).Update(item);
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

        public static bool DeleteRecommit(RecommitDetails item)
        {
            {
                try
                {
                    return ((RecommitProvider)Instance).Delete(item);
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

        public static bool DeleteRecommit(Int32 Id)
        {
            {
                try
                {
                    return ((RecommitProvider)Instance).Delete(Id);
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