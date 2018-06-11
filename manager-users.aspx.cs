using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager_users : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        var results = from r in db.Members
                      select new
                      {
                          序号 = r.id,
                          用户名 = r.name,
                          密码 = r.password
                      };
        gvUsers.DataSource = results;
        gvUsers.DataBind();
    }
    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        var results = from r in db.Members
                      select new
                      {
                          序号 = r.id,
                          用户名 = r.name,
                          密码 = r.password
                      };
        gvUsers.DataSource = results;
        gvUsers.DataBind();
    }
    protected void gvUsers_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //设置第二列的列宽
        e.Row.Cells[0].Attributes.Add("style", "width:100px;word-wrap : break-word ;word-break : normal ;");

        e.Row.Cells[1].Width = 600;

        //设置奇数行和偶数行的颜色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowIndex % 2 == 1)
            {
                //设置偶数行背景颜色
                //e.Row.BackColor = System.Drawing.Color.SeaShell;
                e.Row.BackColor = System.Drawing.Color.Beige;
            }

            //鼠标滑过背景颜色
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='#FFF000';this.style.cursor='hand'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
        }


    }
}