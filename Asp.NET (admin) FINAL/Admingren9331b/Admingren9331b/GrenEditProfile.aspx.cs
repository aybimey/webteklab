using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class GrenEditProfile : System.Web.UI.Page
{
    string conStr = "Data Source=localhost;port=3303;Initial Catalog=rentalfinal;User Id=root;password=''";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    private void BindData()
    {
        DataTable dt = new DataTable();
        using (MySqlConnection cn = new MySqlConnection(conStr))
        {
            MySqlDataAdapter adp = new MySqlDataAdapter("select * from admin where addrole='SuperAdmin'", cn);
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridViewEdp.DataSource = dt;
                GridViewEdp.DataBind();
            }
        }
    }


    protected void GridViewEdp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewEdp.EditIndex = -1;
        BindData();
    }

    protected void GridViewEdp_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewEdp.EditIndex = e.NewEditIndex;
        BindData();
    }

    protected void GridViewEdp_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        TextBox TextBox2 = (TextBox)GridViewEdp.Rows[e.RowIndex].FindControl("TextBox2");
        TextBox TextBox3 = (TextBox)GridViewEdp.Rows[e.RowIndex].FindControl("TextBox3");
        TextBox TextBox4 = (TextBox)GridViewEdp.Rows[e.RowIndex].FindControl("TextBox4");
        TextBox TextBox5 = (TextBox)GridViewEdp.Rows[e.RowIndex].FindControl("TextBox5");
        TextBox TextBox6 = (TextBox)GridViewEdp.Rows[e.RowIndex].FindControl("TextBox6");

        UpdateAdProf(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
        GridViewEdp.EditIndex = -1;
        BindData();
    }
    private void UpdateAdProf(string firstname, string lastname, string address, string email, string contactnum)
    {
        using (MySqlConnection cn = new MySqlConnection(conStr))
        {
            string query = "UPDATE admin SET firstname='" + firstname + "', lastname='" + lastname + "', address='" + address + "', email='" + email + "', contactnum='" + contactnum + "'";
            MySqlCommand cmd = new MySqlCommand(query, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
        }
    }
}