using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class viewques : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");
   

    protected void Form_Load(object sender, EventArgs e)
    {
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  
    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();

        string a = d2.SelectedItem.ToString();
        string b = d1.SelectedItem.ToString();     
        Session["Code"] = d1.SelectedItem.ToString();


        if (a.Equals("Pattern 1"))
        {
            string sql, sql1,sql2,sql3,sql4,sql5;
            string sq = "truncate table p1_2marks";
            SqlCommand cmd1 = new SqlCommand(sq, con);
            cmd1.ExecuteNonQuery();

            sql = "insert into p1_2marks (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions1 where Mark_Allocation = '2' And Subject_Code = '" + b + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sq1 = "truncate table p1_10mark";
            SqlCommand cmd2 = new SqlCommand(sq1, con);
            cmd2.ExecuteNonQuery();

            sql1 = "insert into p1_10mark (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions1 where Mark_Allocation = '10' And Subject_Code = '" + b + "'";
            SqlCommand cmd3 = new SqlCommand(sql1, con);
            cmd3.ExecuteNonQuery();


            sql2 = "truncate table p1_dist2";
            SqlCommand cmd4 = new SqlCommand(sql2, con);
            cmd4.ExecuteNonQuery();

            sql3 = "truncate table p1_dist10";
            SqlCommand cmd5 = new SqlCommand(sql3, con);
            cmd5.ExecuteNonQuery();

            sql4 = "insert into p1_dist2 (question,mark,type,code) select distinct(question),mark,type,code from p1_2marks";
            SqlCommand cmd6 = new SqlCommand(sql4, con);
            cmd6.ExecuteNonQuery();

            sql5 = "insert into p1_dist10 (question,mark,type,code) select distinct(question),mark,type,code from p1_10mark";
            SqlCommand cmd7 = new SqlCommand(sql5, con);
            cmd7.ExecuteNonQuery();

            Response.Redirect("Q1.aspx");


        }
        else if (a.Equals("Pattern 2"))
        {
            string sql, sql1,sql2,sql3,sql4,sql5;
            string sq = "truncate table p2_2marks";
            SqlCommand cmd1 = new SqlCommand(sq, con);
            cmd1.ExecuteNonQuery();

            sql = "insert into p2_2marks (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions2 where Mark_Allocation = '2' And Subject_Code = '" + b + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sq1 = "truncate table p2_12mark";
            SqlCommand cmd2 = new SqlCommand(sq1, con);
            cmd2.ExecuteNonQuery();

            sql1 = "insert into p2_12mark (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions2 where Mark_Allocation = '12' And Subject_Code = '" + b + "'";
            SqlCommand cmd3 = new SqlCommand(sql1, con);
            cmd3.ExecuteNonQuery();


            sql2 = "truncate table p2_dist2";
            SqlCommand cmd4 = new SqlCommand(sql2, con);
            cmd4.ExecuteNonQuery();

            sql3 = "truncate table p2_dist12";
            SqlCommand cmd5 = new SqlCommand(sql3, con);
            cmd5.ExecuteNonQuery();

            sql4 = "insert into p2_dist2 (question,mark,type,code) select distinct(question),mark,type,code from p2_2marks";
            SqlCommand cmd6 = new SqlCommand(sql4, con);
            cmd6.ExecuteNonQuery();

            sql5 = "insert into p2_dist12 (question,mark,type,code) select distinct(question),mark,type,code from p2_12mark";
            SqlCommand cmd7 = new SqlCommand(sql5, con);
            cmd7.ExecuteNonQuery();

            Response.Redirect("Q2.aspx");
        }
        else if (a.Equals("Pattern 3"))
        {
            string sql, sql1,sql2,sql3,sql4,sql5;
            string sq = "truncate table p3_2marks";
            SqlCommand cmd1 = new SqlCommand(sq, con);
            cmd1.ExecuteNonQuery();

            sql = "insert into p3_2marks (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions3 where Mark_Allocation = '2' And Subject_Code = '" + b + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sq1 = "truncate table p3_15mark";
            SqlCommand cmd2 = new SqlCommand(sq1, con);
            cmd2.ExecuteNonQuery();

            sql1 = "insert into p3_15mark (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions3 where Mark_Allocation = '15' And Subject_Code = '" + b + "'";
            SqlCommand cmd3 = new SqlCommand(sql1, con);
            cmd3.ExecuteNonQuery();

            sql2 = "truncate table p3_dist2";
            SqlCommand cmd4 = new SqlCommand(sql2, con);
            cmd4.ExecuteNonQuery();

            sql3 = "truncate table p3_dist15";
            SqlCommand cmd5 = new SqlCommand(sql3, con);
            cmd5.ExecuteNonQuery();

            sql4 = "insert into p3_dist2 (question,mark,type,code) select distinct(question),mark,type,code from p3_2marks";
            SqlCommand cmd6 = new SqlCommand(sql4, con);
            cmd6.ExecuteNonQuery();

            sql5 = "insert into p3_dist15 (question,mark,type,code) select distinct(question),mark,type,code from p3_15mark";
            SqlCommand cmd7 = new SqlCommand(sql5, con);
            cmd7.ExecuteNonQuery();

            Response.Redirect("Q3.aspx");
        }
        else if (a.Equals("Pattern 4"))
        {
            string sql, sql1,sql2,sql3,sql4,sql5;
            string sq = "truncate table p4_2marks";
            SqlCommand cmd1 = new SqlCommand(sq, con);
            cmd1.ExecuteNonQuery();

            sql = "insert into p4_2marks (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions4 where Mark_Allocation = '2' And Subject_Code = '" + b + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sq1 = "truncate table p4_16mark";
            SqlCommand cmd2 = new SqlCommand(sq1, con);
            cmd2.ExecuteNonQuery();

            sql1 = "insert into p4_16mark (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions4 where Mark_Allocation = '16' And Subject_Code = '" + b + "'";
            SqlCommand cmd3 = new SqlCommand(sql1, con);
            cmd3.ExecuteNonQuery();


            sql2 = "truncate table p4_dist2";
            SqlCommand cmd4 = new SqlCommand(sql2, con);
            cmd4.ExecuteNonQuery();

            sql3 = "truncate table p4_dist16";
            SqlCommand cmd5 = new SqlCommand(sql3, con);
            cmd5.ExecuteNonQuery();

            sql4 = "insert into p4_dist2 (question,mark,type,code) select distinct(question),mark,type,code from p4_2marks";
            SqlCommand cmd6 = new SqlCommand(sql4, con);
            cmd6.ExecuteNonQuery();

            sql5 = "insert into p4_dist16 (question,mark,type,code) select distinct(question),mark,type,code from p4_16mark";
            SqlCommand cmd7 = new SqlCommand(sql5, con);
            cmd7.ExecuteNonQuery();

            Response.Redirect("Q4.aspx");
        }
        else if (a.Equals("Pattern 5"))
        {
            string sql, sql1,sql2,sql3,sql4,sql5;
            string sq = "truncate table p5_2marks";
            SqlCommand cmd1 = new SqlCommand(sq, con);
            cmd1.ExecuteNonQuery();

            sql = "insert into p5_2marks (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions5 where Mark_Allocation = '2' And Subject_Code = '" + b + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            string sq1 = "truncate table p5_16mark";
            SqlCommand cmd2 = new SqlCommand(sq1, con);
            cmd2.ExecuteNonQuery();

            sql1 = "insert into p5_16mark (question,mark,type,code) select Questions,  Mark_Allocation, Question_Type, Subject_Code from StaffQuestions5 where Mark_Allocation = '16' And Subject_Code = '" + b + "'";
            SqlCommand cmd3 = new SqlCommand(sql1, con);
            cmd3.ExecuteNonQuery();

            sql2 = "truncate table p5_dist2";
            SqlCommand cmd4 = new SqlCommand(sql2, con);
            cmd4.ExecuteNonQuery();

            sql3 = "truncate table p5_dist16";
            SqlCommand cmd5 = new SqlCommand(sql3, con);
            cmd5.ExecuteNonQuery();

            sql4 = "insert into p5_dist2 (question,mark,type,code) select distinct(question),mark,type,code from p5_2marks";
            SqlCommand cmd6 = new SqlCommand(sql4, con);
            cmd6.ExecuteNonQuery();

            sql5 = "insert into p5_dist16 (question,mark,type,code) select distinct(question),mark,type,code from p5_16mark";
            SqlCommand cmd7 = new SqlCommand(sql5, con);
            cmd7.ExecuteNonQuery();

            Response.Redirect("Q5.aspx");
        }
    }
}