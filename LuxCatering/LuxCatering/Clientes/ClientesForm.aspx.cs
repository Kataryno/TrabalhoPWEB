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

        protected override void LoadViewState(object savedState)
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
        }
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

        void CustomersGridView_SelectedIndexChanged(Object sender, EventArgs e)
        {
            // Get the currently selected row using the SelectedRow property.
            GridViewRow row = CustomersGridView.SelectedRow;

            // Display the first name from the selected row.
            // In this example, the third column (index 2) contains
            // the first name.
            MessageLabel.Text = "You selected " + row.Cells[2].Text + ".";
        }

        void CustomersGridView_SelectedIndexChanging(Object sender, GridViewSelectEventArgs e)
        {
            // Get the currently selected row. Because the SelectedIndexChanging event
            // occurs before the select operation in the GridView control, the
            // SelectedRow property cannot be used. Instead, use the Rows collection
            // and the NewSelectedIndex property of the e argument passed to this 
            // event handler.
            GridViewRow row = CustomersGridView.Rows[e.NewSelectedIndex];

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
    }
}
