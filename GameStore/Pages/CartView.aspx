<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartView.aspx.cs" Inherits="GameStore.Pages.CartView" EnableViewState="false"
    MasterPageFile="~/Pages/Store.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
     <div class="menuItem__modal-shop" >
            <div class="background__modal-shop">
                <div class="menu__shoppe">
                    <div class="menu__shopper-header">
                        <div class="menu__shopper-title">
                            <div class="shopper__text">Корзина</div>
                            <div class="shopper__ico">
                                <i class="fas fa-shopping-basket"></i>
                                <i class="shopper__ico-item">🍦</i>
                            </div>
                        </div>
                        <a href="<%= ReturnUrl %>" class="shopper__close"></a>
                    </div>
                    
                         <asp:Repeater ID="Repeater2" ItemType="GameStore.Models.CartLine"
                            SelectMethod="GetCartLines" runat="server">
                            <ItemTemplate>
                                <div class="menu__shoppe-item">
                                <tr>
                                    <td><%# Item.Quantity %></td>
                                        <img src="/Content/images/<%# Item.Game.Description %>" class="menu__shoppe-img">
                                        <p class="menu__shoppe-text"><td><%# Item.Game.Name %></td></p>
                                        <p class="menu__shoppe-sale"><td><%# Item.Game.Price.ToString("c")%></td></p>
                                        <p class="menu__shoppe-sale"><td><%# ((Item.Quantity * 
                                            Item.Game.Price).ToString("c"))%></td></p>
                                        
                                    <td>
                                        <div class="shopper__btn">
                                       
                                            <button type="submit" class=" btn__del btn__menu but-wrap " name="remove"
                                                value="<%#Item.Game.GameId %>">Удалить</button>
                                         </div>
                                    </td>
                                </tr>
                                    </div>
                              
                            </ItemTemplate>
                        </asp:Repeater>
                               <div class="menu__price-item">
                                 <p class="menu__Price">Итого</p>
                                 <p class="menu__Price"><%= CartTotal.ToString("c") %></p>
                             
                                     <a href="<%= CheckoutUrl %>" class="btn">Оформить заказ</a>
                               
                               </div>
                    </div>
                
            </div>
        </div> 
</asp:Content>