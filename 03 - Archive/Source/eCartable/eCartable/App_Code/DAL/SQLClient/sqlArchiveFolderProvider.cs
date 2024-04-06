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

    public class sqlArchiveFolderProvider : Dal.ArchiveFolderProvider
    {
        public sqlArchiveFolderProvider()
        {
        }

        #region Methods

        

        public override System.Collections.Generic.List<ArchiveFolderDetails> GetAll(int userId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("get_ArchiveFolder_byUserID", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                     SqlParameter sprUserId = new SqlParameter("UserID", SqlDbType.Int);
                    sprUserId.Value = userId;
                    cmd.Parameters.Add(sprUserId);

                    return GetArchiveFolderListFromReader(this.ExecuteReader(cmd));
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

        public override ArchiveFolderDetails GetItemById(int id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select * from " + TableName + " where FolderId=" +id.ToString(), cn);
                     
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
                    return GetArchiveFolderFromReader(reader);
                }
                else
                {
                    return null;
                }

            }
        }

        public override System.Collections.Generic.List<ArchiveFolderDetails> GetChilds(int parentId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select * from " + TableName + " where ParentFolderId=" + parentId.ToString(), cn);
                   
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
                //if (reader.Read())
                //{
                return GetArchiveFolderListFromReader(reader);
                //}
                //else
                //{
                //    return null;
                //}

            }
        }

        //public override List<ArchiveFolderDetails> GetRecommitsByLetterId(Int32 letterId)
        //{
        //    using (SqlConnection cn = new SqlConnection(this.ConnectionString))
        //    {
        //        IDataReader reader = null;
        //        try
        //        {
        //            cn.Open();
        //            SqlCommand cmd = new SqlCommand("Select_recommites_byLetterID", cn);
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            SqlParameter sprLetterId = new SqlParameter("LetterID", SqlDbType.Int);
        //            sprLetterId.Value = letterId;
        //            cmd.Parameters.Add(sprLetterId);
        //            reader = this.ExecuteReader(cmd);

        //        }
        //        catch (SqlException er)
        //        {
        //            string s = er.Message;
        //            throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
        //        }
        //        catch (System.Exception ex)
        //        {
        //            string s = ex.Message;
        //            return null;
        //        }
        //        if (reader.Read())
        //        {
        //            return GetRecommitListFromReader(reader);
        //        }
        //        else
        //        {
        //            return null;
        //        }

        //    }
        //}

        public override bool Add(ArchiveFolderDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("insert_ArchiveFolder", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprParentFolderID = new SqlParameter("ParentFolderID", SqlDbType.Int, 4);
                SqlParameter sprTitle = new SqlParameter("Title", SqlDbType.NVarChar, 100);
                SqlParameter sprUserID = new SqlParameter("UserId", SqlDbType.Int, 4);
                SqlParameter sprPlace = new SqlParameter("Place", SqlDbType.NVarChar, 100);
                SqlParameter sprNotes = new SqlParameter("Notes", SqlDbType.NVarChar, 500);

                //Output Parameter
                SqlParameter sprFolderID = new SqlParameter("FolderID", SqlDbType.Int, 4);
                sprFolderID.Direction = ParameterDirection.Output;

                //initialize parameter
                sprParentFolderID.Value = item.ParentFolderId;
                sprTitle.Value = item.Title;
                sprUserID.Value = item.UserId;
                sprPlace.Value = item.Place;
                sprNotes.Value = item.Notes;

                //Add Patameters
                cmd.Parameters.Add(sprParentFolderID);
                cmd.Parameters.Add(sprTitle);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprPlace);
                cmd.Parameters.Add(sprNotes);
                cmd.Parameters.Add(sprFolderID);

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

        public override bool Update(ArchiveFolderDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("update_ArchiveFolder", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprFolderID = new SqlParameter("FolderID", SqlDbType.Int, 4);
                SqlParameter sprTitle = new SqlParameter("Title", SqlDbType.NVarChar, 100);
                SqlParameter sprPlace = new SqlParameter("Place", SqlDbType.NVarChar, 100);
                SqlParameter sprNotes = new SqlParameter("Notes", SqlDbType.NVarChar, 500);


                //initialize parameter
                sprFolderID.Value = item.FolderId;
                sprTitle.Value = item.Title;
                sprPlace.Value = item.Place;
                sprNotes.Value = item.Notes;

                //Add Patameters
                cmd.Parameters.Add(sprTitle);
                cmd.Parameters.Add(sprPlace);
                cmd.Parameters.Add(sprNotes);
                cmd.Parameters.Add(sprFolderID);

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

        public override bool Delete(ArchiveFolderDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_ArchiveFolder", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprFolderID = new SqlParameter("FolderID", SqlDbType.Int, 4);

                //initialize parameter
                sprFolderID.Value = item.FolderId;

                //Add Parameters
                cmd.Parameters.Add(sprFolderID);

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
                SqlCommand cmd = new SqlCommand("delete_ArchiveFolder", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprFolderID = new SqlParameter("FolderID", SqlDbType.Int, 4);

                //initialize parameter
                sprFolderID.Value = Id;

                //Add Parameters
                cmd.Parameters.Add(sprFolderID);

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