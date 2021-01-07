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
    public partial class StudentRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void reg1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand register = new SqlCommand("studentRegister", conn);
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
            conn.Close();

            Response.Redirect("StudentHome.aspx");


        }


    }
}