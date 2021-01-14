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
    public partial class ViewMyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand viewprofileProc = new SqlCommand("viewMyProfile", conn);
            viewprofileProc.CommandType = CommandType.StoredProcedure;

            conn.Open();
            SqlDataReader rdr = viewprofileProc.ExecuteReader(CommandBehavior.CloseConnection);

            while (rdr.Read())
            {
                int id = rdr.GetInt16(rdr.GetOrdinal("id"));
                String firstname = rdr.GetString(rdr.GetOrdinal("firstName"));
                String lastname = rdr.GetString(rdr.GetOrdinal("lastName"));
                String password = rdr.GetString(rdr.GetOrdinal("password"));
                Byte gender = rdr.GetByte(rdr.GetOrdinal("gender"));
                String email = rdr.GetString(rdr.GetOrdinal("email"));
                String address = rdr.GetString(rdr.GetOrdinal("address"));

                Label id1 = new Label();
                id1.Text = id + "<br >";
                form1.Controls.Add(id1);

                Label fname = new Label();
                fname.Text = firstname + "<br >";
                form1.Controls.Add(fname);

                Label lname = new Label();
                lname.Text = lastname + "<br >";
                form1.Controls.Add(lname);

                Label pass = new Label();
                pass.Text = password + "<br >";
                form1.Controls.Add(pass);

                Label gen = new Label();
                gen.Text = gender + "<br >";
                form1.Controls.Add(gen);

                Label mail = new Label();
                mail.Text = email + "<br >";
                form1.Controls.Add(mail);

                Label addr = new Label();
                addr.Text = address + "<br >";
                form1.Controls.Add(addr);



            }

        }
    }
}