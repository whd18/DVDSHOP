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
    public partial class signupConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["sNameBox"].ToString();
            Label3.Text = Session["sGenderList"].ToString();
            Label4.Text = Session["sFavouriteGenreList"].ToString();
            Label5.Text = Session["sUserName"].ToString();
            Label6.Text = Session["sPasswordBox"].ToString(); //this label is hidden
        }

        protected void changeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/signup.aspx");
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            //inpit all of them at database

            string inputThisName = Label2.Text;
            string inputThisGender = Label3.Text;
            string inputThisFavouriteGenre = Label4.Text;
            string inputThisUsername = Label5.Text;
            string inputThisPassword = Label6.Text;
            string inputThisRole = "customer"; //because manager roles in fixed

            string csforSignup = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection connectorForInput = new SqlConnection(csforSignup))
            {
                string sqlforLoginTable = "insert into login values ('" + inputThisUsername + "', '" + inputThisPassword + "','" + inputThisRole + "');";
                string sqlforUserinfoTable = "insert into userinfo values ('" + inputThisName + "', '" + inputThisGender + "','" + inputThisFavouriteGenre + "' , '" + inputThisUsername + "','" + inputThisRole + "');";
                SqlCommand cmdforLoginTable = new SqlCommand(sqlforLoginTable, connectorForInput);
                SqlCommand cmdforUserinfoTable = new SqlCommand(sqlforUserinfoTable, connectorForInput);
                connectorForInput.Open();
                cmdforLoginTable.ExecuteNonQuery();
                cmdforUserinfoTable.ExecuteNonQuery();
            }

                //inpit all of them at database
                Response.Redirect("~/login.aspx");
        }
    }
}