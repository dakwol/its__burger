<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CartSummary.ascx.cs" 
   Inherits="GameStore.Controls.CartSummary" %>
<div class="header">
<nav class="nav">
                <div class="nav__left">
                <div class="nav__logo">
                    <img src="/Content/images/logo.png">
                </div>
                <a href="list" class="contact__item">Категории</a>
                <div class="contact">
                    <a href="#" class="contact__item">Контакты</a>
                    <a href="#" class="contact__item">
                        <i class="fab fa-facebook"></i>
                    </a>
        
                    <a href="#" class="contact__item">
                        <i class="fab fa-youtube"></i>
                    </a>
        
                    <a href="#" class="contact__item">
                        <i class="fab fa-twitter"></i>
                    </a>
        
                    <a href="#" class="contact__item">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
                </div>
                    <div class="nav__right" id="cartSummary">
                        <a id="csLink" class="cart" runat="server">
                            <i class="fas fa-shopping-basket"></i>
                            <span class="cart__number" id="csQuantity" runat="server"></span>
                            <span id="csTotal" runat="server"></span>
                         </a>
                         <a href="/admin/orders" class="account btn">Аккаунт</a>
                    </div>
    </nav>
</div>