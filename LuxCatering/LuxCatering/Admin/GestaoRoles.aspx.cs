using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxCatering.Admin
{
    public partial class GestaoRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void CriarRole(object sender, EventArgs e)
        {
            //lbCategoria.Text = "";
            //foreach (string cat in Categorias)
                if (!Roles.RoleExists(tbNomeNovaRole.Text))
                {
                    Roles.CreateRole(tbNomeNovaRole.Text);
                    //lbCategoria.Text += "Categoria criada: " + cat + "<br>";
                }
        }
    }
}