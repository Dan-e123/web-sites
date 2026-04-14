using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showSeries : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string movie = Request.Form["movie"];
            string actors = Request.Form["actors"];

            string sqlSelect = "SELECT * FROM infoSeries " +
                "WHERE movie LIKE N'%" + movie + "%' " +
                "AND actors LIKE N'%" + actors + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sqlSelect);

            if (dt.Rows.Count == 0)
            {
                st = "אין נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<th>קוד</th>";
                st += "<th>שם סדרה</th>";
                st += "<th>דמויות</th>";
                st += "<th>שחקנים</th>";
                st += "<th>תקציר</th>";
                st += "</tr>";

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