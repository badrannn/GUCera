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
    public partial class GradeAss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void grade_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand graded = new SqlCommand("InstructorgradeAssignmentOfAStudent", conn);
            graded.CommandType = CommandType.StoredProcedure;

            int id = (int)Session["user"];
            int cid = Int16.Parse(course.Text);
            int sid = Int16.Parse(stu.Text);
            decimal g = decimal.Parse(gra.Text); 
            int num = Int16.Parse(numb.Text);

            graded.Parameters.Add("@type", typ.Text);
            graded.Parameters.Add("@instrId", id);
            graded.Parameters.Add("@sid", sid);
            graded.Parameters.Add("@cid", cid);
            graded.Parameters.Add("@grade", g);
            graded.Parameters.Add("@assignmentNumber", num);

            conn.Open();
            
            graded.ExecuteNonQuery();
            
            Response.Write("<script language=javascript>alert('Assignment was graded successfully')</script>");

            typ.Text = string.Empty;
            course.Text = string.Empty;
            stu.Text = string.Empty;
            gra.Text = string.Empty;
            numb.Text = string.Empty;
        }
    }
}