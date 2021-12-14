<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listing.aspx.cs" Inherits="GameStore.Pages.Listing"
    MasterPageFile="~/Pages/Store.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">
        <div class="menu">
        <asp:Repeater ItemType="GameStore.Models.Game"
            SelectMethod="GetGames" runat="server">
            
            <ItemTemplate>
                <div class="menu__item">
                        <img src="/Content/images/<%# Item.Description %>" class="img__menu">
                        <p class="menu__name"><%#  Item.Name %></p>
                        <div class="menu__footer">
                            <p class="menu__sale"><%# Item.Price.ToString("c") %></p>
                            <div class="but-wrap">
                                <button name="add" type="submit" value="<%# Item.GameId %>" class="btn__menu but-wrap addToCart" onClick="incrementClick()">В корзину</button>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
          
        </asp:Repeater>
              </div>
    </div>
    <div class="pager">
        <%
            for (int i = 1; i <= MaxPage; i++)
            {
                string category = (string)Page.RouteData.Values["category"]
                    ?? Request.QueryString["category"];
                
                string path = RouteTable.Routes.GetVirtualPath(null, null,
                    new RouteValueDictionary() { {"category", category}, { "page", i } }).VirtualPath;
                Response.Write(
                    String.Format("<a href='{0}' {1}>{2}</a>",
                        path, i == CurrentPage ? "class='selected'" : "", i));
            }
        %>
    </div>
</asp:Content>