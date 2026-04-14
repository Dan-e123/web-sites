<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showSeries.aspx.cs" Inherits="showSeries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h1>ניהול סדרות</h1>

    <form name="formPage" method="post" runat="server">
        שם סדרה:
        <input type="text" name="movie" id="movie" placeholder="שם סדרה">
        <br />

        שחקן:
        <input type="text" name="actors" id="actors" placeholder="שם שחקן">
        <br />

        <input type="submit" value="חפש" />
    </form>

    <hr />

    <%=st%>
</asp:Content>

