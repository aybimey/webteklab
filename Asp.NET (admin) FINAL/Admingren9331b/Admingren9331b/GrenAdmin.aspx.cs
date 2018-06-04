using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenAdmin : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        LabelA.Text = "<b><font color=#76323f>" + Session["username"] + "</font>";
        MySqlCommand cmd = new MySqlCommand("select * from admin where admin_id='" + Session["username"] + "'", con);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from admin where admin_id='" + Session["username"] + "'";
        cmd.ExecuteNonQuery();
        DataTable dtt = new DataTable();
        MySqlDataAdapter daa = new MySqlDataAdapter(cmd);
        daa.Fill(dtt);
        GridViewAd.DataSource = dtt;
        GridViewAd.DataBind();
        con.Close();
    }
}