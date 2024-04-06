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

namespace Cartable.Dal.SQLClient
{

    public class sqlAttachmentProvider : Cartable.Dal.AttachmentProvider
    {
        #region Methods

        public override System.Collections.Generic.List<AttachmentDetails> GetAll()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("GetLetterDataList", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    // cmd.CommandTimeout = 60;
                    return GetAttachmentListFromReader(this.ExecuteReader(cmd),SortExperssion);
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

        public override System.Collections.Generic.List<AttachmentDetails> GetAllByLetterId(int Id, string sortExpression)//*
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_GetLetterAttachment", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter sprLetterDataId = new SqlParameter("LetterID", SqlDbType.Int);
                    sprLetterDataId.Value = Id;
                    cmd.Parameters.Add(sprLetterDataId);
                    return GetAttachmentListFromReader(this.ExecuteReader(cmd),sortExpression);
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

        public override AttachmentDetails GetItemById(int Id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_Get_LetterData_by_LetterDataID", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter sprLetterDataId = new SqlParameter("LetterDataId", SqlDbType.Int);
                    sprLetterDataId.Value = Id;
                    cmd.Parameters.Add(sprLetterDataId);
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
                    return GetAttachmentFromReader(reader);
                }
                else
                {
                    return null;
                }
            }
        }

        public override byte GetPageNumber(FileExtentions extention, int letterId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Select count(*) from LetterData where LetterId=" + letterId.ToString() + " and extention=" + ((byte)extention).ToString(), cn);
                    //cmd.CommandType = CommandType.StoredProcedure;
                    //SqlParameter sprLetterDataId = new SqlParameter("LetterDataId", SqlDbType.Int);
                    //sprLetterDataId.Value = Id;
                    //cmd.Parameters.Add(sprLetterDataId);
                    byte pageNo =Convert.ToByte(this.ExecuteScalar(cmd));
                    pageNo++;
                    return pageNo;
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

        public override bool Add(AttachmentDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("web_Insert_LetterData", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprPageNumber = new SqlParameter("PageNumber", SqlDbType.TinyInt);
                SqlParameter sprImage = new SqlParameter("Image", SqlDbType.Image);
                SqlParameter sprExtention = new SqlParameter("Extention", SqlDbType.TinyInt);
                SqlParameter sprDescription = new SqlParameter("Description", SqlDbType.NVarChar, 200);
                //SqlParameter sprLastUpdate = new SqlParameter("LastUpdate", SqlDbType.DateTime);

                //Output Parameter
                SqlParameter sprLetterDataID = new SqlParameter("LetterDataID", SqlDbType.Int, 4);
                sprLetterDataID.Direction = ParameterDirection.Output;

                //initialize parameter
                sprLetterDataID.Value = item.LetterDataID;
                sprLetterID.Value = item.LetterID;
                sprPageNumber.Value = item.PageNumber;
                sprImage.Value = item.Image;
                sprExtention.Value = item.Extention;
                sprDescription.Value = item.Description;
                //sprLastUpdate.Value = item.LastUpdate;

                //Add Patameters
                cmd.Parameters.Add(sprLetterDataID);
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprPageNumber);
                cmd.Parameters.Add(sprImage);
                cmd.Parameters.Add(sprExtention);
                cmd.Parameters.Add(sprDescription);
                //cmd.Parameters.Add(sprLastUpdate);
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

        public override bool Update(AttachmentDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("UpdateLetter", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterDataID = new SqlParameter("LetterDataID", SqlDbType.Int, 4);
                SqlParameter sprLetterID = new SqlParameter("LetterID", SqlDbType.Int, 4);
                SqlParameter sprPageNumber = new SqlParameter("PageNumber", SqlDbType.TinyInt);
                SqlParameter sprImage = new SqlParameter("Image", SqlDbType.Image);
                SqlParameter sprExtention = new SqlParameter("Extention", SqlDbType.TinyInt);
                SqlParameter sprDescription = new SqlParameter("Description", SqlDbType.NVarChar, 200);
                SqlParameter sprLastUpdate = new SqlParameter("LastUpdate", SqlDbType.DateTime);

                
                //initialize parameter
                sprLetterDataID.Value = item.LetterDataID;
                sprLetterID.Value = item.LetterID;
                sprPageNumber.Value = item.PageNumber;
                sprImage.Value = item.Image;
                sprExtention.Value = item.Extention;
                sprDescription.Value = item.Description;
                sprLastUpdate.Value = item.LastUpdate;

                //Add Patameters
                cmd.Parameters.Add(sprLetterDataID);
                cmd.Parameters.Add(sprLetterID);
                cmd.Parameters.Add(sprPageNumber);
                cmd.Parameters.Add(sprImage);
                cmd.Parameters.Add(sprExtention);
                cmd.Parameters.Add(sprDescription);
                cmd.Parameters.Add(sprLastUpdate);


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

        public override bool Delete(AttachmentDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_LetterData", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterDataID = new SqlParameter("LetterDataID", SqlDbType.Int, 4);

                //initialize parameter
                sprLetterDataID.Value = item.LetterDataID;

                //Add Parameters
                cmd.Parameters.Add(sprLetterDataID);

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

        public override bool Delete(Int32 letterDataId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("delete_LetterData", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprLetterDataID = new SqlParameter("LetterDataID", SqlDbType.Int, 4);

                //initialize parameter
                sprLetterDataID.Value = letterDataId;

                //Add Parameters
                cmd.Parameters.Add(sprLetterDataID);

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

        public sqlAttachmentProvider()
        {
        }
    }
}
