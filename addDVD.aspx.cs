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
    public partial class addDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["managerName"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void addDvdButton_Click(object sender, EventArgs e)
        {
            //Add new DVD

            string inputThisTitle = titleBox.Text;
            string inputThisActor = actorBox.Text;
            string inputThisActress = actressBox.Text;
            string inputThisDirector = directorBox.Text;
            int inputThisYear = Convert.ToInt32(yearBox.Text);
            string inputThisCategory1 = category1List.SelectedValue;
            string inputThisCategory2 = category2List.SelectedValue;

            string csforAddDvd = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection connectorForAddDvd = new SqlConnection(csforAddDvd))
            {
                string sqlforAddDvd = "insert into movielist values ('" + inputThisTitle + "', '" + inputThisActor + "','" + inputThisActress + "','" + inputThisDirector + "'," + inputThisYear + ",'" + inputThisCategory1 + "','" + inputThisCategory2 + "');";
                SqlCommand cmdforAddDvd = new SqlCommand(sqlforAddDvd, connectorForAddDvd);
                connectorForAddDvd.Open();
                cmdforAddDvd.ExecuteNonQuery();
            }

            //Add new DVD
            Response.Redirect("~/managerDashboard.aspx");
        }

        protected void signOutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/managerDashboard.aspx");
        }
    }
}