using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Drawing;
using LuxCatering.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

public partial class ManageRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //    DisplayRolesInGrid();


    }

    protected  void CreateRoleButton_Click(object sender, EventArgs e)
    {
        string newRoleName = RoleName.Text.Trim();

        using (var context = new ApplicationDbContext())
        {
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            roleManager.CreateAsync(new IdentityRole { Name = newRoleName });

            
            RoleName.Text = string.Empty;
        }
    }
    private void DisplayRolesInGrid()
    {
        RoleList.DataSource = Roles.GetAllRoles();
        RoleList.DataBind();
    }

    protected void RoleList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // Get the RoleNameLabel
        Label RoleNameLabel = RoleList.Rows[e.RowIndex].FindControl("RoleNameLabel") as Label;

        // Delete the role
        Roles.DeleteRole(RoleNameLabel.Text, false);

        // Rebind the data to the RoleList grid
        DisplayRolesInGrid();
    }
}
