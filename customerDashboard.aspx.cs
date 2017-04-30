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
    public partial class customerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customerName"] == null)
            {
                Response.Write("You Must Log In To Access This Page..");
                Response.Redirect("~/Home.aspx");
            }
             Label1.Text = "Welcome" + " (" + Session["customerName"].ToString() + ")";
            //if (!IsPostBack)
            //{
            //   // Label1.Text = "Welcome" + " (" + Session["customerName"].ToString() + ")";
            //}
        }

        protected void Buttonviewdvd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            //string csForShowDVD = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //using (SqlConnection connectorForShowDVD = new SqlConnection(csForShowDVD))

            //{
            //    SqlCommand sqlForShowDVD = new SqlCommand("select * from movielist order by title ASC;", connectorForShowDVD);
            //    connectorForShowDVD.Open();

            //   // GridView1.DataSource = sqlForShowDVD.ExecuteReader();
            //   // GridView1.DataBind();
            //}
        }

        protected void Buttonsearchdvd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;

        }

        protected void Buttonrequestdvd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;

        }

        protected void Buttonsubmitrequest_Click(object sender, EventArgs e)
        {
            string movieName = TextBox1moviename.Text;
            string actorName = TextBox3actor.Text;
            string actressName = TextBox4actress.Text;
            string directorName = TextBox5director.Text;
            string comment = TextBox2comment.Text;
            string userNameforSession = Session["customerName"].ToString();

            string csforAddDvd = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection connectorForAddDvd = new SqlConnection(csforAddDvd))
            {
                string sqlforAddDvd = "INSERT INTO userRequest (moviename,actor,actress,director,comment,userName) VALUES('" + movieName + "', '" + actorName + "','" + actressName + "','" + directorName + "','" + comment + "','" + userNameforSession + "'); ";
                SqlCommand cmdforAddDvd = new SqlCommand(sqlforAddDvd, connectorForAddDvd);
                connectorForAddDvd.Open();
                cmdforAddDvd.ExecuteNonQuery();
            }
            TextBox1moviename.Text = null;
            TextBox3actor.Text = null;
            TextBox4actress.Text = null;
            TextBox5director.Text = null;
            TextBox2comment.Text = null;
            Response.Write("Thanks For Your Response. We will Consider Your Request");
        }

        protected void Buttonchangepassword_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void Buttonsignout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/login.aspx");
        }

        protected void Button1changepassword_Click(object sender, EventArgs e)
        {
            //string csForupdatePassword = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            //using (SqlConnection connectionupdatePassword = new SqlConnection(csForupdatePassword))
            //{
            //    string currPassword = TextBox1currentpass.Text;
            //    string newPass = TextBox2newpass.Text;
            //    string confirmNewPass = TextBox3confirmpass.Text;
            //    string userNameforSession = Session["customerName"].ToString();
            //    SqlCommand queryTocheckPassword = new SqlCommand("select password from login where username='" + userNameforSession + "'", connectionupdatePassword);

            //    connectionupdatePassword.Open();

            //    using (SqlDataReader sqldr = queryTocheckPassword.ExecuteReader())
            //    {
            //        while (sqldr.Read())
            //        {
            //            string passwordFromDB = sqldr[0].ToString();
            //            if (currPassword.Equals(passwordFromDB))
            //            {
            //                //new connection for update the password
            //                string csForupdatePasswordafterCheck = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //                SqlConnection connectionupdatePasswordafterCheck = new SqlConnection(csForupdatePasswordafterCheck);

            //                connectionupdatePasswordafterCheck.Open();
            //                SqlCommand queryToupdatePassword = new SqlCommand("update login set password='" + newPass + "' where username='" + userNameforSession + "';", connectionupdatePasswordafterCheck);
            //                queryToupdatePassword.ExecuteNonQuery();
            //                connectionupdatePasswordafterCheck.Close();
            //                //new connection for update the password

            //                Response.Write("Password  changed! Next time you will able to use your new password.");
            //            }

            //            else

            //            {
            //                Response.Write("Current  password is WRONG!");
            //            }

            //        }
            //    }
            //}
        }

        protected void Button1changepassword_Click1(object sender, EventArgs e)
        {
            string csForupdatePassword = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

            using (SqlConnection connectionupdatePassword = new SqlConnection(csForupdatePassword))
            {
                string currPassword = TextBox1currentpass.Text;
                string newPass = TextBox2newpass.Text;
                string confirmNewPass = TextBox3confirmpass.Text;
                string userNameforSession = Session["customerName"].ToString();
                SqlCommand queryTocheckPassword = new SqlCommand("select password from login where username='" + userNameforSession + "'", connectionupdatePassword);

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
                            SqlCommand queryToupdatePassword = new SqlCommand("update login set password='" + newPass + "' where username='" + userNameforSession + "';", connectionupdatePasswordafterCheck);
                            queryToupdatePassword.ExecuteNonQuery();
                            connectionupdatePasswordafterCheck.Close();
                            //new connection for update the password

                            Response.Write("Password  changed! Next time you will able to use your new password.");
                        }

                        else

                        {
                            Response.Write("Current  password is WRONG!");
                        }

                    }
                }
            }
        }

        protected void Buttonrecommended_Click(object sender, EventArgs e)
        {
           // Response.Redirect("~/RecommendedForCustomer.aspx");
        }

        protected void Buttonrecommended_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/RecommendedForCustomer.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["findThis"] = whatTofind.Text;
            Session["findByThis"] = whatTofindBy.SelectedValue;
            Response.Redirect("~/searchDvdResult.aspx");
        }
    }
}