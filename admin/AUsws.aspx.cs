using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AUsws : System.Web.UI.Page
{
    public String PageHead = "";

    public String json_bc = "";

    _BLL bll = null;

    protected void Page_Load(object sender, EventArgs e)
    {
       
        PageHead = "添加律师事务所";
    }

    
}