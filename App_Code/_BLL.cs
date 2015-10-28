using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// _BLL 的摘要说明
/// </summary>
public class _BLL
{
	public _BLL()
	{
		
	}

    public int InsertNew(String title,String bc,String sc,String pic,String contents,DateTime fbtime)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@titles",title),
        new SqlParameter("@bclass",bc),
        new SqlParameter("@sclass",sc),
        new SqlParameter("@pic",pic),
        new SqlParameter("@contents",contents),
        new SqlParameter("@fbtimes",fbtime)
       };
        String sql = SqlHelper.GetSQLInsert_normal("article",spr);
        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);
    }

    public DataTable GetNewClass()
    {
        String sql = SqlHelper.GetSQLSelect_normal("", "id,names,type,pid", "fl", null, "", "", "id asc");
        return SqlHelper.GetTable(sql, CommandType.Text, null);
    }
}