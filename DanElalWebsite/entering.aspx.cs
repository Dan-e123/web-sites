using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class entering : System.Web.UI.Page
{
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string gmail = Request.Form["email"];
            string password = Request.Form["password"];

            if (gmail == "elaldan2025@gmail.com" && password == "dan123")
            {
                Response.Redirect("manager.aspx");
            }
            else
            {
              
                //בדיקת משתמש רגיל
                string sqlSelect =
           "SELECT * FROM tUsers " +
           "WHERE Gmail = N'" + gmail + "' " +
           "AND password = N'" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sqlSelect);
                if (!userExists)
                    stResult = "אימייל או סיסמה שגויים";
                else
                    // stResult = "משתמש רשום";
                    Response.Redirect("Home.aspx");
                
            }
        }
    }
}