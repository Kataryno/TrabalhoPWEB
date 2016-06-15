using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuxCatering.Clientes
{
    public partial class Avaliacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnviaAvaliacao(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn.Open();

            string addrow = "INSERT INTO AVALIACAO (ID_FORNECEDOR, GLOBAL, COMUNICACAO, PRECO, SERVICO, SIMPATIA) VALUES(" + Int32.Parse(ddlFornecedores.SelectedValue) + "," + Int32.Parse(ddlGlobal.SelectedValue) + "," + Int32.Parse(ddlComunicacao.SelectedValue) + "," + Int32.Parse(ddlPreco.SelectedValue) + "," + Int32.Parse(ddlServico.SelectedValue) + "," + Int32.Parse(ddlSimpatia.SelectedValue) + ")";

            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();

            conn.Close();
        }
    }

}