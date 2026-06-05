<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"
AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>

/* עיצוב הלוח הראשי של הגלריה */
.galleryBoard
{
    width: 1000px;
    height: 950px;
    margin: auto;
    position: relative;
    background: #f5f7fb;
    border-radius: 20px;
    padding: 10px;
}

/* עיצוב משותף לכל התמונות בגלריה */
.photo
{
    position: absolute;
    width: 200px;
    height: 200px;
    object-fit: cover;
    border-radius: 15px;
    border: 4px solid white;
    box-shadow: 0px 8px 18px rgba(0,0,0,0.15);
    transition: 0.3s ease;
}

/* אפקט כאשר העכבר נמצא מעל תמונה */
.photo:hover
{
    transform: scale(1.08);
    z-index: 10;
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%-- מיכל המכיל את כל תמונות הגלריה --%>
<div class="galleryBoard">

    <%-- תמונות הגלריה --%>

    <img class="photo" src="photos/Gallery/1.jpg"
         style="top: 40px; right: 60px; transform: rotate(6deg);" />

    <img class="photo" src="photos/Gallery/2.jpg"
         style="top: 180px; left: 80px; transform: rotate(-5deg);" />

    <img class="photo" src="photos/Gallery/3.jpg"
         style="top: 120px; right: 320px; transform: rotate(3deg);" />

    <img class="photo" src="photos/Gallery/4.jpg"
         style="top: 360px; right: 120px; transform: rotate(-6deg);" />

    <img class="photo" src="photos/Gallery/5.jpg"
         style="top: 420px; left: 140px; transform: rotate(5deg);" />

    <img class="photo" src="photos/Gallery/6.jpg"
         style="top: 600px; right: 260px; transform: rotate(-4deg);" />

    <img class="photo" src="photos/Gallery/7.jpg"
         style="top: 650px; left: 60px; transform: rotate(4deg);" />

    <img class="photo" src="photos/Gallery/8.jpg"
         style="top: 520px; right: 420px; transform: rotate(-3deg);" />

    <img class="photo" src="photos/Gallery/9.jpg"
         style="top: 260px; left: 420px; transform: rotate(5deg);" />

    <img class="photo" src="photos/Gallery/10.jpg"
         style="top: 720px; right: 120px; transform: rotate(-5deg);" />

</div>

</asp:Content>