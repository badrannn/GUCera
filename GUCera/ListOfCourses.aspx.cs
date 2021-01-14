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
    public partial class ListOfCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand availableCoursesProc = new SqlCommand("availableCourses", conn);
            availableCoursesProc.CommandType = CommandType.StoredProcedure;

            conn.Open();
            SqlDataReader rdr = availableCoursesProc.ExecuteReader(CommandBehavior.CloseConnection);

            while (rdr.Read())
            {
                int id = rdr.GetInt16(rdr.GetOrdinal("id"));
                int credithours = rdr.GetInt16(rdr.GetOrdinal("creditHours"));
                String name = rdr.GetString(rdr.GetOrdinal("name"));
                String coursedescription = rdr.GetString(rdr.GetOrdinal("courseDescription"));
                Decimal price= rdr.GetDecimal(rdr.GetOrdinal("price"));
                String content = rdr.GetString(rdr.GetOrdinal("content"));
                int adminid = rdr.GetInt16(rdr.GetOrdinal("adminId"));
                int instructorid = rdr.GetInt16(rdr.GetOrdinal("instructorId"));
                Byte accepted = rdr.GetByte(rdr.GetOrdinal("accepted"));

                Label id1 = new Label();
                id1.Text = id + "<br >";
                form1.Controls.Add(id1);

                Label chours = new Label();
                chours.Text = credithours + "<br >";
                form1.Controls.Add(chours);

                Label name1 = new Label();
                name1.Text = name + "<br >";
                form1.Controls.Add(name1);

                Label cdescription = new Label();
                cdescription.Text = coursedescription + "<br >";
                form1.Controls.Add(cdescription);

                Label price1 = new Label();
                price1.Text = price + "<br >";
                form1.Controls.Add(price1);

                Label content1 = new Label();
                content1.Text = content + "<br >";
                form1.Controls.Add(content1);

                Label adid = new Label();
                adid.Text = adminid + "<br >";
                form1.Controls.Add(adid);

                Label inid = new Label();
                inid.Text = instructorid+ "<br >";
                form1.Controls.Add(inid);

                Label acc = new Label();
                acc.Text = accepted + "<br >";
                form1.Controls.Add(acc);


            }

        }
    }
}