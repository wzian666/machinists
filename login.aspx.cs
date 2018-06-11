using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["name"] != null && Request.QueryString["pwd"] != null)
        {
            txtName.Text = Request.QueryString["name"];
            txtPassword.Text = Request.QueryString["pwd"];
        }

        if (Request.QueryString["wrong"] != null)
        {
            lblRet.Text = "您不是管理员，请重新登录";
        }
    }
    protected void lnkRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/register.aspx");
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        var results = from r in db.Members
                      where r.name == txtName.Text
                      select r;
        if (results.Count() == 0)
        {
            lblRet.Text = "该账号不存在";
        }
        else 
        {
            var right = from r in results
                        where r.password == txtPassword.Text
                        select r;
            if (right.Count() != 0)
            {
                Session["name"] = txtName.Text;
                Session["id"] = (from r in db.Members
                                 where r.name == txtName.Text
                                 select r.id).ToList()[0];
                Response.Redirect("~/login-success.aspx");
            }
            else
            {
                lblRet.Text = "密码错误";
            }
        }
    }
}