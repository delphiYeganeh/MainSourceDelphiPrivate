using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace Cartable.Dal.SQLClient
{
    public class sqlLetterProvider : Cartable.Dal.LetterProvider
    {
        #region Methods

        public override List<LetterDetails> GetAll()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("GetLetterList", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    // cmd.CommandTimeout = 60;
                    return GetLetterListFromReader(this.ExecuteReader(cmd),string.Empty);
                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
            }
        }

        public override LetterDetails GetItemById(int Id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;

                cn.Open();
                SqlCommand cmd = new SqlCommand("web_Get_Letter_by_LetterID", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int);
                sprLetterID.Value = Id;
                cmd.Parameters.Add(sprLetterID);

                reader = this.ExecuteReader(cmd);


                if (reader.Read())
                {
                    return GetLetterFromReader(reader);
                }
                else
                {
                    return null;
                }
            }
        }
           
    

        public override LetterDetails GetItemByIndicatorId(int IndicatorId, byte MYear, int SecretariatID, int Letter_Type, int letterformat) //*
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("get_Letter_ByIndicator", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprIndicatorId = new SqlParameter("IndicatorId", SqlDbType.Int);
                    sprIndicatorId.Value = IndicatorId;
                    cmd.Parameters.Add(sprIndicatorId);

                    SqlParameter sprMYear = new SqlParameter("MYear", SqlDbType.TinyInt);
                    sprMYear.Value = MYear;
                    cmd.Parameters.Add(sprMYear);

                    SqlParameter sprSecretariatID = new SqlParameter("SecretariatID", SqlDbType.TinyInt);
                    sprSecretariatID.Value = SecretariatID;
                    cmd.Parameters.Add(sprSecretariatID);

                    SqlParameter sprLetter_Type = new SqlParameter("Letter_Type", SqlDbType.TinyInt);
                    sprLetter_Type.Value = Letter_Type;
                    cmd.Parameters.Add(sprLetter_Type);

                    SqlParameter sprletterformat = new SqlParameter("letterformat", SqlDbType.TinyInt);
                    sprletterformat.Value = letterformat;
                    cmd.Parameters.Add(sprletterformat);

                    reader = this.ExecuteReader(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
                if (reader.Read())
                {
                    return GetLetterFromReader(reader);
                }
                else
                {
                    return null;
                }

            }
        }

        public override LetterDetails GetLetterAbstract(int LetterID) //*
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Get_LetterAbstract", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter sprLetterId = new SqlParameter("LetterId", SqlDbType.Int);
                    sprLetterId.Value = LetterID ;
                    cmd.Parameters.Add(sprLetterId);
                    reader = this.ExecuteReader(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
                if (reader.Read())
                {
                    return GetLetterFromReader(reader);
                }
                else
                {
                    return null;
                }
            }
        }

        public override void ActivateLetter(Boolean ReceivedMode, int IndicatorID, int Myear, int SecID) //*
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Activate_Letter", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    
                    SqlParameter sprReceivedMode = new SqlParameter("receivedMode", SqlDbType.Bit);
                    sprReceivedMode.Value = ReceivedMode;
                    cmd.Parameters.Add(sprReceivedMode);

                    SqlParameter sprIndicatorID = new SqlParameter("indicatorID", SqlDbType.Int);
                    sprIndicatorID.Value = IndicatorID;
                    cmd.Parameters.Add(sprIndicatorID);

                    SqlParameter sprMyear = new SqlParameter("myear", SqlDbType.Int);
                    sprMyear.Value = Myear;
                    cmd.Parameters.Add(sprMyear);

                    SqlParameter sprSecID = new SqlParameter("secID", SqlDbType.Int);
                    sprSecID.Value = SecID;
                    cmd.Parameters.Add(sprSecID);

                    Result = this.ExecuteNonQuery(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
            }
        }

        public override int AddAnswer(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                            string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, int letterFromOrgId, int receivedLetterId, out int indicatorId, out int recommiteId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_insert_AnswerLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprToOrgTitle = new SqlParameter("ToOrgTitle", SqlDbType.NVarChar, 100);
                SqlParameter sprSignerid = new SqlParameter("Signerid", SqlDbType.NVarChar, 50);
                SqlParameter sprClassificationID = new SqlParameter("ClassificationID", SqlDbType.TinyInt);
                SqlParameter sprUrgencyID = new SqlParameter("UrgencyID", SqlDbType.Int, 4);
                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NVarChar, 500);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprRetroactionNo = new SqlParameter("RetroactionNo", SqlDbType.NVarChar, 50);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprFollowLetterNo = new SqlParameter("FollowLetterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprToStaffer = new SqlParameter("ToStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFromstaffer = new SqlParameter("fromstaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprLetterFromOrgId = new SqlParameter("LetterFromOrgId", SqlDbType.Int, 4);
                SqlParameter sprReceivedLetterId = new SqlParameter("ReceivedLetterId", SqlDbType.Int, 4);

                //Output Parameter
                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                sprLetterID.Direction = ParameterDirection.Output;
                SqlParameter sprIndicatorID = new SqlParameter("Indicator", SqlDbType.Int, 4);
                sprIndicatorID.Direction = ParameterDirection.Output;
                SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int, 4);
                sprRecommiteID.Direction = ParameterDirection.Output;

                //initialize parameter
                sprToOrgTitle.Value = toOrgTitle;
                sprSignerid.Value = signerId;
                sprClassificationID.Value = classificationID;
                sprUrgencyID.Value = urgencyID;
                sprMemo.Value = memo;
                sprUserID.Value = userID;
                sprRetroactionNo.Value = retroactionNo;
                sprUserMemo.Value = userMemo;
                sprFollowLetterNo.Value = followLetterNo;
                sprToStaffer.Value = toStaffer;
                sprFromstaffer.Value = fromStaffer;
                sprLetterFromOrgId.Value = letterFromOrgId;
                sprReceivedLetterId.Value = receivedLetterId;

                //Add Patameters
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprRecommiteID);
                cmd.Parameters.Add(sprIndicatorID);
                cmd.Parameters.Add(sprToOrgTitle);
                cmd.Parameters.Add(sprSignerid);
                cmd.Parameters.Add(sprClassificationID);
                cmd.Parameters.Add(sprUrgencyID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprRetroactionNo);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprFollowLetterNo);
                cmd.Parameters.Add(sprToStaffer);
                cmd.Parameters.Add(sprFromstaffer);
                cmd.Parameters.Add(sprLetterFromOrgId);
                cmd.Parameters.Add(sprReceivedLetterId);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();

                    indicatorId = (int)sprIndicatorID.Value;
                    recommiteId = (int)sprRecommiteID.Value;
                    return (int)sprLetterID.Value;
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
        }

        public override void AnswerLetter(int letterID, int answerLetterID, string today)//*
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
               // try
               // {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("AnswerLetter", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Bit);
                    sprLetterID.Value = letterID;
                    cmd.Parameters.Add(sprLetterID);

                    SqlParameter sprAnswerLetterID = new SqlParameter("AnswerLetterID", SqlDbType.Int);
                    sprAnswerLetterID.Value = answerLetterID;
                    cmd.Parameters.Add(sprAnswerLetterID);

                    SqlParameter sprToday = new SqlParameter("Today", SqlDbType.Char, 10);
                    sprToday.Value = today;
                    cmd.Parameters.Add(sprToday);

                    Result = this.ExecuteNonQuery(cmd);
