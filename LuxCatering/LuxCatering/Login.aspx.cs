using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace LuxCatering
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TBUserName_TextChanged(object sender, EventArgs e)
        {

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
                string checkuser = "select count(*) from UTILIZADOR where NOME ='" + TBUserName.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            conn.Close();
            if (temp == 1)
                {
                conn.Open();
                string checkPassword = "select PASSWORD from UTILIZADOR where NOME ='" + TBUserName.Text + "'";
                SqlCommand passcom = new SqlCommand(checkPassword, conn);
                string password = passcom.ExecuteScalar().ToString();
                if(password == TBPassword.Text)
                {
                    Response.Write("login com sucesso");
                }

                else
                {
                    Response.Write("password errada");
                }
            }
            else
            {
                Response.Write("Utilizador nao existe");
            }
               

                com.ExecuteNonQuery();
                Response.Redirect("Admin/Manager.aspx");
                Response.Write("foi submetido registo");
                conn.Close();
            }
            catch(Exception ex)
            {

          
        }
    }
}