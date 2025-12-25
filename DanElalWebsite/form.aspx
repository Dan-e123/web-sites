<%@ Page Title="" Language="C#"MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>טופס </h1>
    <form name="formPage" method="post" runat="server">
        שם פרטי: <input type="text" name="firstname" id="firstname" placeholder="דוגמה">
        <br />
        מקצועות אהובים: 
        <br />
        עברית<input type="checkbox" name="check2"  value="עברית" id="check_1"><br />
        מתמטיקה: <input type="checkbox" name="check2" value="מתמטיקה" id="check_2"><br />
       אנגלית<input type="checkbox" name="check2" value="אנגלית"  id="check_3"><br />
        היסטוריה<input type="checkbox" name="check2" value="היסטוריה"  id="check_4"><br />
        ספורט: <input type="checkbox" name="check2" value="ספורט" id="check_5"><br />


         <br />
        בעל חיים אהוב: 
        <br />
        כלב<input type="radio" name="radio1"  value="כלב" id="radio_1"><br />
        חתול<input type="radio" name="radio1" value="חתול" id="radio_2"><br />
        סוס<input type="radio" name="radio1" value="סוס"  id="radio_3"><br />
        ארנב<input type="radio" name="radio1" value="ארנב" id="radio_4"><br />
          דולפין<input type="radio" name="radio1" value="דולפין" id="radio_5"><br />
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
</asp:Content>
