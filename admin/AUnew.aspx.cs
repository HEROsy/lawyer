using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addnew : System.Web.UI.Page
{
    public String PageHead = "";
    public String classvalue = "";

    _BLL bll = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        PageHead = "新闻添加";
        bll = new _BLL();
        classvalue = GetClassValue_json();
    }

    private String GetClassValue_json()
    {
        String r = "";
       DataTable dt= bll.GetNewClass();
       if (dt!=null)
       {
           r = Tools.BiuldJson("",dt);
       }

       return r;
    }
}