using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Security.Principal;
using System.Data;
using System.Web.Configuration;

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
                idproduto.Text = row.Cells[0].Text;
            }
        }
        public void BindDataToGridView3()
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn1.Open();
            var idpedido= ((Label)form1.FindControl("ID_pedido")).Text;
            string binddata = "Select  ID_PEDIDO,ID_CLIENTE,ID_LOCAL,NOME,DATA_CRIACAO,NUM_PESSOAS,DATA_EVENTO from PEDIDO where ID_PEDIDO = '" +  idpedido +"' order by ID_PEDIDO";
            SqlCommand com = new SqlCommand(binddata, conn1);
            SqlDataAdapter dataadapter = new SqlDataAdapter(com);
            DataSet dataset = new DataSet();
            dataadapter.Fill(dataset);
            if (dataset.Tables[0].Rows.Count > 0)
            {
                Pedido.DataSource = dataset;
                Pedido.DataBind();
            }
            conn1.Close();


        }
        public void BindDataToGridView4()
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn1.Open();
            var idpedido = ((Label)form1.FindControl("ID_pedido")).Text;
            string binddata = "Select  ID_PEDIDO,ID_LINHA_PEDIDO,ID_PRODUTO,QTD_PRODUTO from LINHA_PEDIDO where ID_PEDIDO = '" + idpedido + "' order by ID_PEDIDO";
            SqlCommand com = new SqlCommand(binddata, conn1);
            SqlDataAdapter dataadapter = new SqlDataAdapter(com);
            DataSet dataset = new DataSet();
            dataadapter.Fill(dataset);
            if (dataset.Tables[0].Rows.Count > 0)
            {
                LPedido.DataSource = dataset;
                LPedido.DataBind();
            }
            conn1.Close();


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
            string data =  ((TextBox)form1.FindControl("dataevento")).Text;
            var pessoas = ((TextBox)form1.FindControl("pessoasevento")).Text;
            var datacriacao = DateTime.Now.ToString("yyyy/m/d");
            string local = ((TextBox)form1.FindControl("localevento")).Text;
            //string email = HttpContext.Current.User.Identity.Name;
            conn.Close();

            conn.Open();
            string id_local = "SELECT ID_LOCAL FROM LOCAL WHERE NOME = '"+local+"'";
            // ScriptManager.RegisterStartupScript(Page, Page.GetType(), "showError",
            //"alert('" + last +Nome + Descricao+"');", true);
            SqlCommand com2 = new SqlCommand(id_local, conn);

            var idlocal = (Int32)com2.ExecuteScalar();
            conn.Close();

           // conn.Open();
           // string id_cliente = "SELECT ID_CLIENTE FROM CLIENTE WHERE EMAIL = '" + email + "'";
           // SqlCommand com3 = new SqlCommand(id_cliente, conn);

            var idcliente = 1;
            //conn.Close();

            conn.Open();
            string addrow = "insert into  PEDIDO (ID_PEDIDO,ID_CLIENTE,ID_LOCAL,NOME,DATA_CRIACAO,NUM_PESSOAS,DATA_EVENTO) values('" + idpedido + "','" + idcliente + "','" + idlocal + "','" + Nome + "','" + datacriacao + "','" + pessoas + "','" + data + "')";
            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();

           
            conn.Close();
            ID_pedido.Text = idpedido.ToString();
            BindDataToGridView3();
            conn.Open();
            string id_linha = "SELECT TOP 1 ID_LINHA_PEDIDO FROM LINHA_PEDIDO ORDER BY ID_LINHA_PEDIDO DESC"; ;
            // ScriptManager.RegisterStartupScript(Page, Page.GetType(), "showError",
            //"alert('" + last +Nome + Descricao+"');", true);
            SqlCommand com3 = new SqlCommand(id_linha, conn);
           

            var id_linha1 = (Int32)com2.ExecuteScalar();
            linhapedido.Text = id_linha1.ToString();
            conn.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           


            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn.Open();
            string id_linha = "SELECT TOP 1 ID_LINHA_PEDIDO FROM LINHA_PEDIDO ORDER BY ID_LINHA_PEDIDO DESC"; ;
          
            SqlCommand com3 = new SqlCommand(id_linha, conn);

            var idlpedido = (Int32)com3.ExecuteScalar()+1;

            conn.Close();
            conn.Open();

            string idpedido = ((Label)form1.FindControl("ID_pedido")).Text;
            
     
            var idproduto = ((Label)form1.FindControl("idproduto")).Text;
            var qdproduto = ((TextBox)form1.FindControl("qtproduto")).Text;


            string addrow = "insert into  LINHA_PEDIDO (ID_PEDIDO,ID_LINHA_PEDIDO,ID_PRODUTO,QTD_PRODUTO) values('" + idpedido + "','" + idlpedido + "','" + idproduto + "','" + qdproduto + "')";
            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();
            conn.Close();
            BindDataToGridView4();
        }

        protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

           
            conn.Open();

           // string idcliente = ((Label)form1.FindControl("ID_pedido")).Text;


          


       /*     string addrow = "select LINHA_PEDIDO (ID_PEDIDO,ID_LINHA_PEDIDO,ID_PRODUTO,QTD_PRODUTO) values('" + idpedido + "','" + idlpedido + "','" + idproduto + "','" + qdproduto + "')";
            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();
            conn.Close();
            BindDataToGridView4();*/
        }
    }
}
