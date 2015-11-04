using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showlawyer : System.Web.UI.Page
{
    public String json_sws = "";
    public String json_dt = "";

    public String ltitle = "";
    public String lcontents = "";
    public String lpic = "";
    public String json_lawyer = "";

    protected void Page_Load(object sender, EventArgs e)
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
                json_dt = Tools.BiuldJson("", dt);
            }
        }

        sql = SqlHelper.GetSQLSelect_normal("top 5", "id,names,px", "sws", null, "", "", "px desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, null);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_sws = Tools.BiuldJson("", dt);
            }
        }

        String swsid = "4";// Request.QueryString["swsid"];
        if (!String.IsNullOrEmpty(swsid))
        {
             spr = new SqlParameter[] {
        new SqlParameter("@id",swsid)
        };
            sql = SqlHelper.GetSQLSelect_normal("top 1", "*", "sws", spr, "=", "", "id asc");
            dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    ltitle = dt.Rows[0]["names"].ToString();
                    lcontents = dt.Rows[0]["contents"].ToString();
                    lpic = dt.Rows[0]["pic"].ToString();
                }
            }

            spr = new SqlParameter[] {
        new SqlParameter("@pid",swsid)
        };
            sql = SqlHelper.GetSQLSelect_normal("", "*", "sws_ls", spr, "=", "", "px desc");
            dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
            json_lawyer = Tools.BiuldJson("", dt);
        }
    }
}