using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.IO;


public partial class Pattern2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=EGC-PC\\SQLEXPRESS;Initial Catalog=AutomaticquesSystem;Integrated Security=True");

    string qtype;
    static int count = 0;
    static int count1 = 11;

    string pattern = "Pattern2";

    public static int sts,checksts;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label29.Visible = false;
        Label30.Visible = false;
        Label31.Visible = false;
        Label32.Visible = false;
        Label33.Visible = false;
        Label34.Visible = false;
        Label35.Visible = false;
      

        Label39.Visible = false;

        Label40.Visible = false;

        Label41.Visible = false;

        Label42.Visible = false;
        Label43.Visible = false;

        Label44.Visible = false;




        TextBox5.Visible = false;
        TextBox6.Visible = false;
        TextBox7.Visible = false;
        TextBox8.Visible = false;
        TextBox9.Visible = false;
        TextBox10.Visible = false;
        TextBox11.Visible = false;
       
        TextBox15.Visible = false;
        TextBox16.Visible = false;
        TextBox17.Visible = false;
        TextBox18.Visible = false;
        TextBox19.Visible = false;
        TextBox20.Visible = false;












        con.Open();

        if (Session["Staff"] != null)
        {

            Label6.Text = Session["Staff"].ToString();



        }



        SqlCommand cmd1 = new SqlCommand("select * from Staffallocation_Details where Staff_ID='" + Label6.Text + "'", con);
        cmd1.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds, "Staffallocation_Details");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();


        con.Close();
    }

     protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {
            
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();




















        string stringToCheck = TextBox5.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate","Review","assess","Present a case for","defend","report on","investigate","direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };
       
        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label29.Visible = true;
                Label29.Text = "Evaluation Type";
            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";
                Label29.Visible = true;
                Label29.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label29.Visible = true;
                Label29.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";
                Label29.Visible = true;
                Label29.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q1','" + TextBox5.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
     
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {


        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox6.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";

                Label30.Visible = true;
                Label30.Text = "Evaluation Type";

            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";
                Label30.Visible = true;
                Label30.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label30.Visible = true;
                Label30.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label30.Visible = true;
                Label30.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q2','" + TextBox6.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox7_TextChanged1(object sender, EventArgs e)
    {

        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox7.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label31.Visible = true;
                Label31.Text = "Evaluation Type";

            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label31.Visible = true;
                Label31.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label31.Visible = true;
                Label31.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label31.Visible = true;
                Label31.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q3','" + TextBox7.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {


        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox8.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label32.Visible = true;
                Label32.Text = "Evaluation Type";

            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
              // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";
                Label32.Visible = true;
                Label32.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label32.Visible = true;
                Label32.Text = "Applied Type";

            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";
                Label32.Visible = true;
                Label32.Text = "Remember Type";

            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q4','" + TextBox8.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {



        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox9.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label33.Visible = true;
                Label33.Text = "Evaluation Type";

            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";
                Label33.Visible = true;
                Label33.Text = "Analytical Type";

            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label33.Visible = true;
                Label33.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";
                Label33.Visible = true;
                Label33.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q5','" + TextBox9.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox10_TextChanged1(object sender, EventArgs e)
    {



        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox10.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };
        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";

                Label34.Visible = true;
                Label34.Text = "Evaluation Type";



            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label34.Visible = true;
                Label34.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";

                Label34.Visible = true;
                Label34.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
              //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label34.Visible = true;
                Label34.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q6','" + TextBox10.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox11.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };
        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label35.Visible = true;
                Label35.Text = "Evaluation Type";

            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label35.Visible = true;
                Label35.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label35.Visible = true;
                Label35.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";
                Label35.Visible = true;
                Label35.Text = "Remember Type";


            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q7','" + TextBox11.Text + "','2','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
   
    protected void TextBox15_TextChanged(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox15.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate", "Review", "assess", "Present a case for", "defend", "report on", "investigate", "direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";

                Label39.Visible = true;
                Label39.Text = "Evaluation Type";


            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";


                Label39.Visible = true;
                Label39.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";


                Label39.Visible = true;
                Label39.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
              //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label39.Visible = true;
                Label39.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q11','" + TextBox15.Text + "','12','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox16_TextChanged(object sender, EventArgs e)
    {



        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox16.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate","Review","assess","Present a case for","defend","report on","investigate","direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";

                Label40.Visible = true;
                Label40.Text = "Evaluation Type";

            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
              //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label40.Visible = true;
                Label40.Text = "Analytical Type";

            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label40.Visible = true;
                Label40.Text = "Applied Type";




            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label40.Visible = true;
                Label40.Text = "Remember Type";

            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q12','" + TextBox16.Text + "','12','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox17_TextChanged(object sender, EventArgs e)
    {

        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox17.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate","Review","assess","Present a case for","defend","report on","investigate","direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label41.Visible = true;
                Label41.Text = "Evaluation Type";



            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label41.Visible = true;
                Label41.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";
                Label41.Visible = true;
                Label41.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label41.Visible = true;
                Label41.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q13','" + TextBox17.Text + "','12','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox18_TextChanged(object sender, EventArgs e)
    {


        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox18.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate","Review","assess","Present a case for","defend","report on","investigate","direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";

                Label42.Visible = true;
                Label42.Text = "Evaluation Type";



            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label42.Visible = true;
                Label42.Text = "Analytical Type";
            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";

                Label42.Visible = true;
                Label42.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";
                Label42.Visible = true;
                Label42.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q14','" + TextBox18.Text + "','12','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();

    }
    protected void TextBox19_TextChanged(object sender, EventArgs e)
    {


        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox19.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate","Review","assess","Present a case for","defend","report on","investigate","direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";

                Label43.Visible = true;
                Label43.Text = "Evaluation Type";



            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
              //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label43.Visible = true;
                Label43.Text = "Analytical Type";

            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
              //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";

                Label43.Visible = true;
                Label43.Text = "Applied Type";

            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label43.Visible = true;
                Label43.Text = "Remember Type";

            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q15','" + TextBox19.Text + "','12','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void TextBox20_TextChanged(object sender, EventArgs e)
    {

        con.Open();

        SqlCommand cmd1 = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }
        else
        {

            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;

            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;


        }



        con.Close();


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        string stringToCheck = TextBox20.Text;

        string[] Evaluationques = { "Justify", "Examine", "Evaluate","Review","assess","Present a case for","defend","report on","investigate","direct" };
        string[] Analyticques = { "Criticism", "Discuss", "Break down", "catalogue", "compare", "quantify", "measure", "test", "examine", "experiment", "relate", "graph", "diagram" };
        string[] Appliedques = { "Equation", "Equal", "Consider", "use", "Apply", "discover", "Give" };
        string[] Rememberques = { "What", "Does", "How", "Define", "describe", "define", "label", "Explain" };

        foreach (string x in Evaluationques)
        {
            if (stringToCheck.Contains(x))
            {
              //  ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('EvaluationQuestion Type');", true);
                qtype = "Evaluation";
                Label44.Visible = true;
                Label44.Text = "Evaluation Type";


            }

        }

        foreach (string y in Analyticques)
        {
            if (stringToCheck.Contains(y))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('AnalyticQuestion type');", true);
                qtype = "Analytical";

                Label44.Visible = true;
                Label44.Text = "Analytical Type";

            }

        }



        foreach (string z in Appliedques)
        {
            if (stringToCheck.Contains(z))
            {
                //ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Appliedquestion type');", true);

                qtype = "Applied";

                Label44.Visible = true;
                Label44.Text = "Applied Type";
            }

        }


        foreach (string A in Rememberques)
        {
            if (stringToCheck.Contains(A))
            {
               // ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Rememeberques type');", true);

                qtype = "Remember";

                Label44.Visible = true;
                Label44.Text = "Remember Type";
            }

        }



        con.Open();
        SqlCommand cmd = new SqlCommand("insert into StaffQuestions2(QNo,Questions,Mark_Allocation,Staff_Id,Staff_Name,Subject_Code,Question_Type,Pattern_type) values('Q16','" + TextBox20.Text + "','12','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + qtype + "','"+pattern+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {


            sts = dr.GetInt32(0);



        }

        dr.Close();


        if (sts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);

        }

        else if (sts == 0)
        {
            SqlCommand cmd4 = new SqlCommand(" insert into Staffsupload_cal(Subject_code,Staff_ID,Count) values('" + TextBox3.Text + "','" + TextBox2.Text + "','1')", con);

            cmd4.ExecuteNonQuery();

        }

        else if (sts < 3)
        {


            SqlCommand cmd3 = new SqlCommand("update  Staffsupload_cal  set Count=(Count+1) where   Subject_code='" + TextBox3.Text + "'", con);
            cmd3.ExecuteNonQuery();



        }






        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;

        con.Open();

        SqlCommand cmd = new SqlCommand("select Count from Staffsupload_cal where Subject_code='" + TextBox3.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            checksts = dr.GetInt32(0);


        }


        dr.Close();

        if (checksts > 3)
        {

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Already questions entered');", true);
        }
        else
        {



            TextBox5.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox8.Visible = true;
            TextBox9.Visible = true;
            TextBox10.Visible = true;
            TextBox11.Visible = true;
            
            TextBox15.Visible = true;
            TextBox16.Visible = true;
            TextBox17.Visible = true;
            TextBox18.Visible = true;
            TextBox19.Visible = true;
            TextBox20.Visible = true;
        }





    }
}






    
