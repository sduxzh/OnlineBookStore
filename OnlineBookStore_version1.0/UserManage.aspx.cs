using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineBookStore.App_Code;

public partial class UserManage : System.Web.UI.Page
{
    private Manager manager;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"]!= null)
        {
            manager = (Manager) Session["User"];
        }

    }


    //搜索用户
    protected void icmdOrderSearch_Click(object sender, EventArgs e)
    {
        string userName = txtUserSearch.Text;
        Manager.QueryUserInformation(userName);
    }


    /// <summary>
    /// 查看所有用户
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void cmdAllOrder_Click(object sender, EventArgs e)
    {
        grvAllUser.DataBind();
    }


    /// <summary>
    /// 检测gridview中的两个控件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void grvAllUser_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        string userName = e.CommandArgument.ToString();
        //限制登陆
        if (e.CommandName == "N")
        {
            manager.RestrictOrPermitCustomerLogin(userName, 1);

        }
        //允许登陆
        if (e.CommandName == "Y")
        {
            manager.RestrictOrPermitCustomerLogin(userName, 0);

        }
        grvAllUser.DataBind();
    }
}