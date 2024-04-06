using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Cartable.Bll;


namespace Cartable.Dal
{

    public class FromOrganizationDetails
    {
        #region Properties
        int _id;
        string _title;
        int _parentID;
        string _phone;
        string _fax;
        string _email;
        string _responsibleStaffer;
        Boolean _isActive;
        string _preCode;
        Boolean _isInnerOrg;
        string _code;

        public int ID
        {
            get { return _id; }
            set { _id = value; }
        }

        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

        public int ParentID
        {
            get { return _parentID; }
            set { _parentID = value; }
        }

        public string Phone
        {
            get { return _phone; }
            set { _phone = value; }
        }

        public string Fax
        {
            get { return _fax; }
            set { _fax = value; }
        }

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string ResponsibleStaffer
        {
            get { return _responsibleStaffer; }
            set { _responsibleStaffer = value; }
        }

        public Boolean IsActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }

        public string PreCode
        {
            get { return _preCode; }
            set { _preCode = value; }
        }

        public Boolean IsInnerOrg
        {
            get { return _isInnerOrg; }
            set { _isInnerOrg = value; }
        }

        public string Code
        {
            get { return _code; }
            set { _code = value; }
        }

        protected static string TypeName
        {
            get { return System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name; }
        }

        #endregion

        
        #region Constructor

        public FromOrganizationDetails()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public FromOrganizationDetails
        (
            int id,
            string title,
            int parentID,
            string phone,
            string fax,
            string email,
            string responsibleStaffer,
            Boolean isActive,
            string preCode,
            Boolean isInnerOrg,
            string code
        )
        {
            this.ID = id;
            this.Title = title;
            this.ParentID = parentID;
            this.Phone = phone;
            this.Fax = fax;
            this.Email = email;
            this.ResponsibleStaffer = responsibleStaffer;
            this.IsActive = isActive;
            this.PreCode = preCode;
            this.IsInnerOrg = isInnerOrg;
            this.Code = code;
        }


        public FromOrganizationDetails
         (
             string title,
             int parentID,
             string phone,
             string fax,
             string email,
             string responsibleStaffer,
             Boolean isActive,
             string preCode,
             Boolean isInnerOrg,
             string code
         )
        {
            this.Title = title;
            this.ParentID = parentID;
            this.Phone = phone;
            this.Fax = fax;
            this.Email = email;
            this.ResponsibleStaffer = responsibleStaffer;
            this.IsActive = isActive;
            this.PreCode = preCode;
            this.IsInnerOrg = isInnerOrg;
            this.Code = code;
        }

        #endregion
    }
}
