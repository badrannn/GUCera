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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void signin_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["GUCera"].ToString();  
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand loginproc = new SqlCommand("userLogin",conn);
            loginproc.CommandType= CommandType.StoredProcedure;



            bool inst = false;
            int id = Int16.Parse(username.Text);
            string pass = password.Text;

            loginproc.Parameters.Add("@id", id);
            loginproc.Parameters.Add("@password", pass);

            SqlParameter succ = loginproc.Parameters.Add("@success", SqlDbType.Int);
            SqlParameter type = loginproc.Parameters.Add("@type", SqlDbType.Int);

            succ.Direction = ParameterDirection.Output;
            type.Direction = ParameterDirection.Output;

            conn.Open();
            loginproc.ExecuteNonQuery();

            SqlCommand cmd = new SqlCommand
            {
                CommandText = "select * from [Instructor]",
                Connection = conn
            };
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {

                if (rd[0].ToString().Equals( username.Text))
                {
                    inst = true;
                    break;
                }
            }
            conn.Close();







            if (succ.Value.ToString() == "1")
            {
                Session["user"] = id;
                if (inst == false)
                    Response.Redirect("StudentHome.aspx");
                else
                    Response.Redirect("InstructorHome.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Wrong credentials')</script>");
            }


        }
    }
}