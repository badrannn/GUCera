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
    public partial class ViewAss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void vass_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand view = new SqlCommand("InstructorViewAssignmentsStudents", conn);
            view.CommandType = CommandType.StoredProcedure;

            int c = Int16.Parse(cid.Text);
            int id = (int)Session["user"];
            view.Parameters.Add("@instrId", id);
            view.Parameters.Add("@cid", c);
            view.Connection = conn;
            
            conn.Open();
            GridView gridView = new GridView();
            gridView.EmptyDataText = "No records Found";
            gridView.DataSource = view.ExecuteReader();
            gridView.DataBind();
            form1.Controls.Add(gridView);
            conn.Close();
            




        }
    }
}