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
    public class InboxDetails
    {
        #region Fields

        int _letterID;
        int _indicatorID;
        byte _mYear;
        byte _secretariatID;
        byte _letter_Type;
        byte _letterformat;
        string _incommingNO;
        string _incommingdate;
        string _centerNo;
        string _centerDate;
        int _fromOrgID;
        int _toOrgID;
        string _signerid;
        byte _classificationID;
        int _urgencyID;
        string _memo;
        string _attachTitle;
        int _numberOfAttachPages;
        byte _numberOfPage;
        byte _receiveTypeID;
        string _retroactionNo;
        string _userMemo;
        string _registrationDate;
        string _registrationTime;
        string _followLetterNo;
        string _toStaffer;
        int _sentLetterID;
        int _templateID;
        int _headerID;
        string _letterRecommites;
        string _fromstaffer;
        bool _finalized;
        byte _sendStatusID;
        string _lastUpdate;
        int _userTableID;

        int _recommiteId;
        int _id;
        int _reType;
        string _recommiteTypeTitle;
        int _isInner;
        int _innerNo;
        int _orgId;
        int _parentId;
        string _paraph;
        string _recommiteDate;
        int _userId;
        bool _isCopy;
        bool _proceeded;
        string _proceedDate;
        string _staffMemo;
        string _viewDate;
        //string _orgStaff;
        //string _deadLineDate;
        string _senderTitle;
        string _recommiterTitle;
        string _firstView;

        string _preCode;

        bool _hasFile;

        #endregion

        #region Properties

        public int LetterID
        {
            get { return _letterID; }
        }
        public int IndicatorID
        {
            get { return _indicatorID; }
        }
        public byte MYear
        {
            get { return _mYear; }
        }
        public byte SecretariatID
        {
            get { return _secretariatID; }
        }
        public byte LetterType
        {
            get { return _letter_Type; }
        }
        public byte LetterFormat
        {
            get { return _letterformat; }
        }
        public string IncommingNO
        {
            get { return _incommingNO; }
        }
        public string IncommingDate
        {
            get { return _incommingdate; }
        }
        public string CenterNo
        {
            get { return _centerNo; }
        }
        public string CenterDate
        {
            get { return _centerDate; }
        }
        public int FromOrgID
        {
            get { return _fromOrgID; }
        }
        public int ToOrgID
        {
            get { return _toOrgID; }
        }
        public string SignerId
        {
            get { return _signerid; }
        }
        public byte ClassificationID
        {
            get { return _classificationID; }
        }
        public int UrgencyID
        {
            get { return _urgencyID; }
        }
        public string Memo
        {
            get { return _memo; }
        }
        public string AttachTitle
        {
            get { return _attachTitle; }
        }
        public int NumberOfAttachPages
        {
            get { return _numberOfAttachPages; }
        }
        public byte NumberOfPage
        {
            get { return _numberOfPage; }
        }
        public byte ReceiveTypeID
        {
            get { return _receiveTypeID; }
        }
        
        public string RetroactionNo
        {
            get { return _retroactionNo; }
        }
        public string UserMemo
        {
            get { return _userMemo; }
        }
        public string RegistrationDate
        {
            get { return _registrationDate; }
        }
        public string RegistrationTime
        {
            get { return _registrationTime; }
        }
        public string FollowLetterNo
        {
            get { return _followLetterNo; }
        }
        public string ToStaffer
        {
            get { return _toStaffer; }
        }
        public int SentLetterID
        {
            get { return _sentLetterID; }
        }
        public int TemplateID
        {
            get { return _templateID; }
        }
        public int HeaderID
        {
            get { return _headerID; }
        }
        public string LetterRecommites
        {
            get { return _letterRecommites; }
        }
        public string FromStaffer
        {
            get { return _fromstaffer; }
        }
        public bool Finalized
        {
            get { return _finalized; }
        }
        public byte SendStatusID
        {
            get { return _sendStatusID; }
        }
        public string LastUpdate
        {
            get { return _lastUpdate; }
        }
        public int UserTableID
        {
            get { return _userTableID; }
        }
        public int RecommiteId
        {
            get { return _recommiteId; }
        }
        public int Id
        {
            get { return _id; }
        }
        public int ReType
        {
            get { return _reType; }
        }
        public string RecommiteTypeTitle
        {
            get { return _recommiteTypeTitle; }
        }
        public int IsInner
        {
            get { return _isInner; }
        }
        public int InnerNo
        {
            get { return _innerNo; }
        }
        public int OrgId
        {
            get { return _orgId; }
        }
        public int ParentId
        {
            get { return _parentId; }
        }
        public string Paraph
        {
            get { return _paraph; }
        }
        public string RecommiteDate
        {
            get { return _recommiteDate; }
        }
        public int UserId
        {
            get { return _userId; }
        }
        public bool IsCopy
        {
            get { return _isCopy; }
        }
        public bool Proceeded
        {
            get { return _proceeded; }
        }
        public string ProceedDate
        {
            get { return _proceedDate; }
        }
        public string StaffMemo
        {
            get { return _staffMemo; }
        }
        public string ViewDate
        {
            get { return _viewDate; }
        }
        //public string OrgStaff
        //{
        //    get { return _orgStaff; }
        //}
        //public string DeadLineDate
        //{
        //    get { return _deadLineDate; }
        //}
        public string SenderTitle
        {
            get { return _senderTitle; }
        }
        public string RecommiterTitle
        {
            get { return _recommiterTitle; }
        }
        public string FirstView
        {
            get { return _firstView; }
        }

        public string PreCode
        {
            get { return _preCode; }
        }

        public bool HasFile
        {
            get { return _hasFile; }
        }

        #endregion

        #region Constructors

        public InboxDetails()
        {

        }

        public InboxDetails(int letterID,
                int indicatorID,
                byte mYear,
                byte secretariatID,
                byte letterType,
                byte letterformat,
                string incommingNO,
                string incommingdate,
                string centerNo,
                string centerDate,
                int fromOrgID,
                int toOrgID,
                string signerid,
                byte classificationID,
                int urgencyID,
                string memo,
                string attachTitle,
                int numberOfAttachPages,
                byte numberOfPage,
                byte receiveTypeID,
                string retroactionNo,
                string userMemo,
                string registrationDate,
                string registrationTime,
                string followLetterNo,
                string toStaffer,
                int sentLetterID,
                int templateID,
                int headerID,
                string letterRecommites,
                string fromstaffer,
                Boolean finalized,
                byte sendStatusID,
                string lastUpdate,
                int userTableID,
                int recommiteId,
                int id,
                int reType,
                string recommiteTypeTitle,
                int isInner,
                int innerNo,
                int orgId,
                int parentId,
                string paraph,
                string recommiteDate,
                int userId,
                bool isCopy,
                bool proceeded,
                string proceedDate,
                string staffMemo,
                string viewDate,
                //string orgStaff,
                //string deadLineDate,
                string senderTitle,
                string recommiterTitle,
                string firstView,
                string preCode,
                bool hasFile)
        {
            _letterID = letterID;
            _indicatorID = indicatorID;
            _mYear = mYear;
            _secretariatID = secretariatID;
            _letter_Type = letterType;
            _letterformat = letterformat;
            _incommingNO = incommingNO;
            _incommingdate = incommingdate;
            _centerNo = centerNo;
            _centerDate = centerDate;
            _fromOrgID = fromOrgID;
            _toOrgID = toOrgID;
            _signerid = signerid;
            _classificationID = classificationID;
            _urgencyID = urgencyID;
            _memo = memo;
            _attachTitle = attachTitle;
            _numberOfAttachPages = numberOfAttachPages;
            _numberOfPage = numberOfPage;
            _receiveTypeID = receiveTypeID;
            _userId = userId;
            _retroactionNo = retroactionNo;
            _userMemo = userMemo;
            _registrationDate = registrationDate;
            _registrationTime = registrationTime;
            _followLetterNo = followLetterNo;
            _toStaffer = toStaffer;
            _sentLetterID = sentLetterID;
            _templateID = templateID;
            _headerID = headerID;
            _letterRecommites = letterRecommites;
            _fromstaffer = fromstaffer;
            _finalized = finalized;
            _sendStatusID = sendStatusID;
            _lastUpdate = lastUpdate;
            _userTableID = userTableID;
            _recommiteId = recommiteId;
            _id = id;
            _reType = reType;
            _recommiteTypeTitle = recommiteTypeTitle;
            _isInner = isInner;
            _innerNo = innerNo;
            _orgId = orgId;
            _parentId = parentId;
            _paraph = paraph;
            _recommiteDate = recommiteDate;
            _isCopy = isCopy;
            _proceeded = proceeded;
            _proceedDate = proceedDate;
            _staffMemo = staffMemo;
            _viewDate = viewDate;
            //_orgStaff = orgStaff;
            //_deadLineDate = deadLineDate;
            _senderTitle = senderTitle;
            _recommiterTitle = recommiterTitle;
            _firstView = firstView;
            _preCode = preCode;
            _hasFile = hasFile;
        }

        #endregion

    }
}