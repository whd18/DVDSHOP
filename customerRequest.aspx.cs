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
    public partial class customerRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["managerName"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }

            //string csForShowDVD = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

            //{
            //    SqlCommand sqlForShowDVD = new SqlCommand("select * from userRequest order by id DESC;", connectorForShowDVD);
            //    connectorForShowDVD.Open();

            //    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
            //    GridView1.DataBind();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/managerDashboard.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}