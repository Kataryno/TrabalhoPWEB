using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace LuxCatering
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                    "Data Source=espinheira.no-ip.org;" +
                    "Initial Catalog=LuxCatering-DB;" +
                    "User id=sa;" +
                    "Password = pweb;";
                
                conn.Open();
                string checkuser = "select count(*) from UTILIZADOR where NOME ='" + TBUserName.Text + "'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());


                    if (temp == 1)
                {
                    Response.Write("Utilizador já existe");
                }
                    conn.Close();
                    
                    
                    }
                
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                    "Data Source=espinheira.no-ip.org;" +
                    "Initial Catalog=LuxCatering-DB;" +
                    "User id=sa;" +
                    "Password = pweb;";
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=espinheira.no-ip.org;Initial Catalog=LuxCatering-DB;Persist Security Info=True;User ID=sa;Password=pweb"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UTILIZADOR (NOME,EMAIL,PASSWORD,LOCALIDADE) values (@Utiliz,@Email,@Pass,@Local) ";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Utiliz", TBUserName.Text);
                com.Parameters.AddWithValue("@Email", TBEmail.Text);
                com.Parameters.AddWithValue("@Pass", TBPassword.Text);
                com.Parameters.AddWithValue("@Local", DropDownList1.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Manager.aspx");
                Response.Write("foi submetido registo");
                conn.Close();
            }
            catch(Exception ex)
            {

                Response.Write("Error" + ex.ToString());
            }
           
        }
    }
}