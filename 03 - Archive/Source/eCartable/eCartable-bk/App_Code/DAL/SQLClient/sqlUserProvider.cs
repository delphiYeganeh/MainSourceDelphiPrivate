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
    public class sqlUserProvider : Cartable.Dal.UserProvider
    {
        #region Methods

        public override List<UserDetails> GetAll()
        {
            return null;
        }

        public override UserDetails GetItemById(int Id)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    string StrSQL ="select * from Users where Id=" + Id.ToString();
                    SqlCommand cmd = new SqlCommand(StrSQL , cn);
                    reader = this.ExecuteReader(cmd);
                }
                catch (SqlException er)
                {
                    string s = er.Message;
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    string s = ex.Message;
                    return null;
                }

                if (reader.Read())
                {
                    return GetUserInfoFromReader(reader);
                }
                else
                {
                    return null;
                }
            }
        }

        public override UserDetails GetItemByUserName(string userName)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    string StrSQL = "select * from Users where Username='" + userName + "'";
                    SqlCommand cmd = new SqlCommand(StrSQL, cn);
                    reader = this.ExecuteReader(cmd);
                }
                catch (SqlException er)
                {
                    string s = er.Message;
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    string s = ex.Message;
                    return null;
                }

                if (reader.Read())
                {
                    return GetUserInfoFromReader(reader);
                }
                else
                {
                    return null;
                }
            }
        }

        public override bool Add(UserDetails item)
        {
            return false;
        }

        public override bool Update(UserDetails item)
        {
            return false;
        }

        public override bool Delete(UserDetails item)
        {
            return false;
        }

        public override UserDetails Login(string userName, string password)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                IDataReader reader = null;
                try
                {
                    cn.Open();
                    string StrSQL ="select * from Users where UserName='" + userName + "' and PassWord='" + password + "'";
                    SqlCommand cmd = new SqlCommand(StrSQL , cn);
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
                    return GetUserInfoFromReader(reader);
                }
                else
                {
                    return new UserDetails();
                }
            }
        }

        protected override string GetAccessRoles(int userId)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("web_Access", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("userId", userId);
                    SqlParameter sprResults = new SqlParameter("Result", SqlDbType.VarChar, 100);
                    sprResults.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(sprResults);

                    this.ExecuteNonQuery(cmd);

                    return sprResults.Value.ToString();
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

        public override bool ChangePassword(int userid, string oldPass, string newPass)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("UserChange_pass", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("UserId", userid);
                    cmd.Parameters.AddWithValue("oldPass", oldPass);
                    cmd.Parameters.AddWithValue("newPass", newPass);

                    SqlParameter sprResult = new SqlParameter("Result", SqlDbType.Bit);
                    sprResult.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(sprResult);

                    this.ExecuteNonQuery(cmd);
                    return ((int)sprResult.Value == 1)?true : false;
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

        public override DataTable GetUserSecretariatTree(int UserID, int MYear)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                DataTable table = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Get_UserSecretariat_Tree", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter ParamUserID = new SqlParameter("@userid", SqlDbType.Int);
                    SqlParameter ParamMYear = new SqlParameter("@myear", SqlDbType.Int);

                    ParamUserID.Value = UserID;
                    ParamMYear.Value = MYear;

                    cmd.Parameters.Add(ParamUserID);
                    cmd.Parameters.Add(ParamMYear);

                    table = this.ExecuteDataTable(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    return null;
                }

                if (table != null)
                {
                    return table;
                }
                else
                {
                    return null;
                }
            }
        }


        public override DataTable GetUserArchiveFolder(int UserID)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                DataTable table = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("get_ArchiveFolder_byUserID", cn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter ParamUserID = new SqlParameter("@userid", SqlDbType.Int);

                    ParamUserID.Value = UserID;

                    cmd.Parameters.Add(ParamUserID);

                    table = this.ExecuteDataTable(cmd);

                }
                catch (SqlException er)
                {
                    throw new CartableExceptions(Layer.Dal, System.Reflection.MethodBase.GetCurrentMethod().Name, er);
                }
                catch (System.Exception ex)
                {
                    return null;
                }

                if (table != null)
                {
                    return table;
                }
                else
                {
                    return null;
                }
            }
        }

        public override void  SetUserGridInfo(int id, string gridInfo)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Update Users Set eCartableGridInfo='" + gridInfo + "' where id=" + id.ToString(), cn);
                    cmd.CommandType = CommandType.Text;

                    this.ExecuteNonQuery(cmd);
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

        public override void SetUserTheme(int id, string theme)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("Update Users Set eCartableTheme='" + theme + "' where id=" + id.ToString(), cn);
                    cmd.CommandType = CommandType.Text;

                    this.ExecuteNonQuery(cmd);
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
