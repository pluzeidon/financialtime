using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace FinancialTime.Utils
{
    public abstract class PersBase
    {
        #region ExecuteNonQuery
        public virtual int ExecuteNonQuery(CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            return SqlHelper.ExecuteNonQuery(ConnectionString(), commandType, commandText, commandParameters);
        }


        public virtual int ExecuteNonQuery(SqlTransaction transaction, CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            return SqlHelper.ExecuteNonQuery(transaction, commandType, commandText, commandParameters);
        }
        #endregion

        #region ExecuteDataset
        public virtual DataSet ExecuteDataset(CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            return SqlHelper.ExecuteDataset(ConnectionString(), commandType, commandText, commandParameters);
        }

        public virtual DataSet ExecuteDataset(CommandType commandType, string commandText)
        {

            return SqlHelper.ExecuteDataset(ConnectionString(), commandType, commandText);
        }
        #endregion

        #region ExecuteReader
        public virtual SqlDataReader ExecuteReader(CommandType commandType, string commandText)
        {

            return SqlHelper.ExecuteReader(ConnectionString(), commandType, commandText);
        }

        public virtual SqlDataReader ExecuteReader(CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            return SqlHelper.ExecuteReader(ConnectionString(), commandType, commandText, commandParameters);
        }
        #endregion

        #region ExecuteScalar
        public virtual object ExecuteScalar(CommandType commandType, string commandText)
        {
            return SqlHelper.ExecuteReader(ConnectionString(), commandType, commandText);
        }
        public virtual object ExecuteScalar(CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            return SqlHelper.ExecuteScalar(ConnectionString(), commandType, commandText, commandParameters);
        }

        private string ConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["csEntegaTarjetasDB"].ConnectionString;
        }
        #endregion
    }
}