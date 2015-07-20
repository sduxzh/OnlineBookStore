﻿<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*中间轮转书籍的CSS*/
        #owl-demo {
            position: absolute;
            top: 60px;
            left: 210px;
            width: 750px;
            height: 500px;
            margin: 20px auto 0 auto;
        }

            #owl-demo .item {
                position: relative;
                display: block;
            }

            #owl-demo img {
                display: block;
                width: 750px;
                height: 500px;
            }

            #owl-demo b {
                position: absolute;
                left: 0;
                bottom: 0;
                width: 100%;
                height: 100px;
                background-color: #000;
                opacity: .5;
                filter: alpha(opacity=50);
            }

            #owl-demo span {
                position: absolute;
                left: 0;
                bottom: 37px;
                width: 100%;
                font: 24px/40px "微软雅黑","黑体";
                color: #fff;
                text-align: center;
            }

        .owl-pagination {
            position: absolute;
            left: 0;
            bottom: 10px;
            width: 100%;
            height: 22px;
            text-align: center;
        }

        .owl-page {
            display: inline-block;
            width: 10px;
            height: 10px;
            margin: 0 5px;
            background-image: url(images/bg15.png);
            *display: inline;
            *zoom: 1;
        }

        .owl-pagination .active {
            width: 25px;
            background-image: url(images/bg16.png);
        }

        .owl-buttons {
            display: none;
        }

            .owl-buttons div {
                position: absolute;
                top: 50%;
                width: 40px;
                height: 80px;
                margin-top: -40px;
                text-indent: -9999px;
            }

        .owl-prev {
            left: 0;
            background-image: url(/Picture/bg17.png);
        }

        .owl-next {
            right: 0;
            background-image: url(/Picture/bg18.png);
        }

        .owl-prev:hover {
            background-image: url(/Picture/bg19.png);
        }

        .owl-next:hover {
            background-image: url(/Picture/bg20.png);
        }

        .auto-style55 {
            position: absolute;
            top: 200px;
            width: 1141px;
        }
    </style>

    <link rel="stylesheet" href="css/owl.carousel.css" />

    <%--主页CSS--%>
    <link rel="stylesheet" href="css/Main.css" />

    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#owl-demo').owlCarousel({
                items: 1,
                navigation: true,
                navigationText: ["上一个", "下一个"],
                autoPlay: true,
                stopOnHover: true
            }).hover(function () {
                $('.owl-buttons').show();
            }, function () {
                $('.owl-buttons').hide();
            });
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style55" runat="server">
        <tr>
            <td><%--分类的面板--%>
                <asp:Panel ID="Category" runat="server" CssClass="PCategory">
                    <%--六个分类的linkbutton--%>
                    <asp:LinkButton ID="lbEducation" runat="server" CssClass="CateButton">教育</asp:LinkButton>
                    <asp:LinkButton ID="lbArt" runat="server" CssClass="CateButton">文艺</asp:LinkButton>
                    <asp:LinkButton ID="lbScience" runat="server" CssClass="CateButton">科技</asp:LinkButton>
                    <asp:LinkButton ID="lbLife" runat="server" CssClass="CateButton">生活</asp:LinkButton>
                    <asp:LinkButton ID="lbHumanity" runat="server" CssClass="CateButton">人文社科</asp:LinkButton>
                    <asp:LinkButton ID="lbJuvenile" runat="server" CssClass="CateButton">少儿读物</asp:LinkButton>
                </asp:Panel>

            </td>
            <td>
                <%--中间轮转书籍界面，需要改链接地址，链接至书籍详情--%>
                <div id="owl-demo" class="owl-carousel">
                    <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/1.jpg" alt="" /><span>华胥引：若用生命换一个过往完美的幻境，你可否答应？</span></a>
                    <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/2.jpg" alt="" /><span>我叫梅茜 我不是童话 而是你心中最美的世界</span></a>
                    <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/3.jpg" alt="" /><span>悟空传：生我何用？不能欢笑.灭我何用？不减狂骄.  </span></a>
                    &nbsp;&nbsp;&nbsp;
	                <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/4.jpg" alt="" /><span>白夜行：绝望的念想，悲恸的守望</span></a>
                    <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/5.jpg" alt="" /><span>功夫熊猫：You just need to believe.</span></a>
                    <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/6.jpg" alt="" /><span>乔布斯传：活着就是为了改变世界</span></a>
                    <a class="item" href="http://sc.chinaz.com/" target="_blank">
                        <img src="/Picture/7.jpg" alt="" /><span>色铅笔的花草生活：感受色彩铅带给你的静谧和恬淡</span></a>
                </div>
                <%--书籍上新面板--%>
                <asp:Panel ID="pnlBookNew" runat="server" CssClass="pnlBookNew">
                    <%-- 书籍上新标题--%>
                    <asp:Label ID="lblBookNew" runat="server" CssClass="lblBookNew" Text="给力上新"></asp:Label><br />
                    <br />
                    <br />

                    <%--上新书籍的图片，书名及作者--%>
                    <asp:Image ID="imgBookNew0" runat="server" CssClass="imgBookNew0" />
                    <asp:LinkButton ID="lkbNewBookName0" runat="server" CssClass="lkbBookName0" Font-Underline="false"></asp:LinkButton><br />
                    <%--“作者”及作者姓名展示，第二个label需绑定数据--%>
                    <asp:Label ID="lblBookNewName0" runat="server" CssClass="lblAuthorName00" Text="作者："></asp:Label>
                    <asp:Label ID="lblNewAuthorName0" runat="server" Text="" CssClass="lblAuthorName01"></asp:Label>
                    <br />
                    <br />
                    <%--新书籍立即购买及加入购物车按钮--%>
                          &nbsp;
                    <asp:Button ID="cmdNewBuyNow0" runat="server" CssClass="cmdBookOperation00" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart0" runat="server" CssClass="cmdBookOperation01" Text="加入购物车" /><br />

                    <asp:Image ID="imgBookNew1" runat="server" CssClass="imgBookNew1" />
                    &nbsp;<asp:LinkButton ID="lkbNewBookName1" runat="server" CssClass="lkbBookName1" Font-Underline="false"></asp:LinkButton><br />
                    &nbsp;<asp:Label ID="lblBookNewName1" runat="server" CssClass="lblAuthorName10" Text="作者："></asp:Label>
                    <asp:Label ID="lblNewAuthorName1" runat="server" Text="" CssClass="lblAuthorName11"></asp:Label>
                    <br />
                    <br />
                    &nbsp;
                    <asp:Button ID="cmdNewBuyNow1" runat="server" CssClass="cmdBookOperation10" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart1" runat="server" CssClass="cmdBookOperation11" Text="加入购物车" /><br />

                    <asp:Image ID="imgBookNew2" runat="server" CssClass="imgBookNew2" />
                    &nbsp;<asp:LinkButton ID="lkbNewBookName2" runat="server" CssClass="lkbBookName2" Font-Underline="false" Text="花千骨"></asp:LinkButton><br />
                    &nbsp;<asp:Label ID="lblBookNewName2" runat="server" CssClass="lblAuthorName20" Text="作者："></asp:Label>
                    <asp:Label ID="lblNewAuthorName2" runat="server" Text="" CssClass="lblAuthorName21"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="cmdNewBuyNow2" runat="server" CssClass="cmdBookOperation20" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart2" runat="server" CssClass="cmdBookOperation21" Text="加入购物车" /><br />


                    <asp:Image ID="imgBookNew3" runat="server" CssClass="imgBookNew3" />
                    &nbsp;<asp:LinkButton ID="lkbNewBookName3" runat="server" CssClass="lkbBookName3" Font-Underline="false" Text="花千骨"></asp:LinkButton><br />
                    &nbsp;<asp:Label ID="lblBookNewName3" runat="server" CssClass="lblAuthorName30" Text="作者："></asp:Label>
                    <asp:Label ID="lblNewAuthorName3" runat="server" Text="" CssClass="lblAuthorName31"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="cmdNewBuyNow3" runat="server" CssClass="cmdBookOperation30" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart3" runat="server" CssClass="cmdBookOperation31" Text="加入购物车" /><br />


                    <asp:Image ID="imgBookNew4" runat="server" CssClass="imgBookNew4" />
                    &nbsp;<asp:LinkButton ID="lkbNewBookName4" runat="server" CssClass="lkbBookName4" Font-Underline="false" Text="花千骨"></asp:LinkButton><br />
                    &nbsp;<asp:Label ID="lblBookNewName4" runat="server" CssClass="lblAuthorName40" Text="作者：">
                    </asp:Label><asp:Label ID="lblNewAuthorName4" runat="server" Text="" CssClass="lblAuthorName41"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="cmdNewBuyNow4" runat="server" CssClass="cmdBookOperation40" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart4" runat="server" CssClass="cmdBookOperation41" Text="加入购物车" /><br />


                    <asp:Image ID="imgBookNew5" runat="server" CssClass="imgBookNew5" />
                    &nbsp;<asp:LinkButton ID="lkbNewBookName5" runat="server" CssClass="lkbBookName5" Font-Underline="false" Text="花千骨"></asp:LinkButton><br />
                    &nbsp;<asp:Label ID="lblBookNewName5" runat="server" CssClass="lblAuthorName50" Text="作者："></asp:Label>
                    <asp:Label ID="lblNewAuthorName5" runat="server" Text="" CssClass="lblAuthorName51"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="cmdNewBuyNow5" runat="server" CssClass="cmdBookOperation50" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart5" runat="server" CssClass="cmdBookOperation51" Text="加入购物车" /><br />


                    <asp:Image ID="imgBookNew6" runat="server" CssClass="imgBookNew6" />
                    &nbsp;<asp:LinkButton ID="lkbNewBookName6" runat="server" CssClass="lkbBookName6" Font-Underline="false" Text="花千骨"></asp:LinkButton><br />
                    &nbsp;<asp:Label ID="lblBookNewName6" runat="server" CssClass="lblAuthorName60" Text="作者："></asp:Label>
                    <asp:Label ID="lblNewAuthorName6" runat="server" Text="" CssClass="lblAuthorName61"></asp:Label>
                    <br />
                    <br />
                    &nbsp;<asp:Button ID="cmdNewBuyNow6" runat="server" CssClass="cmdBookOperation60" Text="立即购买" />
                    &nbsp;<asp:Button ID="cmdNewAddShoppingCart6" runat="server" CssClass="cmdBookOperation61" Text="加入购物车" /><br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <%--推荐书籍标题--%>
            <td>
                <asp:Label ID="lblBookRecommend" runat="server" CssClass="lblBookRecommend" Text="推荐书籍"></asp:Label>
                <%--推荐书籍总面板--<%--%>分面板及书籍图片、书名、作者姓名均按从左到右，从上到下的顺序从0编号--%>
                <asp:Panel ID="pnlBookRecommend" runat="server" CssClass="pnlBookRecommend">
                    <table id="tb2" runat="server">
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>

                                <%--推荐书籍分面板，每个分面板是一个书籍展示--%>
                                <asp:Panel ID="pnlBookR0" runat="server" CssClass="pnlBookR">
                                    <%--书籍图片--%>
                                    <asp:Image ID="imgBookR0" runat="server" CssClass="imgBookR" />
                                    <br />
                                    <%--书籍书名--%>
                                  &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName0" runat="server" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    <%--书籍作者姓名，第二个label展示姓名需绑定--%>
                                  &nbsp;&nbsp;<asp:Label ID="lblAuthor0" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName0" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    <%--立即购买与加入购物车--%>
                                  &nbsp;<asp:Button ID="cmdBuyNow0" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart0" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <%--推荐书籍分面板，每个分面板是一个书籍展示--%>
                                <asp:Panel ID="pnlBookR1" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR1" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName1" runat="server" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor1" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName1" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow1" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart1" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <%--推荐书籍分面板，每个分面板是一个书籍展示--%>
                                <asp:Panel ID="pnlBookR2" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR2" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName2" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor2" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName2" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow2" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart2" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <%--推荐书籍分面板，每个分面板是一个书籍展示--%>
                                <asp:Panel ID="pnlBookR3" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR3" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName3" runat="server" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor3" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName3" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow3" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart3" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%--推荐书籍分面板，每个分面板是一个书籍展示--%>
                                <asp:Panel ID="pnlBookR4" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR4" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName4" runat="server" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor4" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName4" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow4" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart4" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td><%--推荐书籍分面板，每个分面板是一个书籍展示--%>
                                <asp:Panel ID="pnlBookR5" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR5" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName5" runat="server" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor5" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName5" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow5" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart5" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="pnlBookR6" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR6" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName6" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor6" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName6" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow6" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart6" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>

                            <td>
                                <asp:Panel ID="pnlBookR7" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR7" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName7" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor7" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName7" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow7" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart7" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="pnlBookR8" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR8" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName8" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor8" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName8" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow8" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart8" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="pnlBookR9" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR9" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName9" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor9" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName9" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow9" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart9" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="pnlBookR10" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR10" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName10" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor10" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName10" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow10" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart10" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                            <td>
                                <asp:Panel ID="pnlBookR11" runat="server" CssClass="pnlBookR">
                                    <asp:Image ID="imgBookR11" runat="server" CssClass="imgBookR" />
                                    <br />
                                    &nbsp;&nbsp;<asp:LinkButton ID="lkbBookName11" runat="server" Text="华胥引" CssClass="lkbBookName" Font-Underline="false"></asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;<asp:Label ID="lblAuthor11" runat="server" CssClass="lblAuthorName" Text="作者："></asp:Label>
                                    <asp:Label ID="lblAuthorName11" runat="server" CssClass="lblAuthorName" Text=""></asp:Label>
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="cmdBuyNow11" runat="server" CssClass="cmdBookOperation" Text="立即购买" />
                                    &nbsp;<asp:Button ID="cmdAddShoppingCart11" runat="server" CssClass="cmdBookOperation" Text="加入购物车" />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>



</asp:Content>
