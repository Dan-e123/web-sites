<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="infoSeries.aspx.cs" Inherits="infoSeries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script language="javascript">

    // פונקציה ראשית שמופעלת כאשר המשתמש לוחץ על כפתור השמירה.
    // הפונקציה מפעילה את כל בדיקות התקינות.
    // אם אחת הבדיקות נכשלת - הטופס לא יישלח לשרת.
    function checkAll() {

        // ניקוי הודעות שגיאה קודמות כדי שלא יוצגו הודעות ישנות
        movieErr.innerHTML = "";
        charactersErr.innerHTML = "";
        actorsErr.innerHTML = "";
        plotErr.innerHTML = "";

        // משתנה ששומר האם כל הבדיקות עברו בהצלחה
        var f = true;

        // הפעלת כל פונקציות הבדיקה
        // אם אחת מהן מחזירה false הערך הסופי יהיה false
        f = checkMovie() && f;
        f = checkCharacters() && f;
        f = checkActors() && f;
        f = checkPlot() && f;

        // החזרת תוצאת הבדיקות
        return f;
    }

    // בדיקת תקינות של שדה שם הסדרה
    function checkMovie() {

        // קבלת הערך שהמשתמש הקליד בשדה movie
        var movie = document.getElementById("movie").value;

        // בדיקה שהוזנו לפחות 2 תווים
        if (movie.length < 2) {
            movieErr.innerHTML = "שם הסדרה חייב להכיל לפחות 2 תווים";
            return false;
        }

        return true;
    }

    // בדיקת תקינות של שדה הדמויות
    function checkCharacters() {

        // קבלת הערך שהמשתמש הקליד
        var characters = document.getElementById("characters").value;

        // בדיקה שהוזנו לפחות 2 תווים
        if (characters.length < 2) {
            charactersErr.innerHTML = "יש להזין לפחות 2 תווים בשדה הדמויות";
            return false;
        }

        return true;
    }

    // בדיקת תקינות של שדה השחקנים
    function checkActors() {

        // קבלת הערך שהמשתמש הקליד
        var actors = document.getElementById("actors").value;

        // בדיקה שהוזנו לפחות 2 תווים
        if (actors.length < 2) {
            actorsErr.innerHTML = "יש להזין לפחות 2 תווים בשדה השחקנים";
            return false;
        }

        return true;
    }

    // בדיקת תקינות של תקציר העלילה
    function checkPlot() {

        // קבלת הטקסט שהמשתמש כתב בתיבת התקציר
        var plot = document.getElementById("plotSummary").value;

        // בדיקה שהתקציר מכיל לפחות 8 תווים
        if (plot.length < 8) {
            plotErr.innerHTML = "התקציר חייב להכיל לפחות 8 תווים";
            return false;
        }

        return true;
    }

</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- כותרת ראשית של הדף --%>
    <h1 style="text-align:center;">מידע על סדרות</h1>

    <%-- כותרת הטופס --%>
    <h1>הוספת מידע על סדרה</h1>

    <%-- טופס להזנת מידע חדש על סדרה.
         כאשר המשתמש לוחץ על "שמור",
         מופעלת קודם הפונקציה checkAll().
         רק אם כל הבדיקות תקינות הטופס יישלח לשרת. --%>
    <form name="formPage" method="post" runat="server" onsubmit="return checkAll();">

        שם סדרה:

        <%-- שדה להזנת שם הסדרה.
             הערך שיוקלד כאן ייקלט ב-CS בעזרת:
             Request.Form["movie"] --%>
        <input type="text" name="movie" id="movie" placeholder="שם הסדרה">

        <br />

        <%-- כאן תוצג הודעת שגיאה אם שם הסדרה אינו תקין --%>
        <span id="movieErr" style="color:red"></span>

        <br /><br />

        דמויות:

        <%-- שדה להזנת שמות הדמויות הראשיות.
             הערך ייקלט ב-CS בעזרת:
             Request.Form["characters"] --%>
        <input type="text" name="characters" id="characters" placeholder="דמויות ראשיות">

        <br />

        <%-- כאן תוצג הודעת שגיאה עבור שדה הדמויות --%>
        <span id="charactersErr" style="color:red"></span>

        <br /><br />

        שחקנים:

        <%-- שדה להזנת שמות השחקנים.
             הערך ייקלט ב-CS בעזרת:
             Request.Form["actors"] --%>
        <input type="text" name="actors" id="actors" placeholder="שחקנים">

        <br />

        <%-- כאן תוצג הודעת שגיאה עבור שדה השחקנים --%>
        <span id="actorsErr" style="color:red"></span>

        <br /><br />

        תקציר עלילה:

        <%-- תיבת טקסט גדולה להזנת תקציר העלילה.
             השתמשתי ב-textarea משום שהתקציר יכול להיות ארוך
             ולהכיל מספר שורות.
             הערך ייקלט ב-CS בעזרת:
             Request.Form["plotSummary"] --%>
        <textarea name="plotSummary" id="plotSummary" rows="5" cols="30" placeholder="תקציר"></textarea>

        <br />

        <%-- כאן תוצג הודעת שגיאה עבור התקציר --%>
        <span id="plotErr" style="color:red"></span>

        <br /><br />

        <%-- כפתור שליחת הטופס ושמירת הנתונים במסד הנתונים --%>
        <input type="submit" value="שמור" />

    </form>

    <hr />

    <%-- מציג את תוכן המשתנה strResult מה-CS.
         לאחר שמירה מוצלחת במסד הנתונים
         תוצג כאן ההודעה "המידע נוסף בהצלחה!" --%>
    <%=strResult %>

</asp:Content>