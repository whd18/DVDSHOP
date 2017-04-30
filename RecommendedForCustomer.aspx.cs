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
    public partial class RecommendedForCustomer : System.Web.UI.Page
    {
        string getFavouritegenre;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customerName"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
            Label4.Text = Session["customerName"].ToString();


           string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection connectionLogin = new SqlConnection(cs))
            {
                //string getFavouritegenre;
                connectionLogin.Open();
                SqlCommand queryTocheckRole = new SqlCommand("select favouritegenre from userinfo where username='" + Session["customerName"].ToString() + "'", connectionLogin);
                using (SqlDataReader dr = queryTocheckRole.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        // string one = dr[0].ToString();
                        // string two = dr[1].ToString();
                         getFavouritegenre = dr[0].ToString();
                    }
                    dr.Close();
                   // Response.Write(getFavouritegenre);
                    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist where (category1= '" + getFavouritegenre + "') or (category2= '" + getFavouritegenre + "');", connectionLogin);


                    GridView1.DataSource = sqlForShowDVD.ExecuteReader();
                    GridView1.DataBind();

                    Label2.Text = getFavouritegenre;
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customerDashboard.aspx");
        }
    }
}