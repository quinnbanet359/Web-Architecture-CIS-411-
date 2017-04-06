using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void DetailsButton_Click(object sender, EventArgs e)
        {
            string name = nameTxt.Text;
            string number = numberTxt.Text;

            Session["name"] = name;
            Session["number"] = number;
        }
    }
}