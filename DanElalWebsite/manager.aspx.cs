using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager : System.Web.UI.Page
{
    // משתנה שישמור את טבלת התוצאות או הודעות שיוצגו בדף
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה האם המשתמש הוא מנהל
        // אם Session["nihol"] ריק, המשתמש אינו מנהל
        if (Session["nihol"] == null)
        {
            // העברה לדף הבית
            Response.Redirect("Home.aspx");
        }

        // קבלת הטקסט שהוקלד בתיבת החיפוש
        string fullName = Request.Form["fullName"];

        // ברירת מחדל - הצגת כל המשתמשים
        string sqlSelect = "SELECT * FROM tUsers";

        // אם המשתמש הקליד משהו בתיבת החיפוש
        // מבצעים חיפוש חלקי באמצעות LIKE
        if (fullName != null && fullName != "")
        {
            sqlSelect = "SELECT * FROM tUsers WHERE fullName LIKE N'%" + fullName + "%'";
        }

        // ביצוע השאילתה ושמירת התוצאות בתוך טבלה
        DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

        // בדיקה האם נמצאו משתמשים
        if (dt.Rows.Count == 0)
        {
            // אם לא נמצאו תוצאות תוצג הודעה
            st = "אין משתמשים";
        }
        else
        {
            // יצירת טבלת HTML בתוך המשתנה st
            st += "<table border='1'>";

            // פתיחת שורת הכותרות
            st += "<tr>";

            // כותרות העמודות
            st += "<th>שם מלא</th>";
            st += "<th>מייל</th>";
            st += "<th>סדרות אהובות</th>";
            st += "<th>אחר</th>";
            st += "<th>קבלת עדכונים</th>";
            st += "<th>מלל חופשי</th>";
            st += "<th>גיל</th>";

            // סגירת שורת הכותרות
            st += "</tr>";

            // לולאה שעוברת על כל המשתמשים שנמצאו
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                // פתיחת שורה חדשה בטבלה
                st += "<tr>";

                // הכנסת הנתונים של המשתמש הנוכחי
                st += "<td>" + dt.Rows[i]["fullName"] + "</td>";
                st += "<td>" + dt.Rows[i]["Gmail"] + "</td>";
                st += "<td>" + dt.Rows[i]["favoriteSeries"] + "</td>";
                st += "<td>" + dt.Rows[i]["other"] + "</td>";
                st += "<td>" + dt.Rows[i]["updates"] + "</td>";
                st += "<td>" + dt.Rows[i]["freeText"] + "</td>";
                st += "<td>" + dt.Rows[i]["age "] + "</td>";

                // סגירת השורה
                st += "</tr>";
            }

            // סגירת הטבלה
            st += "</table>";
        }
    }
}