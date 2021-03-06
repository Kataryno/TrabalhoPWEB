﻿using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Owin;
using LuxCatering.Models;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace LuxCatering.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            string RoleName = "";
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);

            if (result.Succeeded)
            {
                // Access the application context and create result variables.
                Models.ApplicationDbContext context = new ApplicationDbContext();

                if (rblPerfil.SelectedIndex == 0)
                    RoleName = "Cliente";
                else
                    RoleName = "Fornecedor";

                if (!manager.IsInRole(manager.FindByEmail(Email.Text).Id, RoleName))
                {
                    result = manager.AddToRole(manager.FindByEmail(Email.Text).Id, RoleName);
                }


                SqlConnection conn = new SqlConnection();
                conn.ConnectionString =
                    "Data Source=espinheira.no-ip.org;" +
                    "Initial Catalog=LuxCatering-DB;" +
                    "User id=sa;" +
                    "Password = pweb;";

                conn.Open();

                string addrow = "INSERT INTO " + RoleName + " (NOME, MORADA, NIF, TELEFONE, TELEMOVEL, EMAIL) VALUES ('" + nome.Text + "','" + morada.Text + "'," + Int32.Parse(nif.Text) + "," + Int32.Parse(telefone.Text) + "," + Int32.Parse(telemovel.Text) + ",'" + Email.Text + "')";

                SqlCommand com = new SqlCommand(addrow, conn);
                com.ExecuteNonQuery();

                conn.Close();

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}