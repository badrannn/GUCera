using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUCera
{
    public partial class StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

       
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewMyProfile.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListOfCourses.aspx");

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("EnrollinCourse.aspx");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCreditCard.aspx");

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentSubmitAssign.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentViewGradesAssign.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentAddFeedback.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListCert.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentAddNumber.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAssignmentsContent.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewPromoCode.aspx");

        }
    }

}