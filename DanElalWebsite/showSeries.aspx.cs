using System;
using System.Data;
using System.Web;
using System.Web.UI;

public partial class showSeries : System.Web.UI.Page
{
    // משתנה שישמור את טבלת התוצאות או הודעת "אין נתונים"
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה האם המשתמש מחובר כמשתמש רגיל או כמנהל
        // אם לא מחובר - מעבר לדף הכניסה
        if (Session["user"] == null && Session["nihol"] == null)
        {
            Response.Redirect("entering.aspx");
        }

        // קבלת הערכים שהוזנו בטופס החיפוש
        string movie = Request.Form["movie"];
        string actors = Request.Form["actors"];

        // ברירת מחדל - הצגת כל הסדרות מטבלת infoSeries
        string sqlSelect = "SELECT * FROM infoSeries";

        // אם הוזן שם סדרה או שם שחקן
        if ((movie != null && movie != "") ||
            (actors != null && actors != ""))
        {
            // יצירת בסיס לשאילתת החיפוש
            // WHERE 1=1 מאפשר להוסיף תנאי AND בקלות בהמשך
            sqlSelect = "SELECT * FROM infoSeries WHERE 1=1";

            // אם הוזן שם סדרה - חיפוש חלקי לפי שם הסדרה
            if (movie != null && movie != "")
            {
                sqlSelect += " AND movie LIKE N'%" + movie + "%'";
            }

            // אם הוזן שם שחקן - חיפוש חלקי לפי שם השחקן
            if (actors != null && actors != "")
            {
                sqlSelect += " AND actors LIKE N'%" + actors + "%'";
            }
        }

        // ביצוע השאילתה ושמירת התוצאות בטבלת נתונים
        DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

        // אם לא נמצאו תוצאות
        if (dt.Rows.Count == 0)
        {
            st = "אין נתונים";
        }
        else
        {
            // יצירת טבלת HTML להצגת הנתונים
            st += "<table border='1'>";

            // יצירת שורת הכותרות של הטבלה
            st += "<tr>";
            st += "<th>קוד</th>";
            st += "<th>שם סדרה</th>";
            st += "<th>דמויות</th>";
            st += "<th>שחקנים</th>";
            st += "<th>תקציר</th>";
            st += "</tr>";

            // מעבר על כל הרשומות שהתקבלו מהמסד
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                // מעבר על כל העמודות של הרשומה הנוכחית
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    // הוספת ערך התא לטבלה
                    st += "<td>" + dt.Rows[i][k] + "</td>";
                }

                st += "</tr>";
            }

            // סגירת טבלת ה-HTML
            st += "</table>";
        }
    }
}