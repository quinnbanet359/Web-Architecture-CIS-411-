using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mar22Exercise.MyClasses
{
    public class Starter
    {
        public Starter()
        {
            Account acct = new Account();
            acct.AccountType = "Checking";
            HttpContext.Current.Session["acctObj"] = acct;
        }
    }
}