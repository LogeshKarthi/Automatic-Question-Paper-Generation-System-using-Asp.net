using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Stafflogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");
    string uname, pwd, Stfid;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Staff_details where Staff_Id='" + TextBox1.Text + "' And Staff_name='" + TextBox2.Text + "'And Password='" + TextBox3.Text + "' And Sts='Approved'", con);
        cmd.ExecuteNonQuery();
        SqlDataReader dr = cmd.ExecuteReader();
        Session["Staff"] = TextBox1.Text.ToString();

        if (dr.Read())
        {
            uname = dr.GetValue(1).ToString();
            pwd = dr.GetValue(2).ToString();
            Stfid = dr.GetValue(3).ToString();

        }

        if (TextBox1.Text == Stfid && TextBox2.Text == uname  && TextBox3.Text == pwd )
        {

            Response.Redirect("Staffproc.aspx");
        }


        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Please wait your registration cannot Approved');", true);
        }


        TextBox1.Text = " ";
        TextBox2.Text = " ";



        dr.Close();
        cmd.Dispose();
        con.Close();

    }
}