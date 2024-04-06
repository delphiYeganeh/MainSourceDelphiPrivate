using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Cartable.Bll
{
    public abstract class BllObject : Model.Bll.IBllObject
    {

        #region Properties
        private string _connectionString;

        protected string ConnectionString
        {
            get { return _connectionString; }
        }


        #endregion

        public BllObject()
        {
            _connectionString = Globals.Settings.ConnectionString;
        }

        public BllObject(string typeName)
        {
            _connectionString = Globals.Settings.ConnectionString;
        }
    }
}
