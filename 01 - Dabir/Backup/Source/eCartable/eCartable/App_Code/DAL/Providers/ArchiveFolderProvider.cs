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

    public abstract class ArchiveFolderProvider : Dal.DataAccess, Model.Dal.IProviderModel<ArchiveFolderDetails,int>
    {

        #region Properties

        private string _tableName = "ArchiveFolder";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods

        protected ArchiveFolderDetails GetArchiveFolderFromReader(IDataReader reader)
        {
            try
            {
                return new ArchiveFolderDetails(
                    (int)reader["FolderID"],
                    (int)reader["ParentFolderID"],
                    reader["Title"].ToString(),
                    (int)reader["userID"],
                    reader["Notes"].ToString() ,
                    reader["Place"].ToString()
                    );
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

        protected List<ArchiveFolderDetails> GetArchiveFolderListFromReader(IDataReader reader)
        {
            List<ArchiveFolderDetails> archives = new List<ArchiveFolderDetails>();
            while (reader.Read())
            {
                archives.Add(GetArchiveFolderFromReader(reader));
            }

            return archives;
        }

        public static int Compare(ArchiveFolderDetails x, ArchiveFolderDetails y)
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
                    PropertyInfo propInfo = (PropertyInfo)typeof(ArchiveFolderDetails).GetProperty(_sortExperssionStatic);
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

        public ArchiveFolderProvider()
        {
        }

        #region IComponentModel Members

        
        public abstract List<ArchiveFolderDetails> GetAll(int userId);

        public abstract ArchiveFolderDetails GetItemById(Int32 Id);

        public abstract List<ArchiveFolderDetails> GetChilds(int parentId);

        public abstract bool Add(ArchiveFolderDetails item);

        public abstract bool Update(ArchiveFolderDetails item);

        public abstract bool Delete(ArchiveFolderDetails item);

        public abstract bool Delete(Int32 Id);

        #endregion

        #region IProviderModel<ArchiveFolderDetails,int> Members

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