using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkDIY_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DIY.aspx");
    }
    protected void lnkCollection_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/collection.aspx");
    }
    protected void lnkCommunication_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/communication.aspx");
    }
    protected void lnkManager_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/manager-index.aspx");
    }
}