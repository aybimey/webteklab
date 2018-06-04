<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenRegistration.aspx.cs" Inherits="GrenRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link rel="stylesheet" type="text/css" href="css/Adminss.css">
    <style type="text/css">
        .auto-style1 {
            width: 859px;
        }
        .auto-style3 {
            height: 26px;
            width: 133px;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 2px;
        }
        .auto-style7 {
            width: 2px;
            height: 26px;
        }
        .auto-style8 {
            width: 133px;
        }
        .auto-style9 {
            width: 285px;
        }
        .auto-style10 {
            height: 26px;
            width: 285px;
        }
        .auto-style11 {
            width: 78px;
        }
    </style>
</head>
<body>

        <div class="header">
  <h1>Admin Registration Page</h1>
  
</div>


    <form id="form1" runat="server">
        <div class="regarea">
            <h2>New Admin,</h2>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        First Name:
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxFnamee" runat="server" CssClass="auto-style5" Width="181px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" Width="233px" ControlToValidate="TextBoxFnamee" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        Last Name:
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxLnamee" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You have to enter your Last Name" ControlToValidate="TextBoxLnamee" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        Address:
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxAddree" runat="server" Width="258px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address is required" ControlToValidate="TextBoxAddree" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        Email:
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxEmailee" runat="server" Width="209px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBoxEmailee" ForeColor="#990000"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmailee" ErrorMessage="Enter a valid email!" ForeColor="#990000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                         Contact Number:
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBoxContaki" runat="server" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="TextBoxContaki" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        Username:
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxUnameee" runat="server" Width="170px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Username is required" ControlToValidate="TextBoxUnameee" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        Password:
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxPass1" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBoxPass1" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        Confirm Password:
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBoxPass2" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please reenter your password" ControlToValidate="TextBoxPass2" ForeColor="#990000"></asp:RequiredFieldValidator>

                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password didn't match!" ControlToCompare="TextBoxPass1" ControlToValidate="TextBoxPass2" ForeColor="#990000"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
            
            <asp:Button ID="RegisterButton" runat="server" Text="Register!" OnClick="RegisterButton_Click" />
        
            <input id="Reset1" class="auto-style11" type="reset" value="reset" /><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        </div>
        
    </form>
</body>
</html>
