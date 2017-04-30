using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dvdmanagementsystem
{
    public partial class showCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["managerName"] == null)
            {
                Response.Write("You Must Log In To Access This Page..");
                Response.Redirect("~/Home.aspx");
            }
            string csForShowCustomer = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection connectorForShowCustomer = new SqlConnection(csForShowCustomer))

            {
                SqlCommand sqlForShowCustomer = new SqlCommand("select name, gender ,favouritegenre , userinfo.username, password from userinfo,login where userinfo.username=login.username;", connectorForShowCustomer);
                connectorForShowCustomer.Open();

                GridView1.DataSource = sqlForShowCustomer.ExecuteReader();
                GridView1.DataBind();
            }
        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["sSearchThisName"] = searchThisName.Text;
            Response.Redirect("~/searchCustomerResult.aspx");
        }
    }
}