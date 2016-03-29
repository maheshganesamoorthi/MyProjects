<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryManager.aspx.cs" Inherits="TelecomStore.Users.InventoryManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: right">
    </div>
       
    USER ID:<asp:Label ID="displayID" runat="server" Text=""></asp:Label><br/>
    NAME:<asp:Label ID="Name" runat="server" Text=""></asp:Label><br/>
    ROLE:<asp:Label ID="Role" runat="server" Text=""></asp:Label><br/>
</asp:Content>
