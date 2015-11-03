using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public String json_pic = "";
    public String json_xhdt = "";
    public String json_hyxw = "";
    public String json_lsdj = "";
    public String json_fljs = "";
    public String json_cxxx = "";
    public String sws_count = "0";


    protected void Page_Load(object sender, EventArgs e)
    {
        InitValue();
    }

    private void InitValue()
    {
        _BLL bll = new _BLL();

        SqlParameter[] spr = new SqlParameter[] {
        new SqlParameter("@pic","''")
        };
        String sql = SqlHelper.GetSQLSelect_normal("top 5", "id,contents,bclass,sclass,titles,pic", "article", spr, "<>", "", "id desc");
        DataTable dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt!=null)
        {
            if (dt.Rows.Count>0)
            {
                json_pic = Tools.BiuldJson("", dt);
            }
        }

        spr = new SqlParameter[] {
        new SqlParameter("@sclass",5)
        };
        sql = SqlHelper.GetSQLSelect_normal("top 3", "fbtimes,id,bclass,sclass,contents,titles", "article", spr, "=", "", "id desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_xhdt = Tools.BiuldJson("", dt);
            }
        }

        spr = new SqlParameter[] {
        new SqlParameter("@sclass",6)
        };
        sql = SqlHelper.GetSQLSelect_normal("top 3", "fbtimes,id,bclass,sclass,contents,titles", "article", spr, "=", "", "id desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_hyxw = Tools.BiuldJson("", dt);
            }
        }

        spr = new SqlParameter[] {
        new SqlParameter("@bclass",2)
        };
        sql = SqlHelper.GetSQLSelect_normal("top 5", "fbtimes,id,bclass,sclass,titles", "article", spr, "=", "", "id desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_lsdj = Tools.BiuldJson("", dt);
            }
        }

        spr = new SqlParameter[] {
        new SqlParameter("@bclass",3)
        };
        sql = SqlHelper.GetSQLSelect_normal("top 5", "fbtimes,id,bclass,sclass,titles", "article", spr, "=", "", "id desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_fljs = Tools.BiuldJson("", dt);
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

        sql = SqlHelper.GetSQLSelect_normal("", "id", "sws", null, "", "", "id asc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, null);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                sws_count = dt.Rows.Count.ToString();
            }
        }
    }
}