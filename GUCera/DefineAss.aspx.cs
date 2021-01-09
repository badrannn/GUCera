using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class DefineAss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void def_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand define = new SqlCommand("DefineAssignmentOfCourseOfCertianType", conn);
            define.CommandType = CommandType.StoredProcedure;

            DateTime dt = DateTime.Parse(dead.Text);
            int c = Int16.Parse(cid.Text);
            int id = (int)Session["user"];
            int fullg = Int16.Parse(grade.Text);
            int num = Int16.Parse(assnum.Text);
            decimal weight = decimal.Parse(wei.Text);

            define.Parameters.Add("@instId", id);

            define.Parameters.Add("@cid", c);

            define.Parameters.Add("@number", num);

            define.Parameters.Add("@type", typ.Text);

            define.Parameters.Add("@fullGrade", fullg);

            define.Parameters.Add("@weight", weight);

            define.Parameters.Add("@deadline", dt);

            define.Parameters.Add("@content", cont.Text);


            conn.Open();
            define.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('Assignment was defined successfully')</script>");
            wei.Text = string.Empty;
            cid.Text = string.Empty;
            cont.Text = string.Empty;
            assnum.Text = string.Empty;
            dead.Text = string.Empty;
            grade.Text = string.Empty;
            typ.Text = string.Empty;



        }


    }
}