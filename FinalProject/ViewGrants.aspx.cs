using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewGrants : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int personId = ((int)Session["personKey"]);
        Community_AssistEntities db = new Community_AssistEntities();

        List<GrantRequest> queryResult = (from g in db.GrantRequests
                                          where g.PersonKey == personId
                                          select g).ToList<GrantRequest>();

        List<GrantRequest> resultList = new List<GrantRequest>();

        foreach (GrantRequest request in queryResult)
        {
            GrantRequest g = new GrantRequest();
            g.GrantRequestAmount = request.GrantRequestAmount;
            g.GrantRequestDate = request.GrantRequestDate;
            g.GrantRequestExplanation = request.GrantRequestExplanation;
            g.GrantRequestKey = request.GrantRequestKey;
            g.PersonKey = request.PersonKey;
            g.GrantTypeKey = request.GrantTypeKey;

            resultList.Add(g);
        }

        GridView1.DataSource = resultList;
        GridView1.DataBind();

    }
}