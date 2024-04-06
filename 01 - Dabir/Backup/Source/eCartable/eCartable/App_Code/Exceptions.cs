using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace Cartable
{
    public class CartableExceptions : ApplicationException
    {
        static DataSet _errorCodesCache;

        #region Properties

        int _errorCode;
        Layer _location;
        string _context;
        string _message;
        int _innerCode;

        public int ErrorCode
        {
            get { return _errorCode; }
            set { _errorCode = value; }
        }

        public Layer Location
        {
            get { return _location; }
            set { _location = value; }
        }

        public string Context
        {
            get { return _context; }
            set { _context = value; }
        }

        public override string Message
        {
            get
            {
                return _message;
            }
        }

        public int InnerCode
        {
            get { return _innerCode; }
        }

        public override string StackTrace
        {
            get
            {
                return Environment.StackTrace;
            }
        }

        #endregion

        #region Constructors

        private void LoadXML()
        {
            _errorCodesCache = new DataSet("ErrorCodesCache");
            _errorCodesCache.ReadXml(Globals.Settings.exceptionElement.FilePath);
        }

        public CartableExceptions()
        {
            LoadXML();
        }

        public CartableExceptions(string message)
            : base(message)
        {
            LoadXML();
        }

        public CartableExceptions(string message, Exception innerException)
            : base(message, innerException)
        {
            LoadXML();
        }

        public CartableExceptions(Layer location, string context, Exception innerException):base("",innerException)
        {
            LoadXML();
            _context = context;
            _location = location;

            if (innerException is SqlException)
            {
                _innerCode = ((SqlException)innerException).Number;
                DataRow[] errorRows = _errorCodesCache.Tables[0].Select("location = '" + location.ToString() + "' and context='" + context + "' and innerCode='" + _innerCode.ToString() + "'");
                if (errorRows.Length > 0)
                {
                    _message = errorRows[0]["message"].ToString();
                }
                else
                {
                    errorRows = _errorCodesCache.Tables[0].Select("location='" + location + "' and innerCode='" + _innerCode.ToString() + "'");
                    if (errorRows.Length > 0)
                    {
                        _message = errorRows[0]["message"].ToString();
                    }
                    else
                    {
                        //return SQL Unknown error
                        errorRows = _errorCodesCache.Tables[0].Select("code=9999");
                        if (errorRows.Length > 0)
                        {
                            _message = errorRows[0]["message"].ToString();
                        }
                    }
                }
            }
            else
            {
                //return General Unknown error
                DataRow[] errorRows = _errorCodesCache.Tables[0].Select("code=0");
                if (errorRows.Length > 0)
                {
                    _message = errorRows[0]["message"].ToString();
                }
            }
        }

        public CartableExceptions(int errorCode, Layer location, string context,string message,Exception innerException)
            :base(message,innerException)
        {
            LoadXML();
            _errorCode = errorCode;
            _location = location;
            _context = context;
            _message = message;
        }
        #endregion

    }

    #region Event Delegate

    public class CartableExceptionEventArgs : EventArgs
    {
        public int ErrorCode;
        public Layer Location;
        public string Context;
        public Exception InnerException;
        public string Message;

        public CartableExceptionEventArgs(int errorCode,string message, Layer location, string context, Exception innerException)
        {
            ErrorCode = errorCode;
            Location=location;
            Context=context;
            InnerException = innerException;
            Message = message;
        }
    }

    public delegate void ExceptionDelegate(object sender,CartableExceptionEventArgs e);

    #endregion
}
