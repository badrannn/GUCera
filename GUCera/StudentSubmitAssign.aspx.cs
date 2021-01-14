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
    public partial class StudentSubmitAssign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitAssign(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand submitassproc = new SqlCommand("SubmitAssign", conn);
            submitassproc.CommandType = CommandType.StoredProcedure;

            String asstype = AssType.Text;
            int assno = Int16.Parse(AssNo.Text);
            int courseid = Int16.Parse(Courseid.Text);
            int sid = (int)Session["user"];

            submitassproc.Parameters.Add(new SqlParameter("@assignType", asstype));
            submitassproc.Parameters.Add(new SqlParameter("@assignnumber", assno));
            submitassproc.Parameters.Add(new SqlParameter("@sid", sid));
            submitassproc.Parameters.Add(new SqlParameter("@cid", courseid));

            conn.Open();
            submitassproc.ExecuteNonQuery();
            conn.Close();

        }
    }
}