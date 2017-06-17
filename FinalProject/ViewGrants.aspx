<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewGrants.aspx.cs" Inherits="ViewGrants" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grants-View Page</title>
     <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Welcome to Grants-View Page</h1>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
    </div>
    </form>
</body>
</html>
