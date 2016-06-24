using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Web.Configuration;
using Microsoft.AspNet.Identity;

namespace LuxCatering
{
   public partial class FornecedoresFormPedidos : System.Web.UI.Page
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
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView2.SelectedRow;
            pedidoLabel.Text = row.Cells[1].Text;
        }
        protected void DetailsView1_ItemCreated(object sender, EventArgs e)
        {
          


          }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn.Open();
            var emailf = Context.User.Identity.GetUserName();
            string idfornecedor = "SELECT ID_FORNECEDOR FROM FORNECEDOR where EMAIL = '"+emailf+"'";
            SqlCommand com1 = new SqlCommand(idfornecedor, conn);

            var idfor = (Int32)com1.ExecuteScalar();
            conn.Close();
            conn.Open();
           
            string nomefornecedor = "SELECT NOME FROM FORNECEDOR where EMAIL = '" + emailf + "'";
            SqlCommand com2 = new SqlCommand(nomefornecedor, conn);

            string nomefor = (String)com2.ExecuteScalar();
            conn.Close();


            var preco = ((TextBox)precoorca.FindControl("preco")).Text;
            var datacriacao = DateTime.Now.ToString("yyyy/MM/dd");
            var idpedido = pedidoLabel.Text;


            conn.Open();
            string addrow = "insert into  ORCAMENTO (ID_PEDIDO,ID_FORNECEDOR,NOME,DATA_CRIACAO,PRECO_TOTAL) values('" + idpedido + "','" + idfor + "','" + nomefor + "','" + datacriacao + "','" + preco + "')";
            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();


            conn.Close();

        }
    }
}

