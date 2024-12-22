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
    public class Users : BllObject
    {
        #region Fields

        int _id;
        string _title;
        string _userName;
        string _passWord;
        byte _accessID;
        int _fromOrgID;
        byte _defualtSecretariatID;
        Boolean _isSecretariantStaffer;
        byte[] _kartableGridInfo;
        byte[] _dabirGridInfo;
        string _eCartableGridInfo;
        string _eCartableTheme;

        #endregion

        #region Properties

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        
        public string Title
        {
            get{ return _title; }
            set{ _title=value; }
        }

        public string UserName
        {
            get{ return _userName;}
            set{ _userName=value;}
        }

        public string PassWord
        {
            get{ return _passWord; }
            set{ _passWord=value;}
        }

        public byte AccessID
        {
            get{ return _accessID;}
            set { _accessID=value;}
        }

        public int FromOrgID
        {
            get{ return  _fromOrgID;}
            set{ _fromOrgID=value;}
        }

        public byte DefualtSecretariatID
        {
            get{ return _defualtSecretariatID;}
            set{ _defualtSecretariatID=value;}
        }

        public Boolean IsSecretariantStaffer
        {
            get{ return _isSecretariantStaffer;}
            set{ _isSecretariantStaffer=value;}
        }

        public byte[] KartableGridInfo
        {
            get{ return _kartableGridInfo;}
            set{ _kartableGridInfo=value;}
        }

        public byte[] DabirGridInfo
        {
            get{ return _dabirGridInfo;}
            set { _dabirGridInfo=value;}
        }

        public string ECartableGridInfo
        {
            get { return _eCartableGridInfo; }
            set { _eCartableGridInfo = value; }
        }

        public string ECartableTheme
        {
            get { return _eCartableTheme; }
            set { _eCartableTheme = value; }
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

        public Users()
            : base(typeof(Users).Name)
        {
        }

        public Users
        (
        int id,
        string title,
        string userName,
        string passWord,
        byte accessID,
        int fromOrgID,
        byte defualtSecretariatID,
        Boolean isSecretariantStaffer,
        byte[] kartableGridInfo,
        byte[] dabirGridInfo,
        string eCartableGridInfo,
        string eCartableTheme)
            : base(typeof(Users).Name)
        {
            this.Id = id;
            this.Title = title;
            this.UserName=userName;
            this.PassWord=passWord;
            this.AccessID=accessID;
            this.FromOrgID=fromOrgID;
            this.DefualtSecretariatID=defualtSecretariatID;
            this.IsSecretariantStaffer=isSecretariantStaffer;
            this.KartableGridInfo = kartableGridInfo;
            this.DabirGridInfo = dabirGridInfo;
            this.ECartableGridInfo = eCartableGridInfo;
            this.ECartableTheme = eCartableTheme;
        }

        #endregion

        #region Methods
        
        #endregion

        protected static Object Instance
        {
            get
            {
                Object _instance = Activator.CreateInstance(System.Type.GetType(Globals.Settings.Providers[Globals.Settings.ConnectionProviderName].TypeItems[TypeName].type));
                return _instance;
            }
        }

        #region Static Members

        public static UserDetails GetItemById(int id)
        {
            try
            {
                return ((UserProvider)Instance).GetItemById(id);
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

        public static UserDetails GetItemByUserName(string userName)
        {
            try
            {
                return ((UserProvider)Instance).GetItemByUserName(userName);
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

        public static UserDetails Login(string userName , string password)
        {
            try
            {
                return ((UserProvider)Instance).Login(userName, password);
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

        public static bool IsInRole(int userId, string role)
        {
            try
            {
                return ((UserProvider)Instance).IsInRole(userId, role);
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

        public static bool ChangePassword(int userId, string oldPassword, string newPassword)
        {
            try
            {
                return ((UserProvider)Instance).ChangePassword(userId, oldPassword, newPassword);
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

        public static DataTable GetUserSecretariatTree(int userId, int mYear)
        {
            try
            {
                return ((UserProvider)Instance).GetUserSecretariatTree(userId, mYear);;
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

        public static DataTable GetUserArchiveFolder(int userId)
        {
            try
            {
                return ((UserProvider)Instance).GetUserArchiveFolder(userId); ;
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

        public static bool SetUserGridInfo(Int32 id, string gridInfo)
        {
            try
            {
                ((UserProvider)Instance).SetUserGridInfo(id,gridInfo);
                return true;
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

        public static bool SetUserTheme(Int32 id, string theme)
        {
            try
            {
                ((UserProvider)Instance).SetUserTheme(id, theme);
                return true;
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

        #endregion
    }
}