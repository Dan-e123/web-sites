using System;
using System.Collections.Generic;
using System.Data;
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
                Session["nihol"] = "ok";
                Session["name"] = " דן המנהלת";
                Response.Redirect("manager.aspx");
            }
            else
            {


                //בדיקת משתמש רגיל
                string sqlSelect =
           "SELECT * FROM tUsers " +
           "WHERE Gmail = N'" + gmail + "' " +
           "AND password = N'" + password + "'";

               System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);
                if (dt.Rows.Count==0)
                {
                    stResult = "אימייל או סיסמה שגויים";
                    Session["name"] = "אורח";
                }
                else
                {
                    // stResult = "משתמש רשום";
                    Session["name"]=dt.Rows[0]["name"];
                    Session["user"] = "ok";
                    Response.Redirect("Home.aspx");
                    Session["email"] = "משתמש רשום";
                     
                }
            }
        }
    }
}
