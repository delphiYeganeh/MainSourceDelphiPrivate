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

    public abstract class FromOrganizationProvider : Dal.DataAccess, Model.Dal.IProviderModel<FromOrganizationDetails, Int32>
    {
        #region Properties

        private string _tableName = "FromOrganization";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods

        protected FromOrganizationDetails GetFromOrganizationFromReader(IDataReader reader)
        {
            try
            {
                return new FromOrganizationDetails(
                    (int)reader["ID"],
                    reader["Title"].ToString(),
                    (int)reader["ParentID"],
                    reader["Phone"].ToString(),
                    reader["Fax"].ToString(),
                    reader["Email"].ToString(),
                    reader["ResponsibleStaffer"].ToString(),
                    (Boolean)reader["IsActive"],
                    reader["PreCode"].ToString(),
                    (Boolean)reader["IsInnerOrg"],
                    reader["Code"].ToString());
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


        protected List<FromOrganizationDetails> GetFromOrganizationListFromReader(IDataReader reader)
        {
            List<FromOrganizationDetails> fromOrganizations = new List<FromOrganizationDetails>();
            while (reader.Read())
            {
                fromOrganizations.Add(GetFromOrganizationFromReader(reader));
            }

            return fromOrganizations;
        }

        public static int Compare(FromOrganizationDetails x, FromOrganizationDetails y)
        {
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
                    PropertyInfo propInfo = (PropertyInfo)typeof(FromOrganizationDetails).GetProperty(_sortExperssionStatic);
                    //object obj=
                    //x.Length.CompareTo(y.Length);


                    int retval = ((string)propInfo.GetValue(x, null)).CompareTo((string)propInfo.GetValue(y, null));
                    if (retval != 0)
                    {
                        return retval;
                    }
                    else
                    {
                        return (propInfo.GetValue(x, null).ToString()).CompareTo(propInfo.GetValue(y, null).ToString());
                    }
                }
            }
        }

        #endregion

        public FromOrganizationProvider()
        {
        }

        #region IComponentModel Members

        public abstract List<FromOrganizationDetails> GetAll();

       
        public abstract FromOrganizationDetails GetItemById(Int32 Id);

        public abstract bool Add(FromOrganizationDetails item);

        public abstract bool Update(FromOrganizationDetails item);

        public abstract bool Delete(FromOrganizationDetails item);

        #endregion

        #region IProviderModel<FromOrganizationDetails,int> Members

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
