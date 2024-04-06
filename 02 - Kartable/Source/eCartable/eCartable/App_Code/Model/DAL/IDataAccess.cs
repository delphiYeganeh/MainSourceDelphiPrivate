using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.Common;

namespace Cartable.Model.Dal
{
    interface IDataAccess
    {
        #region Properties

        string ConnectionString
        {
            get;
            set;
        }

        #endregion

        #region Methods

        int ExecuteNonQuery(DbCommand cmd);
        IDataReader ExecuteReader(DbCommand cmd);
        IDataReader ExecuteReader(DbCommand cmd, CommandBehavior behavior);
        object ExecuteScalar(DbCommand cmd);

        #endregion
    }
}
