using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AsyCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String tag=Request.Form["type"];

        if (String.IsNullOrEmpty(tag))
        {
            Response.End();
        }
        switch (tag)
        {
            case "swsxx":
                GetSwsXx();
                break;


            case "newslist":
                GetNewsList();
                break;

            case "hyls":
                GetSws();
                break;
            default:
                break;
        }
    }

    private void GetSws()
    {
        String pageindex = Request.Form["pageindex"];
        String pagesize=Request.Form["pagesize"];

        int startindex = (Convert.ToInt32(pageindex) - 1) *Convert.ToInt32(pagesize);
        int endindex = Convert.ToInt32(pageindex) * Convert.ToInt32(pagesize);

        SqlParameter[] spr=new SqlParameter[]{
            new SqlParameter("@pagesize",pagesize),
            new SqlParameter("@startindex",startindex),
            new SqlParameter("@endindex",endindex)
        };
        String sql = "select top (@pagesize) o.pic,o.id,o.contents,o.names from sws as o,(select top (@endindex) row_number() over (order by px desc) as n,id from sws) as t_id where o.id = t_id.id and t_id.n > @startindex";
        DataTable dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        Response.Write(Tools.BiuldJson("",dt));
        Response.End();
    }

    private void GetNewsList()
    {
        String bid = Request.Form["bid"];
        String sid=Request.Form["sid"];
        String pagesize=Request.Form["pagesize"];
        String pageindex=Request.Form["pageindex"];

        String sql = "";
        SqlParameter[] spr = null;
        int startindex = 0;
        int endindex = 0;
        DataTable dt = null;

        try
        {
            startindex = (Convert.ToInt32(pageindex) - 1) * Convert.ToInt32(pagesize);
            endindex = Convert.ToInt32(pageindex)  * Convert.ToInt32(pagesize);
        }
        catch (Exception)
        {
            Response.Write("error arg");
            Response.End();
        }


        if (String.IsNullOrEmpty(bid))
        {
            Response.Write("");
            Response.End();
        }
        else
        {
            if (String.IsNullOrEmpty(sid))
            {
                sql = "SELECT w1.* FROM ARTICLE w1, ( SELECT TOP @end row_number() OVER (ORDER BY ID desc ) n, ID FROM ARTICLE where bclass = @bid  ) w2 WHERE w1.ID = w2.ID AND w2.n > @start ORDER BY w2.n ASC ";
                spr=new SqlParameter[]{
                new SqlParameter("@start",startindex),
                new SqlParameter("@end",endindex),
                new SqlParameter("@bid",bid)

                };
                dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
                Response.Write(Tools.BiuldJson("",dt));
                Response.End();
            }
            else
            {
                sql = "SELECT w1.* FROM ARTICLE w1, ( SELECT TOP @end row_number() OVER (ORDER BY ID desc ) n, ID FROM ARTICLE where bclass = @bid and sclass = @sid ) w2 WHERE w1.ID = w2.ID AND w2.n > @start ORDER BY w2.n ASC ";
                spr = new SqlParameter[]{
                new SqlParameter("@start",startindex),
                new SqlParameter("@end",endindex),
                new SqlParameter("@bid",bid),
                new SqlParameter("@sid",sid)
                };
                dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
                Response.Write(Tools.BiuldJson("", dt));
                Response.End();
            }
        }
    }

    private void GetSwsXx()
    {
        String pageindex=Request.Form["pageindex"];
        int pagesize = 5;
        int startid = 5*(Convert.ToInt32(pageindex)-1);
        String sql = "select top "+pagesize+" pic,names,id from(select row_number() over (order by id) as rownumber,pic,names,id from sws)A where rownumber > "+startid;
        DataTable dt = SqlHelper.GetTable(sql, CommandType.Text, null);
        String r = "";
        r = Tools.BiuldJson("",dt);
        Response.Write(r);
        Response.End();
    }
}