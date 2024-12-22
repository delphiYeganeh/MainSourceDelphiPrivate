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
using System.Reflection;

namespace Cartable.Dal
{
    public abstract class LetterProvider : Dal.DataAccess, Model.Dal.IProviderModel<LetterDetails, Int32>
    {
        #region Fields

        private string _tableName = "Letter";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods

        protected LetterDetails GetLetterFromReader(IDataReader reader)
        {
            try
            {
                return new LetterDetails(
                    (int)reader["LetterID"],
                    (int)reader["IndicatorID"],
                    (byte)reader["mYear"],
                    (byte)reader["secretariatID"],
                    (byte)reader["letter_Type"],
                    (byte)reader["letterformat"],
                    reader["incommingNO"].ToString(),
                    reader["incommingdate"].ToString(),
                    reader["centerNo"].ToString(),
                    reader["centerDate"].ToString(),
                    (int)reader["fromOrgID"],
                    (int)reader["toOrgID"],
                    reader["signerid"].ToString(),
                    (byte)reader["classificationID"],
                    (short)reader["urgencyID"],
                    reader["memo"].ToString(),
                    reader["attachTitle"].ToString(),
                    (reader["numberOfAttachPages"] != DBNull.Value ? (short)reader["numberOfAttachPages"] : (short)0),
                    (byte)reader["numberOfPage"],
                    (byte)reader["receiveTypeID"],
                    (int)reader["userID"],
                    reader["retroactionNo"].ToString(),
                    reader["userMemo"].ToString(),
                    reader["registrationDate"].ToString(),
                    reader["registrationTime"].ToString(),
                    reader["followLetterNo"].ToString(),
                    reader["toStaffer"].ToString(),
                    (reader["sentLetterID"] != DBNull.Value ? (int)reader["sentLetterID"] : 0),
                    (reader["templateID"] != DBNull.Value ? (int)reader["templateID"] : 0),
                    (reader["headerID"] != DBNull.Value ? (int)reader["headerID"] : 0),
                    reader["letterRecommites"].ToString(),
                    //reader["preCode"].ToString(),
                    reader["fromstaffer"].ToString(),
                    (reader["finalized"].ToString().ToLower() == "false" ? false : true),
                    (reader["sendStatusID"] != DBNull.Value ? (byte)reader["sendStatusID"] : (byte)0),
                    reader["lastUpdate"].ToString(),
                    (reader["userTableID"] != DBNull.Value ? (int)reader["userTableID"] : 0));
                    //reader["followLetterNo"].ToString(),
                    //"",
                    //reader["senderTitle"].ToString(),
                    //(int)reader["recommiteId"]);
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string a = ex.Message;
                return null;
            }
            catch (System.Exception ex)
            {
                string s = ex.Message;
                return null;
            }

        }

        protected List<LetterDetails> GetLetterListFromReader(IDataReader reader,string sortExpression)
        {
            List<LetterDetails> letters = new List<LetterDetails>();
            while (reader.Read())
            {
                letters.Add(GetLetterFromReader(reader));
            }

            if (sortExpression != null && sortExpression!="")
            {
                _sortExperssionStatic = sortExpression;
                _sortExperssion = sortExpression;
                letters.Sort(Compare);
            }
            return letters;
        }

        public static int Compare(LetterDetails x, LetterDetails y)
        {
            if (x == null)
            {
                if (y == null)
                {
                    return 0;
                }
                else
                {
                    return -1;
                }
            }
            else
            {
                if (y == null)
                {
                    return 1;
                }
                else
                {
                    PropertyInfo propInfo = (PropertyInfo)typeof(LetterDetails).GetProperty(_sortExperssionStatic);
                    //object obj=
                    //x.Length.CompareTo(y.Length);


                    int retval = (propInfo.GetValue(x, null).ToString()).CompareTo(propInfo.GetValue(y, null).ToString());
                    if (retval != 0)
                    {
                        return retval;
                    }
                    else
                    {
                        return (propInfo.GetValue(x, null).ToString()).CompareTo(propInfo.GetValue(y, null).ToString());
                    }
                }
            }
        }

        #endregion

        #region IComponentModel Members

        public abstract List<LetterDetails> GetAll();

        public abstract LetterDetails GetItemById(Int32 Id);

        public abstract LetterDetails GetItemByIndicatorId(int IndicatorId, byte MYear, byte SecretariatID, byte Letter_Type, byte letterformat);

        public abstract LetterDetails GetLetterAbstract(int LetterID);

        public abstract DataTable GetLetterArchiveHistory(int letterId, int userId);

        public abstract void ActivateLetter(Boolean receivedMode, int indicatorID, int myear, int secID);

        public abstract void AnswerLetter(int letterID, int answerLetterID, string today);

        public abstract void SetFinalizeValue(int letterId, bool isFinalized);

        public abstract void DeletedToLetter(int letterID, int indicatorId, string today);

        public abstract int AddDraft(string toOrgTitle, string signerId, byte classificationID,Int16 urgencyID, string memo, int userID,
                                    string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, out int indicatorId, out int recommiteId);

        public abstract int AddSentLetter(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                            string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer,int fromOrgId,
                            byte numberOfPages, byte receiveTypeId, out int indicatorId, out int recommiteId);

        public abstract int AddReceivedLetter(string incommingNo, string incommingDate, string centerNo, string centerDate, string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                                    string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, int fromOrgId,
                                    byte numberOfPages, byte receiveTypeId, out int indicatorId, out int recommiteId);

        public abstract int AddInner(string memo, int userId, string userMemo);

        public abstract int AddAnswer(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                                    string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, int letterFromOrgId, int receivedLetterId, out int indicatorId, out int recommiteId);

        public abstract bool Add(LetterDetails item);

        public abstract bool Update(LetterDetails item);

        public abstract bool Delete(LetterDetails item);

        public abstract bool Delete(Int32 LetterID,Int32 IndicatorID);

        #endregion

        #region IProviderModel<LetterDetails,int> Members

        public string TableName
        {
            get { return _tableName; }
        }

        public string SortExperssion
        {
            get { return _sortExperssion; }
            set
            {
                _sortExperssion = value;
                _sortExperssionStatic = value;
            }
        }

        public static string SortExperssionStatic
        {
            get { return _sortExperssionStatic; }
            set
            {
                _sortExperssionStatic = value;
            }
        }
        #endregion

    }
}
