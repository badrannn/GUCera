using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera111
{
    public partial class EnrollinCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Enroll(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            String sid = studentid1.Text;
            String cid = courseid1.Text;
            String instrid = instructorid1.Text;
           

            SqlCommand enrollProc = new SqlCommand("addCreditCard", conn);
           enrollProc.CommandType = CommandType.StoredProcedure;
           enrollProc.Parameters.Add(new SqlParameter("@sid", sid));
           enrollProc.Parameters.Add(new SqlParameter("@cid", cid));
           enrollProc.Parameters.Add(new SqlParameter("@instr", instrid));
          

            conn.Open();
            enrollProc.ExecuteNonQuery();
            conn.Close();

            Response.Write("Credit Card has been added successfully ");

        }





    }
}