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
    public abstract class Helper : DataAccess
    {
        #region Constructors

        public Helper() { }

        #endregion


        #region Static Methods


        public abstract DataTable GetLetterClassifications();

        public abstract DataTable GetLetterReceiveTypes();

        public abstract DataTable GetUrgencies();

        public abstract string GetCurrentDate(); 
        #endregion

    }
}
