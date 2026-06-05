<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="entering.aspx.cs" Inherits="entering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- כותרת העמוד --%>
    <h1> כניסה לאתר</h1>

    <%-- טופס ששולח את הנתונים לשרת כאשר לוחצים על "שלח" --%>
    <form runat="server" method="post">

        אימייל:

        <input type="text" name="email" id="email" placeholder="דוגמה" />
        <br />

        סיסמה:

        <input type="password" name="password" id="password" placeholder="דוגמה" />
        <br /><br />

        <%-- כפתור שליחת הטופס --%>
        <input id="Submit1" type="submit" value="שלח" />

    </form>

    <%-- מציג את תוכן המשתנה stResult.
         אם האימייל או הסיסמה שגויים,
         יוצג כאן הטקסט "אימייל או סיסמה שגויים" --%>
    <%=stResult %>

</asp:Content>