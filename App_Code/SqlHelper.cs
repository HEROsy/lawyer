using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

 
    /// <summary>
    /// 
    /// </summary>
    public class SqlHelper
    {
        
        public static readonly String ConnStr = ConfigurationManager.AppSettings["constr"].ToString();
        

     #region  OLD
        /// <summary>
        /// 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="type"></param>
        /// <param name="spr"></param>
        /// <returns></returns>
        public static DataTable GetTable_UserInfo(String sql, CommandType type, params SqlParameter[] spr)
        {
            using (SqlConnection con = new SqlConnection(ConnStr))
            {  
                using (SqlDataAdapter sda = new SqlDataAdapter(sql, con))
                {
                    sda.SelectCommand.CommandType = type;
                    if (spr != null)
                    {
                        sda.SelectCommand.Parameters.AddRange(spr);
                    }
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    return dt;
                }
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="type"></param>
        /// <param name="spr"></param>
        /// <returns></returns>
        public static DataTable GetTable(String sql, CommandType type, params SqlParameter[] spr)
        {
            DataTable dt=null;
            try
            {
                using (SqlConnection con = new SqlConnection(ConnStr))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.CommandType = type;
                        if (spr != null)
                        {
                            cmd.Parameters.AddRange(spr);
                        }
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
            catch (SqlException)
            {
                return null;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="type"></param>
        /// <param name="spr"></param>
        /// <returns></returns>
        public static String ExcoutSQL(String sql, CommandType type, params SqlParameter[] spr)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnStr))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.CommandType = type;
                        if (spr != null)
                        {
                            cmd.Parameters.AddRange(spr);
                        }
                        if (cmd.ExecuteNonQuery()==1)
                        {
                            return "ok:注册成功";
                        } else
                        {
                            return "no:未知错误，请联系管理员";
                        }
                    }
                }
            }
            catch (SqlException e)
            {
                int ercode = e.Errors[0].Number;
                String erStr = "no:未知错误，请联系管理员";
                switch (ercode)
                {
                    case 2601:
                        erStr= "no:用户名已存在";
                        break;
                    default:
                        erStr="no:未知错误，请联系管理员";
                        break;
                }
                return erStr;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="type"></param>
        /// <param name="spr"></param>
        /// <returns></returns>
        public static int ExcoutSQL_Normal(String sql, CommandType type, params SqlParameter[] spr)
        {
            int r = -1;
            try
            {
                using (SqlConnection con = new SqlConnection(ConnStr))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.CommandType = type;
                        if (spr != null)
                        {
                            cmd.Parameters.AddRange(spr);
                        }
                       r= cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
                return r;
            }
            catch (SqlException e)
            {
            //    String err = "sql:" + sql + "err:" + e.Message;
            //    Inserterr(err);

                int ercode = e.Errors[0].Number;
                return ercode;
            }
        }

        private static void Inserterr(String err)
        {
            String msql = String.Format("insert into err (error) values ('{0}')", err);
            SqlHelper.ExcoutSQL_Normal(msql, CommandType.Text, null);
        }
#endregion

        public static void ExcoutSQLX(String sql, CommandType type, params SqlParameter[] spr)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnStr))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        cmd.CommandType = type;
                        if (spr != null)
                        {
                            cmd.Parameters.AddRange(spr);
                        }
                        cmd.ExecuteNonQuery();
                    }
                    con.Close();
                }
            }
            catch (SqlException e)
            {
               
            }
        }

        public static String GetSQLInsert_normal(String TableName,params SqlParameter[] spr)
        {
            SqlParameter tp = new SqlParameter();
            String sql = "insert";

        }

    }

