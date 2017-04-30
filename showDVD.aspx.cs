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
    public partial class showDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["managerName"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
            //if (!IsPostBack)
            //{
            //}
            //string csForShowDVD = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

            //{
            //    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist order by title ASC;", connectorForShowDVD);
            //    connectorForShowDVD.Open();

            //    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
            //    GridView1.DataBind();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["findThis"] = whatTofind.Text;
            Session["findByThis"] = whatTofindBy.SelectedValue;
            Response.Redirect("~/searchDvdResult.aspx");
        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/managerDashboard.aspx");
        }
    }
}