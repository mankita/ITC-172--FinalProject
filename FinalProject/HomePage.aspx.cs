using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["personKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void SubmitDonations_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubmitDonation.aspx");
    }

    protected void ViewDonations_Click(object sender, EventArgs e)
    {
        Response.Redirect("DonationListPage.aspx");
    }

    protected void RequestGrant_Click(object sender, EventArgs e)
    {
        Response.Redirect("RequestGrant.aspx");
    }

    protected void ViewGrant_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewGrants.aspx");
    }
}