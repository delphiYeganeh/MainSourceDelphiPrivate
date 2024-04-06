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
    public class Letter : BllObject 
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
        int _userID;
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
        //string _preCode;
        string _fromstaffer;
        Boolean _finalized;
        byte _sendStatusID;
        string _lastUpdate;
        int _userTableID;
        //string _innerNo;
        //string _senderTitle;
        //
        List<Attachment> _attachments;
        //int _recommitId;

        #endregion

        #region Properties

        public int LetterID
        {
            get { return _letterID; }
            set { _letterID = value; }
        }

        public int IndicatorID
        {
            get { return _indicatorID; }
            set { _indicatorID = value; }
        }


        public byte MYear
        {
            get { return _mYear; }
            set { _mYear = value; }
        }

        public byte SecretariatID
        {
            get { return _secretariatID; }
            set { _secretariatID = value; }
        }

        public byte Letter_Type
        {
            get { return _letter_Type; }
            set { _letter_Type = value; }
        }

        public byte Letterformat
        {
            get { return _letterformat; }
            set { _letterformat = value; }
        }

        public string IncommingNO
        {
            get { return _incommingNO; }
            set { _incommingNO = value; }
        }


        public string Incommingdate
        {
            get { return _incommingdate; }
            set { _incommingdate = value; }
        }

        public string CenterNo
        {
            get { return _centerNo; }
            set { _centerNo = value; }
        }

        public string CenterDate
        {
            get { return _centerDate; }
            set { _centerDate = value; }
        }

        public int FromOrgID
        {
            get { return _fromOrgID; }
            set { _fromOrgID = value; }
        }


        public int ToOrgID
        {
            get { return _toOrgID; }
            set { _toOrgID = value; }
        }


        public string Signerid
        {
            get { return _signerid; }
            set { _signerid = value; }
        }


        public byte ClassificationID
        {
            get { return _classificationID; }
            set { _classificationID = value; }
        }

        public int UrgencyID
        {
            get { return _urgencyID; }
            set { _urgencyID = value; }
        }


        public string Memo
        {
            get { return _memo; }
            set { _memo = value; }
        }


        public string AttachTitle
        {
            get { return _attachTitle; }
            set { _attachTitle = value; }
        }

        public int NumberOfAttachPages
        {
            get { return _numberOfAttachPages; }
            set { _numberOfAttachPages = value; }
        }

        public byte NumberOfPage
        {
            get { return _numberOfPage; }
            set { _numberOfPage = value; }
        }

        public byte ReceiveTypeID
        {
            get { return _receiveTypeID; }
            set { _receiveTypeID = value; }
        }

        public int UserID
        {
            get { return _userID; }
            set { _userID = value; }
        }

        public string RetroactionNo
        {
            get { return _retroactionNo; }
            set { _retroactionNo = value; }
        }

        public string UserMemo
        {
            get { return _userMemo; }
            set { _userMemo = value; }
        }

        public string RegistrationDate
        {
            get { return _registrationDate; }
            set { _registrationDate = value; }
        }

        public string RegistrationTime
        {
            get { return _registrationTime; }
            set { _registrationTime = value; }
        }

        public string FollowLetterNo
        {
            get { return _followLetterNo; }
            set { _followLetterNo = value; }
        }

        public string ToStaffer
        {
            get { return _toStaffer; }
            set { _toStaffer = value; }
        }

        public int SentLetterID
        {
            get { return _sentLetterID; }
            set { _sentLetterID = value; }
        }

        public int TemplateID
        {
            get { return _templateID; }
            set { _templateID = value; }
        }

        public int HeaderID
        {
            get { return _headerID; }
            set { _headerID = value; }
        }

        public string LetterRecommites
        {
            get { return _letterRecommites; }
            set { _letterRecommites = value; }
        }

        //public string PreCode
        //{
        //    get { return _preCode; }
        //    set { _preCode = value; }
        //}

        public string Fromstaffer
        {
            get { return _fromstaffer; }
            set { _fromstaffer = value; }
        }

        public Boolean Finalized
        {
            get { return _finalized; }
            set { _finalized = value; }
        }

        public byte SendStatusID
        {
            get { return _sendStatusID; }
            set { _sendStatusID = value; }
        }

        public string LastUpdate
        {
            get { return _lastUpdate; }
            set { _lastUpdate = value; }
        }

        public int UserTableID
        {
            get { return _userTableID; }
            set { _userTableID = value; }
        }

        //public string InnerNo
        //{
        //    get { return _innerNo; }
        //    set { _innerNo = value; }
        //}

        //public string SenderTitle
        //{
        //    get { return _senderTitle; }
        //    set { _senderTitle = value; }
        //}

        //public string RecommiteDate
        //{
        //    get
        //    {
        //        return Recommite.RecommiteDate;
        //    }
        //}

        //public string RecommiterTitle
        //{
        //    get
        //    {
        //        return Recommite.RecommiterTitle;
        //    }
        //}

        //public string Paraph
        //{
        //    get
        //    {
        //        return Recommite.Paraph;
        //    }
        //}

        //public string ViewDate
        //{
        //    get
        //    {
        //        return Recommite.Viewdate;
        //    }
        //}

        public bool HasAtatchment
        {
            get
            {
                if (Attachments.Count > 0) return true;
                else return false;
            }
        }

        public List<Attachment> Attachments
        {
            get
            {
                _attachments = Attachment.GetAllAttachmentByLetterId(LetterID, "");
                return _attachments;
            }
        }
        
        //protected int RecommitId
        //{
        //    get { return _recommitId; }
        //}

        //public Recommite Recommite
        //{
        //    get
        //    {
        //        return Recommite.GetRecommitByID(RecommitId);
        //    }
        //}

        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }

        #endregion

        #region Events

        public static event ExceptionDelegate onException;

        #endregion

        #region Constructors

        public Letter() : base(typeof(Letter).Name)
        {
        }

        public Letter 
        (
            int letterID,
            int indicatorID,
            byte mYear,
            byte secretariatID,
            byte letter_Type,
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
            int userID,
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
            int userTableID
            ) : base(typeof(Letter).Name)
        {
            this.LetterID = letterID;
            this.IndicatorID = indicatorID;
            this.MYear = mYear;
            this.SecretariatID = secretariatID;
            this.Letter_Type = letter_Type;
            this.Letterformat = letterformat;
            this.IncommingNO = incommingNO;
            this.Incommingdate = incommingdate;
            this.CenterNo = centerNo;
            this.CenterDate = centerDate;
            this.FromOrgID = fromOrgID;
            this.ToOrgID = toOrgID;
            this.Signerid = signerid;
            this.ClassificationID = classificationID;
            this.UrgencyID = urgencyID;
            this.Memo = memo;
            this.AttachTitle = attachTitle;
            this.NumberOfAttachPages = numberOfAttachPages;
            this.NumberOfPage = numberOfPage;
            this.ReceiveTypeID = receiveTypeID;
            this.UserID = userID;
            this.RetroactionNo = retroactionNo;
            this.UserMemo = userMemo;
            this.RegistrationDate = registrationDate;
            this.RegistrationTime = registrationTime;
            this.FollowLetterNo = followLetterNo;
            this.ToStaffer = toStaffer;
            this.SentLetterID = sentLetterID;
            this.TemplateID = templateID;
            this.HeaderID = headerID;
            this.LetterRecommites = letterRecommites;
            //this.PreCode = preCode;
            this.Fromstaffer = fromstaffer;
            this.Finalized = finalized;
            this.SendStatusID = sendStatusID;
            this.LastUpdate = lastUpdate;
            this.UserTableID = userTableID;
            this.FollowLetterNo = followLetterNo;
            //this.InnerNo = innerNo;
            //this.SenderTitle = senderTitle;

            //this._recommitId = recommitId;
            
        }

        #endregion

        #region Methods

        public bool Add()
        {
            LetterDetails item=new LetterDetails ();
            item.IndicatorID = this.IndicatorID;
            item.MYear = this.MYear;
            item.SecretariatID = this.SecretariatID;
            item.Letter_Type = this.Letter_Type;
            item.Letterformat = this.Letterformat;
            item.IncommingNO = this.IncommingNO;
            item.Incommingdate = this.Incommingdate;
            item.CenterNo = this.CenterNo;
            item.CenterDate = this.CenterDate;
            item.FromOrgID = this.FromOrgID;
            item.ToOrgID = this.ToOrgID;
            item.Signerid = this.Signerid;
            item.ClassificationID = this.ClassificationID;
            item.UrgencyID = this.UrgencyID;
            item.Memo = this.Memo;
            item.AttachTitle = this.AttachTitle;
            item.NumberOfAttachPages = this.NumberOfAttachPages;
            item.NumberOfPage = this.NumberOfPage;
            item.ReceiveTypeID = this.ReceiveTypeID;
            item.UserID = this.UserID;
            item.RetroactionNo = this.RetroactionNo;
            item.UserMemo = this.UserMemo;
            item.RegistrationDate = this.RegistrationDate;
            item.RegistrationTime = this.RegistrationTime;
            item.FollowLetterNo = this.FollowLetterNo;
            item.ToStaffer = this.ToStaffer;
            item.SentLetterID = this.SentLetterID;
            item.TemplateID = this.TemplateID;
            item.HeaderID = this.HeaderID;
            item.LetterRecommites = this.LetterRecommites;
            //item.PreCode = this.PreCode;
            item.Fromstaffer = this.Fromstaffer;
            item.Finalized = this.Finalized;
            item.SendStatusID = this.SendStatusID;
            item.LastUpdate = this.LastUpdate;
            item.UserTableID = this.UserTableID;

            return AddLetter(item);
        }

        public bool Update()
        {
            LetterDetails item = new LetterDetails();
            item.IndicatorID = this.IndicatorID;
            item.MYear = this.MYear;
            item.SecretariatID = this.SecretariatID;
            item.Letter_Type = this.Letter_Type;
            item.Letterformat = this.Letterformat;
            item.IncommingNO = this.IncommingNO;
            item.Incommingdate = this.Incommingdate;
            item.CenterNo = this.CenterNo;
            item.CenterDate = this.CenterDate;
            item.FromOrgID = this.FromOrgID;
            item.ToOrgID = this.ToOrgID;
            item.Signerid = this.Signerid;
            item.ClassificationID = this.ClassificationID;
            item.UrgencyID = this.UrgencyID;
            item.Memo = this.Memo;
            item.AttachTitle = this.AttachTitle;
            item.NumberOfAttachPages = this.NumberOfAttachPages;
            item.NumberOfPage = this.NumberOfPage;
            item.ReceiveTypeID = this.ReceiveTypeID;
            item.UserID = this.UserID;
            item.RetroactionNo = this.RetroactionNo;
            item.UserMemo = this.UserMemo;
            item.RegistrationDate = this.RegistrationDate;
            item.RegistrationTime = this.RegistrationTime;
            item.FollowLetterNo = this.FollowLetterNo;
            item.ToStaffer = this.ToStaffer;
            item.SentLetterID = this.SentLetterID;
            item.TemplateID = this.TemplateID;
            item.HeaderID = this.HeaderID;
            item.LetterRecommites = this.LetterRecommites;
            //item.PreCode = this.PreCode;
            item.Fromstaffer = this.Fromstaffer;
            item.Finalized = this.Finalized;
            item.SendStatusID = this.SendStatusID;
            item.LastUpdate = this.LastUpdate;
            item.UserTableID = this.UserTableID;

            return UpdateLetter(item);
        }

        public bool Delete()
        {
            LetterDetails item = new LetterDetails();
            item.LetterID = this.LetterID;
            item.IndicatorID = this.IndicatorID;

            return DeleteLetter(item);
        }

        public LetterDetails GetItem(Int32 id)
        {
            try
            {
                return ((LetterProvider)Instance).GetItemById(id);
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

        public LetterDetails GetItemByIndicatorId(int IndicatorId, byte MYear, byte SecretariatID, byte Letter_Type, byte letterformat)
        {
            try
            {
                return ((LetterProvider)Instance).GetItemByIndicatorId(IndicatorID,MYear,SecretariatID,Letter_Type,Letterformat);
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

        public LetterDetails GetItemAbstract(int LetterID)
        {
            try
            {
                return ((LetterProvider)Instance).GetLetterAbstract(LetterID);
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

        public void ActivateItem(Boolean ReceivedMode, int IndicatorID, int Myear, int SecID)
        {
            try
            {
                //return
                ((LetterProvider)Instance).ActivateLetter(ReceivedMode, IndicatorID, Myear, SecID);
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

        public void AnswerItem(int LetterID, int AnswerLetterID, string Today)
        {
            try
            {
                //return
                ((LetterProvider)Instance).AnswerLetter(LetterID,AnswerLetterID,Today);
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

        public void DeleteToLetter(int LetterID, int IndicatorId, string today)
        {
            try
            {
                //return 
                ((LetterProvider)Instance).DeletedToLetter(LetterID, IndicatorId, today);
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
                Object _instance = Activator.CreateInstance(Type.GetType(Globals.Settings.Providers[Globals.Settings.ConnectionProviderName].TypeItems[TypeName].type));
                return _instance;
            }
        }

        #region Static Members

        public static List<Letter> GetLetters()
        {
            try
            {
                return GetLetterListFromDetails(((LetterProvider)Instance).GetAll());
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

        public static Letter GetLetterByID(Int32 id)
        {
            
            try
            {
                return GetLetterFromDetail(((LetterProvider)Instance).GetItemById(id));
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

        public static Letter GetLetterByIndicatorId(int IndicatorId, byte MYear, byte SecretariatID, byte Letter_Type, byte letterformat)
        {
            try
            {
                return GetLetterFromDetail(((LetterProvider)Instance).GetItemByIndicatorId(IndicatorId, MYear, SecretariatID, Letter_Type, letterformat));
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

        public static Letter GetLetterAbstract(int LetterID)
        {
            try
            {
                return GetLetterFromDetail(((LetterProvider)Instance).GetLetterAbstract(LetterID));
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

        public static DataTable GetLetterArchiveHistory(int letterID, int userId)
        {
            try
            {
                return ((LetterProvider)Instance).GetLetterArchiveHistory(letterID,userId);
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

        public void ActivateLetter(Boolean ReceivedMode, int IndicatorID, int Myear, int SecID)
        {
            try
            {
                //return 
                ((LetterProvider)Instance).ActivateLetter(ReceivedMode, IndicatorID,Myear, SecID);
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

        public static void AnswerLetter(int LetterID, int AnswerLetterID, string Today)
        {
            try
            {
                //return 
                ((LetterProvider)Instance).AnswerLetter(LetterID, AnswerLetterID, Today);
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

        public static void SetFinalizeValue(int letterId, bool isFinalized)
        {
            try
            {
                ((LetterProvider)Instance).SetFinalizeValue(letterId, isFinalized);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
            }
        }

        public static void DeletedToLetter(int LetterID, int IndicatorId, string today)
        {
            try
            {
                //return 
                ((LetterProvider)Instance).DeletedToLetter(LetterID, IndicatorId, today);
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

        private static Letter GetLetterFromDetail(LetterDetails detail)
        {
            if (detail != null)
            {
                return new Letter(detail.LetterID,detail.IndicatorID,detail.MYear,detail.SecretariatID,detail.Letter_Type,
                    detail.Letterformat,detail.IncommingNO,detail.Incommingdate,detail.CenterNo,detail.CenterDate,detail.FromOrgID,
                    detail.ToOrgID,detail.Signerid,detail.ClassificationID,detail.UrgencyID,detail.Memo,detail.AttachTitle,detail.NumberOfAttachPages,
                    detail.NumberOfPage,detail.ReceiveTypeID,detail.UserID,detail.RetroactionNo,detail.UserMemo,detail.RegistrationDate,detail.RegistrationTime,
                    detail.FollowLetterNo,detail.ToStaffer,detail.SentLetterID,detail.TemplateID,detail.HeaderID,detail.LetterRecommites,detail.Fromstaffer,
                    detail.Finalized,detail.SendStatusID,detail.LastUpdate,detail.UserTableID);
            }
            else
            {
                return null;
            }
        }

        private static List<Letter> GetLetterListFromDetails(List<LetterDetails> details)
        {
            List<Letter> list = new List<Letter>();
            if (details != null)
            {
                foreach (LetterDetails item in details)
                {
                    list.Add(GetLetterFromDetail(item));
                }
            }
            return list;
        }

        public static int AddDraft(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                                    string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, out int indicatorId, out int recommiteId)
        {

            {
                try
                {
                    return ((LetterProvider)Instance).AddDraft(toOrgTitle, signerId, classificationID, urgencyID, memo, userID,
                            retroactionNo, userMemo, followLetterNo, toStaffer, fromStaffer,out indicatorId,out recommiteId);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    indicatorId = 0;
                    recommiteId = 0;
                    return (int)0;
                }
            }
        }

        public static int AddSentLetter(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                           string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer,int fromOrgId,
                           byte numberOfPages, byte receiveTypeId, out int indicatorId, out int recommiteId)
        {
            {
                try
                {
                    return ((LetterProvider)Instance).AddSentLetter(toOrgTitle, signerId, classificationID, urgencyID, memo, userID,
                            retroactionNo, userMemo, followLetterNo, toStaffer, fromStaffer, fromOrgId, numberOfPages, receiveTypeId, out indicatorId, out recommiteId);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    indicatorId = 0;
                    recommiteId = 0;
                    return (int)0;
                }
            }
        }

        public static int AddReceivedLetter(string incommingNo, string incommingDate, string centerNo, string centerDate, string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                           string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, int fromOrgId,
                           byte numberOfPages, byte receiveTypeId, out int indicatorId, out int recommiteId)
        {
            {
                try
                {
                    return ((LetterProvider)Instance).AddReceivedLetter( incommingNo, incommingDate, centerNo, centerDate,toOrgTitle, signerId, classificationID, urgencyID, memo, userID,
                            retroactionNo, userMemo, followLetterNo, toStaffer, fromStaffer, fromOrgId, numberOfPages, receiveTypeId, out indicatorId, out recommiteId);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    indicatorId = 0;
                    recommiteId = 0;
                    return (int)0;
                }
            }
        }

        public static int AddLetterAnswer(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                                    string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, int letterFromOrgId, int receivedLetterId, out int indicatorId, out int recommiteId)
        {

            {
                try
                {
                    return ((LetterProvider)Instance).AddAnswer(toOrgTitle, signerId, classificationID, urgencyID, memo, userID,
                            retroactionNo, userMemo, followLetterNo, toStaffer, fromStaffer,letterFromOrgId,receivedLetterId,out indicatorId, out recommiteId);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    indicatorId = 0;
                    recommiteId = 0;
                    return (int)0;
                }
            }
        }

        public static int AddInnerLetter(string memo, int userId, string userMemo)
        {
            try
            {
                return ((LetterProvider)Instance).AddInner(memo, userId, userMemo);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return (int)0;
            }
        }

        public static bool AddLetter(LetterDetails item)
        {

            {
                try
                {
                    return ((LetterProvider)Instance).Add(item);
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

        public static bool UpdateLetter(LetterDetails item)
        {
            {
                try
                {
                    return ((LetterProvider)Instance).Update(item);
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

        public static bool DeleteLetter(LetterDetails item)
        {
            {
                try
                {
                    return ((LetterProvider)Instance).Delete(item);
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

        public static bool DeleteLetter(Int32 LetterId,Int32 IndicatorID)
        {
            {
                try
                {
                    return ((LetterProvider)Instance).Delete(LetterId, IndicatorID);
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
