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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection connectionLogin = new SqlConnection(cs))
            {

                string takeUsername = givenUsername.Text;
                string takePassword = givenPassword.Text;

                SqlCommand queryTocheckUser = new SqlCommand("select count(*) from login where username='"+ takeUsername + "' and password='" + takePassword + "'", connectionLogin);
                connectionLogin.Open();
                
                    int userStatus = Convert.ToInt32(queryTocheckUser.ExecuteScalar()); //converting the query into int

                        if (userStatus==0)
                        {
                            Response.Write("You have not registered yet or input wrong password!");
                        }

                        else if (userStatus == 1)
                        {
                   
                            SqlCommand queryTocheckRole = new SqlCommand("select role from login where username='" + takeUsername + "'", connectionLogin);
                            using (SqlDataReader dr = queryTocheckRole.ExecuteReader())
                                    {
                                        while (dr.Read())
                                        {
                                            string whatRole = dr[0].ToString();
                                    
                                            if(whatRole=="manager")
                                                {
                                                    Session["managerName"] = takeUsername;
                                                    Response.Redirect("~/managerDashboard.aspx");
                                                }
                                            else if(whatRole=="customer")
                                                {
                                                    Session["customerName"] = takeUsername;
                                                    Response.Redirect("~/customerDashboard.aspx");
                                                }
                                        }
                                    }
                         }


                        else
                        {
                            Response.Write("You have multiple account.");
                        }

                
            }
        }
    }
}