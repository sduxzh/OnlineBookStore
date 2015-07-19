using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel_Detail.Visible = false;
        Panel_Evaluation.Visible = false;
    }



    protected void DetailbtnClick(object sender, EventArgs e)
    {
        Panel_Detail.Visible = true;
        Panel_Evaluation.Visible = false;
    }

    protected void EnvaluatebtnClick(object sender, EventArgs e)
    {
        Panel_Detail.Visible = false;
        Panel_Evaluation.Visible = true;
    }
}