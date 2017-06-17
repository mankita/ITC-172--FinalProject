using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        int key = 0;
        Login loginObject = new Login();
        int success = loginObject.LoginPerson(UserTextBox.Text, PasswordTextBox.Text);

        if (success != -1)
        {
            key = loginObject.GetPersonKey(UserTextBox.Text);
            Session["personKey"] = key;
            Response.Redirect("HomePage.aspx");
        }
        else
        {
            ResultLabel.Text = "Invalid Login";
        }
    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterForm.aspx");
    }






}