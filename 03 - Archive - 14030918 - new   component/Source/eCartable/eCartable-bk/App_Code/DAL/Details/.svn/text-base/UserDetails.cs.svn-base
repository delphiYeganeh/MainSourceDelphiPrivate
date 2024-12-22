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
    public class UserDetails
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
            get { return _title; }
            set { _title = value; }
        }

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }

        public string Password
        {
            get { return _passWord; }
            set { _passWord = value; }
        }

        public byte AccessID
        {
            get { return _accessID; }
            set { _accessID = value; }
        }

        public int FromOrgID
        {
            get { return _fromOrgID; }
            set { _fromOrgID = value; }
        }

        public byte DefualtSecretariatID
        {
            get { return _defualtSecretariatID; }
            set { _defualtSecretariatID = value; }
        }

        public Boolean IsSecretariantStaffer
        {
            get { return _isSecretariantStaffer; }
            set { _isSecretariantStaffer = value; }
        }

        public byte[] KartableGridInfo
        {
            get { return _kartableGridInfo; }
            set { _kartableGridInfo = value; }
        }

        public byte[] DabirGridInfo
        {
            get { return _dabirGridInfo; }
            set { _dabirGridInfo = value; }
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

        #region Constructors

        public UserDetails()
        {
        }

        public UserDetails
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
        {
            this.Id = id;
            this.Title = title;
            this.UserName=userName;
            this.Password=passWord;
            this.AccessID=accessID;
            this.FromOrgID=fromOrgID;
            this.DefualtSecretariatID=defualtSecretariatID;
            this.IsSecretariantStaffer=isSecretariantStaffer;
            this.KartableGridInfo = kartableGridInfo;
            this.DabirGridInfo = dabirGridInfo;
            this.ECartableGridInfo = eCartableGridInfo;
            this.ECartableTheme = eCartableTheme;
        }


        public UserDetails
        (
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
        {
            this.Title = title;
            this.UserName = userName;
            this.Password = passWord;
            this.AccessID = accessID;
            this.FromOrgID = fromOrgID;
            this.DefualtSecretariatID = defualtSecretariatID;
            this.IsSecretariantStaffer = isSecretariantStaffer;
            this.KartableGridInfo = kartableGridInfo;
            this.DabirGridInfo = dabirGridInfo;
            this.ECartableGridInfo = eCartableGridInfo;
            this.ECartableTheme = eCartableTheme;
        }

        #endregion
    }
}