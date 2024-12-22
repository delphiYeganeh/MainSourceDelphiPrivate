using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Collections;
using System.Collections.Specialized;
using System.Globalization;
using System.Configuration;
using System.Data;

namespace Cartable
{
    public static class Utils
    {
        public static int PythonHash(string input)
        {
            int retVal = 0;
            if (!string.IsNullOrEmpty(input))
            {
                retVal = input[0] << 7;
                foreach (char c in input)
                {
                    unchecked
                    {
                        retVal = (1000003 * retVal) ^ c;
                    }
                }
                retVal = retVal ^ input.Length;
            }
            return retVal;
        }

        public static int PythonCombineHash(params int[] values)
        {
            int retVal = 0;
            if (values.Length != 0)
            {
                retVal = values[0];
                foreach (int i in values)
                {
                    unchecked
                    {
                        retVal = (1000003 * retVal) ^ i;
                    }
                }
                retVal = retVal ^ values.Length;
            }
            return retVal;
        }

        public static bool CompareStringArrays(string[] stringA, string[] stringB, StringComparison comparisonType)
        {
            if ((stringA != null) || (stringB != null))
            {
                if ((stringA == null) || (stringB == null))
                {
                    return false;
                }
                if (stringA.Length != stringB.Length)
                {
                    return false;
                }
                for (int i = 0; i < stringA.Length; i++)
                {
                    if (!string.Equals(stringA[i], stringB[i], comparisonType))
                    {
                        return false;
                    }
                }
            }
            return true;
        }

        public static string JoinAny<T>(IEnumerable<T> reader, string delimiter)
        {
            if (reader == null)
            {
                return string.Empty;
            }
            
            IEnumerator<T> enumerator = reader.GetEnumerator();
            bool hasMoreItems = enumerator.MoveNext();
            StringBuilder builder = new StringBuilder();
            while (hasMoreItems)
            {
                builder.Append(enumerator.Current);
                hasMoreItems = enumerator.MoveNext();
                if (hasMoreItems)
                {
                    builder.Append(delimiter);
                }
            }
            return builder.ToString();
        }

        public static string JoinAny<T>(IEnumerable<T> reader, string delimiter, string quoteLeft, string quoteRight)
        {
            if (reader == null)
            {
                return string.Empty;
            }

            IEnumerator<T> enumerator = reader.GetEnumerator();
            bool hasMoreItems = enumerator.MoveNext();
            StringBuilder builder = new StringBuilder();
            while (hasMoreItems)
            {
                builder.Append(enumerator.Current);
                hasMoreItems = enumerator.MoveNext();
                if (hasMoreItems)
                {
                    builder.Append(quoteLeft).Append(delimiter).Append(quoteRight);
                }
            }
            return builder.ToString();
        }

        public static string JoinAny<T>(IEnumerable<T> reader)
        {
            return JoinAny(reader, ",");
        }

        public static string ConvertAndJoin<T>(IEnumerable<T> reader, Converter<T,string> converter, string delimiter)
        {
            if (reader == null)
            {
                return string.Empty;
            }
            IEnumerator<T> enumerator = reader.GetEnumerator();
            bool hasMoreItems = enumerator.MoveNext();
            StringBuilder builder = new StringBuilder();
            while (hasMoreItems)
            {
                builder.Append(converter(enumerator.Current));
                hasMoreItems = enumerator.MoveNext();
                if (hasMoreItems)
                {
                    builder.Append(delimiter);
                }
            }
            return builder.ToString();
        }

        public static string RepairBadUrl(string url)
        {
            return url.Replace("&", "&amp;");
        }

