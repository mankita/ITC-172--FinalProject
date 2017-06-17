<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>LastName</td>
                    <td><asp:TextBox ID="LastNameTextBox" runat="server" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>FirstName</td>
                    <td><asp:TextBox ID="FirstNameTextBox" runat="server" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><asp:TextBox ID="ConfirmTextBox" runat="server" TextMode="Password" required="required"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator
                            ID="CompareValidator2"
                            runat="server"
                            ErrorMessage="Passwords don't match"
                            ControlToValidate="ConfirmTextBox"
                            ControlToCompare="PasswordTextBox"
                            ForeColor="Red">
                        </asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>ApartmentNumber</td>
                    <td><asp:TextBox ID="ApartmentNumberTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Street</td>
                    <td><asp:TextBox ID="StreetTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>State</td>
                    <td><asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>ZipCode</td>
                    <td><asp:TextBox ID="ZipCodeTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>WorkPhone</td>
                    <td><asp:TextBox ID="WorkPhoneTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>HomePhone</td>
                    <td><asp:TextBox ID="HomePhoneTextBox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="RegisterNewUserButton" runat="server" Text="Register" OnClick="RegisterNewUserButton_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
