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
    public class sqlFromOrganizationProvider : Cartable.Dal.FromOrganizationProvider
    {
        public sqlFromOrganizationProvider()
        {
        }

        #region Methods
        public override System.Collections.Generic.List<FromOrganizationDetails> GetAll()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select * from FromOrganizations where isInnerOrg=1", cn);
                    cmd.CommandType = CommandType.Text;
                       return GetFromOrganizationListFromReader(this.ExecuteReader(cmd));
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

        
        public override FromOrganizationDetails GetItemById(int Id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("GetFromOrganization", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter sprFromOrganizationId = new SqlParameter("ID", SqlDbType.Int);
                    sprFromOrganizationId.Value = Id;
                    cmd.Parameters.Add(sprFromOrganizationId);
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
                    return GetFromOrganizationFromReader(reader);
                }
                else
                {
                    return null;
                }

            }
        }

        public override bool Add(FromOrganizationDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("InsertFromOrganization", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprTitle = new SqlParameter("Title", SqlDbType.NVarChar, 100);
                SqlParameter sprParentId = new SqlParameter("ParentId", SqlDbType.Int, 4);
                SqlParameter sprPhone = new SqlParameter("Phone", SqlDbType.NVarChar, 30);
                SqlParameter sprFax = new SqlParameter("Fax", SqlDbType.NVarChar, 30);
                SqlParameter sprEmail = new SqlParameter("Email", SqlDbType.NVarChar, 30);
                SqlParameter sprResponsibleStaffer = new SqlParameter("ResponsibleStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprIsActive = new SqlParameter("IsActive", SqlDbType.Bit);
                SqlParameter sprPreCode = new SqlParameter("PreCode", SqlDbType.NVarChar, 50);
                SqlParameter sprIsInnerOrg = new SqlParameter("IsInnerOrg", SqlDbType.Bit);
                SqlParameter sprCode = new SqlParameter("Code", SqlDbType.NVarChar, 50);
                

                //Output Parameter
                SqlParameter sprID = new SqlParameter("ID", SqlDbType.Int, 4);
                sprID.Direction = ParameterDirection.Output;

                //initialize parameter
                sprTitle.Value = item.Title;
                sprParentId.Value = item.ParentID;
                sprPhone.Value = item.Phone;
                sprFax.Value = item.Fax;
                sprEmail.Value = item.Email;
                sprResponsibleStaffer.Value = item.ResponsibleStaffer;
                sprIsActive.Value = item.IsActive;
                sprPreCode.Value = item.PreCode;
                sprIsInnerOrg.Value = item.IsInnerOrg;
                sprCode.Value = item.Code;
                

                //Add Patameters
                cmd.Parameters.Add(sprID);
                cmd.Parameters.Add(sprTitle);
                cmd.Parameters.Add(sprParentId);
                cmd.Parameters.Add(sprPhone);
                cmd.Parameters.Add(sprFax);
                cmd.Parameters.Add(sprEmail);
                cmd.Parameters.Add(sprResponsibleStaffer);
                cmd.Parameters.Add(sprIsActive);
                cmd.Parameters.Add(sprPreCode);
                cmd.Parameters.Add(sprIsInnerOrg);
                cmd.Parameters.Add(sprCode);
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

        public override bool Update(FromOrganizationDetails item)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("UpdateFromOrganization", cn);
                cmd.CommandType = CommandType.StoredProcedure;


                SqlParameter sprID = new SqlParameter("ID", SqlDbType.Int, 4);
                SqlParameter sprTitle = new SqlParameter("Title", SqlDbType.NVarChar, 100);
                SqlParameter sprParentId = new SqlParameter("ParentId", SqlDbType.Int, 4);
                SqlParameter sprPhone = new SqlParameter("Phone", SqlDbType.NVarChar, 30);
                SqlParameter sprFax = new SqlParameter("Fax", SqlDbType.NVarChar, 30);
                SqlParameter sprEmail = new SqlParameter("Email", SqlDbType.NVarChar, 30);
                SqlParameter sprResponsibleStaffer = new SqlParameter("ResponsibleStaffer", SqlDbType.NVarChar, 50);
                SqlParameter sprIsActive = new SqlParameter("IsActive", SqlDbType.Bit);
                SqlParameter sprPreCode = new SqlParameter("PreCode", SqlDbType.NVarChar, 50);
                SqlParameter sprIsInnerOrg = new SqlParameter("IsInnerOrg", SqlDbType.Bit);
                SqlParameter sprCode = new SqlParameter("Code", SqlDbType.NVarChar, 50);


                //initialize parameter
                sprID.Value = item.ID;
                sprTitle.Value = item.Title;
                sprParentId.Value = item.ParentID;
                sprPhone.Value = item.Phone;
                sprFax.Value = item.Fax;
                sprEmail.Value = item.Email;
                sprResponsibleStaffer.Value = item.ResponsibleStaffer;
                sprIsActive.Value = item.IsActive;
                sprPreCode.Value = item.PreCode;
                sprIsInnerOrg.Value = item.IsInnerOrg;
                sprCode.Value = item.Code;


                //Add Patameters
                cmd.Parameters.Add(sprID);
                cmd.Parameters.Add(sprTitle);
                cmd.Parameters.Add(sprParentId);
                cmd.Parameters.Add(sprPhone);
                cmd.Parameters.Add(sprFax);
                cmd.Parameters.Add(sprEmail);
                cmd.Parameters.Add(sprResponsibleStaffer);
                cmd.Parameters.Add(sprIsActive);
                cmd.Parameters.Add(sprPreCode);
                cmd.Parameters.Add(sprIsInnerOrg);
                cmd.Parameters.Add(sprCode);

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

        public override bool Delete(FromOrganizationDetails item)
        {
            throw new Exception("The method or operation is not implemented.");
        }
        #endregion
    }
}
