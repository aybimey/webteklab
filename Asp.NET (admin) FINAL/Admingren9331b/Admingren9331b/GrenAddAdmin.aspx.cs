using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenAddAdmin : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        /**         cmd.CommandText = "alter table adminregistration auto_increment = 2"; **/
        cmd.CommandText = "insert into admin(admin_id, username, pass, firstname, lastname, address, email, contactnum, addrole, status) values(admin_id, '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "', 'Admin', 'approved')";
        cmd.ExecuteNonQuery();
        /**Response.Write("Thank you for registering. Please wait for the Super Admin to confirm your registration.");**/

        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("GrenSuperAd.aspx");
    }
}