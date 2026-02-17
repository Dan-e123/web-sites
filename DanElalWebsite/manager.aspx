<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1>מנהל</h1>
    <form name="formPage" method="post" runat="server">
        שם מלא: <input type="text" name="fullName" id="fullName" placeholder="דוגמה">
        <br />
         Gmail: <input type="text" name="gmail" id="gmail" placeholder="דוגמה">
           <br />
        <input id="Submit1" type="submit" value="שלח" />
    </form>



    <hr />

    <%--**איזור הצגת התוצאות**--%>
    <!--%Response.Write(name);%-->


    <%=st%><br />
</asp:Content>

