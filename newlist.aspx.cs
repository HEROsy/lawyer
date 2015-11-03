using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newlist : System.Web.UI.Page
{

    String _bid = "";
    String _sid = "";

    public String json_xhdt = "";
    public String json_cxxx = "";
    public String json_swslb = "";
    public String bname = "";
    public String sname = "";
    public String listnum = "";



    protected void Page_Load(object sender, EventArgs e)
    {
        _bid = Request.QueryString["bid"];
        _sid = Request.QueryString["sid"];

        InitValue();
    }

    private void InitValue()
    {
        SqlParameter[] spr = new SqlParameter[] {
        new SqlParameter("@sclass",5)
        };
        String sql = SqlHelper.GetSQLSelect_normal("top 5", "fbtimes,id,bclass,sclass,titles", "article", spr, "=", "", "id desc");
        DataTable dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_xhdt = Tools.BiuldJson("", dt);
            }
        }

        spr = new SqlParameter[] {
        new SqlParameter("@bclass",4)
        };
        sql = SqlHelper.GetSQLSelect_normal("top 5", "fbtimes,id,bclass,sclass,titles", "article", spr, "=", "", "id desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_cxxx = Tools.BiuldJson("", dt);
            }
        }

        
        sql = SqlHelper.GetSQLSelect_normal("top 5", "id,names,px", "sws", null, "", "", "px desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, null);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_swslb = Tools.BiuldJson("", dt);
            }
        }
        //
        if (!String.IsNullOrEmpty(_bid))
        {
            spr = new SqlParameter[] {
        new SqlParameter("@id",_bid)
        };
            sql = SqlHelper.GetSQLSelect_normal("", "id,names", "fl", spr, "=", "", "id asc");
            dt = SqlHelper.GetTable(sql,CommandType.Text,spr);
            if (dt!=null)
            {
                if (dt.Rows.Count>0)
                {
                    bname = dt.Rows[0]["names"].ToString();
                }
            }
        }

        if (!String.IsNullOrEmpty(_sid))
        {
            spr = new SqlParameter[] {
        new SqlParameter("@id",_sid)
        };
            sql = SqlHelper.GetSQLSelect_normal("", "id,names", "fl", spr, "=", "", "id asc");
            dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    sname = dt.Rows[0]["names"].ToString();
                }
            }
        }
        
    }
}