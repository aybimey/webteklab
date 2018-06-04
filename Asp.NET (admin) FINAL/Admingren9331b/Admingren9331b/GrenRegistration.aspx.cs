using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenRegistration : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        /**         cmd.CommandText = "alter table adminregistration auto_increment = 2"; **/
        cmd.CommandText = "insert into adminregistration(id, username, pass, firstname, lastname, address, email, contactnum, addrole, status) values(id, '"+TextBoxUnameee.Text+ "', '" + TextBoxPass1.Text + "', '" + TextBoxFnamee.Text + "', '" + TextBoxLnamee.Text + "', '" + TextBoxAddree.Text + "', '" + TextBoxEmailee.Text + "', '" + TextBoxContaki.Text + "', 'Admin', 'pending')";
        cmd.ExecuteNonQuery();
        Response.Write("Thank you for registering. Please wait for the Super Admin to confirm your registration.");
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        Response.Redirect("GrenLogin.aspx");
        con.Close();
    }

}