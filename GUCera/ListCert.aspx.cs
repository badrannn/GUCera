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
    public partial class ListCert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand ListCert = new SqlCommand("viewCertificate", conn);
            ListCert.CommandType = CommandType.StoredProcedure;

            int cid = Int16.Parse(TextBox1.Text);
            int sid = (int)Session["user"];

            ListCert.Parameters.Add(new SqlParameter("@cid", cid));
            ListCert.Parameters.Add(new SqlParameter("@sid", sid));

            ListCert.Connection = conn;

            conn.Open();
            GridView gridView = new GridView();
            gridView.EmptyDataText = "No records Found";
            gridView.DataSource = ListCert.ExecuteReader();
            gridView.DataBind();
            form1.Controls.Add(gridView);
            conn.Close();
        }
    }
}