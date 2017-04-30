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
    public partial class searchDvdResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["managerName"] == null && Session["customerName"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }

            if (!IsPostBack)
            {
            }
           string findThisVar = Session["findThis"].ToString();
           string findByThisVar = Session["findByThis"].ToString();

            
            string csForShowDVD = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            
            if(findByThisVar=="title")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where title LIKE '" + findThisVar + "%';", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

            if (findByThisVar == "actor")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where actor LIKE'" + findThisVar + "%';", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

            if (findByThisVar == "actress")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where actress LIKE '" + findThisVar + "%';", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

            if (findByThisVar == "director")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where director LIKE '%" + findThisVar + "%';", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

            if (findByThisVar == "year")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where year=" + findThisVar + ";", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

            if (findByThisVar == "category1")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where category1 LIKE '" + findThisVar + "%';", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

            if (findByThisVar == "category2")
            {
                using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

                {
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where category2 LIKE '" + findThisVar + "%';", connectorForShowDVD);
                    connectorForShowDVD.Open();

                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();
                }
            }

        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }
    }
}