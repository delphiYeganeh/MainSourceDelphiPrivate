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
    public class sqlRecommiteProvider : Cartable.Dal.RecommitProvider
    {
        public sqlRecommiteProvider()
        {           
        }

        #region Methods

        public override System.Collections.Generic.List<RecommitDetails> GetAll()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("GetRecommitList", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    // cmd.CommandTimeout = 60;
                    return GetRecommitListFromReader(this.ExecuteReader(cmd));
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

        public override RecommitDetails GetItemById(int Id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_GetRecommiteById", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter sprRecommiteId = new SqlParameter("RecommiteID", SqlDbType.Int);
                    sprRecommiteId.Value = Id;
                    cmd.Parameters.Add(sprRecommiteId);
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
                    return GetRecommitFromReader(reader);
                }
                else
                {
                    return null;
                }

            }
        }

        public override List<RecommitDetails> GetLetterRecommits(Int32 letterId,byte type)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
              /*  try
                {*/
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_Select_LetterReCommite", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprLetterId = new SqlParameter("LetterID", SqlDbType.Int);
                    sprLetterId.Value = letterId;
                    SqlParameter sprType = new SqlParameter("type", SqlDbType.Int);
                    sprType.Value = type;

                    cmd.Parameters.Add(sprLetterId);
                    cmd.Parameters.Add(sprType);

                    reader = this.ExecuteReader(cmd);

               /* }
            
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }*/

                return GetRecommitListFromReader(reader);
            }
        }

        public override void ActivateRecommite(int RecommiteID)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Activate_Recommite", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int);
                    sprRecommiteID.Value = RecommiteID;
                    cmd.Parameters.Add(sprRecommiteID);

                    Result = this.ExecuteNonQuery(cmd);

                }
                catch (SqlException er)
                {
                    string s = er.Message;
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                }
            }
        }

        public override void AnswerNote(int RecommiteID)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("AnswerNote", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int);
                    sprRecommiteID.Value = RecommiteID;
                    cmd.Parameters.Add(sprRecommiteID);

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

        public override int ArchiveRecommite(int recommiteID, int archiveFolderID, string archiveDate, int page, string archiveNote, string staffMemo)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_ArchiveRecommite", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprLetterArchiveID = new SqlParameter("LetterArchiveID", SqlDbType.Int);
                    sprLetterArchiveID.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(sprLetterArchiveID);

                    SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int);
                    sprRecommiteID.Value = recommiteID;
                    cmd.Parameters.Add(sprRecommiteID);

                    SqlParameter sprArchiveFolderID = new SqlParameter("ArchiveFolderID", SqlDbType.Int);
                    sprArchiveFolderID.Value = archiveFolderID;
                    cmd.Parameters.Add(sprArchiveFolderID);

                    SqlParameter sprArchiveDate = new SqlParameter("ArchiveDate", SqlDbType.Char, 10);
                    sprArchiveDate.Value = archiveDate;
                    cmd.Parameters.Add(sprArchiveDate);

                    SqlParameter sprPage = new SqlParameter("Page", SqlDbType.Int);
                    sprPage.Value = page;
                    cmd.Parameters.Add(sprPage);

                    SqlParameter sprArchiveNote = new SqlParameter("ArchiveNotes", SqlDbType.NVarChar, 50);
                    sprArchiveNote.Value = archiveNote;
                    cmd.Parameters.Add(sprArchiveNote);

                    SqlParameter sprStaffMemo = new SqlParameter("StaffMemo", SqlDbType.NVarChar, 255);
                    sprStaffMemo.Value = staffMemo;
                    cmd.Parameters.Add(sprStaffMemo);

                    Result = this.ExecuteNonQuery(cmd);

                    return (int)sprLetterArchiveID.Value;

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

        public override void Proceed(int RecommiteID)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                int Result;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_ProceedRecommite", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int);
                    sprRecommiteID.Value = RecommiteID;
                    cmd.Parameters.Add(sprRecommiteID);

                    Result = this.ExecuteNonQuery(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, ex);
                    //return null;
                }
            }
        }

        public override bool Add(RecommitDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_insert_NewReCommite", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprType = new SqlParameter("Type", SqlDbType.TinyInt);
                SqlParameter sprParentId = new SqlParameter("ParentId", SqlDbType.Int, 4);
                SqlParameter sprOrgID = new SqlParameter("OrgID", SqlDbType.Int, 4);
                SqlParameter sprParaph = new SqlParameter("Paraph", SqlDbType.NVarChar , 500);
                SqlParameter sprRecommiteDate = new SqlParameter("RecommiteDate", SqlDbType.VarChar, 10);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.TinyInt);
                SqlParameter sprIsCopy = new SqlParameter("IsCopy", SqlDbType.Bit);
                SqlParameter sprProceeded = new SqlParameter("Proceeded", SqlDbType.Bit);
                //SqlParameter sprProceedDate = new SqlParameter("ProceedDate", SqlDbType.VarChar , 10);
                //SqlParameter sprStaffmemo = new SqlParameter("Staffmemo", SqlDbType.NVarChar , 255);
                //SqlParameter sprViewdate = new SqlParameter("Viewdate", SqlDbType.Char, 10);
                //SqlParameter sprOrgStaff = new SqlParameter("OrgStaff", SqlDbType.NVarChar, 50);
                //SqlParameter sprDeadLineDate = new SqlParameter("DeadLineDate", SqlDbType.Char, 10);

                //Output Parameter
                SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int, 4);
                sprRecommiteID.Direction = ParameterDirection.Output;

                //initialize parameter
                sprLetterID.Value = item.LetterID;
                sprType.Value = item.Type;
                sprParentId.Value = item.ParentId;
                sprOrgID.Value = item.OrgID;
                sprParaph.Value = item.Paraph;
                sprUserID.Value = item.UserID;
                sprIsCopy.Value = item.IsCopy;
                sprProceeded.Value = item.Proceeded;
                sprRecommiteDate.Value = item.RecommiteDate;
                //sprStaffmemo.Value = item.Staffmemo;
                //sprViewdate.Value = item.Viewdate;
                //sprOrgStaff.Value = item.OrgStaff;
                //sprDeadLineDate.Value = item.DeadLineDate;

                //Add Patameters
                cmd.Parameters.Add(sprRecommiteID);
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprType);
                cmd.Parameters.Add(sprParentId);
                cmd.Parameters.Add(sprParaph);
                cmd.Parameters.Add(sprRecommiteDate);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprIsCopy);
                cmd.Parameters.Add(sprProceeded);
                cmd.Parameters.Add(sprOrgID);
                //cmd.Parameters.Add(sprStaffmemo);
                //cmd.Parameters.Add(sprViewdate);
                //cmd.Parameters.Add(sprOrgStaff);
                //cmd.Parameters.Add(sprDeadLineDate);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                    return true;//(int)sprRecommiteID.Value;
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

        public override bool Update(RecommitDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("UpdateRecommit", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int, 4);
                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprID = new SqlParameter("ID", SqlDbType.Int, 4);
                SqlParameter sprType = new SqlParameter("Type", SqlDbType.TinyInt);
                SqlParameter sprParentId = new SqlParameter("ParentId", SqlDbType.Int, 4);
                SqlParameter sprOrgID = new SqlParameter("OrgID", SqlDbType.Int, 4);
                SqlParameter sprParaph = new SqlParameter("Paraph", SqlDbType.NVarChar, 500);
                SqlParameter sprRecommiteDate = new SqlParameter("RecommiteDate", SqlDbType.NVarChar, 10);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.TinyInt);
                SqlParameter sprIsCopy = new SqlParameter("IsCopy", SqlDbType.Bit);
                SqlParameter sprProceeded = new SqlParameter("Proceeded", SqlDbType.Bit);
                SqlParameter sprProceedDate = new SqlParameter("ProceedDate", SqlDbType.VarChar, 10);
                SqlParameter sprStaffmemo = new SqlParameter("Staffmemo", SqlDbType.NVarChar, 255);
                SqlParameter sprViewdate = new SqlParameter("Viewdate", SqlDbType.Char, 10);
                SqlParameter sprOrgStaff = new SqlParameter("OrgStaff", SqlDbType.NVarChar, 50);
                SqlParameter sprDeadLineDate = new SqlParameter("DeadLineDate", SqlDbType.Char, 10);

               
                sprRecommiteID.Value = item.RecommiteID;
                sprLetterID.Value = item.LetterID;
                sprID.Value = item.ID;
                sprType.Value = item.Type;
                sprParentId.Value = item.ParentId;
                sprOrgID.Value = item.OrgID;
                sprParaph.Value = item.Paraph;
                sprUserID.Value = item.UserID;
                sprIsCopy.Value = item.IsCopy;
                sprProceeded.Value = item.Proceeded;
                sprProceedDate.Value = item.ProceedDate;
                sprStaffmemo.Value = item.Staffmemo;
                sprViewdate.Value = item.Viewdate;
                sprOrgStaff.Value = item.OrgStaff;
                sprDeadLineDate.Value = item.DeadLineDate;

                //Add Patameters
                cmd.Parameters.Add(sprRecommiteID);
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprID);
                cmd.Parameters.Add(sprType);
                cmd.Parameters.Add(sprParentId);
                cmd.Parameters.Add(sprParaph);
                cmd.Parameters.Add(sprRecommiteDate);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprIsCopy);
                cmd.Parameters.Add(sprProceeded);
                cmd.Parameters.Add(sprProceedDate);
                cmd.Parameters.Add(sprStaffmemo);
                cmd.Parameters.Add(sprViewdate);
                cmd.Parameters.Add(sprOrgStaff);
                cmd.Parameters.Add(sprDeadLineDate);

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

        public override bool Delete(RecommitDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_ReCommites", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int, 4);

                //initialize parameter
                sprRecommiteID.Value = item.RecommiteID;

                //Add Parameters
                cmd.Parameters.Add(sprRecommiteID);

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

        public override bool Delete(Int32 Id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_ReCommites", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprRecommiteID = new SqlParameter("RecommiteID", SqlDbType.Int, 4);

                //initialize parameter
                sprRecommiteID.Value = Id;

                //Add Parameters
                cmd.Parameters.Add(sprRecommiteID);

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

       
        #endregion
    }
}
