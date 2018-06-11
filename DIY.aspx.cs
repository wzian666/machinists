using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DIY : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Projects proj = new Projects();
            proj.description = txtName.Text;
            proj.author = (from r in db.Members
                           where r.name == Session["name"].ToString()
                           select r.id).ToArray()[0];
            proj.CPU = ddlCPU.SelectedValue;
            proj.MM = ddlMM.SelectedValue;
            proj.GPU = ddlGPU.SelectedValue;
            proj.SM = ddlSM.SelectedValue;
            proj.board = ddlBoard.SelectedValue;
            proj.release = "未发布";
            db.Projects.InsertOnSubmit(proj);
            db.SubmitChanges();
            Response.Redirect("~/collection.aspx");
        }
        else
        {
            lblWrong.Text = "您还未登录，请先登录";
        }
    }
}