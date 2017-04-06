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
        double savBal = 30345.90;
        double checkBal = 40785.22;
        double studBal = 5643.23;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                accountDropDownList.Items.Add("Savings Account");
                accountDropDownList.Items.Add("Checking Account");
                accountDropDownList.Items.Add("Student Account");
            }
        }

        protected void purchaseBtn_Click(object sender, EventArgs e)
        {
            double accountBalance;
            double requestedWithdrawl;
            Double.TryParse(withdrawTxt.Text, out requestedWithdrawl);

           if (accountDropDownList.SelectedValue == "Savings Account")
            {
                accountBalance = savBal;
            }
           else if (accountDropDownList.SelectedValue == "Checking Account")
            {
                accountBalance = checkBal;
            }
           else
            {
                accountBalance = studBal;
            }

            if (requestedWithdrawl > accountBalance)
            {
                withdrawlLbl.Text = "Withdrawl amount is greater than the balance which is " + accountBalance;
            }
            else if (requestedWithdrawl <= accountBalance)
            {
                double newBal = accountBalance - requestedWithdrawl;
                withdrawlLbl.Text = "Withdrawl successful. Your balance is now: " + newBal.ToString("C0");
            }
        }
    }
}