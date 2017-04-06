using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ApartmentClassEx.Apartment_Details;

namespace ApartmentClassEx.Apartment_Details
{
    public partial class ApartmentMaintenancePage : System.Web.UI.Page
    {

        ApartmentTypes at1 = new ApartmentTypes("One bedroom-type 1", 750.56, 1);
        ApartmentTypes at2 = new ApartmentTypes("One bedroom-type 2", 900.45, 1);
        ApartmentTypes at3 = new ApartmentTypes("Two bedroom-type 1", 1100.25, 1);
        ApartmentTypes at4 = new ApartmentTypes("Two bedroom-type 2", 1253.65, 2);
        ApartmentTypes at5 = new ApartmentTypes("Three bedroom-type 1", 1501.43, 2);
        ApartmentTypes at6 = new ApartmentTypes("Three bedroom-type 2", 1754.44, 3);

        List<ApartmentTypes> allApartments = new List<ApartmentTypes>();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            allApartments.Add(at1);
            allApartments.Add(at2);
            allApartments.Add(at3);
            allApartments.Add(at4);
            allApartments.Add(at5);
            allApartments.Add(at6);

            if (!IsPostBack)
            {
                foreach (var i in allApartments)
                {
                    apartmentDropDown.Items.Add(i.getApartmentObject().type);
                }
            }
            
        }

        protected void apartmentDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            //clear listbox
            apartmentListBox.Items.Clear();


            //get selected apt
            int index = apartmentDropDown.SelectedIndex;
            apartmentListBox.Items.Add(allApartments[index].getApartmentObject().type);
            apartmentListBox.Items.Add(allApartments[index].getApartmentObject().size.ToString());
            apartmentListBox.Items.Add(allApartments[index].getApartmentObject().bath.ToString());
            apartmentListBox.Items.Add(allApartments[index].getNumberOfSmokeDetectors().ToString());
            apartmentListBox.Items.Add(allApartments[index].getAverageDailyWaterUse().ToString());
        }

        protected void maintBtn_Click(object sender, EventArgs e)
        {
            int index = apartmentDropDown.SelectedIndex;
            resultsLbl.Text = "Selected apartment is: "+ allApartments[index].getApartmentObject().type;
        }
    }
}


/* 

    Name: ApartmentMaintenancePage
1. At the class level, create 6 objects of type Apartment Types.Following details are passed into their constructors.:
a. "One bedroom-type 1", 750.56, 1
b. "One bedroom-type 2", 900.45, 1
c. "Two bedroom-type 1", 1100.25, 1
d. "Two bedroom-type 2", 1253.65, 2
e. "Three bedroom-type 1", 1501.43, 2
f. "Three bedroom-type 2", 1754.44, 3
2. CreateaListobjectnamedallApartmentsthatstoresobjectsoftypeApartmentTypes.
3. In the a.
b.
4. When a.
b.
a. ChangethetextofthelabelfinalDetailstoshow: Selectedapartmentsis<apartment type>.
Style class;
Use a stylesheet for the whole body. Following style is needed.
font-family: Arial, Helvetica, sans-serif; font-size: 85%; width: 550px; margin: 0 auto; padding: 10px; background-color: lightgrey; border: 2px solid;
page load:
Add the six apartments to the list allApartments. IfisPostBackisfalse,addthetypesoftheapartmentsintothedropdownlist.
a selection is made in the dropdown list:
Clear all the elements in the Listbox.
Add the details of the apartment (type, square foot, and number of bathrooms) in the list box, one detail per line.
Also, add the number of smoke detectors and daily water use, one in each line.
c.
5. WhenthebuttonSetforMaintenanceisclicked:

*/
