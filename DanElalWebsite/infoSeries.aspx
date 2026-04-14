<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="infoSeries.aspx.cs" Inherits="infoSeries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h1 style="text-align: center;">מידע על סדרות</h1>

        <h1>הוספת מידע על סדרה</h1>

    <form name="formPage" method="post" runat="server">

        שם סדרה:
        <input type="text" name="movie" id="movie" placeholder="שם הסדרה">
        <br /><br />

        דמויות:
        <input type="text" name="characters" id="characters" placeholder="דמויות ראשיות">
        <br /><br />

        שחקנים:
        <input type="text" name="actors" id="actors" placeholder="שחקנים">
        <br /><br />

        תקציר עלילה:
        <textarea name="plotSummary" id="plotSummary" rows="5" cols="30" placeholder="תקציר"></textarea>
        <br /><br />

        <input type="submit" value="שמור" />

    </form>

    <hr />

    <%=strResult %>
</asp:Content>

