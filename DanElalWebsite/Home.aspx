<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>

    /* עיצוב הכותרת הראשית של הדף */
    .title
    {
        text-align: center;
        color: #2c3e50;
        font-size: 50px;
        margin-top: 20px;
    }

    /* עיצוב אזור המידע על האתר */
    .info
    {
        text-align: center;
        font-size: 22px;
        width: 80%;
        margin: auto;
        line-height: 40px;
        color: #555555;
    }

    /* עיצוב תמונת הבאנר */
    .banner
    {
        width: 80%;
        height: 350px;
        display: block;
        margin: auto;
        border-radius: 20px;
        margin-top: 20px;
        object-fit: cover;
    }

    /* מיכל המכיל את כל הכרטיסים */
    .cards
    {
        text-align: center;
        margin-top: 50px;
        margin-bottom: 30px;
    }

    /* עיצוב כרטיס מידע */
    .card
    {
        width: 250px;
        height: 380px;

        background-color: white;
        display: inline-block;
        margin: 15px;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0px 0px 10px lightgray;

        vertical-align: top;
    }

    /* עיצוב התמונות שבתוך הכרטיסים */
    .card img
    {
        width: 250px;
        height: 200px;
        object-fit: cover;
    }

    /* עיצוב אזור הטקסט שבתוך הכרטיס */
    .cardText
    {
        padding: 10px;
        height: 150px;
    }

    /* עיצוב כותרות הכרטיסים */
    .cardText h2
    {
        color: #4a69bd;
    }

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <%-- כותרת ראשית של דף הבית --%>
    <h1 class="title">
        ברוכים הבאים לאתר הסדרות
    </h1>

    <%-- תמונת הבאנר הראשית --%>
    <img src="photos/Home/banner.jpg" class="banner" />

    <%-- אזור המכיל מידע כללי על האתר ומטרתו --%>
    <div class="info">

        <p>

            זהו אתר בנושא סדרות שבו ניתן למצוא מידע על מגוון סדרות שונות במקום אחד.

            <br /><br />

            באתר תוכלו לחפש סדרות, לקרוא מידע עליהן, להוסיף מידע על סדרות חדשות
            ולגלות סדרות נוספות שאולי יעניינו אתכם.

            <br /><br />

            האתר מרכז מידע על סדרות מז'אנרים שונים, כמו דרמה, מתח, קומדיה,
            פנטזיה ועוד, ומאפשר גישה נוחה ופשוטה למידע.

            <br /><br />

            המטרה של האתר היא ליצור מקום שבו חובבי סדרות יכולים למצוא מידע,
            להכיר סדרות חדשות ולהרחיב את הידע שלהם על עולם הסדרות.

            <br /><br />

            מקווה שתיהנו מהאתר ותמצאו בו סדרות חדשות ומעניינות לצפייה.

        </p>

    </div>

    <%-- אזור כרטיסי המידע --%>
    <div class="cards">

        <%-- כרטיס ראשון --%>
        <div class="card">

            <img src="photos/Home/watch.jpg" />

            <div class="cardText">

                <h2>צפייה בסדרות</h2>

                <p>
                    גלו סדרות חדשות ומעניינות לצפייה.
                </p>

            </div>

        </div>

        <%-- כרטיס שני --%>
        <div class="card">

            <img src="photos/Home/cinema.jpg" />

            <div class="cardText">

                <h2>עולם הבידור</h2>

                <p>
                    מידע והמלצות על סדרות פופולריות.
                </p>

            </div>

        </div>

        <%-- כרטיס שלישי --%>
        <div class="card">

            <img src="photos/Home/popcorn.jpg" />

            <div class="cardText">

                <h2>המלצות צפייה</h2>

                <p>
                    הכירו סדרות חדשות שאולי יעניינו אתכם.
                </p>

            </div>

        </div>

    </div>

</asp:Content>