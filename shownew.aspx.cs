using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shownew : System.Web.UI.Page
{
    public String json_xhdt = "";
    public String json_cxxx = "";
    public String json_swslb = "";
    public String bname = "";
    public String sname = "";

    public String newstitle = "";
    public String newstime = "";
    public String newscontents = "";

    public String json_s = "";
    public String json_x = "";


    String mbid = "";
    String msid = "";
    String mnid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        mbid = Request.QueryString["bid"];
        msid = Request.QueryString["sid"];
        mnid = Request.QueryString["nid"];

        InitValue();
    }

    private void InitValue()
    {
        _BLL bll = new _BLL();

        SqlParameter[] spr = new SqlParameter[] {
        new SqlParameter("@sclass",5)
        };
        String sql = SqlHelper.GetSQLSelect_normal("top 5", "id,bclass,sclass,titles", "article", spr, "=", "", "id desc");
        DataTable dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                json_xhdt = Tools.BiuldJson("", dt);
            }
        }

        spr = new SqlParameter[] {
        new SqlParameter("@sclass",13)
        };
        sql = SqlHelper.GetSQLSelect_normal("top 3", "fbtimes,id,bclass,sclass,titles", "article", spr, "=", "", "id desc");
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

        if (!String.IsNullOrEmpty(mbid))
        {
            spr = new SqlParameter[] {
        new SqlParameter("@id",mbid)
        };
            sql = SqlHelper.GetSQLSelect_normal("", "id,names", "fl", spr, "=", "", "id asc");
            dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    bname = dt.Rows[0]["names"].ToString();
                }
            }
        }

        if (!String.IsNullOrEmpty(msid))
        {
            spr = new SqlParameter[] {
        new SqlParameter("@id",msid)
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

        if (!String.IsNullOrEmpty(mbid))
        {
            spr = new SqlParameter[] {
        new SqlParameter("@id",mnid)
        };
            sql = SqlHelper.GetSQLSelect_normal("", "titles,fbtimes,contents", "article", spr, "=", "", "id asc");
            dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    newstitle = dt.Rows[0]["titles"].ToString();
                    newstime = Convert.ToDateTime(dt.Rows[0]["fbtimes"].ToString()).ToString("yyyy-MM-dd");
                    newscontents = dt.Rows[0]["contents"].ToString();
                }
            }

            if (!String.IsNullOrEmpty(msid))
            {
                spr = new SqlParameter[] {
                new SqlParameter("@id",mnid),
                new SqlParameter("@sclass",msid)
             };
                sql = SqlHelper.GetSQLSelect_normal("top 1", "titles,bclass,sclass,id", "article", spr, ">,=", "and", "id asc");
                dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        json_s = Tools.BiuldJson("", dt);
                    }
                }

                spr = new SqlParameter[] {
                new SqlParameter("@id",mnid),
                new SqlParameter("@sclass",msid)
            };
                sql = SqlHelper.GetSQLSelect_normal("top 1", "titles,bclass,sclass,id", "article", spr, "<,=", "and", "id asc");
                dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {
                        json_x = Tools.BiuldJson("", dt);
                    }
                }
            }
           

        }
    }
}