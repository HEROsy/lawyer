using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AUsws : AdminCheck
{
    public String PageHead = "";
    public String BtnValue = "";

    public String json_bc = "";

    _BLL bll = null;

    public String name = "";
    public String px = "";
    public String pic = "";
    public String contents = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        String uid = Request.QueryString["uid"];

        if (String.IsNullOrEmpty(uid))
        {
            PageHead = "添加律师事务所";
            BtnValue = "确认添加";
        }
        else
        {
            PageHead = "修改律师事务所";
            BtnValue = "确认修改";
            bll = new _BLL();
            DataTable dt = bll.GetSws_one(uid);
            if (dt!=null)
            {
                name=dt.Rows[0]["names"].ToString();
                px = dt.Rows[0]["px"].ToString();
                contents = dt.Rows[0]["contents"].ToString();
                pic = dt.Rows[0]["pic"].ToString();
            }
        }

    }

    
}