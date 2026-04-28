<%@ Page Title="" Language="C#"MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="exit.aspx.cs" Inherits="exit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center;">יציאה</h1>
    <%Session.Abandon();
        //Response.Write("התנתקת");
        Response.Redirect("entering.aspx");
        %>


</asp:Content>

