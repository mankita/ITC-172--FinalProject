<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonationListPage.aspx.cs" Inherits="DonationListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
    </div>
    </form>
</body>
</html>
