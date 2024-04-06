using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Cartable
{
    public static class Globals
    {
        public static CartableConfigSection Settings 
        {
            get
            {
                return (CartableConfigSection)WebConfigurationManager.GetSection("Cartable");
            }
        }

        static Globals()
        {
        }
    }

    #region Enum

    public enum Layer
    {
        Dal = 1,
        Bll = 2,
        UI = 3
    }

    public enum FileExtentions
    {
        Jpg = 1,
        Tiff = 2,
        Txt = 3,
        Doc = 4,
        Wav = 5,
        others = 6
    }

    #endregion
}
