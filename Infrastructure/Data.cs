using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace P3WebApp.Infrastructure
{
    public class Data
    {
        #region Public Methods
        public DataTable ExecuteQueryToTable(string sql)
        {
            OleDbConnection conn = null;
            OleDbDataReader reader = null;
            DataTable dtSchema = null;
            DataTable dtData = null;
            try
            {
                conn = _getConn();
                conn.Open();

                OleDbCommand cmd =
                    new OleDbCommand(sql, conn);
                reader = cmd.ExecuteReader();
                dtSchema = reader.GetSchemaTable();

                foreach (DataRow dr in dtSchema.Rows)
                {
                    dtData.Columns.Add(new DataColumn(dr["ColumnName"].ToString()));
                }
                DataRow row = null;
                while (reader.Read())
                {
                    row = dtData.NewRow();
                    foreach (DataColumn col in dtData.Columns)
                    {
                        row[col] = reader[col.ColumnName];
                    }
                    dtData.Rows.Add(row);
                }
                reader.Close();
            }
            //  catch (Exception e)
            //  {
            //      Response.Write(e.Message);
            //      Response.End();
            //  }
            finally
            {
                if (conn != null) conn.Close();
            }
            return dtData;
        }

        public void ExecuteNonQuery(string sql)
        {
            OleDbConnection conn = null;
            try
            {
                conn = _getConn();
                conn.Open();

                OleDbCommand cmd =
                    new OleDbCommand(sql, conn);
                cmd.ExecuteNonQuery();
            }
            //  catch (Exception e)
            //  {
            //      Response.Write(e.Message);
            //      Response.End();
            //  }
            finally
            {
                if (conn != null) conn.Close();
            }
        }
        #endregion

        #region Private Methods
        private static OleDbConnection _getConn()
        {
            return new OleDbConnection(ConfigurationManager.ConnectionStrings["classDBF"].ConnectionString);
        }
        #endregion
    }
}