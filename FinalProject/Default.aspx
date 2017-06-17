<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Community Assist</title>
    <link href="Styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Welcome to Community Assist</h1>
    <form id="form1" runat="server">
    <div>
        <table>
        <tr>
            <td>User Name</td>
            
               <td><asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>

        </tr>
        <tr>
            <td><asp:Button ID="LoginButton" runat="server" Text="Log in" OnClick="LoginButton_Click" /></td>
          <td><asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label></td>
            <td><asp:LinkButton ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" /></td>
            
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
