using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class form : System.Web.UI.Page
{
    public string firstname;
    public string lastname;
    public string password;
    public string check2;
    public string elsee;
    public string radio1;
    public string textarea1;
    public string age;








    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            firstname = "שם מלא:" + Request.Form["firstname"];
            lastname = "Gmail :" + Request.Form["lastname"];
            password = "סיסמה :" + Request.Form["password"];
            check2 = "סדרות אהובות:" + Request.Form["check2"];
            elsee = "אחר:" + Request.Form["elsee"];
            radio1 = "   האם אתה מאשר קבלת דברי פרסום לכתובת הדואר האלקטרוני שלך? :" + Request.Form["radio1"];
            textarea1 = "מלל לבחירתך:" + Request.Form["textarea1"];
            age = "גילך:" + Request.Form["age"];
        }
    }
}