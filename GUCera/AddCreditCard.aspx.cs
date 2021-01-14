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
    public partial class AddCreditCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["GUCera"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            int sid = Int16.Parse(studentid.Text);
            String number = cnumber.Text;
            String holderName = hname.Text;
            String expirydate = edate.Text;
            String CVV = cvv.Text;

            SqlCommand Addproc = new SqlCommand("addCreditCard", conn);
            Addproc.CommandType = CommandType.StoredProcedure;
            Addproc.Parameters.Add(new SqlParameter("@sid", sid));
            Addproc.Parameters.Add(new SqlParameter("@number", number));
            Addproc.Parameters.Add(new SqlParameter("@cardHolderName",holderName ));
            Addproc.Parameters.Add(new SqlParameter("@expiryDate", expirydate));
            Addproc.Parameters.Add(new SqlParameter("@CVV", CVV));

            conn.Open();
            Addproc.ExecuteNonQuery();
            conn.Close();

            Response.Write("Credit Card has been added successfully ");

        }

    }
}