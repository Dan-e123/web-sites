using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class entering : System.Web.UI.Page
{
    // משתנה להצגת הודעות למשתמש בדף
    public string stResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // (הקוד ירוץ רק לאחר שליחת הטופס (לחיצה על שלח
        if (Page.IsPostBack)
        {
            // קבלת האימייל והסיסמה שהוזנו בטופס
            string gmail = Request.Form["email"];
            string password = Request.Form["password"];

            // בדיקה האם התחבר מנהל
            if (gmail == "elaldan2025@gmail.com" && password == "dan123")
            {
                // איפוס Session של משתמש רגיל
                Session["user"] = null;

                // סימון שהתחבר מנהל
                Session["nihol"] = "ok";

                // שמירת שם המנהל להצגה באתר
                Session["hello"] = "דן המנהלת";

                // מעבר לדף הניהול
                Response.Redirect("manager.aspx");
            }
            else
            {

                // בדיקת משתמש רשום: נכנס לטבלה ומחפש שם את האימייל שהוזן ואת הסיסמה בודק אם יש התאמה
                string sqlSelect =
           "SELECT * FROM tUsers " +
           "WHERE Gmail = N'" + gmail + "' " +
           "AND password = N'" + password + "'";

                // הרצת השאילתה ושמירת התוצאות בטבלת נתונים
                System.Data.DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

                // אם לא נמצאה אף שורה מתאימה מהטבלה שמתאימה לאימייל והסיסמה שהוזנו
                if (dt.Rows.Count == 0)
                {
                    stResult = "אימייל או סיסמה שגויים";

                }
                else
                {
                    // איפוס Session של מנהל
                    Session["nihol"] = null;

                    // סימון שמשתמש רגיל מחובר
                    Session["user"] = "ok";

                    // שמירת השם המלא של המשתמש מתוך מסד הנתונים
                    Session["hello"] = dt.Rows[0]["fullName"];

                    // מעבר לדף הבית
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}