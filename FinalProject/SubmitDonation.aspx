<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SubmitDonation.aspx.cs" Inherits="SubmitDonation" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter Donation Amount"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="DonationTextBox" Text="" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit Donation" OnClick="Button1_Click" /></td>
                    <td><asp:LinkButton ID="ViewDonations" runat="server" Text="View Donations" OnClick="ViewDonations_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>


    </form>
</body>
</html>
