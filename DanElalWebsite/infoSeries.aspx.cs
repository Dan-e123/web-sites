using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class infoSeries : System.Web.UI.Page
{
    public string strResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string movie = Request.Form["movie"];
            string characters = Request.Form["characters"];
            string actors = Request.Form["actors"];
            string plotSummary = Request.Form["plotSummary"];


            string sqlInsert = "INSERT INTO infoSeries " +
                               "(movie, characters, actors, plotSummary) VALUES " +
                               "(N'" + movie + "', " +
                               "N'" + characters + "', " +
                               "N'" + actors + "', " +
                               "N'" + plotSummary + "')";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            strResult = "המידע נוסף בהצלחה!";
        }
    }
}
