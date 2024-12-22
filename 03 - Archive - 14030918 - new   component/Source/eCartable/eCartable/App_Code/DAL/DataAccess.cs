using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Common;

namespace Cartable.Dal
{
    public abstract class DataAccess : Cartable.Model.Dal.IDataAccess
    {
        #region Properties

        private string _connectionString = Globals.Settings.ConnectionString;

        public string ConnectionString
        {
            get { return _connectionString; }
            set { _connectionString = value; }
        }

        #endregion

        #region Methods

        public int ExecuteNonQuery(DbCommand cmd)
        {
            return cmd.ExecuteNonQuery();
        }

        public IDataReader ExecuteReader(DbCommand cmd)
        {
            return ExecuteReader(cmd, CommandBehavior.Default);
        }

        public IDataReader ExecuteReader(DbCommand cmd, CommandBehavior behavior)
        {
            return cmd.ExecuteReader(behavior);
        }

        public virtual DataTable ExecuteDataTable(DbCommand cmd)
        {
            IDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            DataTable table = new DataTable();

            for (int i = 0; i < reader.FieldCount; i++)
            {
                DataColumn col = new DataColumn(reader.GetName(i), reader.GetFieldType(i));
                table.Columns.Add(col);
            }

            while (reader.Read())
            {

                DataRow row = table.NewRow();
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    row[i] = reader[i];
                }
                table.Rows.Add(row);
            }

            return table;
        }

        public object ExecuteScalar(DbCommand cmd)
        {
            return cmd.ExecuteScalar();
        }

        #endregion
    }
}
