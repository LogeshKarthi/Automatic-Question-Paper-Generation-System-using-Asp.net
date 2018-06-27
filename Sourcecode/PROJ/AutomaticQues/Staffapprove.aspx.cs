using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
public partial class Staffapprove : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select Staff_name,Staff_Id,Department,Position,DOJ,Gender,DOB,Email_ID,Address from Staff_details where Sts='Waiting'", con);
        cmd1.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "Staff_details");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("Update Staff_details set Sts='Approved' where Staff_name='" + TextBox1.Text + "' and Staff_Id='" + TextBox2.Text + "'", con);
        cmd2.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Staff Registration Approved ');", true);
        con.Close();

    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("Update Staff_details set Sts='Rejected' where Staff_name='" + TextBox1.Text + "' and Staff_Id='" + TextBox2.Text + "'", con);
        cmd2.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Staff  Registration Rejected ');", true);
        con.Close();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from  Staff_Valid ", con);
        cmd1.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "Staff_Valid");
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
        con.Close();
    }
}