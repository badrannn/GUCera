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
    public partial class ViewFeed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void viewf_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand view = new SqlCommand("ViewFeedbacksAddedByStudentsOnMyCourse", conn);
            view.CommandType = CommandType.StoredProcedure;


            int id = (int)Session["user"];
            int cid = Int16.Parse(course.Text);


            view.Parameters.Add("@cid", cid);
            view.Parameters.Add("@instrId", id);

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