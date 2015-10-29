﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AsyCenter : System.Web.UI.Page
{
    _BLL bll = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        String tag = Request.Form["aty"];
        if (String.IsNullOrEmpty(tag))
        {
            Response.End();
        }

        bll = new _BLL();

        switch (tag)
        {
            case "addnew":
                addnew();
                break;

            case "getnew":
                getnew();
                break;
            default:
                break;
        }

    }

    private void getnew()
    {
        String bs = Request.Form["bs"];
        String ss = Request.Form["ss"];

        SqlParameter[] spr = null;
        if (bs.Equals("-1"))
        {
            //all

        }
        else
        {
            if (ss.Equals("-1"))
            {
                spr = new SqlParameter[]{
            new SqlParameter("@bclass",bs)
            };
            }
            else
            {
                spr = new SqlParameter[]{
        new SqlParameter("@bclass",bs),
        new SqlParameter("@sclass",ss)
            };
            }
        }


        DataTable dt = bll.GetNews(spr);
        String r = "";
        if (dt != null && dt.Rows.Count > 0)
        {
            r = Tools.BiuldJson("", dt);
        }

        Response.Write(r);
        Response.End();
    }

    private void addnew()
    {
        String title = Request.Form["title"];
        String bc = Request.Form["bc"];
        String sc = Request.Form["sc"];
        String pic = Request.Form["pic"];
        String contents = Request.Form["contents"];

        int r = bll.InsertNew(title, bc, sc, pic, contents, DateTime.Now);
        if (r == 1)
        {
            Response.Write("ok:");
            Response.End();
        }
        else
        {
            Response.Write("no:");
            Response.End();
        }
    }
}