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
    public partial class StudentAddNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Addno(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand Addnoproc = new SqlCommand("addMobile", conn);
            Addnoproc.CommandType = CommandType.StoredProcedure;

            int no = Int32.Parse(number.Text);
            int sid = (int)Session["user"];

            Addnoproc.Parameters.Add(new SqlParameter("@ID", sid));
            Addnoproc.Parameters.Add(new SqlParameter("@mobile_number", no));

            conn.Open();
            Addnoproc.ExecuteNonQuery();
            conn.Close();

        }
    }
}