<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GameStore.Pages.Checkout"
    MasterPageFile="~/Pages/Store.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">

        <div id="checkoutForm" class="checkout" runat="server">
              <div class="menuItem__modal-shop">
                    <div class="background__modal-shop">
                        <div class="menu__shoppe">
                            <div class="menu__shopper-header">
                                <div class="menu__shopper-title">
                                    <div class="shopper__text">Оформление заказа</div>
                                    <div class="shopper__ico">
                                        <i class="fas fa-shopping-basket"></i>
                                        <i class="shopper__ico-item">🍦</i>
                                    </div>
                                </div>
                                <div class="shopper__close"></div>
                            </div>


                         <div id="errors" data-valmsg-summary="true">
                                <ul>
                                    <li style="display:none"></li>
                                </ul>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>


                     <div class="zakaz__form">
                                <div class="input__zakaza">
                                    <label class="zakaz__label">Имя</label>
                                    <SX:VInput Property="Name" runat="server" class="zakaz__input" />
                                </div>

                                <div class="input__zakaza">
                                    <label class="zakaz__label">Адрес</label>
                                    <SX:VInput Property="Line1" runat="server" class="zakaz__input"/>
                                </div>
                                <div class="input__zakaza">
                                    <label class="zakaz__label">Город</label>
                                    <SX:VInput Property="City" runat="server" class="zakaz__input"/>
                                </div>
                                
                            <p class="actionButtons">
                                <button class="actionButtons btn" type="submit">ЗАКАЗАТЬ</button>
                            </p>
                 
                     </div>
                            
                    </div>
            
                   </div>
                 </div>
              </div>

                                    <div id="checkoutMessage" runat="server">
                                         <div class="menuItem__modal-shop">
                                            <div class="background__modal-shop">
                                                <div class="menu__shoppe">
                                                    <div class="menu__shopper-header">
                                                        <div class="menu__shopper-title">
                                                            <div class="shopper__text">Спасибо</div>
                                                            <div class="shopper__ico">
                                                                <i class="fas fa-shopping-basket"></i>
                                                                <i class="shopper__ico-item">🍦</i>
                                                            </div>
                                                        </div>
                                                        <a href="/list" class="shopper__close"></a>
                                                    </div>
                                                    <div class="thx__panel">
                                                        <img class="car__thx" src="/Content/images/car.png" />
                                                        <div class="thx__text">
                                                                Ваш заказ будет доставлен в течении 30 минут!
                                                        </div>
                                                        <a href="/list" class="btn">Вернуться к покупкам</a>
                                                    </div>
                                                    </div>
                                                </div>
                                    </div>
       
    </div>
</asp:Content>