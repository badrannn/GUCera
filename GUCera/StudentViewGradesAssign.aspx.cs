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
    public partial class StudentViewGradesAssign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewGrade(object sender, EventArgs e) 
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand ViewGradeproc = new SqlCommand("viewAssignGrades", conn);
            ViewGradeproc.CommandType = CommandType.StoredProcedure;

            int assno = Int16.Parse(Assno.Text);
            string asstype = Asstype.Text;
            int cid = Int16.Parse(courseid.Text);
            int sid = (int)Session["user"];

            ViewGradeproc.Parameters.Add(new SqlParameter("@assignnumber", assno));
            ViewGradeproc.Parameters.Add(new SqlParameter("@assignType", asstype));
            ViewGradeproc.Parameters.Add(new SqlParameter("@cid", cid));
            ViewGradeproc.Parameters.Add(new SqlParameter("@sid", sid));
            SqlParameter assignGrade = ViewGradeproc.Parameters.Add("@assignGrade", SqlDbType.Int);
            assignGrade.Direction = ParameterDirection.Output;

            conn.Open();
            ViewGradeproc.ExecuteNonQuery();
            conn.Close();
             Response.Write(assignGrade);
            
        }
    }
}