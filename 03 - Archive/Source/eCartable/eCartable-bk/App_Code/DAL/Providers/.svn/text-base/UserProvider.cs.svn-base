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
    public abstract class UserProvider : Dal.DataAccess, Model.Dal.IProviderModel<UserDetails, Int32>
    {
        #region Properties

        private string _tableName = "Users";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods

        protected UserDetails GetUserInfoFromReader(IDataReader reader)
        {
            try
            {
                return new UserDetails(
                    (int)reader["Id"],
                    reader["Title"].ToString(),
                    reader["UserName"].ToString(),
                    reader["PassWord"].ToString(),
                    (reader["AccessID"] != DBNull.Value ? (byte)reader["AccessID"] : (byte)0),
                    (reader["FromOrgID"] != DBNull.Value ? (int)reader["FromOrgID"] : 0),
                    (byte)reader["DefualtSecretariatID"],
                    (reader["IsSecretariantStaffer"].ToString().ToLower() == "false" ? false : true),
                    (reader["KartableGridInfo"]!= DBNull.Value ? (byte[])reader["KartableGridInfo"] : null),
                    (reader["DabirGridInfo"] != DBNull.Value ? (byte[])reader["DabirGridInfo"] : null),
                    reader["eCartableGridInfo"].ToString(),
                    reader["eCartableTheme"].ToString());
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

        public bool IsInRole(int userId, string role)
        {
            string accessList = GetAccessRoles(userId);
            if (accessList != "")
            {
                return accessList.Contains(role);
            }
            else
            {
                return false;
            }
        }

        #endregion

        #region IComponentModel Members

        public abstract List<UserDetails> GetAll();

        public abstract UserDetails GetItemById(Int32 id);

        public abstract bool Add(UserDetails item);

        public abstract bool Update(UserDetails item);

        public abstract bool Delete(UserDetails item);

        public abstract UserDetails Login(string userName, string password);

        protected abstract string GetAccessRoles(int userId);

        public abstract bool ChangePassword(int userid, string oldPass, string newPass);

        public abstract DataTable GetUserSecretariatTree(int userID, int mYear);

        public abstract DataTable GetUserArchiveFolder(int userID);

        public abstract UserDetails GetItemByUserName(string userName);

        public abstract void SetUserGridInfo(Int32 id, string gridInfo);

        public abstract void SetUserTheme(Int32 id, string theme);

        #endregion

        #region IProviderModel<RecommitDetails,int> Members

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
