<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="GameStore.Pages.Listing"
    MasterPageFile="~/Pages/Store.Master" %>
<%@ Import Namespace="System.Web.Routing" %>

<asp:Content ContentPlaceHolderID="bodyContent" runat="server">

       <!-- Main -->
        <main class="main">
            <div class="container">
                <div class="map">
                    <iframe class="mapping" src="https://yandex.ru/map-widget/v1/?um=constructor%3Aba6a806c34bd01270c2e0a934919cac2d0340de0173162c78238e9767c94d274&amp;source=constructor" width="600" height="350" frameborder="0"></iframe>
                 </div>
            </div>
        </main>

</asp:Content>

