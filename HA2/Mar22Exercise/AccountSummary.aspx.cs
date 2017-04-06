using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mar22Exercise.MyClasses;
namespace Mar22Exercise
{
    public partial class AccountSummary : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            new GenerateSessionsObjects();

            List<Account> acct = (List<Account>)Session["account"];
            Customer cust = (Customer)Session["customer"];

            foreach (var item in acct)
            {
                accountListBox.Items.Add(item.NickName);
            }
            custLbl.Text = cust.FullName;
        }

        protected void detailsBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("./AccountPages/DetailsView.aspx");
        }
    }
}