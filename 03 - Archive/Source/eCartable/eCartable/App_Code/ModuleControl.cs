using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace Cartable.UI
{
    public class ModuleControl : System.Web.UI.UserControl
    {
        #region Properties

        int _moduleId;
        string _title;
        int _defId;
        string _paneName;
        int _order;
        int _pageId;

        public int ModuleId
        {
            get
            {
                return _moduleId;
            }
            set
            {
                _moduleId = value;
            }
        }

        public string Title
        {
            get
            {
                return _title;
            }
            set
            {
                _title = value;
            }
        }

        public int DefId
        {
            get
            {
                return _defId;
            }
            set
            {
                _defId = value;
            }
        }

        public string PaneName
        {
            get
            {
                return _paneName;
            }
            set
            {
                _paneName = value;
            }
        }

        public int Order
        {
            get
            {
                return _order;
            }
            set
            {
                _order = value;
            }
        }

        public int PageId
        {
            get
            {
                return _pageId;
            }
            set
            {
                _pageId = value;
            }
        }

        #endregion

        #region Contructors

        public ModuleControl()
        {
        }

        public ModuleControl(int moduleId, string title, int defId, string paneName, int order, int pageId)
        {
            this.ModuleId = moduleId;
            this.Title = title;
            this.DefId = DefId;
            this.PaneName = paneName;
            this.Order = order;
            this.PageId = pageId;
        }

        #endregion
    }
}
