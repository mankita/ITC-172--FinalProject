using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RequestGrant : System.Web.UI.Page
{

    List<GrantType> grantTypes  = new List<GrantType>();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["personKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        Community_AssistEntities db = new Community_AssistEntities();

        List<GrantType> queryResult =
            (from gt in db.GrantTypes select gt).ToList<GrantType>();

        foreach (GrantType gt in queryResult)
        {
            GrantType grantType = new GrantType();
            grantType.GrantTypeKey = gt.GrantTypeKey;
            grantType.GrantTypeName = gt.GrantTypeName;

            grantTypes.Add(grantType);
        }

        List<string> grantNames = new List<string>();

        foreach(var gt in grantTypes)
        {
            grantNames.Add(gt.GrantTypeName);
        }

        if (!Page.IsPostBack)
        {
            DropDownList1.DataSource = grantNames;
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Community_AssistEntities db = new Community_AssistEntities();
        string selectedGrant = DropDownList1.SelectedValue;
        int selectedGrantId = 1;
        foreach(var gt in grantTypes)
        {
            if(selectedGrant.Equals(gt.GrantTypeName))
            {
                selectedGrantId = gt.GrantTypeKey;
                break;
            }
        }

        decimal grantAmount = decimal.Parse(GrantAmountTextBox.Text);
        string grantExplanation = ExplainationTextBox.Text;
        int personId = ((int)Session["personKey"]);

        GrantRequest grantRequest = new GrantRequest();
        grantRequest.GrantRequestDate = DateTime.Now;
        grantRequest.GrantRequestAmount = grantAmount;
        grantRequest.GrantTypeKey = selectedGrantId;
        grantRequest.PersonKey = personId;
        grantRequest.GrantRequestExplanation = grantExplanation;

        var result = db.GrantRequests.Add(grantRequest);
        db.SaveChanges();

        GrantReview addentry = new GrantReview();
        addentry.GrantReviewDate = DateTime.Now;
        addentry.GrantRequestStatus = "Pending";
        addentry.GrantAllocationAmount = grantAmount;
        addentry.GrantRequestKey = result.GrantRequestKey;

        db.GrantReviews.Add(addentry);
        db.SaveChanges();

        ResultLabel.Text = "Grant requested succesfully" + personId;
    }
}