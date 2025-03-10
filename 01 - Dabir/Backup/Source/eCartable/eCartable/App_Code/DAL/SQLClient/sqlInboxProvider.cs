﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Cartable.Dal.SQLClient
{
    public class sqlInboxProvider : InboxProvider
    {
        #region Methods

        public override List<InboxDetails> GetInbox(int secretariatID, byte letterFormat, int orgID, bool proceeded, byte type, byte mYear,
                                                    byte date, int archiveFolderID, string where, int userID, int letterType, int deadLine, string sortExpression)
        {
            using (SqlConnection cn = new SqlConnection(this.ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_inbox", cn);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter sprSecretariatID = new SqlParameter("SecretariatID", SqlDbType.TinyInt);
                SqlParameter sprLetterFormat = new SqlParameter("Letterformat", SqlDbType.TinyInt);
                SqlParameter sprOrgID = new SqlParameter("orgId", SqlDbType.Int);
                SqlParameter sprProceeded = new SqlParameter("proceeded", SqlDbType.Bit);
                SqlParameter sprType = new SqlParameter("type", SqlDbType.TinyInt);
                SqlParameter sprMYear = new SqlParameter("MYear", SqlDbType.TinyInt);
                SqlParameter sprDate = new SqlParameter("Date", SqlDbType.TinyInt);
                SqlParameter sprArchiveFolderID = new SqlParameter("archiveFolderID", SqlDbType.Int);
                SqlParameter sprWhere = new SqlParameter("where", SqlDbType.NVarChar, 1000);
                SqlParameter sprUserID = new SqlParameter("UserID", SqlDbType.TinyInt);
                SqlParameter sprLetterType = new SqlParameter("letter_Type", SqlDbType.Int);
                SqlParameter sprDeadLine = new SqlParameter("DeadLine", SqlDbType.Int);
                SqlParameter sprOrderClause = new SqlParameter("orderClause", SqlDbType.VarChar, 50);

                //Initialize Parameter
                sprSecretariatID.Value = secretariatID;
                sprLetterFormat.Value = 0;// letterFormat;
                sprOrgID.Value = orgID;
                sprProceeded.Value = proceeded;
                sprType.Value = type;
                sprMYear.Value = mYear;
                sprDate.Value = date;
                sprArchiveFolderID.Value = archiveFolderID;
                if (where == null)
                {
                    sprWhere.Value = DBNull.Value;
                }
                else
                {
                    sprWhere.Value = where;
                }
                sprUserID.Value = userID;
                sprLetterType.Value = letterType;
                sprDeadLine.Value = deadLine;
 
            if (sortExpression.Contains("ViewDate") || sortExpression.Contains("Paraph") || sortExpression.Contains("RecommiteDate"))
                sprOrderClause.Value = "rc." + sortExpression;
            else sprOrderClause.Value = sortExpression;

                //Add Patameters
                cmd.Parameters.Add(sprSecretariatID);
                cmd.Parameters.Add(sprLetterFormat);
                cmd.Parameters.Add(sprOrgID);
                cmd.Parameters.Add(sprProceeded);
                cmd.Parameters.Add(sprType);
                cmd.Parameters.Add(sprMYear);
                cmd.Parameters.Add(sprDate);
                cmd.Parameters.Add(sprArchiveFolderID);
                cmd.Parameters.Add(sprWhere);
                cmd.Parameters.Add(sprUserID);
                cmd.Parameters.Add(sprLetterType);
                cmd.Parameters.Add(sprDeadLine);
                cmd.Parameters.Add(sprOrderClause);

                 {
                    cn.Open(); 
                    return GetInboxListFromReader(this.ExecuteReader(cmd), sortExpression);
                }
                
            }
        }

        #endregion
    }
}