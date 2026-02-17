using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fullName = Request.Form["fullName"];
            string Gmail = Request.Form["Gmail"];

            string sqlSelect = "SELECT * FROM tUsers" + " WHERE fullName= N'" + fullName + "'" + " AND Gmail =N'" + Gmail + "'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<th>שם מלא</th>";
                st += "<th>מייל</th>";
                st += "<th> סדרות אהובות</th>";
                st += "<th> קבלת עידכונים</th>";
                st += "<th> מלל חופשי</th>";
                st += "<th> גיל</th>";






                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";
                    for (int k = 0; k < dt.Columns.Count; k++)
                    {
                        st += "<td>";
                        st += dt.Rows[i][k];
                        st += "</td>";
                    }
                    st += "</tr>";
                }
                st += "</table>";
            }
        }
    }
}