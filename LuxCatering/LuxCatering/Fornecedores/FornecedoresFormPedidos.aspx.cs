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

        protected void DetailsView1_ItemCreated(object sender, EventArgs e)
        {
          


          }

  
    }


    }

