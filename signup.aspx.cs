using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dvdmanagementsystem
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sNameBox"] != null)
            {
                if (!IsPostBack)
                {
                    nameBox.Text = Session["sNameBox"].ToString();
                    genderList.SelectedValue= Session["sGenderList"].ToString();
                    favouriteGenreList.SelectedValue = Session["sFavouriteGenreList"].ToString();
                    userName.Text = Session["sUserName"].ToString();
                    passwordBox.Text = Session["sPasswordBox"].ToString();

                }

            }
            else
            {
            }
        }

        protected void showSignupInformation_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(passwordBox.Text) && passwordBox.Text==confirmpasswordBox.Text)
            {
                Session["sNameBox"] = nameBox.Text;
                Session["sGenderList"] = genderList.SelectedItem;
                Session["sFavouriteGenreList"] = favouriteGenreList.SelectedItem;
                Session["sUserName"] = userName.Text;
                Session["sPasswordBox"] = passwordBox.Text;
                Response.Redirect("~/signupConfirmation.aspx");
            }

            else
            {
                //Response.Write("Your password field is empty or you input wrong password.");
            }
        }
    }
}