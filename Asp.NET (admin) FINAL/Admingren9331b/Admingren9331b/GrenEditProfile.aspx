<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenEditProfile.aspx.cs" Inherits="GrenEditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Homepage</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link rel="stylesheet" type="text/css" href="css/Adminss.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="header">
                <h1>My Website</h1>
                <p>Resize the browser window to see the effect.</p>
            </div>
            
            <div class="topnav">
                <a href="GrenSuperAd.aspx">Home</a>
                <a href="GrenFinalTry.aspx">Registration Request<span class="w3-badge w3-red">!</span></a>
                <a href="GrenSpCl.aspx">User Management</a>
                <a href="#">User Transaction</a>
                <a href="Logout.aspx" style="float:right">Logout</a>
            </div>
            
            <div class="row">
                <div class="leftcolumn">
                    <div class="card">
                        <h2>Edit My Profile</h2>

                        <div>
                            <asp:GridView ID="GridViewEdp" runat="server" AutoGenerateColumns="False" OnRowEditing="GridViewEdp_RowEditing" OnRowUpdating="GridViewEdp_RowUpdating" Width="577px">
                                <Columns>
                                    <asp:TemplateField HeaderText="User Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("username") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="First Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("firstname") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Last Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("lastname") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("lastname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("address") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Contact Number">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("contactnum") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("contactnum") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField></asp:TemplateField>
                                    <asp:CommandField ButtonType="Button" HeaderText="Operation" ShowEditButton="True" ShowHeader="True" />
                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>
                </div>
            
                <div class="rightcolumn">
                    <div class="card">
                        <h2>About Me</h2>
                        <div class="fakeimg" style="height:100px;">Image</div>

                        <a href="GrenEditProfile.aspx"><i class="fa fa-edit" style="font-size:25px"> Edit My Profile</i></a>
                        <a href="GrenAddAdmin.aspx"><i class="fa fa-plus" style="font-size:25px"> Add Admin</i></a>
                    </div>
                </div>
            </div>
            
            <div class="footer">
                <h2>Copyright &copy; Soriano, Uy | WebTech 9331B</h2>
            </div>

        </div>
    </form>
</body>
</html>
