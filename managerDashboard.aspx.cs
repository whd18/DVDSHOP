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
    public partial class managerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["managerName"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
            Label1.Text = "Manager Dashboard" + " (" + Session["managerName"].ToString() + ")";
        }

        protected void addDvdButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/addDVD.aspx");
        }

        protected void showDvdButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/showDVD.aspx");
        }

        protected void showCustomerButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/showCustomer.aspx");
        }

        protected void changePasswordButton_Click(object sender, EventArgs e)
        {
            

            string csForupdatePassword = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection connectionupdatePassword = new SqlConnection(csForupdatePassword))
            {
                string currPassword = currentPassword.Text;
                string newPass = newPassword.Text;
                string confirmNewPass = confirmNewpassword.Text;
                string managerNameforSession = Session["managerName"].ToString();
                SqlCommand queryTocheckPassword = new SqlCommand("select password from login where username='" + managerNameforSession + "'", connectionupdatePassword);

                connectionupdatePassword.Open();

                using (SqlDataReader sqldr = queryTocheckPassword.ExecuteReader())
                {
                    while (sqldr.Read())
                    {
                        string passwordFromDB = sqldr[0].ToString();
                        if (currPassword.Equals(passwordFromDB))
                        {
                            //new connection for update the password
                            string csForupdatePasswordafterCheck = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                            SqlConnection connectionupdatePasswordafterCheck = new SqlConnection(csForupdatePasswordafterCheck);
                            
                            connectionupdatePasswordafterCheck.Open();
                            SqlCommand queryToupdatePassword = new SqlCommand("update login set password='"+ newPass + "' where username='"+ managerNameforSession + "';", connectionupdatePasswordafterCheck);
                            queryToupdatePassword.ExecuteNonQuery();
                            connectionupdatePasswordafterCheck.Close();
                            //new connection for update the password

                            Response.Write("Password changed! Next time you will able to use your new password.");
                        }

                        else

                        {
                            Response.Write("Current password is WRONG!");
                        }

                    }
                }
            }
        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void Button1customerRequest_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/customerRequest.aspx");
        }
    }
}