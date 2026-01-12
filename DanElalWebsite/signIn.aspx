<%@ Page Title="" Language="C#"MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signIn.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>הרשמה לאתר </h1>
    <form name="formPage" method="post" runat="server">
        שם מלא: <input type="text" name="firstname" id="firstname" placeholder="דוגמה">
        <br />
         Gmail: <input type="text" name="lastname" id="lastname" placeholder="דוגמה">
           <br />
   <br />
        סדרות אהובות: 
        <br />
        חופים של סודות<input type="checkbox" name="check2"  value="חופים של סודות" id="check_1"><br />
        גוסיפ גירל: <input type="checkbox" name="check2" value="גוסיפ גירל" id="check_2"><br />
       יומני הערפד<input type="checkbox" name="check2" value="יומני הערפד"  id="check_3"><br />
        ברוקולין 99<input type="checkbox" name="check2" value="ברוקלין 99 "  id="check_4"><br />
        דברים מוזרים: <input type="checkbox" name="check2" value="דברים מוזרים" id="check_5"><br />
     אחר: <input type="text" name="elsee" id="else" placeholder="דוגמה">
           <br />
         <br />
    האם אתה מאשר קבלת דברי פרסום לכתובת הדואר האלקטרוני שלך? : 
        <br />
        לא<input type="radio" name="radio1"  value="לא" id="radio_1"><br />
        כן<input type="radio" name="radio1" value="כן" id="radio_2"><br />
    
        כתוב מלל לבחירתך:
        <textarea rows="5" cols="20" name="textarea1" id="textarea1" placeholder="הכנס מלל חופשי"></textarea>
        <br />
        <select name="age" id="age">
            <option value="0">בחר גיל</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
             <option value="18">18</option>
             <option value="19">19</option>
              <option value="20">20</option>
        </select>
        <br />
        <input id="Submit1" type="submit" value="שלח" />
    </form>



    <hr />

    <%--**איזור הצגת התוצאות**--%>
    <!--%Response.Write(name);%-->


    <%=firstname%><br />
       <%=lastname %><br />
       <%= check2%><br />
       <%=elsee %><br />
       <%=radio1 %><br />
       <%=textarea1 %><br />
       <%= age%><br />

</asp:Content>
