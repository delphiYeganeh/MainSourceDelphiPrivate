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

                               try
            {
                                   

                return new InboxDetails(
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
                    reader["fromstaffer"].ToString(),
                    false,//(reader["finalized"].ToString().ToLower() == "false" ? false : true),
                    (reader["sendStatusID"] != DBNull.Value ? (byte)reader["sendStatusID"] : (byte)0),
                    reader["lastUpdate"].ToString(),
                    (reader["userTableID"] != DBNull.Value ? (int)reader["userTableID"] : 0),
                    (int)reader["recommiteID"],
                    (short)reader["ID"],
                        (byte)reader["reType"],
                    reader["recommitTypeTitle"].ToString(),
                    (int)reader["isInner"],
                    0,//(reader["InnerNo"] == "" ? (int)reader["InnerNo"] :(int)0),
                    (reader["orgId"] != DBNull.Value ? (int)reader["orgId"] : 0),
                    (short)reader["parentId"],
                    reader["paraph"].ToString(),
                    reader["recommiteDate"].ToString(),
                    (int)reader["userID"],
                    (reader["isCopy"].ToString().ToLower() == "false" ? false : true),
                    (reader["proceeded"].ToString().ToLower() == "false" ? false : true),
                    reader["proceedDate"].ToString(),
                    reader["staffMemo"].ToString(),
                    reader["viewDate"].ToString(),
                    reader["senderTitle"].ToString(),
                    reader["recommiterTitle"].ToString(),
                    reader["firstView"].ToString(),
                    reader["preCode"].ToString(),
                    (reader["has_File"].ToString().ToLower() == "false" ? false : true)

                    );
            }
	        catch (System.Data.SqlClient.SqlException ex)
            {
                throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
            }
            catch (System.Exception ex)
            {
                throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
            }

        }

        protected List<InboxDetails> GetInboxListFromReader(IDataReader reader, string sortExpression)
        {
            List<InboxDetails> letters = new List<InboxDetails>();
            while (reader.Read())
            {
                letters.Add(GetInboxFromReader(reader));
            }

            //if (sortExpression != null && sortExpression != "")
            //{
            //    _sortExperssionStatic = sortExpression;
            //    _sortExperssion = sortExpression;
            //    letters.Sort(Compare);
            //}
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
                    //object obj=
                    //x.Length.CompareTo(y.Length);


                    int retval = (propInfo.GetValue(x, null).ToString()).CompareTo(propInfo.GetValue(y, null).ToString());
                    if (isDescnding)
                    {
                        retval = -1 * retval;
                    }

                    return retval;
                    //if (retval != 0)
                    //{
                    //    return retval;
                    //}
                    //else
                    //{
                    //    return (propInfo.GetValue(x, null).ToString()).CompareTo(propInfo.GetValue(y, null).ToString());
                    //}
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