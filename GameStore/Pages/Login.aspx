<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GameStore.Pages.Login"
    MasterPageFile="~/Pages/Admin/Admin.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" CssClass="error" />
 <!-- Main -->
        <main class="main">
    <div class="conteiner">
                <div class="form__reg-admin">
                    <div class="reg">
                        <div class="reg__title">АДМИНИСТРАТИВНАЯ ПАНЕЛЬ</div>
                        <input class="form__inp" name="name" value="" placeholder="Имя" type="name"/>
                        <input class="form__inp" name="password" value="" placeholder="Пароль" type="password"/>
                        <div class="btn__inline">
                            <button type="submit" class="form__btn registration__btn">Войти</button>
                        </div>
                    </div>
                </div>
                </div>
            </main>
</asp:Content>