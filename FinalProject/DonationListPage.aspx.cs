using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonationListPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int personKey = Convert.ToInt32(Session["personKey"]);
        Community_AssistEntities db = new Community_AssistEntities();
        var personDonations = (from d in db.Donations
                               where d.PersonKey == personKey
                               select d).ToList<Donation>();

        GridView1.DataSource = personDonations;
        GridView1.DataBind();
    }
}