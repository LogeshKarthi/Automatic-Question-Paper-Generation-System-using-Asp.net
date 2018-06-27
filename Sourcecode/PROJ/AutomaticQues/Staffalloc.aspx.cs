using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class Staffalloc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {
       
        //string str = "select count(*) from employee";
        // SqlCommand com = new SqlCommand(str, con);
        //con.Open();
        //int count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        //TextBox3.Text = count.ToString();
        
        //con.Close(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Select * from Staffallocation_Details where Subject_Code='" + DropDownList1.SelectedItem.ToString()+ "'",con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            String a= dr.GetValue(0).ToString();
            flag++;

        }
        dr.Close();
        if (flag < 3)
        {
            SqlCommand cmd = new SqlCommand("insert into Staffallocation_Details(Staff_ID,Staff_Name,Subject_Code,Subject_Name,Semester,Year,Department)values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + TextBox1.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Staff Allocation Successfully');", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already Staff Allocation Completed');", true);
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      




    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd9 = new SqlCommand("select    Staff_name   from  Staff_details where Staff_Id='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd9.ExecuteReader();
        if (dr.Read())
        {
            TextBox4.Text = dr.GetValue(0).ToString();


        }


        dr.Close();

        con.Close();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.Text == "1")
        {
            DropDownList2.Items.Clear();

            DropDownList2.Items.Add("1");
            DropDownList2.Items.Add("2");

        }

        else if (DropDownList3.Text == "2")
        {

            DropDownList2.Items.Clear();

            DropDownList2.Items.Add("3");
            DropDownList2.Items.Add("4");

        }

        else if (DropDownList3.Text == "3")
        {
            DropDownList2.Items.Clear();

            DropDownList2.Items.Add("5");
            DropDownList2.Items.Add("6");

        }
        else if (DropDownList3.Text == "4")
        {
            DropDownList2.Items.Clear();

            DropDownList2.Items.Add("7");
            DropDownList2.Items.Add("8");

        }



    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       // string com = "select Subject_code from Syllabus_det where  Department='" + DropDownList4.Text + "'  and  Year='" + DropDownList3.SelectedItem.ToString() + "' and Department='"+DropDownList4.Text+"' ";
       // string com = "select Subject_code from Syllabus_det where  Department='" + DropDownList4.SelectedItem.ToString() + "'  and  Year='" + DropDownList3.SelectedItem.ToString() + "' and Semester='" + DropDownList2.SelectedItem.ToString() + "' ";
        //SqlDataAdapter adpt = new SqlDataAdapter(com, con);
       // DataTable dt = new DataTable();
       // adpt.Fill(dt);
        con.Open();
        SqlCommand cmd = new SqlCommand("select Subject_code from Syllabus_det where  Department='" + DropDownList4.SelectedItem.ToString() + "'  and  Year='" + DropDownList3.SelectedItem.ToString() + "' and Semester='" + DropDownList2.SelectedItem.ToString() + "' ", con);
       
       // DropDownList1.DataSource = dt;
        DropDownList1.DataSource = cmd.ExecuteReader();
       // DropDownList1.DataBind();
        DropDownList1.DataTextField = "Subject_code";
        //DropDownList1.DataValueField = "ID";
        DropDownList1.DataBind();
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select Subject_Name from Syllabus_det where Subject_code='"+DropDownList1.SelectedItem.ToString()+"'",con);

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            TextBox1.Text = dr.GetValue(0).ToString();



        }

        dr.Close();

        con.Close();


    }
}