/*
                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }*/
            }
        }

        public override DataTable GetLetterArchiveHistory(int letterId, int userId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_GetLetterArchiveHistory", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("letterId", letterId);
                    cmd.Parameters.AddWithValue("userId", userId);

                    return this.ExecuteDataTable(cmd);
                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
            }
        }

        public override void SetFinalizeValue(int letterId, bool isFinalized)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("update_Letter_Finalized", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterId = new SqlParameter("LetterId", SqlDbType.Int);
                SqlParameter sprFinalize = new SqlParameter("Finalized", SqlDbType.Bit);

                sprLetterId.Value = letterId;
                sprFinalize.Value = (isFinalized ? 1 : 0);

                cmd.Parameters.Add(sprLetterId);
                cmd.Parameters.Add(sprFinalize);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
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
        }

        public override int AddDraft(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                            string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer,out int indicatorId , out int recommiteId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_insert_DraftLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprToOrgTitle = new SqlParameter("ToOrgTitle", SqlDbType.NVarChar, 100);
                SqlParameter sprSignerid = new SqlParameter("Signerid", SqlDbType.NVarChar, 50);
                SqlParameter sprClassificationID = new SqlParameter("ClassificationID", SqlDbType.TinyInt);
                SqlParameter sprUrgencyID = new SqlParameter("UrgencyID", SqlDbType.Int, 4);
                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NVarChar, 500);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprRetroactionNo = new SqlParameter("RetroactionNo", SqlDbType.NVarChar, 50);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprFollowLetterNo = new SqlParameter("FollowLetterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprToStaffer = new SqlParameter("ToStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFromstaffer = new SqlParameter("fromstaffer", SqlDbType.NVarChar, 50);

                //Output Parameter
                SqlParameter sprIndicator = new SqlParameter("Indicator", SqlDbType.Int, 4);
                sprIndicator.Direction = ParameterDirection.Output;
                SqlParameter sprLetterId = new SqlParameter("LetterId", SqlDbType.Int, 4);
                sprLetterId.Direction = ParameterDirection.Output;
                SqlParameter sprRecommiteId = new SqlParameter("RecommiteId", SqlDbType.Int, 4);
                sprRecommiteId.Direction = ParameterDirection.Output;

                //initialize parameter
                sprToOrgTitle.Value = toOrgTitle;
                sprSignerid.Value = signerId;
                sprClassificationID.Value = classificationID;
                sprUrgencyID.Value = urgencyID;
                sprMemo.Value = memo;
                sprUserID.Value = userID;
                sprRetroactionNo.Value = retroactionNo;
                sprUserMemo.Value = userMemo;
                sprFollowLetterNo.Value = followLetterNo;
                sprToStaffer.Value = toStaffer;
                sprFromstaffer.Value = fromStaffer;

                //Add Patameters
                cmd.Parameters.Add(sprIndicator);
                cmd.Parameters.Add(sprLetterId);
                cmd.Parameters.Add(sprRecommiteId);
                cmd.Parameters.Add(sprToOrgTitle);
                cmd.Parameters.Add(sprSignerid);
                cmd.Parameters.Add(sprClassificationID);
                cmd.Parameters.Add(sprUrgencyID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprRetroactionNo);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprFollowLetterNo);
                cmd.Parameters.Add(sprToStaffer);
                cmd.Parameters.Add(sprFromstaffer);

                     cn.Open();
                    cmd.ExecuteNonQuery();
                    indicatorId = (int)sprIndicator.Value;
                    recommiteId = (int)sprRecommiteId.Value;
                    return (int)sprLetterId.Value;
               
            }
        }


        public override int AddSentLetter(string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                           string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer,int fromOrgId,
                           byte numberOfPages, byte receiveTypeId, out int indicatorId, out int recommiteId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_insert_SentLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprToOrgTitle = new SqlParameter("ToOrgTitle", SqlDbType.NVarChar, 100);
                SqlParameter sprSignerid = new SqlParameter("Signerid", SqlDbType.NVarChar, 50);
                SqlParameter sprClassificationID = new SqlParameter("ClassificationID", SqlDbType.TinyInt);
                SqlParameter sprUrgencyID = new SqlParameter("UrgencyID", SqlDbType.Int, 4);
                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NVarChar, 500);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprRetroactionNo = new SqlParameter("RetroactionNo", SqlDbType.NVarChar, 50);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprFollowLetterNo = new SqlParameter("FollowLetterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprToStaffer = new SqlParameter("ToStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFromstaffer = new SqlParameter("fromstaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFromOrgId = new SqlParameter("FromOrgId", SqlDbType.Int);
                SqlParameter sprNumberOfPages = new SqlParameter("NumberofPage", SqlDbType.TinyInt);
                SqlParameter sprRecieveTypeId = new SqlParameter("ReceiveTypeID", SqlDbType.TinyInt);

                //Output Parameter
                SqlParameter sprIndicator = new SqlParameter("Indicator", SqlDbType.Int, 4);
                sprIndicator.Direction = ParameterDirection.Output;
                SqlParameter sprLetterId = new SqlParameter("LetterId", SqlDbType.Int, 4);
                sprLetterId.Direction = ParameterDirection.Output;
                SqlParameter sprRecommiteId = new SqlParameter("RecommiteId", SqlDbType.Int, 4);
                sprRecommiteId.Direction = ParameterDirection.Output;

                //initialize parameter
                sprToOrgTitle.Value = toOrgTitle;
                sprSignerid.Value = signerId;
                sprClassificationID.Value = classificationID;
                sprUrgencyID.Value = urgencyID;
                sprMemo.Value = memo;
                sprUserID.Value = userID;
                sprRetroactionNo.Value = retroactionNo;
                sprUserMemo.Value = userMemo;
                sprFollowLetterNo.Value = followLetterNo;
                sprToStaffer.Value = toStaffer;
                sprFromstaffer.Value = fromStaffer;
                sprFromOrgId.Value = fromOrgId;
                sprNumberOfPages.Value = numberOfPages;
                sprRecieveTypeId.Value = receiveTypeId;

                //Add Patameters
                cmd.Parameters.Add(sprIndicator);
                cmd.Parameters.Add(sprLetterId);
                cmd.Parameters.Add(sprRecommiteId);
                cmd.Parameters.Add(sprToOrgTitle);
                cmd.Parameters.Add(sprSignerid);
                cmd.Parameters.Add(sprClassificationID);
                cmd.Parameters.Add(sprUrgencyID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprRetroactionNo);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprFollowLetterNo);
                cmd.Parameters.Add(sprToStaffer);
                cmd.Parameters.Add(sprFromstaffer);
                cmd.Parameters.Add(sprFromOrgId);
                cmd.Parameters.Add(sprNumberOfPages);
                cmd.Parameters.Add(sprRecieveTypeId);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    indicatorId = (int)sprIndicator.Value;
                    recommiteId = (int)sprRecommiteId.Value;
                    return (int)sprLetterId.Value;
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
        }

        public override int AddReceivedLetter(string incommingNo, string incommingDate, string centerNo, string centerDate, string toOrgTitle, string signerId, byte classificationID, Int16 urgencyID, string memo, int userID,
                    string retroactionNo, string userMemo, string followLetterNo, string toStaffer, string fromStaffer, int fromOrgId,
                    byte numberOfPages, byte receiveTypeId, out int indicatorId, out int recommiteId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_insert_ReceivedLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprIncommingNo = new SqlParameter("IncommingNo", SqlDbType.NVarChar, 50);
                SqlParameter sprIncommingDate = new SqlParameter("IncommingDate", SqlDbType.NVarChar, 10);
                SqlParameter sprCenterNo = new SqlParameter("CenterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprCenterDate = new SqlParameter("CenterDate", SqlDbType.NVarChar, 10);
                SqlParameter sprToOrgTitle = new SqlParameter("ToOrgTitle", SqlDbType.NVarChar, 100);
                SqlParameter sprSignerid = new SqlParameter("Signerid", SqlDbType.NVarChar, 50);
                SqlParameter sprClassificationID = new SqlParameter("ClassificationID", SqlDbType.TinyInt);
                SqlParameter sprUrgencyID = new SqlParameter("UrgencyID", SqlDbType.Int, 4);
                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NVarChar, 500);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprRetroactionNo = new SqlParameter("RetroactionNo", SqlDbType.NVarChar, 50);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprFollowLetterNo = new SqlParameter("FollowLetterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprToStaffer = new SqlParameter("ToStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFromstaffer = new SqlParameter("fromstaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFromOrgId = new SqlParameter("FromOrgId", SqlDbType.Int);
                SqlParameter sprNumberOfPages = new SqlParameter("NumberofPage", SqlDbType.TinyInt);
                SqlParameter sprRecieveTypeId = new SqlParameter("ReceiveTypeID", SqlDbType.TinyInt);

                //Output Parameter
                SqlParameter sprIndicator = new SqlParameter("Indicator", SqlDbType.Int, 4);
                sprIndicator.Direction = ParameterDirection.Output;
                SqlParameter sprLetterId = new SqlParameter("LetterId", SqlDbType.Int, 4);
                sprLetterId.Direction = ParameterDirection.Output;
                SqlParameter sprRecommiteId = new SqlParameter("RecommiteId", SqlDbType.Int, 4);
                sprRecommiteId.Direction = ParameterDirection.Output;

                //initialize parameter
                sprIncommingNo.Value = incommingNo;
                sprIncommingDate.Value = incommingDate;
                sprCenterNo.Value = centerNo;
                sprCenterDate.Value = centerDate;
                sprToOrgTitle.Value = toOrgTitle;
                sprSignerid.Value = signerId;
                sprClassificationID.Value = classificationID;
                sprUrgencyID.Value = urgencyID;
                sprMemo.Value = memo;
                sprUserID.Value = userID;
                sprRetroactionNo.Value = retroactionNo;
                sprUserMemo.Value = userMemo;
                sprFollowLetterNo.Value = followLetterNo;
                sprToStaffer.Value = toStaffer;
                sprFromstaffer.Value = fromStaffer;
                sprFromOrgId.Value = fromOrgId;
                sprNumberOfPages.Value = numberOfPages;
                sprRecieveTypeId.Value = receiveTypeId;

                //Add Patameters
                cmd.Parameters.Add(sprIndicator);
                cmd.Parameters.Add(sprLetterId);
                cmd.Parameters.Add(sprRecommiteId);
                cmd.Parameters.Add(sprToOrgTitle);
                cmd.Parameters.Add(sprSignerid);
                cmd.Parameters.Add(sprClassificationID);
                cmd.Parameters.Add(sprUrgencyID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprRetroactionNo);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprFollowLetterNo);
                cmd.Parameters.Add(sprToStaffer);
                cmd.Parameters.Add(sprIncommingNo);
                cmd.Parameters.Add(sprIncommingDate);
                cmd.Parameters.Add(sprCenterDate);
                cmd.Parameters.Add(sprCenterNo);
                cmd.Parameters.Add(sprFromstaffer);
                cmd.Parameters.Add(sprFromOrgId);
                cmd.Parameters.Add(sprNumberOfPages);
                cmd.Parameters.Add(sprRecieveTypeId);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    indicatorId = (int)sprIndicator.Value;
                    recommiteId = (int)sprRecommiteId.Value;
                    return (int)sprLetterId.Value;
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
        }

        public override int AddInner(string memo, int userId, string userMemo,string html)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_insert_InnerLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NText);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprhtml = new SqlParameter("html", SqlDbType.NText);

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                sprLetterID.Direction = ParameterDirection.Output;
               
                sprMemo.Value = memo;
                sprUserID.Value = userId;
                sprUserMemo.Value = userMemo;
                sprhtml.Value=html;

                //Add Patameters
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprhtml);

              
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    return (int)sprLetterID.Value;
                
            }
        }

        public override bool Add(LetterDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("InsertLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprIndicatorID = new SqlParameter("IndicatorID", SqlDbType.Int, 4);
                SqlParameter sprMYear = new SqlParameter("MYear", SqlDbType.TinyInt);
                SqlParameter sprSecretariatID = new SqlParameter("SecretariatID", SqlDbType.TinyInt);
                SqlParameter sprLetter_Type = new SqlParameter("Letter_Type", SqlDbType.TinyInt);
                SqlParameter sprLetterformat = new SqlParameter("Letterformat", SqlDbType.TinyInt);
                SqlParameter sprIncommingNO = new SqlParameter("IncommingNO", SqlDbType.NVarChar, 50);
                SqlParameter sprIncommingdate = new SqlParameter("Incommingdate", SqlDbType.NVarChar, 10);
                SqlParameter sprCenterNo = new SqlParameter("CenterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprCenterDate = new SqlParameter("CenterDate", SqlDbType.Char, 10);
                SqlParameter sprFromOrgID = new SqlParameter("FromOrgID", SqlDbType.Int, 4);
                SqlParameter sprToOrgID = new SqlParameter("ToOrgID", SqlDbType.Int, 4);
                SqlParameter sprSignerid = new SqlParameter("Signerid", SqlDbType.NVarChar, 50);
                SqlParameter sprClassificationID = new SqlParameter("ClassificationID", SqlDbType.TinyInt);
                SqlParameter sprUrgencyID = new SqlParameter("UrgencyID", SqlDbType.Int, 4);
                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NVarChar, 500);
                SqlParameter sprAttachTitle = new SqlParameter("AttachTitle", SqlDbType.NVarChar, 50);
                SqlParameter sprNumberOfAttachPages = new SqlParameter("NumberOfAttachPages", SqlDbType.TinyInt);
                SqlParameter sprNumberOfPage = new SqlParameter("NumberOfPage", SqlDbType.TinyInt);
                SqlParameter sprReceiveTypeID = new SqlParameter("ReceiveTypeID", SqlDbType.TinyInt);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprRetroactionNo = new SqlParameter("RetroactionNo", SqlDbType.NVarChar, 50);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprRegistrationDate = new SqlParameter("RegistrationDate", SqlDbType.Char, 10);
                SqlParameter sprRegistrationTime = new SqlParameter("RegistrationTime", SqlDbType.VarChar, 5);
                SqlParameter sprFollowLetterNo = new SqlParameter("FollowLetterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprToStaffer = new SqlParameter("ToStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprSentLetterID = new SqlParameter("SentLetterID", SqlDbType.VarChar, 1000);
                SqlParameter sprTemplateID = new SqlParameter("TemplateID", SqlDbType.Int, 4);
                SqlParameter sprHeaderID = new SqlParameter("HeaderID", SqlDbType.Int, 4);
                SqlParameter sprLetterRecommites = new SqlParameter("LetterRecommites", SqlDbType.NVarChar, 500);
                SqlParameter sprPreCode = new SqlParameter("PreCode", SqlDbType.NVarChar, 50);
                SqlParameter sprFromstaffer = new SqlParameter("fromstaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFinalized = new SqlParameter("Finalized", SqlDbType.Bit);
                SqlParameter sprSendStatusID = new SqlParameter("SendStatusID", SqlDbType.TinyInt);
                SqlParameter sprLastUpdate = new SqlParameter("LastUpdate", SqlDbType.VarChar, 10);
                SqlParameter sprUserTableID = new SqlParameter("UserTableID", SqlDbType.Int, 4);
                SqlParameter sprHtml = new SqlParameter("Html", SqlDbType.NText);

                //Output Parameter
                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                sprLetterID.Direction = ParameterDirection.Output;

                //initialize parameter
                sprIndicatorID.Value = item.IndicatorID;
                sprMYear.Value = item.MYear;
                sprSecretariatID.Value = item.SecretariatID;
                sprLetter_Type.Value = item.Letter_Type;
                sprLetterformat.Value = item.Letterformat;
                sprIncommingNO.Value = item.IncommingNO;
                sprIncommingdate.Value = item.Incommingdate;
                sprCenterNo.Value = item.CenterNo;
                sprCenterDate.Value = item.CenterDate;
                sprFromOrgID.Value = item.FromOrgID;
                sprToOrgID.Value = item.ToOrgID;
                sprSignerid.Value = item.Signerid;
                sprClassificationID.Value = item.ClassificationID;
                sprUrgencyID.Value = item.UrgencyID;
                sprMemo.Value = item.Memo;
                sprAttachTitle.Value = item.AttachTitle;
                sprNumberOfAttachPages.Value = item.NumberOfAttachPages;
                sprNumberOfPage.Value = item.NumberOfPage;
                sprReceiveTypeID.Value = item.ReceiveTypeID;
                sprUserID.Value = item.UserID;
                sprRetroactionNo.Value = item.RetroactionNo;
                sprUserMemo.Value = item.UserMemo;
                sprRegistrationDate.Value = item.RegistrationDate;
                sprRegistrationTime.Value = item.RegistrationTime;
                sprFollowLetterNo.Value = item.FollowLetterNo;
                sprToStaffer.Value = item.ToStaffer;
                sprSentLetterID.Value = item.SentLetterID;
                sprTemplateID.Value = item.TemplateID;
                sprHeaderID.Value = item.HeaderID;
                sprLetterRecommites.Value = item.LetterRecommites;
                sprFromstaffer.Value = item.Fromstaffer;
                sprFinalized.Value = item.Finalized;
                sprSendStatusID.Value = item.SendStatusID;
                sprLastUpdate.Value = item.LastUpdate;
                sprUserTableID.Value = item.UserTableID;
                sprHtml.Value = item.Html;

                //Add Patameters
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprIndicatorID);
                cmd.Parameters.Add(sprMYear);
                cmd.Parameters.Add(sprSecretariatID);
                cmd.Parameters.Add(sprLetter_Type);
                cmd.Parameters.Add(sprLetterformat);
                cmd.Parameters.Add(sprIncommingNO);
                cmd.Parameters.Add(sprIncommingdate);
                cmd.Parameters.Add(sprCenterNo);
                cmd.Parameters.Add(sprCenterDate);
                cmd.Parameters.Add(sprFromOrgID);
                cmd.Parameters.Add(sprToOrgID);
                cmd.Parameters.Add(sprSignerid);
                cmd.Parameters.Add(sprClassificationID);
                cmd.Parameters.Add(sprUrgencyID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprAttachTitle);
                cmd.Parameters.Add(sprNumberOfAttachPages);
                cmd.Parameters.Add(sprNumberOfPage);
                cmd.Parameters.Add(sprReceiveTypeID);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprRetroactionNo);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprRegistrationDate);
                cmd.Parameters.Add(sprRegistrationTime);
                cmd.Parameters.Add(sprFollowLetterNo);
                cmd.Parameters.Add(sprToStaffer);
                cmd.Parameters.Add(sprSentLetterID);
                cmd.Parameters.Add(sprTemplateID);
                cmd.Parameters.Add(sprHeaderID);
                cmd.Parameters.Add(sprLetterRecommites);
                cmd.Parameters.Add(sprFromstaffer);
                cmd.Parameters.Add(sprFinalized);
                cmd.Parameters.Add(sprSendStatusID);
                cmd.Parameters.Add(sprLastUpdate);
                cmd.Parameters.Add(sprUserTableID);
                cmd.Parameters.Add(sprHtml);


           
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                  
            }
        }

        public override bool Update(LetterDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("UpdateLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprIndicatorID = new SqlParameter("IndicatorID", SqlDbType.Int, 4);
                SqlParameter sprMYear = new SqlParameter("MYear", SqlDbType.TinyInt);
                SqlParameter sprSecretariatID = new SqlParameter("SecretariatID", SqlDbType.TinyInt);
                SqlParameter sprLetter_Type = new SqlParameter("Letter_Type", SqlDbType.TinyInt);
                SqlParameter sprLetterformat = new SqlParameter("Letterformat", SqlDbType.TinyInt);
                SqlParameter sprIncommingNO = new SqlParameter("IncommingNO", SqlDbType.NVarChar, 50);
                SqlParameter sprIncommingdate = new SqlParameter("Incommingdate", SqlDbType.NVarChar, 10);
                SqlParameter sprCenterNo = new SqlParameter("CenterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprCenterDate = new SqlParameter("CenterDate", SqlDbType.Char, 10);
                SqlParameter sprFromOrgID = new SqlParameter("FromOrgID", SqlDbType.Int, 4);
                SqlParameter sprToOrgID = new SqlParameter("ToOrgID", SqlDbType.Int, 4);
                SqlParameter sprSignerid = new SqlParameter("Signerid", SqlDbType.NVarChar, 50);
                SqlParameter sprClassificationID = new SqlParameter("ClassificationID", SqlDbType.TinyInt);
                SqlParameter sprUrgencyID = new SqlParameter("UrgencyID", SqlDbType.Int, 4);
                SqlParameter sprMemo = new SqlParameter("Memo", SqlDbType.NVarChar, 500);
                SqlParameter sprAttachTitle = new SqlParameter("AttachTitle", SqlDbType.NVarChar, 50);
                SqlParameter sprNumberOfAttachPages = new SqlParameter("NumberOfAttachPages", SqlDbType.TinyInt);
                SqlParameter sprNumberOfPage = new SqlParameter("NumberOfPage", SqlDbType.TinyInt);
                SqlParameter sprReceiveTypeID = new SqlParameter("ReceiveTypeID", SqlDbType.TinyInt);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.Int, 4);
                SqlParameter sprRetroactionNo = new SqlParameter("RetroactionNo", SqlDbType.NVarChar, 50);
                SqlParameter sprUserMemo = new SqlParameter("UserMemo", SqlDbType.NVarChar, 255);
                SqlParameter sprRegistrationDate = new SqlParameter("RegistrationDate", SqlDbType.Char, 10);
                SqlParameter sprRegistrationTime = new SqlParameter("RegistrationTime", SqlDbType.VarChar, 5);
                SqlParameter sprFollowLetterNo = new SqlParameter("FollowLetterNo", SqlDbType.NVarChar, 50);
                SqlParameter sprToStaffer = new SqlParameter("ToStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprSentLetterID = new SqlParameter("SentLetterID", SqlDbType.VarChar, 1000);
                SqlParameter sprTemplateID = new SqlParameter("TemplateID", SqlDbType.Int, 4);
                SqlParameter sprHeaderID = new SqlParameter("HeaderID", SqlDbType.Int, 4);
                SqlParameter sprLetterRecommites = new SqlParameter("LetterRecommites", SqlDbType.NVarChar, 500);
                SqlParameter sprPreCode = new SqlParameter("PreCode", SqlDbType.NVarChar, 50);
                SqlParameter sprFromstaffer = new SqlParameter("fromstaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprFinalized = new SqlParameter("Finalized", SqlDbType.Bit);
                SqlParameter sprSendStatusID = new SqlParameter("SendStatusID", SqlDbType.TinyInt);
                SqlParameter sprLastUpdate = new SqlParameter("LastUpdate", SqlDbType.VarChar, 10);
                SqlParameter sprUserTableID = new SqlParameter("UserTableID", SqlDbType.Int, 4);
                SqlParameter sprHtml = new SqlParameter("Html", SqlDbType.NText);

                //initialize parameter
                sprLetterID.Value = item.LetterID;
                sprIndicatorID.Value = item.IndicatorID;
                sprMYear.Value = item.MYear;
                sprSecretariatID.Value = item.SecretariatID;
                sprLetter_Type.Value = item.Letter_Type;
                sprLetterformat.Value = item.Letterformat;
                sprIncommingNO.Value = item.IncommingNO;
                sprIncommingdate.Value = item.Incommingdate;
                sprCenterNo.Value = item.CenterNo;
                sprCenterDate.Value = item.CenterDate;
                sprFromOrgID.Value = item.FromOrgID;
                sprToOrgID.Value = item.ToOrgID;
                sprSignerid.Value = item.Signerid;
                sprClassificationID.Value = item.ClassificationID;
                sprUrgencyID.Value = item.UrgencyID;
                sprMemo.Value = item.Memo;
                sprAttachTitle.Value = item.AttachTitle;
                sprNumberOfAttachPages.Value = item.NumberOfAttachPages;
                sprNumberOfPage.Value = item.NumberOfPage;
                sprReceiveTypeID.Value = item.ReceiveTypeID;
                sprUserID.Value = item.UserID;
                sprRetroactionNo.Value = item.RetroactionNo;
                sprUserMemo.Value = item.UserMemo;
                sprRegistrationDate.Value = item.RegistrationDate;
                sprRegistrationTime.Value = item.RegistrationTime;
                sprFollowLetterNo.Value = item.FollowLetterNo;
                sprToStaffer.Value = item.ToStaffer;
                sprSentLetterID.Value = item.SentLetterID;
                sprTemplateID.Value = item.TemplateID;
                sprHeaderID.Value = item.HeaderID;
                sprLetterRecommites.Value = item.LetterRecommites;
                sprFromstaffer.Value = item.Fromstaffer;
                sprFinalized.Value = item.Finalized;
                sprSendStatusID.Value = item.SendStatusID;
                sprLastUpdate.Value = item.LastUpdate;
                sprUserTableID.Value = item.UserTableID;
                sprHtml.Value = item.Html;

                //Add Parameters
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprIndicatorID);
                cmd.Parameters.Add(sprMYear);
                cmd.Parameters.Add(sprSecretariatID);
                cmd.Parameters.Add(sprLetter_Type);
                cmd.Parameters.Add(sprLetterformat);
                cmd.Parameters.Add(sprIncommingNO);
                cmd.Parameters.Add(sprIncommingdate);
                cmd.Parameters.Add(sprCenterNo);
                cmd.Parameters.Add(sprCenterDate);
                cmd.Parameters.Add(sprFromOrgID);
                cmd.Parameters.Add(sprToOrgID);
                cmd.Parameters.Add(sprSignerid);
                cmd.Parameters.Add(sprClassificationID);
                cmd.Parameters.Add(sprUrgencyID);
                cmd.Parameters.Add(sprMemo);
                cmd.Parameters.Add(sprAttachTitle);
                cmd.Parameters.Add(sprNumberOfAttachPages);
                cmd.Parameters.Add(sprNumberOfPage);
                cmd.Parameters.Add(sprReceiveTypeID);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprRetroactionNo);
                cmd.Parameters.Add(sprUserMemo);
                cmd.Parameters.Add(sprRegistrationDate);
                cmd.Parameters.Add(sprRegistrationTime);
                cmd.Parameters.Add(sprFollowLetterNo);
                cmd.Parameters.Add(sprToStaffer);
                cmd.Parameters.Add(sprSentLetterID);
                cmd.Parameters.Add(sprTemplateID);
                cmd.Parameters.Add(sprHeaderID);
                cmd.Parameters.Add(sprLetterRecommites);
                cmd.Parameters.Add(sprFromstaffer);
                cmd.Parameters.Add(sprFinalized);
                cmd.Parameters.Add(sprSendStatusID);
                cmd.Parameters.Add(sprLastUpdate);
                cmd.Parameters.Add(sprUserTableID);
                cmd.Parameters.Add(sprHtml);


                
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                
            }
        }

        public override bool Delete(LetterDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_Letter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprIndicatorID = new SqlParameter("IndicatorID", SqlDbType.Int, 4);

                //initialize parameter
                sprLetterID.Value = item.LetterID;
                sprIndicatorID.Value = item.IndicatorID;

                //Add Parameters
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprIndicatorID);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    return true;
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
        }

        public override bool Delete(Int32 LetterId, Int32 IndicatorID)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_Letter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprIndicatorID = new SqlParameter("IndicatorID", SqlDbType.Int, 4);

                //initialize parameter
                sprLetterID.Value = LetterId;
                sprIndicatorID.Value = IndicatorID;

                //Add Parameters
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprIndicatorID);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    return true;
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
        }

        public override void DeletedToLetter(int LetterID, int IndicatorId, string today)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Deleted_to_Letter", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Bit);
                    sprLetterID.Value = LetterID;
                    cmd.Parameters.Add(sprLetterID);

                    SqlParameter sprIndicatorID = new SqlParameter("IndicatorId", SqlDbType.Int);
                    sprIndicatorID.Value = IndicatorId;
                    cmd.Parameters.Add(sprIndicatorID);

                    SqlParameter sprtoday = new SqlParameter("today", SqlDbType.Char, 10);
                    sprtoday.Value = today;
                    cmd.Parameters.Add(sprtoday);

                    Result = this.ExecuteNonQuery(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
            }
        }

        #endregion
    }

}
