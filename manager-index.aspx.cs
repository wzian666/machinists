using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"].ToString() != "admin")
        {
            Response.Redirect("~/login.aspx?wrong=" + "1");
        }
    }
    protected void lnkUsers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/manager-users.aspx");
    }
    protected void lnkEquipment_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/manager-equipment.aspx");
    }
    protected void lnkProject_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/manager-project.aspx");
    }
}