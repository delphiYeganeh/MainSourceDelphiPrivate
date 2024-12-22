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
using Cartable.Bll.Letters;

namespace Cartable.Dal
{
    public abstract class AttachmentProvider : Dal.DataAccess, Model.Dal.IProviderModel<AttachmentDetails, Int32>
    {
        #region Properties

        private string _tableName = "Letter";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods

        protected AttachmentDetails GetAttachmentFromReader(IDataReader reader)
        {
            try
            {
                return new AttachmentDetails(
                    (int)reader["LetterDataID"],
                    (int)reader["LetterID"],
                    (int)reader["PageNumber"],
                    (byte[])reader["Image"],
                    (byte)reader["extention"],
                    reader["Description"].ToString(),
                    (DateTime)reader["LastUpdate"],
                    reader["extentionTitle"].ToString(),
                    reader["Extention"].ToString());
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

        protected List<AttachmentDetails> GetAttachmentListFromReader(IDataReader reader, string sortExpression)
        {
            List<AttachmentDetails> attachment = new List<AttachmentDetails>();
            while (reader.Read())
            {
                attachment.Add(GetAttachmentFromReader(reader));
            }

            if (sortExpression != null && sortExpression != "")
            {
                _sortExperssionStatic = sortExpression;
                _sortExperssion = sortExpression;
                attachment.Sort(Compare);
            }

            return attachment;
        }

        public static int Compare(AttachmentDetails x, AttachmentDetails y)
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
                    PropertyInfo propInfo = (PropertyInfo)typeof(AttachmentDetails).GetProperty(_sortExperssionStatic);
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


        public AttachmentProvider()
        {
        }

        #region IComponentModel Members

        public abstract List<AttachmentDetails> GetAll();

        public abstract AttachmentDetails GetItemById(Int32 Id);

        public abstract List<AttachmentDetails> GetAllByLetterId(int Id, string sortExpression);

   public abstract int GetExtentionID(string Extention);
     public abstract int GetPageNumber(int extention, int letterId);

        
        public abstract bool Add(AttachmentDetails item);

        public abstract bool Update(AttachmentDetails item);

        public abstract bool Delete(AttachmentDetails item);

        public abstract bool Delete(Int32 LetterDataID);

        #endregion

        #region IProviderModel<LetterDetails,int> Members

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
