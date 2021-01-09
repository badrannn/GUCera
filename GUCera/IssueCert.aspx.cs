using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class IssueCert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void issue_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand issued = new SqlCommand("InstructorIssueCertificateToStudent", conn);
            issued.CommandType = CommandType.StoredProcedure;

            int id = (int)Session["user"];
            int cid = Int16.Parse(course.Text);
            int sid = Int16.Parse(student.Text);
            DateTime dt = DateTime.Now;



           
            SqlCommand calc = new SqlCommand("calculateFinalGrade", conn);
            calc.CommandType = CommandType.StoredProcedure;

            calc.Parameters.Add("@cid",cid);
            calc.Parameters.Add("@insId", id);
            calc.Parameters.Add("@sid",sid);


            issued.Parameters.Add("@cid", cid);
            issued.Parameters.Add("@insId", id);
            issued.Parameters.Add("@sid", sid);
            issued.Parameters.Add("@issueDate", dt);

            conn.Open();
            calc.ExecuteNonQuery();
            issued.ExecuteNonQuery();

            Response.Write("<script language=javascript>alert('Certificate was issued successfully')</script>");

            course.Text = string.Empty;
            student.Text = string.Empty;

        }
    }
}