        public static void CheckArrayParameter(ref string[] param, bool checkForNull, bool checkIfEmpty, bool checkForCommas, int maxSize, string paramName)
        {
            object[] objectArray1;
            object[] objectArray2;
            if (param == null)
            {
                throw new ArgumentNullException(paramName);
            }
            if (param.Length < 1)
            {
                objectArray1 = new object[] { paramName };
                throw new ArgumentException("Parameter_array_empty", paramName);
            }
            Hashtable hashtable1 = new Hashtable(param.Length);
            int i1 = (param.Length - 1);
            while (i1 >= 0)
            {
                CheckParameter(ref param[i1], checkForNull, checkIfEmpty, checkForCommas, maxSize, (paramName + "[ " + i1.ToString(((IFormatProvider)CultureInfo.InvariantCulture)) + " ]"));
                if (!hashtable1.Contains(param[i1]))
                {
                    hashtable1.Add(param[i1], param[i1]);
                    i1--;
                    continue;
                }
                objectArray2 = new object[] { paramName };
                throw new ArgumentException("Parameter_duplicate_array_element", paramName);
            }
        }

        public static void CheckParameter(ref string param, bool checkForNull, bool checkIfEmpty, bool checkForCommas, int maxSize, string paramName)
        {
            object[] objectArray1;
            object[] objectArray2;
            if (param == null)
            {
                if (checkForNull)
                {
                    throw new ArgumentNullException(paramName);
                }
                else
                {
                    return;
                }
            }
            param = param.Trim();
            if (checkIfEmpty && (param.Length < 1))
            {
                objectArray1 = new object[] { paramName };
                throw new ArgumentException("Parameter_can_not_be_empty", paramName);
            }
            if ((maxSize > 0) && (param.Length > maxSize))
            {
                objectArray2 = new object[] { paramName, maxSize.ToString(((IFormatProvider)CultureInfo.InvariantCulture)) };
                throw new ArgumentException("Parameter_too_long", paramName);
            }
            if ((!checkForCommas) || (!param.Contains(",")))
            {
                return;
            }
            object[] objectArray3 = new object[] { paramName };
            throw new ArgumentException("Parameter_can_not_contain_comma", paramName);
        }

        public static int GetIntValue(NameValueCollection config, string valueName, int defaultValue, bool zeroAllowed, int maxValueAllowed)
        {
            int i1;
            object[] objectArray1;
            object[] objectArray2;
            object[] objectArray3;
            object[] objectArray4;
            string string1 = config[valueName];
            if (string1 == null)
            {
                return defaultValue;
            }
            if (!int.TryParse(string1, out i1))
            {
                if (zeroAllowed)
                {
                    objectArray1 = new object[] { valueName };
                    throw new ArgumentException("Value_must_be_non_negative_integer");
                }
                else
                {
                    objectArray2 = new object[] { valueName };
                    throw new ArgumentException("Value_must_be_positive_integer");
                }
            }
            if (zeroAllowed && (i1 < 0))
            {
                objectArray3 = new object[] { valueName };
                throw new ArgumentException("Value_must_be_non_negative_integer");
            }
            if ((!zeroAllowed) && (i1 <= 0))
            {
                objectArray4 = new object[] { valueName };
                throw new ArgumentException("Value_must_be_positive_integer");
            }
            if (maxValueAllowed <= 0)
            {
                return i1;
            }
            if (i1 <= maxValueAllowed)
            {
                return i1;
            }
            object[] objectArray5 = new object[] { valueName, maxValueAllowed.ToString(((IFormatProvider)CultureInfo.InvariantCulture)) };
            throw new ArgumentException("Value_too_big");
        }

        public static DataSet Merge(DataSet sourceDataSet, DataSet targetDataSet)
        {
            foreach (DataTable table in targetDataSet.Tables)
            {
                int maxPrimaryKey = int.Parse(sourceDataSet.Tables[table.TableName].Rows[sourceDataSet.Tables[table.TableName].Rows.Count - 1][table.PrimaryKey[0].ToString()].ToString());
                foreach (DataRow row in table.Rows)
                {
                    if (sourceDataSet.Tables[table.TableName].Select(string.Format(" {0} = {1} ", table.PrimaryKey[0], row[table.PrimaryKey[0]])).Length > 0)
                    {
                        row[table.PrimaryKey[0].ToString()] = ++maxPrimaryKey;
                    }
                }
            }

            sourceDataSet.Merge(targetDataSet);
            return sourceDataSet;
        }

        public static int CountOneBits(int number)
        {
            int result = 0;
            for (int i = 0; i < 64; i++)
            {
                result += (number & 1);
                number >>= 1;
            }
            return result;
        }
    }
}
