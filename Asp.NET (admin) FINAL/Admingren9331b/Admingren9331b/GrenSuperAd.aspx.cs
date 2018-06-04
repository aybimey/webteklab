using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenSuperAd : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        Label.Text = "<b><font color=#76323f>" + Session["username"] + "</font>";
        MySqlCommand cmd = new MySqlCommand("select * from admin where username='" + Session["username"] + "'", con);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select admin_id, username, firstname, lastname, address, email, contactnum, addrole from admin where addrole='SuperAdmin'";
        cmd.ExecuteNonQuery();
        DataTable dtt = new DataTable();
        MySqlDataAdapter daa = new MySqlDataAdapter(cmd);
        daa.Fill(dtt);
        GridViewSuper.DataSource = dtt;
        GridViewSuper.DataBind();
        con.Close();
    }
}