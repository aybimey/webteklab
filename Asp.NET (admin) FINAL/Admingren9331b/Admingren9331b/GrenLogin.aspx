<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenLogin.aspx.cs" Inherits="GrenLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/Adminss.css">
</head>
<body class="logbod">
    <form id="form1" runat="server">
        <div class="logdes">

            <div class="logdrop">
            <h4>Log In as:</h4>

                     
                     
                         <asp:DropDownList ID="TypeOfAdmin" runat="server">
                             <asp:ListItem>Select Admin Type</asp:ListItem>
                             <asp:ListItem>SuperAdmin</asp:ListItem>
                             <asp:ListItem>Admin</asp:ListItem>
                         </asp:DropDownList>
                </div>

             <table>
                 <tr>
                     
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TypeOfAdmin" ErrorMessage="Please Select Admin Type" ForeColor="#990000" InitialValue="Select Admin Type"></asp:RequiredFieldValidator>
                 </tr>
                <tr>
                    <td>
                        Enter Username:
                    </td>
                    <td>
                        <asp:TextBox ID="t1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter Password:
                    </td>
                    <td>
                        <asp:TextBox ID="t2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" Text="Login!" OnClick="LoginButton_Click1" />
                    </td>
                </tr>
                 
            </table>

            <a href="GrenRegistration.aspx">Register as new Admin.</a>
   </div>
        
        
    </form>
</body>
</html>
