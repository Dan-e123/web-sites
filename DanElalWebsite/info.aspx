<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"
AutoEventWireup="true" CodeFile="info.aspx.cs" Inherits="info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>

    /* עיצוב הכותרת הראשית של דף האודות */
    .title
    {
        text-align: center;
        font-size: 45px;
        color: #6c63ff;
        margin-bottom: 30px;
    }

    /* עיצוב התמונה האישית */
    .myPhoto
    {
        width: 250px;
        height: 250px;
        display: block;
        margin: auto;
        border-radius: 50%;
        object-fit: cover;
        box-shadow: 0px 0px 15px lightgray;
    }

    /* עיצוב קופסת המידע על מפתחת האתר */
    .aboutBox
    {
        width: 80%;
        margin: auto;
        margin-top: 30px;
        background-color: white;
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0px 0px 10px lightgray;
        text-align: center;
        line-height: 40px;
        font-size: 22px;
        color: #555555;
    }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- כותרת דף האודות --%>
    <h1 class="title">
        אודות
    </h1>

    <%-- תמונה אישית של מפתחת האתר --%>
    <img src="photos/info/dan.jpg.jpeg" class="myPhoto" />

    <%-- אזור המכיל מידע אישי על מפתחת האתר ועל מטרת האתר --%>
    <div class="aboutBox">

        היי, שמי דן אלעל ואני תלמידה בכיתה י'
        בתיכון כצנלסון.

        <br /><br />

        בחרתי ליצור אתר בנושא סדרות
        כי אני מאוד אוהבת לצפות בסדרות
        בזמני הפנוי.

        <br /><br />

        לדעתי, האתר יכול לעזור לאנשים
        למצוא מידע על סדרות שונות,
        לקבל המלצות ולגלות סדרות חדשות
        שאולי יעניינו אתכם.

        <br /><br />

        אני מקווה שתיהנו מהתוכן
        ומהמידע שמופיע בו.❤

    </div>

</asp:Content>