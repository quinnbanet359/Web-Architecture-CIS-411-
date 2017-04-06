using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2.MainPages
{
    public partial class DetailsPage : System.Web.UI.Page
    {
        double age1;
        double age2;
        double age3;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                string prevName = (string)(Session["name"]);
                string prevNumber = (string)(Session["number"]);

                nameTxt1.Text = prevName;
                numberTxt1.Text = prevNumber;

                //get age values
                double.TryParse(ageTxt1.Text, out age1);
                double.TryParse(ageTxt2.Text, out age2);
                double.TryParse(ageTxt3.Text, out age3);
            }
        }

        public double getDiscount(double number)
        {
            double passengerAge = 0;
            double discount;

            if (number == 1)
            {
                passengerAge = age1;
            }
            else if (number == 2)
            {
                passengerAge = age2;
            }
            else
            {
                passengerAge = age3;
            }


            if (passengerAge < 18 || passengerAge > 60)
            {
                discount = 0.15;
            }
            else
            {
                discount = 0;
            }

            return discount;
        }
        public bool canProcede()
        {
            string name1 = nameTxt1.Text;
            string name2 = nameTxt2.Text;
            string name3 = nameTxt3.Text;

            string age1 = ageTxt1.Text;
            string age2 = ageTxt2.Text;
            string age3 = ageTxt3.Text;

            string number1 = numberTxt1.Text;
            string number2 = numberTxt2.Text;
            string number3 = numberTxt3.Text;


            if (name1 != "" && age1 == "" || name1 != "" && number1 == "")
            {
                P1ErrorLabel.Text = "Passenger 1 Details are required.";
            }
           else if (name2 != "" && age2 == "" || name2 != "" && number2 == "")
            {
                P2ErrorLabel.Text = "Passenger 2 Details are required.";
            }
            else if (name3 != "" && age3 == "" || name3 != "" && number3 == "")
            {
                P3ErrorLabel.Text = "Passenger 3 Details are required.";
            }

            if (name1 != "" && age1 != "" & number1 != "")
            {
                P1ErrorLabel.Text = "";
            }
            if (name2 != "" && age2 != "" & number2 != "")
            {
                P2ErrorLabel.Text = "";
            }
            if (name3 != "" && age3 != "" & number3 != "")
            {
                P3ErrorLabel.Text = "";
            }

            if (P1ErrorLabel.Text == "" && P2ErrorLabel.Text == "" && P3ErrorLabel.Text == "")
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void selectBtn_Click(object sender, EventArgs e)
        {
            canProcede();
            if (canProcede())
            {
                //create session objects
                string name1 = nameTxt1.Text;
                string name2 = nameTxt2.Text;
                string name3 = nameTxt3.Text;

                Session["name1"] = name1;
                Session["name2"] = name2;
                Session["name3"] = name3;

                double age1;
                double age2;
                double age3;

                double.TryParse(ageTxt1.Text, out age1);
                double.TryParse(ageTxt2.Text, out age2);
                double.TryParse(ageTxt3.Text, out age3);

                Session["age1"] = age1;
                Session["age2"] = age2;
                Session["age3"] = age3;

                //transfer page
                Server.Transfer("~/MainPages/SeatSelectionPage.aspx");
            }
        }
    }
}