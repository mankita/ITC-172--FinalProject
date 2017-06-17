using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubmitDonation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["personKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        decimal newDonationAmount = decimal.Parse(DonationTextBox.Text);

        Community_AssistEntities db = new Community_AssistEntities();

        Donation donation = new Donation();
        donation.DonationAmount = newDonationAmount;
        donation.DonationDate = DateTime.Now;
        donation.PersonKey = Convert.ToInt32(Session["personKey"]);

        db.Donations.Add(donation);
        db.SaveChanges();

        Response.Redirect("DonationListPage.aspx");
    }

    protected void ViewDonations_Click(object sender, EventArgs e)
    {
        Response.Redirect("DonationListPage.aspx");
    }
}