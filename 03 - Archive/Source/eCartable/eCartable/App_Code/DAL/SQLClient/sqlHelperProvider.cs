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
using System.Data.Common;


namespace Cartable.Dal.SQLClient
{
    public class sqlHelperProvider : Cartable.Dal.Helper
    {

        public override DataTable GetLetterClassifications()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                DataTable table = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select * from Classifications", cn);
                    //cmd.CommandType = CommandType.StoredProcedure;

                    table = this.ExecuteDataTable(cmd);

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

        public override DataTable GetLetterReceiveTypes()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                DataTable table = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select * from ReceiveTypes", cn);
                    //cmd.CommandType = CommandType.StoredProcedure;

                    table = this.ExecuteDataTable(cmd);

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

        public override DataTable GetUrgencies()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                DataTable table = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select * from Urgenceis", cn);
                    //cmd.CommandType = CommandType.StoredProcedure;

                    table = this.ExecuteDataTable(cmd);

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

        public override string GetCurrentDate()
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                string now = null;
                try
                {
                    cn.Open();
                    SqlCommand cmd = new SqlCommand("select dbo.Shamsi(getdate())", cn);
                    //cmd.CommandType = CommandType.StoredProcedure;

                    now = this.ExecuteScalar(cmd).ToString();

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

                return now;
            }
        }

    }

}
