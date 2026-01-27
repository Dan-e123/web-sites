using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class signUp : System.Web.UI.Page
{
    public string strResult;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
           string firstname =Request.Form["firstname"];
          string gmail =Request.Form["gmail"];
           string password =Request.Form["password"];
           string check2 =Request.Form["check2"];
           string elsee =Request.Form["elsee"];
           string radio1 =Request.Form["radio1"];
           string textarea1 =Request.Form["textarea1"];
          string age =Request.Form["age"];

            string sqlInsert = "INSERT INTO tUsers " +
                               "VALUES " +
                               "(N'" + firstname + "', " +
                               "N'" + gmail + "', " +
                               "N'" + password + "', " +
                               "N'" + check2 + "', " +
                               "N'" + elsee + "', " +
                               "N'" + radio1 + "', " +
                               "N'" + textarea1 + "', " +
                               age + ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            strResult = "נרשמת בהצלחה";
        }
    }
}