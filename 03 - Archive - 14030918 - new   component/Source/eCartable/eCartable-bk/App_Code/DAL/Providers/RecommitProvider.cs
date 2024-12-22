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

    public abstract class RecommitProvider : Dal.DataAccess, Model.Dal.IProviderModel<RecommitDetails, Int32>
    {
        #region Properties

        private string _tableName = "Recommit";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods

        protected RecommitDetails GetRecommitFromReader(IDataReader reader)
        {
            try
            {
                return new RecommitDetails(
                    (int)reader["recommiteID"],
                    (int)reader["letterID"],
                    (Int16)reader["id"],
                    (byte)reader["type"],
                    (Int16)reader["parentId"],
                    (int)reader["orgID"],
                    reader["paraph"].ToString(),
                    reader["recommiteDate"].ToString(),
                    (byte)reader["userID"],
                    (reader["isCopy"].ToString().ToLower() == "false" ? false : true),
                    (reader["proceeded"].ToString().ToLower() == "false" ? false : true),
                    reader["proceedDate"].ToString(),
                    reader["staffmemo"].ToString(),
                    reader["viewdate"].ToString(), 
                    reader["orgStaff"].ToString(),
                    reader["deadLineDate"].ToString(),
                    reader["recommiterTitle"].ToString());
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

        protected List<RecommitDetails> GetRecommitListFromReader(IDataReader reader)
        {
            List<RecommitDetails> recommites = new List<RecommitDetails>();
            while (reader.Read())
            {
                recommites.Add(GetRecommitFromReader(reader));
            }

            return recommites;
        }

        public static int Compare(RecommitDetails x, RecommitDetails y)
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
                    PropertyInfo propInfo = (PropertyInfo)typeof(RecommitDetails).GetProperty(_sortExperssionStatic);
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


        public RecommitProvider()
        {

        }

        #region IComponentModel Members

        public abstract List<RecommitDetails> GetAll();

        public abstract RecommitDetails GetItemById(Int32 Id);

        public abstract List<RecommitDetails> GetLetterRecommits(Int32 letterId, byte type);

        public abstract void ActivateRecommite(int RecommiteID);

        public abstract int ArchiveRecommite(int letterID, int archiveFolderID, string archiveDate, int page, string archiveNote, string staffMemo);

        public abstract void AnswerNote(int RecommiteID);

        public abstract void Proceed(int RecommiteID);

        public abstract bool Add(RecommitDetails item);

        public abstract bool Update(RecommitDetails item);

        public abstract bool Delete(RecommitDetails item);

        public abstract bool Delete(Int32 Id);

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
