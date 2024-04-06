using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Cartable.Dal;
using System.Collections.Generic;
using System.Data.SqlClient;


namespace Cartable.Bll
{
    public class FromOrganizations : BllObject
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

        #region Events

        public static event ExceptionDelegate onException;

        #endregion

        #region Constructors

        public FromOrganizations()
            : base(typeof(FromOrganizations).Name)
        {

        }

        public FromOrganizations
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
            string code)
            : base(typeof(FromOrganizations).Name)
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

        #region Methods

        public bool Add()
        {
            FromOrganizationDetails item = new FromOrganizationDetails();
            item.Title = this.Title;
            item.ParentID = this.ParentID;
            item.Phone = this.Phone;
            item.Fax = this.Fax;
            item.Email = this.Email;
            item.ResponsibleStaffer = this.ResponsibleStaffer;
            item.IsActive = this.IsActive;
            item.PreCode = this.PreCode;
            item.IsInnerOrg = this.IsInnerOrg;
            item.Code = this.Code;

            return AddFromOrganization(item);
        }

        public bool Update()
        {
            FromOrganizationDetails item = new FromOrganizationDetails();
            item.Title = this.Title;
            item.ParentID = this.ParentID;
            item.Phone = this.Phone;
            item.Fax = this.Fax;
            item.Email = this.Email;
            item.ResponsibleStaffer = this.ResponsibleStaffer;
            item.IsActive = this.IsActive;
            item.PreCode = this.PreCode;
            item.IsInnerOrg = this.IsInnerOrg;
            item.Code = this.Code;

            return UpdateFromOrganization(item);
        }

        public bool Delete()
        {
            throw new Exception("The method or operation is not implemented.");
        }

        public FromOrganizationDetails GetItem(Int32 id)
        {
            try
            {
                return ((FromOrganizationProvider)Instance).GetItemById(id);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

        #endregion

        protected static Object Instance
        {
            get
            {
                Object _instance = Activator.CreateInstance(Type.GetType(Globals.Settings.Providers[Globals.Settings.ConnectionProviderName].TypeItems[TypeName].type));
                return _instance;
            }
        }

        #region Static Members

        public static List<FromOrganizationDetails> GetFromOrganization()
        {
            try
            {
                return ((FromOrganizationProvider)Instance).GetAll();
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

       

        public static FromOrganizationDetails GetFromOrganizationByID(Int32 id)
        {

            try
            {
                return ((FromOrganizationProvider)Instance).GetItemById(id);
            }
            catch (CartableExceptions er)
            {
                if (onException != null)
                {
                    onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                }
                return null;
            }
        }

        public static List<FromOrganizationDetails> GetFromOrganizationListFromReader(IDataReader reader)
        {
            return null;
        }

        public static bool AddFromOrganization(FromOrganizationDetails item)
        {

            {
                try
                {
                    return ((FromOrganizationProvider)Instance).Add(item);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    return false;
                }
            }
        }

        public static bool UpdateFromOrganization(FromOrganizationDetails item)
        {
            {
                try
                {
                    return ((FromOrganizationProvider)Instance).Update(item);
                }
                catch (CartableExceptions er)
                {
                    if (onException != null)
                    {
                        onException(null, new CartableExceptionEventArgs(er.ErrorCode, er.Message, er.Location, er.Context, er.InnerException));
                    }
                    return false;
                }
            }
        }

        public static bool DeleteFromOrganization(FromOrganizationDetails item)
        {
            throw new Exception("The method or operation is not implemented.");
        }

        #endregion
    }
}
