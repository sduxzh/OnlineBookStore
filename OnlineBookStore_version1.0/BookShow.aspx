<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeFile="BookShow.aspx.cs" Inherits="BookShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel='stylesheet' type='text/css' href="css/Category.css"/>
    <link rel='stylesheet' type='text/css' href="css/BookShow.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--左侧分类栏-->
    <!--点击分类，显示对应分类书籍-->
    <asp:Panel ID="P_Category" runat="server" CssClass="PCategory">
        
        <asp:LinkButton ID="lbEducation" runat="server" CssClass="CateButton">教育</asp:LinkButton>
        <asp:LinkButton ID="lbArt" runat="server" CssClass="CateButton">文艺</asp:LinkButton>
        <asp:LinkButton ID="lbScience" runat="server" CssClass="CateButton">科技</asp:LinkButton>
        <asp:LinkButton ID="lbLife" runat="server" CssClass="CateButton">生活</asp:LinkButton>
        <asp:LinkButton ID="lbHumanity" runat="server" CssClass="CateButton">人文社科</asp:LinkButton>
        <asp:LinkButton ID="lbJuvenile" runat="server" CssClass="CateButton">少儿读物</asp:LinkButton>
        </asp:Panel>

    <!--左侧广告位-->
    <asp:ImageButton ID="ImgAd" runat="server" CssClass="Advertice" AlternateText="广告位招租"/>

    <!--书籍展示-->
    <asp:Panel ID="P_BookShow" runat="server" CssClass="P_BookShow">
        <!--显示当前位置：分类与具体条件-->
        当前&gt;<asp:Label ID="lblNowCategory" runat="server" Text="[当前分类]"></asp:Label>
        &gt;<asp:Label ID="lblNowCon" runat="server" Text="[当前条件]"></asp:Label>

        <!--书籍展示控件-->
        <asp:GridView ID="GV_BookShow" runat="server" CssClass="GV_BookShow" AutoGenerateColumns="False" ShowHeader="False" CellPadding="4" CellSpacing="15" AllowCustomPaging="True" AllowPaging="True" PageIndex="1" PageSize="5">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="Table">
                            <tr>
                                <td class="Table1">

                                    <!--书籍封面，点击链接到具体书籍介绍页面-->
                                    <asp:ImageButton ID="ImgCover" runat="server" AlternateText="封面" CssClass="Cover" ImageUrl="~/Picture/图片添加按钮.png" OnClick="ImgCover_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="Table2">
                                    <asp:Label ID="lblBookName" runat="server" Text="书名："></asp:Label>

                                    <!--书名，点击链接到具体书籍介绍页面-->
                                    <asp:LinkButton ID="lbBookName_Real" runat="server" CssClass="BookLink" OnClick="lbBookName_Real_Click">[BookName]</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblPrice" runat="server" Text="价格："></asp:Label>

                                    <!--书籍价格-->
                                    <asp:Label ID="lblPrice_Real" runat="server" Text="[Price]"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="Table3">
                                    <!--加入购物车-->
                                    <asp:LinkButton ID="lbAddCart" runat="server" CssClass="AddCart" OnClick="lbAddCart_Click">加入购物车</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="Table">
                            <tr>
                                <td class="Table1">
                                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="封面" CssClass="Cover" ImageUrl="~/Picture/图片添加按钮.png" OnClick="ImgCover_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="Table2">
                                    <asp:Label ID="Label1" runat="server" Text="书名："></asp:Label>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="BookLink" OnClick="lbBookName_Real_Click">[BookName]</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="价格："></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="[Price]"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="Table3">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="AddCart" OnClick="lbAddCart_Click">加入购物车</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="Table">
                            <tr>
                                <td class="Table1">
                                    <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="封面" CssClass="Cover" ImageUrl="~/Picture/图片添加按钮.png" OnClick="ImgCover_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="Table2">
                                    <asp:Label ID="Label4" runat="server" Text="书名："></asp:Label>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="BookLink" OnClick="lbBookName_Real_Click">[BookName]</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="价格："></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text="[Price]"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="Table3">
                                    <asp:LinkButton ID="LinkButton4" runat="server" CssClass="AddCart" OnClick="lbAddCart_Click">加入购物车</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="Table">
                            <tr>
                                <td class="Table1">
                                    <asp:ImageButton ID="ImageButton3" runat="server" AlternateText="封面" ImageUrl="~/Picture/图片添加按钮.png" CssClass="Cover" OnClick="ImgCover_Click" /></td>
                            </tr>
                            <tr>
                                <td class="Table2">

                                    <asp:Label ID="Label7" runat="server" Text="书名："></asp:Label>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="BookLink" OnClick="lbBookName_Real_Click">[BookName]</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="价格："></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text="[Price]"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="Table3">
                                    <asp:LinkButton ID="LinkButton6" runat="server" CssClass="AddCart" OnClick="lbAddCart_Click">加入购物车</asp:LinkButton></td>

                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
               </Columns>
             <PagerSettings NextPageText="下一页&gt;" PageButtonCount="5" PreviousPageText="&lt;上一页" />
        </asp:GridView>

    </asp:Panel>


    <!--右侧推荐-->
    <asp:Panel ID="P_Recommend" runat="server" CssClass="P_Recommend">

        <asp:Image ID="ImgRecommend" runat="server" Height="30px" Width="100px" CssClass="ImgRecommend" />
        <asp:GridView ID="GV_Recommend" runat="server" CssClass="GV_Recommend" AutoGenerateColumns="False" ShowHeader="False" CellPadding="1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table class="R_Table">
                            <tr>
                                <td class="R_Table1">
                                    <!--推荐书籍封面，点击链接到具体书籍介绍页面-->
                                    <asp:ImageButton ID="ImgRecomCover" runat="server" AlternateText="封面" CssClass="R_Cover" ImageUrl="~/Picture/图片添加按钮.png" OnClick="ImgCover_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="R_Table2">
                                    <!--推荐书名，点击链接到具体书籍介绍页面-->
                                    <asp:LinkButton ID="lbRecomName" runat="server" CssClass="BookLink" OnClick="lbBookName_Real_Click">[BookName]</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </asp:Panel>
</asp:Content>
