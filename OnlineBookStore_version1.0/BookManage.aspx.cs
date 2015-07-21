using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookManage : System.Web.UI.Page
{
    //搜索
    protected void BSearch_Click(object sender, EventArgs e)
    {

    }








    //添加书籍
    protected void BAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddBook.aspx");
    }



    //设置公告栏
    protected void BAnnouncement_Click(object sender, EventArgs e)
    {

    }



    //高级搜索
    protected void BConSearch_Click(object sender, EventArgs e)
    {

    }



    //修改书籍信息
    protected void ImgBAlter_Click(object sender, EventArgs e)
    {
        Response.Redirect("AlterBook.aspx");
    }



    //删除本条记录
    protected void ImgBDelete_Click(object sender, EventArgs e)
    {

    }

}