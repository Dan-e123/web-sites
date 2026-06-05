<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- כותרת ראשית של דף המנהל --%>
    <h1>מנהל</h1>

    <%-- כותרת אזור החיפוש --%>
    <h2>חיפוש משתמשים</h2>

    <%-- הסבר למנהל כיצד פועל החיפוש --%>
    <p>
        חפשו משתמש לפי אות או חלק מהשם המלא.
    </p>

    <%-- טופס החיפוש.
         כאשר המנהל לוחץ על כפתור "שלח",
         הערך שהוקלד נשלח לקובץ ה-CS לצורך ביצוע החיפוש. --%>
    <form name="formPage" method="post" runat="server">

        חיפוש:

        <%-- תיבת טקסט להזנת שם או חלק משם המשתמש.
             הערך שיוקלד כאן ייקלט ב-CS בעזרת:
             Request.Form["fullName"] --%>
        <input type="text" name="fullName" id="fullName" placeholder="הכנס פה אות או חלק מהשם המלא.">

        <br />

        <%-- כפתור שליחת הטופס וביצוע החיפוש --%>
        <input id="Submit1" type="submit" value="שלח" />

    </form>

    <hr />

<%-- אזור הצגת תוצאות החיפוש.
     ב-CS נבנית טבלת HTML בתוך המשתנה st.
     אם נמצאו משתמשים תוצג כאן טבלה עם הנתונים שלהם.
     אם לא נמצאו משתמשים תוצג הודעה מתאימה. --%>

<%-- מציג את תוכן המשתנה st שנבנה בקובץ ה-CS --%>
<%=st%><br />

</asp:Content>