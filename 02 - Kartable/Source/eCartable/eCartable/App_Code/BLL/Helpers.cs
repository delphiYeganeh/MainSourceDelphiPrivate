using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Cartable;
using Cartable.Dal;

namespace Cartable.Bll
{
    public class Helpers
    {
        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }


        protected static Object Instance
        {
            get
            {
                Object _instance = Activator.CreateInstance(Type.GetType(Globals.Settings.Providers[Globals.Settings.ConnectionProviderName].TypeItems[TypeName].type));
                return _instance;
            }
        }

        public static DataTable GetClassifications()
        {
            return ((Helper)Instance).GetLetterClassifications();
        }

        public static DataTable GetReceiveTypes()
        {
            return ((Helper)Instance).GetLetterReceiveTypes();
        }

        public static DataTable GetUrgenceis()
        {
            return ((Helper)Instance).GetUrgencies();
        }

        public static string GetCurrentDate()
        {
            return ((Helper)Instance).GetCurrentDate();
        } 
         
         
    }
}