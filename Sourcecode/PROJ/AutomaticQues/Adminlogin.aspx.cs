using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");
    string uname, pwd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Admin_details where Name='" + TextBox1.Text + "' And Password='" + TextBox2.Text + "'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();


        if (dr.Read())
        {
            uname = dr.GetValue(0).ToString();
            pwd = dr.GetValue(1).ToString();


        }

        if (TextBox1.Text == uname && TextBox2.Text == pwd)
        {

            Response.Redirect("Staffapprove.aspx");
        }


        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter valid Credential');", true);
        }


        TextBox1.Text = " ";
        TextBox2.Text = " ";



        dr.Close();
        cmd.Dispose();
        con.Close();

    }
}