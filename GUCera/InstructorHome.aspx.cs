using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class InstructorHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void addcourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourse.aspx");
        }

        protected void viewass_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAss.aspx");
        }

        protected void define_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefineAss.aspx");
        }

        protected void gradeass_Click(object sender, EventArgs e)
        {
            Response.Redirect("GradeAss.aspx");
        }

        protected void viewfeed_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewFeed.aspx");

        }

        protected void issuecert_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssueCert.aspx");
        }

        protected void Addno(object sender, EventArgs e)
        {
            Response.Redirect("InstructorAddno.aspx");
        }
    }
}