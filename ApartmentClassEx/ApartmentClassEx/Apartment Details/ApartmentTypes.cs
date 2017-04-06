using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ApartmentClassEx.Apartment_Details;

namespace ApartmentClassEx.Apartment_Details
{
    public class ApartmentTypes
    {
        // variable
        private Apartment aptObj;

        // constructor
        public ApartmentTypes(string type, double size, int baths)
        {
            this.aptObj = new Apartment();

            aptObj.type = type;
            aptObj.size = size;
            aptObj.bath = baths;

        }
        public Apartment getApartmentObject()
        {
            return aptObj;
        }
        public double getAverageDailyWaterUse()
        {
            double size = aptObj.size;

            if (size < 1000)
            {
                return 30;
            }
            else if (size < 1500)
            {
                return  50;
            }
            else
            {
                return 60;
            }
        }
        public int getNumberOfSmokeDetectors()
        {

            if (this.aptObj.size < 1200)
            {
                return  2;
            }
            else
            {
                return  4;
            }
        } 
    }
}

/*
Create a Class ApartmentTypes. The class has following jobs to do.
1. A class level variable aptObj is created of class Apartment.
2. Constructor:
    a. It takes as arguments the type of apartment (String),square feet of apartment(double), and number of bathrooms (int).
    b. It creates an Apartment object, sets the properties using the arguments passed and assign aptObj as this new object.
3. Method getApartmentObject: return the aptObj object.
4. Method getAverageDailyWaterUse: Input area. Output Water usage (double). If the area is less
than 1000, return 30, else if the area is less than 1500, return 50, else return 60.
5. Method getNumberOfSmokeDetectors: Input area, Output number of smoke detectors (int). If
area is less than 1200, then 2, else 4.
*/
