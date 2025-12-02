using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspDotNet : System.Web.UI.Page
{
    public string strkefel;
    protected void Page_Load(object sender, EventArgs e)
    {
        strkefel = "<table border= '1' width= 100%  >";
        for (int i = 1; i <= 10; i++)
        {
            if(i%2==0)
            strkefel += "<tr style= 'background-Color:blue'>";
            else
                strkefel += "<tr style= 'background-Color:pink'>";
            for (int j = 1; j <= 10; j++)
            {
                strkefel += "<td>";
                strkefel += i * j;
                strkefel += "</td>";
            }
            strkefel += "</tr>";
        }
        strkefel += "</table>";

    }
}