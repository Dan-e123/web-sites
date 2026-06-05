using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class infoSeries : System.Web.UI.Page
{
    // משתנה שישמור הודעה להצגה בדף לאחר הוספת המידע
    public string strResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה האם המשתמש אינו מחובר כמנהל וגם אינו מחובר כמשתמש רגיל
        // אם שניהם null המשתמש מועבר לדף הכניסה
        if (Session["user"] == null && Session["nihol"] == null)
        {
            Response.Redirect("entering.aspx");
        }

        // הקוד יפעל רק לאחר שליחת הטופס
        if (IsPostBack)
        {
            // קבלת הנתונים שהוזנו בטופס
            string movie = Request.Form["movie"];
            string characters = Request.Form["characters"];
            string actors = Request.Form["actors"];
            string plotSummary = Request.Form["plotSummary"];

            // החלפת גרש ב-2 גרשים כדי למנוע שגיאה בשאילתת SQL
            movie = movie.Replace("'", "''");
            characters = characters.Replace("'", "''");
            actors = actors.Replace("'", "''");
            plotSummary = plotSummary.Replace("'", "''");

            // בניית שאילתת INSERT להוספת הרשומה החדשה לטבלת infoSeries
            string sqlInsert = "INSERT INTO infoSeries " +
                               "(movie, characters, actors, plotSummary) VALUES " +
                               "(N'" + movie + "', " +
                               "N'" + characters + "', " +
                               "N'" + actors + "', " +
                               "N'" + plotSummary + "')";

            // ביצוע השאילתה ושמירת הנתונים במסד הנתונים
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            // הודעה שתוצג למשתמש לאחר הוספה מוצלחת
            strResult = "המידע נוסף בהצלחה!";
        }
    }
}