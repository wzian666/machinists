using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager_equipment : System.Web.UI.Page
{
    DatabaseDataContext db = new DatabaseDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Equipment equip = new Equipment();
        equip.name = txtName.Text;
        equip.category = ddlCategory.SelectedIndex + 1;
        db.Equipment.InsertOnSubmit(equip);
        db.SubmitChanges();
        Response.Redirect("~/manager-equipment.aspx");
    }
}