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
    public partial class ViewAssignmentsContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewAssContent(object sender, EventArgs e) 
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            int courseid = Int16.Parse(CourseIdforAssContent.Text);
            int sid = (int)Session["user"];

            SqlCommand ViewAssignproc = new SqlCommand("ViewAssign", conn);
            ViewAssignproc.CommandType = CommandType.StoredProcedure;
            
            ViewAssignproc.Parameters.Add(new SqlParameter("@courseId", courseid));
            ViewAssignproc.Parameters.Add(new SqlParameter("@Sid", sid));

            conn.Open();
            ViewAssignproc.ExecuteNonQuery();
            GridView gridView = new GridView();
            gridView.EmptyDataText = "No records Found";
            gridView.DataSource = ViewAssignproc.ExecuteReader();
            gridView.DataBind();
            form1.Controls.Add(gridView);
            conn.Close();



                    }
    }
}