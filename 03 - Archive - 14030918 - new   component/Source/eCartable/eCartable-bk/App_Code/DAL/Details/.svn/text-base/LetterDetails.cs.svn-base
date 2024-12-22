using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Reflection;
using System.Collections;
using System.Collections.Generic;

namespace Cartable.Dal
{
    public class LetterDetails
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
        //Hashtable _dataItems;
        //int _recommitId;
        //List<AttachmentDetails> _attachments;

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

        //public int RecommitId
        //{
        //    get { return _recommitId; }
        //}

        //public List<LetterDataDetails> Attachments
        //{
        //    get 
        //    {
        //        return Bll.Letters.LetterData.GetAllLetterDataByLetterId(LetterID);
        //    }
        //}

        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }

        //private Hashtable DataItem
        //{
        //    get
        //    {
        //        return _dataItems;
        //    }
        //}

        #endregion

        #region Constructor

        public LetterDetails()
        {
        }

        public LetterDetails
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
            Int16 urgencyID,
            string memo,
            string attachTitle,
            Int16 numberOfAttachPages,
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
            )

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

        public LetterDetails
        (
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
            Int16 urgencyID,
            string memo,
            string attachTitle,
            Int16 numberOfAttachPages,
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
            //string preCode,
            string fromstaffer,
            Boolean finalized,
            byte sendStatusID,
            string lastUpdate,
            int userTableID
            )
        {
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
        }

        #endregion
      
    }
}
