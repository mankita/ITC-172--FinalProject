<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="SubmitDonations" runat="server" Text="Submit Donation" OnClick="SubmitDonations_Click" /></br>
        <asp:LinkButton ID="ViewDonations" runat="server" Text="View Donations" OnClick="ViewDonations_Click" /></br>
        <asp:LinkButton ID="RequestGrant" runat="server" Text="Request Grant" OnClick="RequestGrant_Click" /></br>
        <asp:LinkButton ID="ViewGrant" runat="server" Text="View Grant" OnClick="ViewGrant_Click" /></br>
    </div>
    </form>
</body>
</html>
