using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        P_OrderDetail.Visible = false;



    }



    //所有订单button
    protected void cmdAllOrder_Click(object sender, EventArgs e)
    {

        P_OrderDetail.Visible = false;


    }



    //订单搜索button
    protected void icmdOrderSearch_Click(object sender, EventArgs e)
    {
        P_OrderDetail.Visible = false;

    }



    //订单选择button
    protected void cmdOrderChoose_Click(object sender, EventArgs e)
    {
        P_OrderDetail.Visible = true;
    }
}