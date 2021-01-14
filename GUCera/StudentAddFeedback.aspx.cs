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
    public partial class StudentAddFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddFeedback(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AddFeedbackproc = new SqlCommand("addFeedback", conn);
            AddFeedbackproc.CommandType = CommandType.StoredProcedure;

            string comment = courseid.Text;
            int cid = Int16.Parse(courseid.Text);
            int sid = (int)Session["user"];

            AddFeedbackproc.Parameters.Add(new SqlParameter("@comment", comment));
            AddFeedbackproc.Parameters.Add(new SqlParameter("@sid", sid));
            AddFeedbackproc.Parameters.Add(new SqlParameter("@cid", cid));

            conn.Open();
            AddFeedbackproc.ExecuteNonQuery();
            conn.Close();
        }
    }
}