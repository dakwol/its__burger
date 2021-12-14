<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="GameStore.Pages.Admin.Games"
    MasterPageFile="~/Pages/Admin/Admin.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" ItemType="GameStore.Models.Game" SelectMethod="GetGames"
        DataKeyNames="GameId" UpdateMethod="UpdateGame" DeleteMethod="DeleteGame"
        InsertMethod="InsertGame" InsertItemPosition="LastItem"  EnableViewState="false"
        runat="server">
                   
        <LayoutTemplate>

            <div class="outerContainer">
                <table id="productsTable">
                    <tr>
                         <header class="header__admin">
                            <div class="header__admin-item">
                                <div class="admin__item">
                                    <img class="admin__logo" src="/Content/images/logo.png">
                                </div>
                                <a href="#" class="admin__item">
                                    <img class="admin__profile" src="/Content/images/stories 2.jpg">
                                      <tr runat="server" id="Tr1"></tr>
                                </a>
                            </div>
                        </header>
                    </tr>
                    <tr runat="server" id="itemPlaceholder"></tr>
                </table>
            </div>
           
        </LayoutTemplate>

                <InsertItemTemplate>
                    <div class="panel__header">
                        <input name="description" type="file" placeholder="Изображение" class="panel__name"/>
                        <input type="text" placeholder="название" name="name"  class="panel__name"/>
                        <input type="hidden" name="ProductID" value="0" />
                        <input  type="text" placeholder="категория" name="category" class="panel__name"/>
                        <input type="number" placeholder="цена" name="price" class="panel__name"/>
 
                        <asp:Button ID="Button1" CommandName="Insert" class="panel__name btn panel__button" Text="Добавить" runat="server" />
                    </div>
        </InsertItemTemplate>
             
        <ItemTemplate>
            <div class="panel__menu">
            
                <div class="panel__item">
                    <img src="/Content/images/<%# Item.Description %>" class="panel__item-img">
                    <div class="panel__name"><%# Item.Name %></div>
                    <div class="panel__name"><%# Item.Category %></div>
                    <div class="panel__name"><%# Item.Price.ToString("c") %></div>
                    <div class="panel__btn">
                         <asp:Button ID="Button6" class="panel__name btn__panel" CommandName="Edit" Text="Редактировать" runat="server" />
                         <asp:Button ID="Button7" class="panel__name btn__panel red" CommandName="Delete" Text="Удалить" runat="server" />
                    </div>
                </div>
                </div>
        </ItemTemplate>
        <EditItemTemplate>
             <div class="panel__item">
                    <input type="file" class="panel__name" name="description" value="<%# Item.Description %>" />
                    <input name="name" class="panel__name" value="<%# Item.Name %>" />
                    <input type="hidden" class="panel__name" name="ProductID" value="<%# Item.GameId %>" />
                    <input name="category" class="panel__name" value="<%# Item.Category %>" />

                    <input name="price" class="panel__name" value="<%# Item.Price %>" />
                  <div class="panel__btn">
                    <asp:Button ID="Button3" CommandName="Update" class="panel__name btn__panel" Text="Обновить" runat="server" />
                    <asp:Button ID="Button4" CommandName="Cancel" class="panel__name btn__panel" Text="Отмена" runat="server" />
                      </div>
              </div>

        </EditItemTemplate>



    </asp:ListView>
</asp:Content>