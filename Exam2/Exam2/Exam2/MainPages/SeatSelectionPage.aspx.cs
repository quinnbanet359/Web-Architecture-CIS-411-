using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Exam2.MainPages;

namespace Exam2.MainPages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        double disc1;
        double disc2;
        double disc3;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {

                string sessionName1 = (string)(Session["name1"]);
                string sessionName2 = (string)(Session["name2"]);
                string sessionName3 = (string)(Session["name3"]);

                //hide / show fields, assume passenger 1 has been entered
                if (sessionName2 == "")
                {
                    seat2Txt.Visible = false;
                    seat3Txt.Visible = false;
                    P2DiscountLabel.Visible = false;
                    P3DiscountLabel.Visible = false;
                }
                else if (sessionName3 == "")
                {
                    seat3Txt.Visible = false;
                    P3DiscountLabel.Visible = false;
                }

                P1NameLabel.Text = sessionName1;
                P2NameLabel.Text = sessionName2;
                P3NameLabel.Text = sessionName3;

                /* original getDiscount does not work, using method on current page
                DetailsPage details = new DetailsPage();
                P1DiscountLabel.Text = details.getDiscount(1).ToString("p");
                P2DiscountLabel.Text = details.getDiscount(2).ToString("p");
                P3DiscountLabel.Text = details.getDiscount(3).ToString("p");*/

                P1DiscountLabel.Text = getNewDiscount(1).ToString("p");
                disc1 = getNewDiscount(1);

                P2DiscountLabel.Text = getNewDiscount(2).ToString("p");
                disc2 = getNewDiscount(2);

                P3DiscountLabel.Text = getNewDiscount(3).ToString("p");
                disc3 = getNewDiscount(3);

            }
        }
        public double getNewDiscount(double number)
        {
            double sessionAge1 = (double)(Session["age1"]);
            double sessionAge2 = (double)(Session["age2"]);
            double sessionAge3 = (double)(Session["age3"]);

            double passengerAge = 0;
            double discount;

            if (number == 1)
            {
                passengerAge = sessionAge1;
            }
            else if (number == 2)
            {
                passengerAge = sessionAge2;
            }
            else
            {
                passengerAge = sessionAge3;
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

        protected void goBtn_Click(object sender, EventArgs e)
        {
            double seat1;
            double seat2;
            double seat3;

            double.TryParse(seat1Txt.Text, out seat1);
            double.TryParse(seat2Txt.Text, out seat2);
            double.TryParse(seat3Txt.Text, out seat3);

            bool seatsMatch;
            bool correctSeats;

            // match?
            if (seat1 == seat2 || seat1 == seat3 || seat2 == seat3)
            {
                SeatNumberErrorLabel.Text = "All passengers must select different seats";
                seatsMatch = true;
            }
            else
            {
                seatsMatch = false;
            }

            // correct #
            if (seat1 > 80 || seat1 < 1)
            {
                SeatNumberErrorLabel.Text = "All passengers must have selected seats and must be numbers between 1 and 80, both included";
                correctSeats = true;
            }
            if (seat2 > 80 || seat2 < 1)
            {
                SeatNumberErrorLabel.Text = "All passengers must have selected seats and must be numbers between 1 and 80, both included";
                correctSeats = true;
            }
            if (seat3 > 80 || seat3 < 1)
            {
                SeatNumberErrorLabel.Text = "All passengers must have selected seats and must be numbers between 1 and 80, both included";
                correctSeats = true;
            }
            else
            {
                correctSeats = false;
            }

            if (seatsMatch == false && correctSeats == false)
            {
                //create seat session objects

                Session["seat1"] = seat1;
                Session["seat2"] = seat2;
                Session["seat3"] = seat3;

                Session["disc1"] = disc1;
                Session["disc2"] = disc2;
                Session["disc3"] = disc3;

                Server.Transfer("~/MainPages/FinalBookingPage.aspx");
            }
        }
    }
}