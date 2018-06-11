using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class collection : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRelease_Click(object sender, EventArgs e)
    {
        var results = from r in db.Projects
                      where r.description == ddlRelease.SelectedValue
                      select r;
        if (results != null)
        {
            foreach (Projects p in results)
            {
                p.release = "已发布";
            }
        }
        db.SubmitChanges();
        Response.Redirect("~/communication.aspx");
    }
}