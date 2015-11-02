using System;
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


            case "getsws":
                getsws();
                break;

            case "deletenew":
                DeleteNew();
                break;

            case "deletesws":
                DeleteSws();
                break;

            case "addsws":
                AddSws();
                break;

            case "upnew":
                UpNew();
                break;

            case "upsws":
                UpSws();
                break;

            case "addlawyer":
                AddLawyer();
                break;

            case "getlawyer":
                GetLawyer();
                break;

            case "deletelawyer":
                DeleteLawyer();
                break;

            case "uplawyer":
                UpLawyer();
                break;

            case "changepw":
                ChangePw();
                break;

            default:
                break;
        }

    }

    private void ChangePw()
    {
        String old=Request.Form["old"];
        String pw1=Request.Form["pw1"];
        String pw2=Request.Form["pw2"];

        DataTable dt = bll.GetAdmin_pw(Session["adminid"].ToString());

        if (!dt.Rows[0]["pw"].ToString().Equals(old))
        {
            Response.Write("no:");
            Response.End();
        }

        int r = bll.UpPw(pw2, Session["adminid"].ToString());
        if (r == 1)
        {
            Session["adminid"] = null;
            Response.Write("ok:");
            Response.End();
        }
        else
        {
            Response.Write("no:");
            Response.End();
        }
    }

    private void UpLawyer()
    {
        String name = Request.Form["name"];
        String dw = Request.Form["dw"];
        String px = Request.Form["px"];
        String pic = Request.Form["pic"];
        String contents = Request.Form["contents"];
        String uid=Request.Form["uid"];

        int r = bll.UpLawyer(name, px, pic, contents, uid, dw);

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

    private void DeleteLawyer()
    {
        String did=Request.Form["did"];
        int r = -1;
        if (!String.IsNullOrEmpty(did))
        {
            r = bll.DeleteLawyer(did);
        }

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

    private void GetLawyer()
    {
       String swsid=Request.Form["swsid"];
       DataTable dt = bll.GetLawyer(swsid);
       String r = "";
       if (dt!=null)
       {
           r = Tools.BiuldJson("", dt);
       }
       Response.Write(r);
       Response.End();
    }

    private void AddLawyer()
    {
        String name = Request.Form["name"];
        String dw = Request.Form["dw"];
        String px = Request.Form["px"];
        String pic = Request.Form["pic"];
        String contents = Request.Form["contents"];

        int r = bll.AddLawyer(name, px, pic, contents, dw);

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

    private void UpSws()
    {
        String name = Request.Form["name"];
        String px = Request.Form["px"];
        String pic = Request.Form["pic"];
        String contents = Request.Form["contents"];
        String uid=Request.Form["uid"];

        int r = bll.UpSws(name,px,pic,contents,uid);
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

    private void DeleteSws()
    {
        String did = Request.Form["did"];
        int r = -1; ;
        if (!String.IsNullOrEmpty(did))
        {
            r = bll.DeleteSws(did);
        }
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

    private void getsws()
    {
       DataTable dt= bll.GetSws();
       String r = "";
       if (dt!=null)
       {
           r = Tools.BiuldJson("",dt);
       }
       Response.Write(r);
       Response.End();
    }

    private void UpNew()
    {
        String uid = Request.Form["uid"];
        String title = Request.Form["title"];
        String bc = Request.Form["bc"];
        String sc = Request.Form["sc"];
        String pic = Request.Form["pic"];
        String contents = Request.Form["contents"];

        int r=bll.UpNew(title, bc, sc, pic, contents, uid);
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

    private void AddSws()
    {
        String name = Request.Form["name"];
        String px=Request.Form["px"];
        String pic=Request.Form["pic"];
        String contents=Request.Form["contents"];

        int r=bll.AddSws(name, px, pic, contents);
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

    private void DeleteNew()
    {
        String did=Request.Form["did"];
        int r = -1; ;
        if (!String.IsNullOrEmpty(did))
        {
            r=bll.DeleteNew(did);
        }
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