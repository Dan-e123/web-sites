<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="signUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script>

    // פונקציה ראשית שבודקת את כל שדות הטופס לפני השליחה
    function checkAll() {

        // ניקוי הודעות שגיאה קודמות
        fullNameErr.innerHTML = "";
        gmailErr.innerHTML = "";
        passwordErr.innerHTML = "";
        seriesErr.innerHTML = "";
        otherErr.innerHTML = "";
        updatesErr.innerHTML = "";
        freeTextErr.innerHTML = "";
        ageErr.innerHTML = "";

        // משתנה שיקבע האם כל הבדיקות עברו בהצלחה
        var f = true;

        // הפעלת כל פונקציות הבדיקה
        f = checkFullName() && f;
        f = checkGmail() && f;
        f = checkPassword() && f;
        f = checkSeries() && f;
        f = checkOther() && f;
        f = checkUpdates() && f;
        f = checkFreeText() && f;
        f = checkAge() && f;

        // מחזיר true אם כל הבדיקות תקינות
        return f;
    }

    // בדיקת תקינות השם המלא
    function checkFullName() {
        var fullName = document.getElementById("fullName").value;

        // השם חייב להיות בין 4 ל-20 תווים
        if (fullName.length < 4 || fullName.length > 20) {
            fullNameErr.innerHTML = "יש להזין שם מלא באורך 4-20 תווים";
            return false;
        }

        return true;
    }

    // בדיקת כתובת Gmail
    function checkGmail() {
        var gmail = document.getElementById("gmail").value;

        // בדיקה שהכתובת מכילה @
        if (gmail.indexOf("@") == -1) {
            gmailErr.innerHTML = "יש להזין כתובת Gmail המכילה את הסימן @";
            return false;
        }

        return true;
    }

    // בדיקת סיסמה
    function checkPassword() {
        var password = document.getElementById("password").value;

        // הסיסמה חייבת להכיל לפחות 6 תווים
        if (password.length < 6) {
            passwordErr.innerHTML = "יש להזין סיסמה באורך 6 תווים ומעלה";
            return false;
        }

        return true;
    }

    // בדיקת בחירת סדרות אהובות
    function checkSeries() {
        var series = document.getElementsByName("favoriteSeries");
        var other = document.getElementById("other").value;

        var checked = false;

        // בדיקה האם נבחרה לפחות סדרה אחת
        for (var i = 0; i < series.length; i++) {
            if (series[i].checked) {
                checked = true;
            }
        }

        // חובה לבחור סדרה או למלא את שדה "אחר"
        if (!checked && other == "") {
            seriesErr.innerHTML = "יש לבחור לפחות סדרה אחת או למלא את שדה 'אחר'";
            return false;
        }

        return true;
    }

    // בדיקת שדה "אחר"
    function checkOther() {
        var other = document.getElementById("other").value;

        // אם המשתמש מילא את השדה - חייבים להיות לפחות 2 תווים
        if (other != "" && other.length < 2) {
            otherErr.innerHTML = "יש להזין לפחות 2 תווים בשדה 'אחר'";
            return false;
        }

        return true;
    }

    // בדיקת בחירת קבלת עדכונים
    function checkUpdates() {
        var updates = document.getElementsByName("updates");

        // חובה לבחור כן או לא
        if (!updates[0].checked && !updates[1].checked) {
            updatesErr.innerHTML = "יש לבחור האם לקבל עדכונים";
            return false;
        }

        return true;
    }

    // בדיקת שדה ההערות
    function checkFreeText() {
        var freeText = document.getElementsByName("freeText")[0].value;

        // חייבים לפחות 2 תווים
        if (freeText.length < 2) {
            freeTextErr.innerHTML = "יש להזין לפחות 2 תווים בשדה ההערות";
            return false;
        }

        return true;
    }

    // בדיקת בחירת גיל
    function checkAge() {
        var age = document.getElementById("age").value;

        // אם נשארה ברירת המחדל - מציגים שגיאה
        if (age == "0") {
            ageErr.innerHTML = "יש לבחור גיל מהרשימה";
            return false;
        }

        return true;
    }

</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- כותרת דף ההרשמה --%>
    <h1>הרשמה לאתר</h1>

    <%-- טופס הרשמה.
         בעת לחיצה על "שלח" מופעלת הפונקציה checkAll()
         שבודקת שכל הנתונים תקינים לפני שליחת הטופס --%>
    <form name="formPage" method="post" runat="server" onsubmit="return checkAll();">

        <%-- שדה שם מלא --%>
        שם מלא:
        <input type="text" name="fullName" id="fullName" placeholder="דוגמה">
        <br />
        <span id="fullNameErr" style="color:red"></span>
        <br />

        <%-- שדה Gmail --%>
        Gmail:
        <input type="text" name="gmail" id="gmail" placeholder="דוגמה">
        <br />
        <span id="gmailErr" style="color:red"></span>
        <br />

        <%-- שדה סיסמה --%>
        סיסמה:
        <input type="password" name="password" id="password" placeholder="הכנס סיסמה">
        <br />
        <span id="passwordErr" style="color:red"></span>
        <br /><br />

        <%-- בחירת סדרות אהובות באמצעות CheckBox --%>
        סדרות אהובות:
        <br />

        חופים של סודות
        <input type="checkbox" name="favoriteSeries" value="חופים של סודות"><br />

        גוסיפ גירל
        <input type="checkbox" name="favoriteSeries" value="גוסיפ גירל"><br />

        יומני הערפד
        <input type="checkbox" name="favoriteSeries" value="יומני הערפד"><br />

        ברוקלין 99
        <input type="checkbox" name="favoriteSeries" value="ברוקלין 99"><br />

        דברים מוזרים
        <input type="checkbox" name="favoriteSeries" value="דברים מוזרים"><br />

        <span id="seriesErr" style="color:red"></span>
        <br />

        <%-- שדה להזנת סדרה אחרת שאינה ברשימה --%>
        אחר:
        <input type="text" name="other" id="other" placeholder="דוגמה">
        <br />
        <span id="otherErr" style="color:red"></span>

        <br /><br />

        <%-- בחירה האם לקבל עדכונים ופרסומות --%>
        האם אתה מאשר קבלת דברי פרסום?
        <br />

        לא
        <input type="radio" name="updates" value="לא"><br />

        כן
        <input type="radio" name="updates" value="כן"><br />

        <span id="updatesErr" style="color:red"></span>

        <br /><br />

        <%-- שדה הערות חופשי --%>
        הערות:
        <textarea name="freeText" rows="5" cols="20"></textarea>

        <br />
        <span id="freeTextErr" style="color:red"></span>

        <br /><br />

        <%-- רשימת גילאים לבחירה --%>
        גיל:
        <select name="age" id="age">
            <option value="0">בחר גיל</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
        </select>

        <br />
        <span id="ageErr" style="color:red"></span>

        <br /><br />

        <%-- כפתור שליחת טופס ההרשמה --%>
        <input type="submit" value="שלח" />

    </form>

    <hr />

    <%-- הצגת הודעה מה-CS (הצלחה או שגיאה) --%>
    <%=strResult%>

</asp:Content>