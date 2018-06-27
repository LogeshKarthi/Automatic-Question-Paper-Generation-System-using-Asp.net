using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Staffreg : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");

    string strname, filename;
    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
       string  str = "select count(*) from Staff_details";
        SqlCommand    com = new SqlCommand(str, con);
      
        int count = Convert.ToInt16(com.ExecuteScalar()) + 1;
        TextBox3.Text ="STF"+count.ToString();
        
       
        con.Close(); 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + strname);

            String path = "~//Upload//" + strname.ToString();
            //.ImageUrl = path;
            impPrev.ImageUrl = path;


            filename = System.IO.Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
            con.Open();
            SqlCommand cmd4 = new SqlCommand("insert into Staff_details(Photo,Staff_name,Password,Staff_Id,Department,Position,DOJ,Gender,DOB,Email_ID,Address,Sts)values('" + strname + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','Waiting')", con);
            cmd4.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Staff Registration Successfully pleasewait for Admin appove');", true);
            con.Close();
        }

    }
}