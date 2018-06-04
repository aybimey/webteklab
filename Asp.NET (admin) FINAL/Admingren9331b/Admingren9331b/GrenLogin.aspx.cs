using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenLogin : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click1(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select addrole from admin where username='" + t1.Text + "' and pass='" + t2.Text + "'";
        
        cmd.ExecuteNonQuery();

        string addrole = Convert.ToString(cmd.ExecuteScalar());
        if (string.IsNullOrEmpty(addrole))
        {
            Response.Write("You have entered an invalid username or password");
        }
        else if (TypeOfAdmin.SelectedValue == "SuperAdmin" && addrole == "SuperAdmin")
        {
            Response.Redirect("GrenSuperAd.aspx");
        }
        else if (TypeOfAdmin.SelectedValue == "Admin" && addrole == "Admin")
        {
            Response.Redirect("GrenAdmin.aspx");
        }
        else if(TypeOfAdmin.SelectedValue != "Admin" && addrole == "Admin")
        {
            Response.Write("You are not registered as Super Admin.");
        }
        else if (TypeOfAdmin.SelectedValue != "SuperAdmin" && addrole == "SuperAdmin")
        {
            Response.Write("You are not registered as an Admin.");
        }

        con.Close(); 
    }



    
}