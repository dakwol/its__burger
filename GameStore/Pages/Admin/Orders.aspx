<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" 
     Inherits="GameStore.Pages.Admin.Orders"
     MasterPageFile="~/Pages/Admin/Admin.Master" EnableViewState="false" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <LayoutTemplate>

            
                <table id="productsTable">
                    <tr>
                         <header class="header__admin">
                            <div class="header__admin-item">
                                <div class="admin__item">
                                    <img class="admin__logo" src="/Content/images/logo.png">
                                </div>
                                <a href="/list" class="admin__item">
                                    <img class="admin__profile" src="/Content/images/stories 2.jpg">
                                      <tr runat="server" id="Tr1"></tr>
                                </a>
                                
                            </div>
                        </header>
                    </tr>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </table>
        
           
        </LayoutTemplate>
    <div class="outerContainer">
        
            <div class="panel__header">
                        <p class="panel__name">Номер заказа</p>
                        <p class="panel__name">Имя заказчика</p>
                        <p class="panel__name">Заказ</p>
                        <p class="panel__name">Стоимость</p>
                            <div id="ordersCheck" class="check__dos">
                                    <asp:CheckBox ID="showDispatched" runat="server" Checked="false" AutoPostBack="true" />
                                    Показать отправленные в заказы?
                                </div>
                      
                    </div>
            <asp:Repeater ID="Repeater1" runat="server" SelectMethod="GetOrders"
                ItemType="GameStore.Models.Order">
                <ItemTemplate>
                     <div class="panel__menu">
                        <div class="panel__item">
                            <div class="panel__name"><%# Item.OrderId %></div>
                            <div class="panel__name"><%#: Item.Name %></div>
                          
                            
                            
                            <div class="panel__name"><%# Item.OrderLines.Sum(ol => ol.Quantity) %></div>
                            <div class="panel__name"><%# Total(Item.OrderLines).ToString("C") %> </div>
                            <div class="panel__btn">
                                <asp:PlaceHolder ID="PlaceHolder2" Visible="<%# Item.Dispatched %>" runat="server">
                                    <div class="panel__ok">Отправлено</div>
                                </asp:PlaceHolder>
                                <asp:PlaceHolder ID="PlaceHolder1" Visible="<%# !Item.Dispatched %>" runat="server">
                                    <button type="submit" name="dispatch" class="panel__name btn__panel"
                                        value="<%# Item.OrderId %>">
                                        Отправить</button>
                                </asp:PlaceHolder>
                            </div>
                    </div>
                         </div>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>

    
</asp:Content>