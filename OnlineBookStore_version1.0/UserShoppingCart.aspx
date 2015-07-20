<%@ Page Language="C#" MasterPageFile="~/Master.Master"  AutoEventWireup="true" CodeFile="UserShoppingCart.aspx.cs" Inherits="UserShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet"  href="css/UserShoppingCart.css" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            top: 0px;
            left: 0px;
            width: 1320px;
            height: 424px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlShoppingCart" runat="server" CssClass="pnlShoppingCart"  >
        <asp:CheckBox ID="ckbChooseAll" runat="server" CssClass="ckbChooseAll"  Text="               全选" /><%--<asp:Label ID="lblChooseAll" runat="server" CssClass="lblChooseAll"></asp:Label>--%>
        <asp:Button ID="cmdDelete" runat="server" CssClass="cmdDelete" Text="批量删除" />
        <div id="divSCD" runat="server" class="divSCD">
          <asp:GridView runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="grvShoppingCart"  GridLines="None"   ShowHeader="False" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    
                    <asp:TemplateField HeaderText="SCBookPic" ShowHeader="False">
                        <ItemTemplate>
                            <asp:CheckBox ID="ckbSCBookChoose" runat="server" CssClass="ckbChoose" />
                            <asp:ImageButton ID="icmdSCBookPic"  CssClass="icmdSCBookPic" runat="server"  />
                        </ItemTemplate>
                        <ItemStyle Width="200px" />
                        </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="SCBookInfo" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton  Text="" ID="lcmdSCBookName" runat="server"  CssClass="lcmdSCBookName" Font-Underline="false"></asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle Width="267px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SCBookPrice" ShowHeader="false">
                        <ItemTemplate>
                            
                            <asp:Label ID="lblSCBookPriceM"  runat="server" Text="单价：" CssClass="lblSCBookPriceM"></asp:Label>
                            <asp:Label ID="lblSCBookPrice" Text=""   runat="server"  CssClass="lblSCBookPrice"></asp:Label>&nbsp;元
                            
                        </ItemTemplate>
                        <ItemStyle Width="267px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SCBookNum" ShowHeader="false">
                        <ItemTemplate>  
                                  
                            <asp:Panel ID="pnlSCBookNum" runat="server" CssClass="pnlSCBookNum">
                            <asp:Button ID="cmdSCBookNumReduce"  CssClass="cmdSCBookNumReduce" Text="-" runat="server"  Width="20px" Height="27px"/>
                            <asp:Label ID="lblSCBookNum"  CssClass="lblSCBookNum" runat="server" Text="2" Height="27px" Width="25px"></asp:Label>
                            <asp:Button ID="cmdSCBookNumAdd"  CssClass="cmdSCBookNumAdd" Text="+" runat="server"  Width="20px" Height="27px" />
                            </asp:Panel>
                           </ItemTemplate>
                        <ItemStyle Width="300px"/>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SCBookDelete" ShowHeader="false">
                        <ItemTemplate>
                            <asp:Button ID="cmdSCBookDelete" Text="删除"  runat="server"  CssClass="cmdSCBookDelete" />
                        </ItemTemplate>
                        <ItemStyle  HorizontalAlign="Center"/>
                    </asp:TemplateField>
                   
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" Height="150px" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

        </div>
        <asp:Image ID="iconShoppingCart" runat="server" />
        <asp:Panel ID="pnlBookRecommend" runat="server" CssClass="pnlBookRecommend">
            <asp:GridView ID="grvBookRecommend"  runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style1" PageSize="1" ShowHeader="False">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="icmdBookRecommend"  CssClass="icmdBookRecommend" runat="server"  /><br />
                        
                            <asp:LinkButton ID="lcmdBookName" runat="server"  CssClass="lcmdBookName" Font-Underline="false" />
                            <br />
                            
                            <asp:Label ID="lblAuthor" runat="server" Text="作者" CssClass="lblAuthor"></asp:Label>
                            <asp:Label ID="lblAuthorName" runat="server"  CssClass="lblAuthor" ></asp:Label>
                            <br />
                            


                        </ItemTemplate>
                        
                    </asp:TemplateField> 
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="icmdBookRecommend"  /><br />
                       
                            <asp:LinkButton ID="lkbBookName" runat="server"  CssClass="lcmdBookName" Font-Underline="false"/>
                            <br />
                      
                            <asp:Label ID="Label1" runat="server" Text="作者" CssClass="lblAuthor"></asp:Label>
                            <asp:Label ID="Label2" runat="server"  CssClass="lblAuthor" ></asp:Label>
                           
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="icmdBookRecommend"  /><br />
                        
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="lcmdBookName" Font-Underline="false" />
                            <br />
                           
                            <asp:Label ID="Label3" runat="server" Text="作者" CssClass="lblAuthor"></asp:Label>
                            <asp:Label ID="Label4" runat="server"  CssClass="lblAuthor" ></asp:Label>
                            
                             
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton3"  CssClass="icmdBookRecommend" runat="server"  /><br />
                        
                            <asp:LinkButton ID="LinkButton2" runat="server"  CssClass="lcmdBookName" Font-Underline="false"/>
                            <br />
                             
                            <asp:Label ID="Label5" runat="server" Text="作者" CssClass="lblAuthor"></asp:Label>
                            <asp:Label ID="Label6" runat="server"  CssClass="lblAuthor" ></asp:Label>
                            
                            


                        </ItemTemplate>
                        
                    </asp:TemplateField> 
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton4" runat="server" CssClass="icmdBookRecommend"  /><br />
                       
                            <asp:LinkButton ID="LinkButton3" runat="server"  Text="花千骨" CssClass="lcmdBookName"  Font-Underline="false"/>
                            <br />
                            
                            <asp:Label ID="Label7" runat="server" Text="作者" CssClass="lblAuthor"></asp:Label>
                            <asp:Label ID="Label8" runat="server"   Text="唐七公子" CssClass="lblAuthor" ></asp:Label>
                            
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton5" runat="server" CssClass="icmdBookRecommend"  /><br />
                        
                            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="lcmdBookName"  Font-Underline="false"/>
                            <br />
                           
                            <asp:Label ID="Label9" runat="server" Text="作者" CssClass="lblAuthor"></asp:Label>
                            <asp:Label ID="Label10" runat="server"  CssClass="lblAuthor" ></asp:Label>
                            
                             
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle HorizontalAlign="Center" />
                <RowStyle Height="380px" />

            </asp:GridView>
        </asp:Panel>
        <asp:Label ID="lblSCBookUlike" runat="server" CssClass="lblSCBookUlike" Text="      猜你喜欢"></asp:Label>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

