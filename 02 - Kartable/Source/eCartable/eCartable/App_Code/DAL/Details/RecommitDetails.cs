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
    public class RecommitDetails
    {
        #region Fileds

        int _recommiteID;
        int _letterID;
        Int16 _id;
        byte _type;
        Int16 _parentId;
        int _orgID;
        string _paraph;
        string _recommiteDate;
        int _userID;
        Boolean _isCopy;
        Boolean _proceeded;
        string _proceedDate;
        string _staffmemo;
        string _viewdate;
        string _orgStaff;
        string _deadLineDate;
        string _recommiterTitle;

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

        public string RecommiterTitle
        {
            get { return _recommiterTitle; }
            set { _recommiterTitle = value; }
        }

        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }

        #endregion

        #region Constructor

        public RecommitDetails()
        {

        }

        public RecommitDetails
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


        public RecommitDetails
        (
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
        string deadLineDate)
        {
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
        }
        #endregion
    }
}