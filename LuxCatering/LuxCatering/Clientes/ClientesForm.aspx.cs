using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace LuxCatering
{
    public partial class ClientesForm : System.Web.UI.Page
    {
        private bool _refreshState;
        private bool _isRefresh;

       /* protected override void LoadViewState(object savedState)
        {
            object[] AllStates = (object[])savedState;
            base.LoadViewState(AllStates[0]);
            _refreshState = bool.Parse(AllStates[1].ToString());
            _isRefresh = _refreshState == bool.Parse(Session["__ISREFRESH"].ToString());
        }

        protected override object SaveViewState()
        {
            Session["__ISREFRESH"] = _refreshState;
            object[] AllStates = new object[2];
            AllStates[0] = base.SaveViewState();
            AllStates[1] = !(_refreshState);
            return AllStates;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (!_isRefresh)
                Response.Write(DateTime.Now.Millisecond.ToString());
        }*/
        protected void Page_Load(object sender, EventArgs e)
          {

          }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {

        }

        protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DetailsView1_ItemCreated(object sender, EventArgs e)
        {
            /*  string nome = DetailsView1.Rows[1].Cells[1].Text;
              string descricao = DetailsView1.Rows[2].Cells[1].Text;

              SqlConnection conn = new SqlConnection();
              conn.ConnectionString =
                  "Data Source=espinheira.no-ip.org;" +
                  "Initial Catalog=LuxCatering-DB;" +
                  "User id=sa;" +
                  "Password = pweb;";

              conn.Open();
              string insert = "insert into PRODUTO(NOME) values ('" + nome +"')";
              SqlCommand com = new SqlCommand(insert, conn);


              conn.Close();


          }*/
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = GridView2.SelectedRow;

            // Display the first name from the selected row.
            // In this example, the third column (index 2) contains
            // the first name.
            MessageLabel.Text = "Quer adicionar " + row.Cells[3].Text + " ao pedido ?";
        }

       protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            // Get the currently selected row. Because the SelectedIndexChanging event
            // occurs before the select operation in the GridView control, the
            // SelectedRow property cannot be used. Instead, use the Rows collection
            // and the NewSelectedIndex property of the e argument passed to this 
            // event handler.
            GridViewRow row = GridView2.Rows[e.NewSelectedIndex];

            // You can cancel the select operation by using the Cancel
            // property. For this example, if the user selects a customer with 
            // the ID "ANATR", the select operation is canceled and an error message
            // is displayed.
            if (row.Cells[1].Text == "ANATR")
            {
                e.Cancel = true;
                MessageLabel.Text = "You cannot select " + row.Cells[2].Text + ".";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn.Open();
            string lastrow = "SELECT TOP 1 ID_PEDIDO FROM PEDIDO ORDER BY ID_PEDIDO DESC";
            SqlCommand com1 = new SqlCommand(lastrow, conn);

            var idpedido = (Int32)com1.ExecuteScalar() + 1;

            string Nome = ((TextBox)form1.FindControl("nomeevento")).Text;
            string data = ((TextBox)form1.FindControl("dataevento")).Text;
            var pessoas = ((TextBox)form1.FindControl("pessoasevento")).Text;
            string datacriacao = DateTime.Now.ToString("dd/mm/yyyy");
            string local = ((TextBox)form1.FindControl("localsevento")).Text;

            conn.Close();
            conn.Open();
            string idlocal = "SELECT ID_LOCAL FROM LOCAL WHERE NOME = '"+local+"'";
            // ScriptManager.RegisterStartupScript(Page, Page.GetType(), "showError",
            //"alert('" + last +Nome + Descricao+"');", true);
            conn.Close();
            conn.Open();

            string addrow = "insert into  PEDIDO (ID_PEDIDO,ID_CLIENTE,ID_LOCAL,NOME,DATA_CRIACAO,NUM_PESSOAS,DATA_EVENTO) values('" + last + "','" + Nome + "','" + Descricao + "')";
            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();
      
            conn.Close();

        }
    }
}
