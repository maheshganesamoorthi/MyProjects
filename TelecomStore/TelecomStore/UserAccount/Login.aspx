<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TelecomStore.UserAccount.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="register" Text="New User!Register Here" runat="server" NavigateUrl="~/Users/RegisterUser.aspx"/>
<center>

LOGIN
<form id="form1" >

<div>
<asp:Label ID="LblUserName" runat="server" Text="Userid">
</asp:Label><asp:TextBox ID="TxtUserName" runat="server" style="margin-left: 23px">
</asp:TextBox><br /><br /><asp:Label ID="lblPassword" runat="server" Text="Password">
</asp:Label><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password">
</asp:TextBox>
<br /><br />
<asp:Button ID="Btnlogin" runat="server" Text="Login" onclick="btnlogin_Click" 
        Width="47px" style="height: 26px" />&nbsp;
<asp:Button ID="BtnCancel" runat="server" Text="Cancel" 
         Height="26px" /><br />
<asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserAccount/ForgotPassword.aspx">ForgotPassword</asp:HyperLink>
</div>
</form>
</center>
</asp:Content>
