using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxCatering.Respostas
{
    public partial class Respostas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindDataToGridView1()
        {
            SqlConnection conn1 = new SqlConnection();
            conn1.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn1.Open();
            string idut = "SELECT ID_CLIENTE FROM CLIENTE WHERE EMAIL = '"+ Context.User.Identity.GetUserName()  + "'";
            SqlCommand com1 = new SqlCommand(idut, conn1);

            var idutilizador = (Int32)com1.ExecuteScalar();
            conn1.Close();

          

            conn1.Open();
            //var idpedido = ((Label)form1.FindControl("ID_pedido")).Text;
            string binddata = "Select ID_ORCAMENTO,ID_PEDIDO,ID_FORNECEDOR,NOME,DATA_CRIACAO,PRECO_TOTAL from ORCAMENTO where ID_PEDIDO IN (SELECT ID_PEDIDO FROM PEDIDO WHERE ID_CLIENTE = '"+idutilizador+"')";
            SqlCommand com = new SqlCommand(binddata, conn1);
            SqlDataAdapter dataadapter = new SqlDataAdapter(com);
            DataSet dataset = new DataSet();
            dataadapter.Fill(dataset);
            if (dataset.Tables[0].Rows.Count > 0)
            {
                orcamento.DataSource = dataset;
                orcamento.DataBind();
            }
            conn1.Close();


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            BindDataToGridView1();

        }
    }

}