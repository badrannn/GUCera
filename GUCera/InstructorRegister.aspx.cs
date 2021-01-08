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
    public partial class InstructorRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void reg1_Click(object sender, EventArgs e)
        {
                string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
                SqlConnection conn = new SqlConnection(connStr);

                SqlCommand register = new SqlCommand("InstructorRegister", conn);
                register.CommandType = CommandType.StoredProcedure;
                bool ge = false;
                if (gender.Text == "1")
                    ge = true;

                register.Parameters.Add("@first_name", firstname.Text);
                register.Parameters.Add("@last_name", lastname.Text);
                register.Parameters.Add("@address", address.Text);
                register.Parameters.Add("@email", email.Text);
                register.Parameters.Add("@password", password.Text);
                register.Parameters.Add("@gender", SqlDbType.Bit);
                register.Parameters["@gender"].Value = ge;

                conn.Open();
                register.ExecuteNonQuery();
            SqlCommand cmd = new SqlCommand
            {
                CommandText = "select * from [Users]",
                Connection = conn
            };
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (rd[5].ToString().Equals(email.Text))
                {
                    Session["user"] = rd[0];
                    break;
                }
            }
           
                conn.Close();
                Response.Redirect("InstructorHome.aspx");
               
                
                
            }
    }
}