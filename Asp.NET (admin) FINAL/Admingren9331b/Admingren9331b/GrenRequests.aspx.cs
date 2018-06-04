using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenRequests : System.Web.UI.Page
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
        MySqlDataAdapter mda = new MySqlDataAdapter("select id, username, pass, firstname, lastname, address, email, contactnum, addrole, status from adminregistration", conn);
        conn.Open();
        mda.Fill(dt);
        conn.Close();

        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
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

        MySqlCommand cmda = new MySqlCommand(query, conn);
        conn.Open();
        cmda.ExecuteNonQuery();
        conn.Close();

        BindGridView();
    }


    protected void Accept_Click(object sender, EventArgs e)
    {
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into clientaccepted (user_id, first_name, last_name, username, city, province, gender, age, contactNumber, email, password, status) select user_id, first_name, last_name, username, city, province, gender, age, contactNumber, email, password, status from client where user_id='" + TextBoxStatus.Text + "'; delete from client where user_id = '" + TextBoxStatus.Text + "'";
        //       cmd.CommandText = "update clientaccepted set status = 'activated' where user_id='" + TextBoxStatus.Text + "'";

        //"update client set status='" + TextBoxStatus1.Text + "' where user_id = '" + TextBoxStatus.Text + "'";
        cmd.ExecuteNonQuery();

        conn.Close();
    }

    protected void Deny_Click(object sender, EventArgs e)
    {
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from client where user_id='" + TextBoxStatus.Text + "'";
        cmd.ExecuteNonQuery();

        conn.Close();
    }


    protected void DisplayUserID_Click(object sender, EventArgs e)
    {
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select user_id, first_name, last_name, username, city, province, gender, age, contactNumber, email, status  from client";
        cmd.ExecuteNonQuery();
        DataTable dtt = new DataTable();
        MySqlDataAdapter daa = new MySqlDataAdapter(cmd);
        daa.Fill(dtt);
        GridViewClient.DataSource = dtt;
        GridViewClient.DataBind();

        conn.Close();
    }

    protected void AcceptSp_Click(object sender, EventArgs e)
    {
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "insert into spaccepted (address, password, shop_contact, shop_id, shop_info, shop_name, shop_owner) select address, password, shop_contact, shop_id, shop_info, shop_name, shop_owner from serviceprovider where shop_id='" + TextBoxStatus.Text + "'";
        cmd.CommandText = "update serviceprovider set status= 'activated' where shop_id = '" + TextBoxStatus.Text + "'";
        cmd.ExecuteNonQuery();


        conn.Close();
    }

    protected void DenySP_Click(object sender, EventArgs e)
    {
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        //  cmd.CommandText = "delete from serviceprovider where shop_id='" + TextBoxStatus.Text + "'";
        cmd.CommandText = "update serviceprovider set status= 'deactivated' where shop_id = '" + TextBoxStatus.Text + "'";

        cmd.ExecuteNonQuery();

        conn.Close();
    }

    protected void DisplayerUserSP_Click(object sender, EventArgs e)
    {
        conn.Open();
        MySqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from serviceprovider";
        cmd.ExecuteNonQuery();
        DataTable dtt = new DataTable();
        MySqlDataAdapter daa = new MySqlDataAdapter(cmd);
        daa.Fill(dtt);
        GridViewSp.DataSource = dtt;
        GridViewSp.DataBind();

        conn.Close();
    }



}