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
    public partial class ViewPromoCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand viewpromocodeProc = new SqlCommand("viewPromocode", conn);
            viewpromocodeProc.CommandType = CommandType.StoredProcedure;

            conn.Open();
            SqlDataReader rdr = viewpromocodeProc.ExecuteReader(CommandBehavior.CloseConnection);

            while (rdr.Read())
            {
               
                String code = rdr.GetString(rdr.GetOrdinal("code"));
                DateTime isuuedate = rdr.GetDateTime(rdr.GetOrdinal("isuueDate"));
                DateTime expirydate = rdr.GetDateTime(rdr.GetOrdinal("expiryDate"));
                Decimal discount = rdr.GetDecimal(rdr.GetOrdinal("discount"));
                int adminid = rdr.GetInt16(rdr.GetOrdinal("adminId"));

                Label code1 = new Label();
                code1.Text = code + "<br >";
                form1.Controls.Add(code1);

                Label isuuedate1 = new Label();
                isuuedate1.Text = isuuedate + "<br >";
                form1.Controls.Add(isuuedate1);

                Label expirydate1 = new Label();
                expirydate1.Text = expirydate + "<br >";
                form1.Controls.Add(expirydate1);

                Label discount1 = new Label();
                discount1.Text = discount+ "<br >";
                form1.Controls.Add(discount1);

                Label adid = new Label();
                adid.Text = adminid + "<br >";
                form1.Controls.Add(adid);


            }
            
               

        }
    }
}