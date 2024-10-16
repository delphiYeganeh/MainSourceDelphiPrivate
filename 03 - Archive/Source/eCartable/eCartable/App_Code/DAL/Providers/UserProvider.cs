using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Reflection;
using System.Text;


namespace Cartable.Dal
{
   
    
    public abstract class UserProvider : Dal.DataAccess, Model.Dal.IProviderModel<UserDetails, Int32>
    { 
        #region Properties

        private string _tableName = "Users";

        private string _sortExperssion;

        private static string _sortExperssionStatic;

        #endregion

        #region Methods


        private static Char MyRandom() 
 {
     Byte r=new Byte();
     Random rnd = new Random();
     while ((r<48 || r>57) && (r<65 || r>72))
       r = (Byte)rnd.Next(100);
     
     return((Char)r);
 } 
        private  string Cycle(string inHex)
        {
            int iStr;
            string Result = "";
            for (iStr = inHex.Length; iStr >= 1; iStr--)
                if ((iStr % 4) == 0)
                    Result = Result + inHex.Substring(iStr - 4, 4);
            return (Result);
        }

        private string HexToStr(string inHex)
        {
               int i=0;
            string Result = "";
            string str = inHex.Substring(inHex.Length - 1, 1);
              int Len =Convert.ToInt32(str, 16)*2; 

            while (i < Len )
            {

                Result = Result + (Char)(Convert.ToByte(inHex.Substring(i, 2),16));
                i = i + 2;
            }
            return Result;
        }
        private int asc(string s)
    {
        string allc = "                    !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[ ]^_`abcdefghijklmnopqrstuvwxyz{|}~€پ‚ƒ„…†‡ˆ‰ٹ‹Œچژڈگ‘’“”•–—ک™ڑ›œ‌‍ں ،¢£¤¥¦§¨©ھ«¬­®¯°±²³´µ¶·¸¹؛»¼½¾؟ہءآأؤإئابةتثجحخدذرزسشصض×طظعغـفقكàلâمنهوçèéêëىيîïًٌٍَôُِ÷ّùْûü‎‏ے";
            
            return allc.IndexOf(s)+1;
        }
        public string Locked(string inStr, bool isLocked)
        {
            string[] Coder = new string[5];

            Coder[0] = "D4EDCF30C8CDE4CF41C7E2E7E5CFDFE7E5ED070D2096B990FBCD0E42B4545A4E";
            Coder[1] = "C9D2C8CFD2C8E531CEC7E4CCC7E4EDE8F5674A6C2883139DE20926FA5369E334";
            Coder[2] = "D3E3C720D3C7E3C7E4E53DE56CF4B68476C5D54147219D3C0CF7706E44131BD9";
            Coder[3] = "CFDFCAD120C7CDE3CFE6E4CFDB90E5BBE2122A90A4F4F66370C9ECA1A3203C4A";



            string outStr = "";
            int _Mod;
            int lenStr = 64;
            Byte iStr;

            if (inStr == "")
                return ("");

            if (isLocked)
            {
                string HexStr = "";
                for (iStr = 0; iStr < inStr.Length; iStr++)
                    HexStr = HexStr+((Byte)inStr[iStr]).ToString("x2");

                while (HexStr.Length != (lenStr - 2))
                    HexStr = HexStr + MyRandom();

                HexStr = HexStr + inStr.Length.ToString("x1");

                _Mod = inStr.Length % 4;

                for (iStr = 0; iStr < lenStr - 1; iStr++)
                    outStr = outStr + (Char)((Byte)(HexStr[iStr]) + (Byte)(Coder[_Mod][iStr]));

                outStr = outStr + (Char)(100 + _Mod);
                return Cycle(outStr);
            }
            else
            {
                inStr = Cycle(inStr);
                _Mod = (Byte)(inStr[63]) - 100;
                inStr.Replace('ˆ', '^');

                for (iStr = 0; iStr < 63; iStr++)
                {
                    string s = inStr.Substring(iStr, 1);
                    int i1 = asc(s);
                    int i2 = asc(Coder[_Mod].Substring(iStr, 1));
                    outStr = outStr + (Char)(i1 - i2);
                }
            }
            return (HexToStr(outStr));

        }
    
        protected UserDetails GetUserInfoFromReader(IDataReader reader)
        {
            try
            {
                return new UserDetails(
                    (int)reader["Id"],
                    reader["Title"].ToString(),
                    reader["UserName"].ToString(),
                    Locked(reader["PassWord"].ToString(),false),
                    (reader["AccessID"] != DBNull.Value ? (byte)reader["AccessID"] : (byte)0),
                    (reader["FromOrgID"] != DBNull.Value ? (int)reader["FromOrgID"] : 0),
                    (byte)reader["DefualtSecretariatID"],
                    (reader["IsSecretariantStaffer"].ToString().ToLower() == "false" ? false : true),
                    (reader["KartableGridInfo"]!= DBNull.Value ? (byte[])reader["KartableGridInfo"] : null),
                    (reader["DabirGridInfo"] != DBNull.Value ? (byte[])reader["DabirGridInfo"] : null),
                    reader["eCartableGridInfo"].ToString(),
                    reader["eCartableTheme"].ToString());
            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                string a = ex.Message;
                return null;
            }
            catch (System.Exception ex)
            {
                string s = ex.Message;
                return null;
            }
        }

        public bool IsInRole(int userId, string role)
        {
            string accessList = GetAccessRoles(userId);
            if (accessList != "")
            {
                return accessList.Contains(role);
            }
            else
            {
                return false;
            }
        }

        #endregion

        #region IComponentModel Members

        public abstract List<UserDetails> GetAll();

        public abstract UserDetails GetItemById(Int32 id);

        public abstract bool Add(UserDetails item);

        public abstract bool Update(UserDetails item);

        public abstract bool Delete(UserDetails item);

        public abstract UserDetails Login(string userName, string password);

        protected abstract string GetAccessRoles(int userId);

        public abstract bool ChangePassword(int userid, string oldPass, string newPass);

        public abstract DataTable GetUserSecretariatTree(int userID, int mYear);

        public abstract DataTable GetUserArchiveFolder(int userID);

        public abstract UserDetails GetItemByUserName(string userName);

        public abstract void SetUserGridInfo(Int32 id, string gridInfo);

        public abstract void SetUserTheme(Int32 id, string theme);

        #endregion

        #region IProviderModel<RecommitDetails,int> Members

        public string TableName
        {
            get { return _tableName; }
        }

        public string SortExperssion
        {
            get { return _sortExperssion; }
            set
            {
                _sortExperssion = value;
                _sortExperssionStatic = value;
            }
        }

        public static string SortExperssionStatic
        {
            get { return _sortExperssionStatic; }
            set
            {
                _sortExperssionStatic = value;
            }
        }
        #endregion
    }
}
