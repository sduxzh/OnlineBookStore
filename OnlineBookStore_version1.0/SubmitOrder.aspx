<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeFile="SubmitOrder.aspx.cs" Inherits="SubmitOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/SubmitOder.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--确认收货地址-->
    <asp:Label ID="Label_Address" runat="server" CssClass="Label_Address" Text="确认收货地址"></asp:Label>
    <!--已购买书籍的页面-->
    <asp:Panel ID="Panel_Show" runat="server" CssClass="Panel_Show" Wrap="False">

        <asp:GridView ID="GridView1" runat="server" CssClass="GridView1" AutoGenerateColumns="False" AllowPaging="True" GridLines="None" HorizontalAlign="Left" PageSize="3">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label_Name" runat="server" Text="宝贝" CssClass="Label_Name"></asp:Label>
                        <!--绑定书籍图片-->
                        <asp:ImageButton ID="ImageButton_Pictrue" runat="server" CssClass="ImageButton_Pictrue" ImageUrl='<%# Eval("Book.bookImageURL") %>' Style="z-index: 1" />
                        <!--绑定图书名字-->
                        <asp:LinkButton ID="LinkButton_Name" runat="server" CssClass="LinkButton_Name" Text='<%# Eval("Book.bookName") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label_SinglePrice" runat="server" Text="单价" CssClass="Label_SinglePrice"></asp:Label>
                        <!--绑定图书单价-->
                        <asp:Label ID="Label_SinglePrice1" runat="server" CssClass="Label_SinglePrice1" Text='<%# Eval("Book.bookPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label_SingleAmount" runat="server" Text="数量" CssClass="Label_SingleAmount"></asp:Label>
                        <asp:TextBox ID="TextBox_SingleAmount" runat="server" Text='<%# Eval("bookAmount") %>' ReadOnly="True" CssClass="TextBox_SingleAmount"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label_Discount" runat="server" Text="折扣" CssClass="Label_Discount"></asp:Label>
                        <!--绑定折扣-->
                        <asp:DropDownList ID="DropDownList_Discount" runat="server" CssClass="DropDownList_Discount"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label_BriefSummary" runat="server" Text="小结" CssClass="Label_BriefSummary"></asp:Label>
                        <!--绑定小结价格-->
                        <%--待拓展--%>
                        <asp:Label ID="Label_BriefSummary1" runat="server" Text="Label" CssClass="Label_BriefSummary1"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label_RealMoney" runat="server" CssClass="Label_RealMoney" Text="实付款"></asp:Label>
        <!--绑定实付款价格-->
        <asp:Label ID="Label_Money" runat="server" CssClass="Label_Money"></asp:Label>
    </asp:Panel>


<asp:Panel ID="Panel_UserMessage" runat="server" CssClass="Panel_UserMessage">
        <table align="left" class="Table">
            <tr>
                <td class="Td">所在地区</td>
                <!--所在省-->
                <td>省
                <asp:TextBox ID="TextBox_Province" runat="server" Width="88px"></asp:TextBox>
                    <!--所在市-->
                    市
                <asp:TextBox ID="Textbox_City" runat="server" Width="68px"></asp:TextBox>
                    <!--所在区-->
                    区
                <asp:TextBox ID="Textbox_Area" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <!--用户详细地址-->
                <td class="Td">详细地址</td>
                <td>
                    <asp:TextBox ID="TextBox_Address" runat="server" Height="51px" Width="447px"></asp:TextBox></td>
            </tr>
            <tr>
                <!--邮编-->
                <td class="Td">邮编</td>
                <td>
                    <asp:TextBox ID="TextBox_Postcode" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <!--收货人姓名-->
                <td class="Td">收货人姓名</td>
                <td>
                    <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <!--收货人手机号-->
                <td class="Td">手机号</td>
                <td>
                    <asp:TextBox ID="TextBox_Phonenumber" runat="server"></asp:TextBox>

                </td>
            </tr>
        </table>
        <!--提交订单按钮-->
        <asp:Button ID="Button_SaveMessage" runat="server" OnClick="Button_SaveMessage_Click" CssClass="Button_SaveMessage" Text="提交订单" />
    </asp:Panel>
</asp:Content>