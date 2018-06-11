using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Members member = new Members();
        member.name = txtName.Text;
        member.password = txtPassword.Text;
        db.Members.InsertOnSubmit(member);
        db.SubmitChanges();
        Response.Redirect("~/login.aspx?name=" + txtName.Text + "&pwd=" + txtPassword.Text);
    }
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPassword.Text = "";
        txtPasswordAgain.Text = "";
    }
}