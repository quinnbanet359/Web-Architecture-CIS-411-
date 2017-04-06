using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam2.MainPages
{
    public partial class FinalBookingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {

                string sessionName1 = (string)(Session["name1"]);
                string sessionName2 = (string)(Session["name2"]);
                string sessionName3 = (string)(Session["name3"]);

                double sessionseat1 = (double)(Session["seat1"]);
                double sessionseat2 = (double)(Session["seat2"]);
                double sessionseat3 = (double)(Session["seat3"]);

                double sessiondisc1 = (double)(Session["disc1"]);
                double sessiondisc2 = (double)(Session["disc2"]);
                double sessiondisc3 = (double)(Session["disc3"]);
                sessiondisc1 = 100 - sessiondisc1;
                sessiondisc2 = 100 - sessiondisc2;
                sessiondisc3 = 100 - sessiondisc3;


                pass1Lbl.Text = sessionName1;
                pass2Lbl.Text = sessionName2;
                pass3Lbl.Text = sessionName3;

                seat1Lbl.Text = sessionseat1.ToString();
                seat2Lbl.Text = sessionseat2.ToString();
                seat3Lbl.Text = sessionseat3.ToString();

                double ticket1;
                double ticket2;
                double ticket3;
                double price = 80;
                double totalPrice;

                //tick1
                if (sessiondisc1 == 0.85)
                {
                    ticket1 = sessiondisc1 * price;
                }
                else
                {
                    ticket1 = price;
                }
                //tick2
                if (sessiondisc2 == 0.85)
                {
                    ticket2 = sessiondisc2 * price;
                }
                else
                {
                    ticket2 = price;
                }
                //tick 3
                if (sessiondisc3 == 0.85)
                {
                    ticket3 = sessiondisc3 * price;
                }
                else
                {
                    ticket3 = price;
                }

                totalPrice = ticket1 + ticket2 + ticket3;

                totalFareLbl.Text = totalPrice.ToString("c");
            }
       }
    }
}