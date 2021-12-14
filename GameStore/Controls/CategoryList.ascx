<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoryList.ascx.cs" 
   Inherits="GameStore.Controls.CategoryList" %>

    <link rel="stylesheet" href="/Content/style.css" />

    <div class="category_tt">
            <div class="category__item">
                    <%= CreateHomeLinkHtml() %>
            </div>

            <% foreach (string category in GetCategories()) {%>
            <div class="category__item">
                
                  <%=(CreateLinkHtml(category))%>
                
            </div>
            <%}//foreach%>
    </div>