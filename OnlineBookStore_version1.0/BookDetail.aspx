<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeFile="BookDetail.aspx.cs" Inherits="BookDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/Bookdetail.css" />


  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

    <!-- 图书图片及基本介绍的版块-->
    <p class="p">
        <asp:Panel runat="server" CssClass="Panel1">
            <!--图书的图片-->
            <asp:ImageButton ID="Imagebtn_Picture" runat="server" CssClass="Imagebtn_Picture" />
            <!--图书的简介-->
            <asp:Panel ID="BookDetail1" runat="server" CssClass="BookDetail">

                <table class="table">
                    <tr>
                        <!--图书的名字-->
                        <td class="td1" colspan="2">
                            <asp:Label ID="Label_Name" runat="server" CssClass="Label_Name" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>

                        <td class="td2">价格</td>
                        <!--图书的价格-->
                        <td class="td3">
                            <asp:Label ID="Label_Price" runat="server" CssClass="Label_Price" Style="z-index: 1; top: 74px; left: 111px;" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <!--图书的作者出版社库存-->
                   
                    <tr>
                        <td class="td4">作者</td>
                        <td class="td6"><asp:Label ID="Label_Author" runat="server" CssClass="Label_Author" Text="Label"/></td>
                    </tr>
                    <tr>
                        <td class="td4">出版社</td>
                        <td class="td6"><asp:Label ID="Label_Number" runat="server" CssClass="Label_Number" Text="label"/></td>
                    </tr>
                    <tr>
                        <td class="td4">库存</td>
                        <td class="td6"><asp:Label ID="Label_Press" runat="server" CssClass="Label_Press" Text="Label"></asp:Label></td>
                    </tr>
                     <tr>
                        <td class="td4">书号</td>
                        <td class="td6"><asp:Label ID="Label_Stock" runat="server" CssClass="Label_Stock" Text="Label"></asp:Label></td>
                    </tr>
                    <!--图书的数量-->
                    <tr>
                        <td class="td5">数量</td>
                        <td>
                            <asp:TextBox ID="TextBox_Amount" runat="server" CssClass="TextBox_Amount" TextMode="Number"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                </table>

            </asp:Panel>
            <!--一键购买按钮-->
            <asp:LinkButton ID="Linkbtn_Quick" runat="server" CssClass="Quick">购买</asp:LinkButton>
            <!--加入购物车按钮-->
            <asp:LinkButton ID="Linkbtn_Shoppingcart" runat="server" CssClass="Shoppingcar">添加到购物车</asp:LinkButton>
        </asp:Panel>
    </p>

    <!--图书介绍以及评价版块-->
    <asp:Panel runat="server" CssClass="Panel2">
        <!--详细介绍按钮-->
        <asp:LinkButton ID="Linkbtn_detial" runat="server" CssClass="Detail" OnClick="DetailbtnClick">详细介绍</asp:LinkButton>
        <!--用户评价按钮-->
        <asp:LinkButton ID="Linkbtn_envaluation" runat="server" CssClass="Envaluation" OnClick="EnvaluatebtnClick">用户评价</asp:LinkButton>
        <!--详细介绍的版面-->
        <asp:Panel ID="Panel_Detail" runat="server" CssClass="Panel_Detail" Height="500px" Width="700px" Visible="False">
            <!--填写详细介绍的Textbox-->
            <asp:TextBox ID="TextBox_Detail" runat="server" Height="500px" Width="700px"></asp:TextBox>
        </asp:Panel>

        <!--用户评价的版面-->
        <asp:Panel ID="Panel_Evaluation" runat="server" CssClass="Panel_Evaluation" Height="500px" Width="700px" Visible="False">
            <!--评价的Gridview，一页五行，有分页功能，每一行上有一个填写用户名的Lable和一个填写用户评价的Lable，内容为数据绑定-->
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView1" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" BorderStyle="None" CellPadding="10" GridLines="Horizontal">
                <Columns>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:Label ID="Label_Username" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label_Recommond" runat="server" Text='<%# Bind("BookRecommond") %>'></asp:Label>

                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:Label ID="Label_Username" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                            <asp:Label ID="Label_Recommond" runat="server" Style="z-index: 1" Text='<%# Bind("Recommond") %>'></asp:Label>
                            <br />

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </asp:Panel>

    <!--书籍推荐版块-->
    <asp:Panel runat="server" CssClass="Panel_Recommond">
        <!--书籍推荐1-->
        <asp:Panel ID="Panel_Recommond1" runat="server" CssClass="Panel_Recommond1" Height="300px" Width="200px">
            <!--推荐书籍图片-->
            <asp:ImageButton ID="Imagebtn_Recommond1" runat="server" CssClass="Imagebtn_Recommond" Height="200px" Width="200px" />
            <!--推荐书籍名字-->
            <asp:LinkButton ID="Linkbtn_Name1" runat="server" CssClass="Recommond_Name1">LinkButton</asp:LinkButton>
        </asp:Panel>

        <!--书籍推荐2-->
        <asp:Panel ID="Panel_Recommond2" runat="server" CssClass="Panel_Recommond2" Height="300px" Width="200px">
            <!--推荐书籍图片-->
            <asp:ImageButton ID="Imagebtn_Bookimg2" runat="server" CssClass="Imagebtn_Recommond" Height="200px" Width="200px" />
            <!--推荐书籍名字-->
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="Recommond_Name2">LinkButton</asp:LinkButton>
        </asp:Panel>

        <!--书籍推荐3-->
        <asp:Panel ID="Panel_Recommond3" runat="server" CssClass="Panel_Recommond3" Height="300px" Width="200px">
            <!--推荐书籍图片-->
            <asp:ImageButton ID="ImageButton3" runat="server" CssClass="Imagebtn_Recommond" Height="200px" Width="200px" />
            <!--推荐书籍名字-->
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="Recommond_Name3">LinkButton</asp:LinkButton>
        </asp:Panel>

        <!--书籍推荐4-->
        <asp:Panel ID="Panel_Recommond4" runat="server" CssClass="Panel_Recommond4" Height="300px" Width="200px">
            <!--推荐书籍图片-->
            <asp:ImageButton ID="ImageButton4" runat="server" CssClass="Imagebtn_Recommond" Height="200px" Width="200px" />
            <!--推荐书籍名字-->
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="Recommond_Name4">LinkButton</asp:LinkButton>
        </asp:Panel>
    </asp:Panel>


</asp:Content>

