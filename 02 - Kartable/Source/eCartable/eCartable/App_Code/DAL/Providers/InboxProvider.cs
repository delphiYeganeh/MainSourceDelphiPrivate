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

/// <summary>
/// Summary description for InboxProvider
/// </summary>
/// 
namespace Cartable.Dal
{
    public abstract class InboxProvider : Dal.DataAccess
    {

        #region Fields

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Properties

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

        #region Methods

        protected InboxDetails GetInboxFromReader(IDataReader reader)
        { 
            { 
                int letterid= (int)reader["LetterID"];
                int indicatorID=(int)reader["IndicatorID"];
                byte mYear=(byte)reader["mYear"];
                  int secretariatID=Convert.ToInt32(reader["secretariatID"]);
                 int letterType=Convert.ToInt32(reader["letter_Type"]);
                 int letterformat=Convert.ToInt32(reader["letterformat"]);
                string incommingNO=reader["incommingNO"].ToString();
                string incommingdate=reader["incommingdate"].ToString();
                string centerNo=reader["centerNo"].ToString();
                string centerDate=reader["centerDate"].ToString();                    
                int fromOrgID=(int)reader["fromOrgID"];
                int toOrgID=(int)reader["toOrgID"];
                string signerid=reader["signerid"].ToString();
                int classificationID=Convert.ToInt32(reader["classificationID"]);
                int urgencyID=Convert.ToInt32(reader["urgencyID"]);
                string memo=reader["memo"].ToString();
                string attachTitle=reader["attachTitle"].ToString();
                int numberOfAttachPages=(reader["numberOfAttachPages"] != DBNull.Value ? (short)reader["numberOfAttachPages"] : (short)0);
                byte numberOfPage=(byte)reader["numberOfPage"];
                int receiveTypeID=Convert.ToInt32(reader["receiveTypeID"]);
                string retroactionNo= reader["retroactionNo"].ToString();
                string userMemo=reader["userMemo"].ToString();
                string registrationDate=reader["registrationDate"].ToString();
                string registrationTime=reader["registrationTime"].ToString();
                string followLetterNo=reader["followLetterNo"].ToString();
                string toStaffer= reader["toStaffer"].ToString();
                int sentLetterID=Convert.ToInt32((reader["sentLetterID"] !=  DBNull.Value ? (int)reader["sentLetterID"] : 0));
                int templateID=(reader["templateID"] != DBNull.Value ? (int)reader["templateID"] : 0);
                int headerID=(reader["headerID"] != DBNull.Value ? (int)reader["headerID"] : 0);
                string letterRecommites=reader["letterRecommites"].ToString();
                string fromstaffer=reader["fromstaffer"].ToString();
                Boolean finalized=(reader["finalized"].ToString().ToLower() == "false" ? false : true);
                int sendStatusID=Convert.ToInt32((reader["sendStatusID"] != DBNull.Value ? reader["sendStatusID"] : 0));
                string lastUpdate=reader["lastUpdate"].ToString();
                int userTableID=(reader["userTableID"] != DBNull.Value ? (int)reader["userTableID"] : 0);
                int recommiteId=(int)reader["recommiteID"];
                int id=(short)reader["ID"];
                int reType=(byte)reader["reType"];
                string recommiteTypeTitle=reader["recommitTypeTitle"].ToString();
                int isInner=(int)reader["isInner"];
                string innerNo=reader["InnerNo"].ToString();
                int orgId=(reader["orgId"] != DBNull.Value ? (int)reader["orgId"] : 0);
                int parentId=(short)reader["parentId"];
                string paraph=reader["paraph"].ToString();
                string recommiteDate =reader["recommiteDate"].ToString();
                int userId=(int)reader["userID"];
                bool isCopy=(reader["isCopy"].ToString().ToLower() == "false" ? false : true);
                bool proceeded=(reader["proceeded"].ToString().ToLower() == "false" ? false : true);
                string proceedDate=reader["proceedDate"].ToString();
                string staffMemo=reader["staffMemo"].ToString();
                string viewDate=reader["viewDate"].ToString();
                string senderTitle=reader["senderTitle"].ToString();
                string recommiterTitle =reader["recommiterTitle"].ToString();
                 string preCode=reader["preCode"].ToString();
                bool hasFile=(reader["has_File"].ToString().ToLower() == "false" ? false : true);

                return new InboxDetails(letterid,
                 indicatorID,
                 mYear,
                 secretariatID,
                 letterType,
                 letterformat,
                 incommingNO,
                 incommingdate,
                 centerNo,
                 centerDate,
                 fromOrgID,
                 toOrgID,
                 signerid,
                 classificationID,
                 urgencyID,
                 memo,
                 attachTitle,
                 numberOfAttachPages,
                 numberOfPage,
                 receiveTypeID,
                 retroactionNo,
                 userMemo,
                 registrationDate,
                 registrationTime,
                 followLetterNo,
                 toStaffer,
                 sentLetterID,
                 templateID,
                 headerID,
                 letterRecommites,
                 fromstaffer,
                 finalized,
                 sendStatusID,
                 lastUpdate,
                 userTableID,
                 recommiteId,
                 id,
                 reType,
                 recommiteTypeTitle,
                 isInner,
                 innerNo,
                 orgId,
                 parentId,
                 paraph,
                 recommiteDate,
                 userId,
                 isCopy,
                 proceeded,
                 proceedDate,
                 staffMemo,
                 viewDate,
                 senderTitle,
                 recommiterTitle,
                 preCode,
                 hasFile); 
            }
           

        }

        protected List<InboxDetails> GetInboxListFromReader(IDataReader reader, string sortExpression)
        {
            List<InboxDetails> letters = new List<InboxDetails>();
            while (reader.Read())
            {
                letters.Add(GetInboxFromReader(reader));
            }
 
            return letters;
        }

        public static int Compare(InboxDetails x, InboxDetails y)
        {
            bool isDescnding = false;
            if (_sortExperssionStatic.Contains(" DESC"))
            {
                _sortExperssionStatic = _sortExperssionStatic.Replace(" DESC", "");
                isDescnding = true;
            }
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
                    PropertyInfo propInfo = (PropertyInfo)typeof(InboxDetails).GetProperty(_sortExperssionStatic);
                   

                    int retval = (propInfo.GetValue(x, null).ToString()).CompareTo(propInfo.GetValue(y, null).ToString());
                    if (isDescnding)
                    {
                        retval = -1 * retval;
                    }

                    return retval; 
                }
            }
        }

        #endregion

        #region Abstract Methods

        public abstract List<InboxDetails> GetInbox(int secretariatID,
                                                     byte letterFormat,
                                                     int orgID,
                                                     bool proceeded,
                                                     byte type,
                                                     byte mYear,
                                                     byte date,
                                                     int archiveFolderID,
                                                     string where,
                                                     int userID,
                                                     int letterType,
                                                     int deadLine,
                                                     string sortExpression);

        #endregion
    }
}