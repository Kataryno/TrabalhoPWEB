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


namespace LuxCatering
{
    public partial class FornecedoresForm : System.Web.UI.Page
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
            if (!Page.IsPostBack)
            
                BindDataToGridView();

            
        }
  
        protected void Prod_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            ltError.Text = string.Empty;
            Prod.EditIndex = e.NewEditIndex;
            BindDataToGridView();

        }
        protected void Prod_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            Prod.EditIndex = -1;
            BindDataToGridView();

        }
        protected void Prod_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            ltError.Text = string.Empty;
            GridViewRow ProdRow = (GridViewRow)Prod.Rows[e.RowIndex];
            HiddenField IDProd = (HiddenField)ProdRow.FindControl("hdProd");
        
            TextBox TxtNome = (TextBox)ProdRow.Cells[1].Controls[0];
            TextBox TxtDescricao = (TextBox)ProdRow.Cells[2].Controls[0];

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn.Open();
           // ScriptManager.RegisterStartupScript(Page, Page.GetType(), "showError",
           // "alert('" + TxtDescricao.Text +TxtNome.Text + IDProd.Value+"');", true);
        

            string sql = string.Format("UPDATE PRODUTO set NOME = '" + TxtNome.Text + "', DESCRICAO = '" + TxtDescricao.Text + "' WHERE ID_PRODUTO='" + IDProd.Value + "'");
            SqlCommand command = new SqlCommand(sql, conn);
            command.ExecuteNonQuery();
           
            Prod.EditIndex = -1;
            BindDataToGridView();
            conn.Close();

        }
      
        protected void Prod_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
        public void BindDataToGridView()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            conn.Open();
            string binddata = "Select  ID_PRODUTO,ID_CATEGORIA,NOME,DESCRICAO from PRODUTO order by ID_PRODUTO";
            SqlCommand com = new SqlCommand(binddata, conn);
            SqlDataAdapter dataadapter = new SqlDataAdapter(com);
            DataSet dataset = new DataSet();
            dataadapter.Fill(dataset);
            if (dataset.Tables[0].Rows.Count > 0)
            {
                Prod.DataSource = dataset;
                Prod.DataBind();
            }
            conn.Close();


        }
   
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnAddRow_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString =
                "Data Source=espinheira.no-ip.org;" +
                "Initial Catalog=LuxCatering-DB;" +
                "User id=sa;" +
                "Password = pweb;";

            string Nome = ((TextBox)form1.FindControl("nomeprod")).Text;
            string Descricao = ((TextBox)form1.FindControl("descricaoprod")).Text;

            conn.Open();

            string addrow = "insert into  PRODUTO (Nome,Descricao) values('" + Nome + "','" + Descricao + "')";
            SqlCommand com = new SqlCommand(addrow, conn);
            com.ExecuteNonQuery();

            BindDataToGridView();
            conn.Close();
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

       
    }
}
