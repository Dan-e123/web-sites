using System;
using System.Web.UI;

public partial class signUp : System.Web.UI.Page
{
    // משתנה שישמור הודעת הצלחה או שגיאה להצגה בדף
    public string strResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // בדיקה האם הטופס נשלח
        if (IsPostBack)
        {
            // קבלת הנתונים שהמשתמש הזין בטופס ההרשמה
            string fullName = Request.Form["fullName"];
            string gmail = Request.Form["gmail"];
            string password = Request.Form["password"];
            string favoriteSeries = Request.Form["favoriteSeries"];
            string other = Request.Form["other"];
            string updates = Request.Form["updates"];
            string freeText = Request.Form["freeText"];
            string age = Request.Form["age"];

            // יצירת שאילתה שבודקת האם כתובת המייל כבר קיימת במסד הנתונים
            string sqlSelect = "SELECT * FROM tUsers WHERE Gmail = N'" + gmail + "'";

            // הפעלת השאילתה וקבלת תשובה האם המשתמש קיים
            bool exists = MyAdoHelper.IsExist(sqlSelect);

            // אם המייל כבר קיים במערכת
            if (exists)
            {
                // הצגת הודעת שגיאה למשתמש
                strResult = "מייל שהוכנס קיים במערכת, הכנס מייל חדש";
            }
            else
            {
                // יצירת שאילתת INSERT להוספת המשתמש החדש למסד הנתונים
                string sqlInsert =
                    "INSERT INTO tUsers VALUES (" +
                    "N'" + fullName + "', " +
                    "N'" + gmail + "', " +
                    "N'" + password + "', " +
                    "N'" + favoriteSeries + "', " +
                    "N'" + other + "', " +
                    "N'" + updates + "', " +
                    "N'" + freeText + "', " +
                    age + ")";

                // ביצוע השאילתה והוספת המשתמש לטבלה
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

                // הודעת הצלחה לאחר ההרשמה
                strResult = "✔ נרשמת בהצלחה לאתר!";

                // העברת המשתמש לדף הכניסה
                Response.Redirect("entering.aspx");
            }
        }
    }
}