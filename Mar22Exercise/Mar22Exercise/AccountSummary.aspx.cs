using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mar22Exercise
{
    public partial class AccountSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            MyClasses.Starter st = new MyClasses.Starter();
            MyClasses.Account acct = (MyClasses.Account)Session["acctObj"];

            if (!IsPostBack)
            {
                accountListBox.Items.Add("My Chk1");
                accountListBox.Items.Add("My Chk2");
                accountListBox.Items.Add("My Sav3");
            }

        }
    }
}