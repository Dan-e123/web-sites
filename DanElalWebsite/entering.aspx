 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="entering.aspx.cs" Inherits="entering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1> כניסה לאתר</h1>

    <form runat="server" method="post">
        gmail:
        <input type="text" name="email" id="email" placeholder="דוגמה" />
        <br />

        password:
        <input type="text" name="password" id="password" placeholder="דוגמה" />
        <br /><br />
               <input id="Submit1" type="submit" value="שלח" />
        </form>
    <%=stResult %>
    </asp:Content>