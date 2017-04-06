using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mar22Exercise
{
    public partial class DetailsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                ListBox listbox = (ListBox)PreviousPage.FindControl("accountListBox");
                String selection = listbox.SelectedValue.ToString();

                nameLbl.Text = selection;
                /*TextBox prevFirst = (TextBox)PreviousPage.FindControl("fNameTxt");
                TextBox prevLast = (TextBox)PreviousPage.FindControl("lNameTxt");
                TextBox prevID = (TextBox)PreviousPage.FindControl("idTxt");

                fNameLbl.Text = prevFirst.Text;
                lNameLbl.Text = prevLast.Text;
                idLbl.Text = prevID.Text;*/
            }
        }
    }
}