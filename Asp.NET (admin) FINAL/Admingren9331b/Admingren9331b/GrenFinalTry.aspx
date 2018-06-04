<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrenFinalTry.aspx.cs" Inherits="GrenFinalTry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Request</title>
</head>
<body>

    <form id="form1" runat="server">
            <asp:GridView ID="GridViewGren" runat="server" AutoGenerateColumns="False" OnRowCommand="GridViewGren_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="approve" Text="Approve" />
                            <asp:Button ID="Button2" runat="server" CommandName="deny" Text="Deny" CommandArgument='<%# Eval("id") %>' />

                    </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:BoundField DataField="username" HeaderText="User Name" />
                    <asp:BoundField DataField="firstname" HeaderText="First Name" />
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="contactnum" HeaderText="Contact Number" />
                    <asp:BoundField DataField="addrole" HeaderText="Role" />
                    <asp:BoundField DataField="status" HeaderText="Status" />
                </Columns>
            </asp:GridView>

      </form>
</body>
</html>
