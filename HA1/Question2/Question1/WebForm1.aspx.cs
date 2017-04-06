using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Question1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                bookDropDownList.Items.Add("Introduction to MIS");
                bookDropDownList.Items.Add("Introduction to Marketing");
                bookDropDownList.Items.Add("Introduction to Finance");
            }
        }

        protected void purchaseBtn_Click(object sender, EventArgs e)
        {
            int quantity;
            Int32.TryParse(quantityTxt.Text,out quantity);
            resultsLbl.Text = "You have selected: "+quantity.ToString() + " number of "
                + "\""+bookDropDownList.SelectedValue.ToString()+ "\"";
        }
    }
}