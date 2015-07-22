﻿<%@ Page Language="C#" MasterPageFile="~/ManagerManage.Master" AutoEventWireup="true" CodeFile="BookManage.aspx.cs" Inherits="BookManage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="CSS/BookManage_zero.css" />
    <style type="text/css">
        body {
            font-family: '微软雅黑','楷体';
            background-image: url(/Images/BodyBack_Long.jpg);
            background-size: 100% 100%;
            width: 1344px;
            height: 1425px;
        }

        .PBack {
            position: absolute;
            top: 0px;
            left: 67px;
            width: 1210px;
            height: 1440px;
            background-color: white;
        }

        .PBottom {
            position: absolute;
            left: 0px;
            top: 1420px;
            width: 100%;
            height: 22px;
            border-radius: 2px;
            background-color: #4ca3be;
            color: white;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--搜索Panel-->
    <asp:Panel ID="P_Search" runat="server" CssClass="P_Search">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <!--搜索条件框-->
        <asp:TextBox ID="TextBInputSearch" runat="server" CssClass="TextBInputSearch"></asp:TextBox>
        <!--搜索button，普通搜索&高级搜索-->
        <asp:LinkButton ID="BSearch" runat="server" OnClick="BSearch_Click" CssClass="BSearch">搜索</asp:LinkButton>

        <!--添加button-->
        <asp:LinkButton ID="BAdd" runat="server" OnClick="BAdd_Click" CssClass="BAdd">添加</asp:LinkButton>
        <!--设置公告button-->
        <asp:LinkButton ID="BAnnouncement" OnClick="BAnnouncement_Click" runat="server" CssClass="BAnnouncement">设置公告</asp:LinkButton>
        <!--高级搜索button，显示/隐藏高级搜索panel-->
        <input type="button" id="BConSearch" class="BConSearch" value="高级搜索" />
        <!--高级搜索Panel-->
        <asp:Panel ID="PanelConSearch" runat="server" CssClass="PanelConSearch">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblConBookID" runat="server" Text="书号：" CssClass="LID"></asp:Label>
            <!--搜索：书号框-->
            <asp:TextBox ID="TextBConBookID" runat="server" CssClass="TBID"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Label ID="lblConCategory" runat="server" Text="分类：" CssClass="LC"></asp:Label>
            &nbsp;&nbsp;
            <!--搜索：分类框-->
            <asp:TextBox ID="lbCategory" runat="server" CssClass="TBC"></asp:TextBox>
            <br />

            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblConAuthor" runat="server" Text="作者：" CssClass="LA"></asp:Label>
            <!--搜索：作者框-->
            <asp:TextBox ID="TextBConAuthor" runat="server" CssClass="TBA"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Label ID="lblConPress" runat="server" Text="出版社：" CssClass="LP"></asp:Label>
            <!--搜索：出版社框-->
            <asp:TextBox ID="TextBConPress" runat="server" CssClass="TBP"></asp:TextBox>


            <asp:LinkButton ID="BConSearchGo" runat="server" OnClick="BConSearch_Click" CssClass="BHidden">搜索</asp:LinkButton>
        </asp:Panel>
    </asp:Panel>

    <!--公告弹窗-->
    <asp:Panel ID="P_Announcement" runat="server" CssClass="P_Announcement" Style="display: none;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <!--公告框-->
                <asp:TextBox ID="tbAnnouncement" runat="server" TextMode="MultiLine" CssClass="TAnnouncement"></asp:TextBox>
                <asp:LinkButton ID="lbCancel" runat="server" CssClass="lbCancel">取消</asp:LinkButton>
                <asp:LinkButton ID="lbSave" runat="server" CssClass="lbSave">确定</asp:LinkButton>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
    <!--公告栏设置，需在此写入OnOkScript方法-->
    <cc1:ModalPopupExtender ID="ModalPopupExtender1"
        PopupControlID="P_Announcement"
        TargetControlID="BAnnouncement"
        OkControlID="lbSave"
        OnOkScript=""
        CancelControlID="lbCancel"
        BackgroundCssClass="bg"
        runat="server">
    </cc1:ModalPopupExtender>


    <!--书籍展示Panel-->
    <asp:Panel ID="P_BookShow" runat="server" CssClass="P_BookShow">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当前&gt;
        <!--显示当前位置：分类-->
        <asp:Label ID="lblCateNow" runat="server" Text="[分类]"></asp:Label>&gt;
        <!--显示当前位置：具体搜索条件-->
        <asp:Label ID="lblConNow" runat="server" Text="[具体条件]"></asp:Label><br />
        <asp:GridView ID="GridVShowBook" runat="server" AutoGenerateColumns="False" CssClass="GV_BookShow" ShowHeader="False" PageSize="4" CellPadding="4" CellSpacing="10">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="ShowTable">
                            <tr>
                                <td rowspan="5" class="TableCover">
                                    <!--展示：书籍封面-->
                                    <asp:Image ID="ImgCover" runat="server" CssClass="TCoverImg" /></td>
                                <td class="TableTd1">
                                    <asp:Label ID="BookName" runat="server" Text="书名："></asp:Label></td>
                                <td class="TableTd2">
                                    <!--展示：书名，点击链接具体书籍介绍页面-->
                                    <asp:LinkButton ID="lbBookName" runat="server" CssClass="BookLink">[BookName]</asp:LinkButton></td>
                                <td class="TableTd1"></td>
                                <td class="TableTd3"></td>
                                <td rowspan="5" class="TableTd4">
                                    <!--修改button-->
                                    <asp:LinkButton ID="lbAlter" runat="server" CssClass="TableButton" OnClick="ImgBAlter_Click">修改</asp:LinkButton>
                                    <br />
                                    <!--删除button-->
                                    <asp:LinkButton ID="lbDelete" runat="server" CssClass="TableButton" OnClick="ImgBDelete_Click">删除</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="BookID" runat="server" Text="书号："></asp:Label></td>
                                <td>
                                    <!--展示：书号-->
                                    <asp:Label ID="lblBookID" runat="server" Text="[BookID]"></asp:Label></td>
                                <td>
                                    <asp:Label ID="ShelveDate" runat="server" Text="上架时间"></asp:Label></td>
                                <td>
                                    <!--展示：上架时间-->
                                    <asp:Label ID="lblShelveDate" runat="server" Text="[Rating]"></asp:Label></td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Author" runat="server" Text="作者："></asp:Label></td>
                                <td>
                                    <!--展示：作者-->
                                    <asp:Label ID="lblAuthor" runat="server" Text="[Author]"></asp:Label></td>
                                <td>
                                    <asp:Label ID="Press" runat="server" Text="出版社："></asp:Label></td>
                                <td>
                                    <!--展示：出版社-->
                                    <asp:Label ID="lblPress" runat="server" Text="[Press]"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Price" runat="server" Text="价格："></asp:Label></td>
                                <td>
                                    <!--展示：价格-->
                                    <asp:Label ID="lblPrice" runat="server" Text="[Price]"></asp:Label></td>
                                <td>
                                    <asp:Label ID="Category" runat="server" Text="分类："></asp:Label></td>
                                <td>
                                    <!--展示：分类-->
                                    <asp:Label ID="lblCategory" runat="server" Text="[Category]"></asp:Label></td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Inventory" runat="server" Text="库存量"></asp:Label></td>
                                <td>
                                    <!--展示：库存量-->
                                    <asp:Label ID="lblInventory" runat="server" Text="[Inventory]"></asp:Label></td>
                                <td>
                                    <asp:Label ID="Rating" runat="server" Text="销量"></asp:Label></td>
                                <td>
                                    <!--展示：销量-->
                                    <asp:Label ID="lblRating" runat="server" Text="[Rating]"></asp:Label></td>

                            </tr>


                        </table>

                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerSettings FirstPageText="第一页" LastPageText="末页" NextPageText="下一页&gt;" PageButtonCount="6" PreviousPageText="&lt;上一页" />
        </asp:GridView>
    </asp:Panel>


    <p>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
