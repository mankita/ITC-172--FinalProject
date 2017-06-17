<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestGrant.aspx.cs" Inherits="RequestGrant" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Grant Page</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
  </head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Request Grant</h1>
        <table>
                <tr>
                    <td>GrantType</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
               </tr>
                <tr>
                    <td>GrantAmount</td>
                    <td><asp:TextBox ID="GrantAmountTextBox" runat="server" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>GrantTypeExplaination</td>
                    <td><asp:TextBox ID="ExplainationTextBox" runat="server" ></asp:TextBox></td>
                </tr>
             </table>
           
                    <asp:Button ID="Button1" runat="server" Text="Submit Grant" OnClick="Button1_Click" />
           <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                

        <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/HomePage.aspx">Home</asp:HyperLink>
            
           
         
        
    </div>
    </form>
</body>
</html>
