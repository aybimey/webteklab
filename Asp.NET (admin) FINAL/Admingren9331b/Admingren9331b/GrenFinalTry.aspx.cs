using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


public partial class GrenFinalTry : System.Web.UI.Page
{
    MySqlConnection conn = new MySqlConnection(@"Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }
    }

    protected void BindGridView()
    {
        DataTable dt = new DataTable();
        MySqlDataAdapter mda = new MySqlDataAdapter("select id, username, pass, firstname, lastname, address, email, contactnum, addrole, status from adminregistration",conn);
        conn.Open();
        mda.Fill(dt);
        conn.Close();

        if (dt.Rows.Count > 0)
        {
            GridViewGren.DataSource = dt;
            GridViewGren.DataBind();
        }

    }
    
    protected void GridViewGren_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string query = "";
        


        if (e.CommandName == "approve")
        {
            query = "insert into admin (admin_id, username, pass, firstname, lastname, address, email, contactnum, addrole, status) select id, username, pass, firstname, lastname, address, email, contactnum, addrole, status from adminregistration";
        
        }

        else if (e.CommandName == "deny")
        {
            string id = e.CommandArgument.ToString();

            query = "delete from adminregistration where id =" + id + "";
        }

        MySqlCommand cmd = new MySqlCommand(query, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        BindGridView();
    }
}