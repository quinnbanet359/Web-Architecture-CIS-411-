using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mar22Exercise.MyClasses
{
    public class GenerateSessionsObjects
    {
        List<Account> list = new List<Account>();
        
        public GenerateSessionsObjects()
        {
            Account act1 = new Account();
            Account act2 = new Account();
            Account act3 = new Account();

            act1.AccountType = "Checking";
            act1.AcountBalance = 15306.35;
            act1.NickName = "My Check1";

            act2.AccountType = "Checking";
            act2.AcountBalance = 26893.23;
            act2.NickName = "My Check2";

            act3.AccountType = "Savings";
            act3.AcountBalance = 35012.43;
            act3.NickName = "My Sav";

            list.Add(act1);
            list.Add(act2);
            list.Add(act3);

            Customer cust = new Customer("Quinn Banet","1234 Real Addr, \nLouisville, KY 40202");

            HttpContext.Current.Session["customer"] = cust;
            HttpContext.Current.Session["account"] = list;
        }

    }
}