<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="TelecomStore.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >
    <h1>UPDATE USER</h1>
  
<table cellpadding="10">
 
    <tr>
    <td align="right">First Name:</td><td>
        <asp:TextBox ID="fname" runat="server"></asp:TextBox> </td></tr>
        <tr>
    <td align="right">Middle Name:</td><td>
        <asp:TextBox ID="mname" runat="server"></asp:TextBox> </td></tr>
        <tr>
    <td align="right">Last Name:</td><td>
        <asp:TextBox ID="lname" runat="server"></asp:TextBox> </td></tr>
        <tr>
    <td align="right">Address:</td><td>
        <textarea id="address" cols="20" rows="5"></textarea>   </td></tr>
        <tr>
    <td align="right">Phone:</td><td>
        <asp:TextBox ID="phone" runat="server"></asp:TextBox> </td></tr>
        <tr>
    <td align="right">E-Mail:</td><td>
        <asp:TextBox ID="mail" runat="server"></asp:TextBox> </td></tr>
        <tr>
    <td align="right">Role:</td><td>
        <asp:DropDownList ID="DDLRole1" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Select">select</asp:ListItem>
            <asp:ListItem Value="Admin">Admin</asp:ListItem>
            <asp:ListItem Value="Retailer">Retailer</asp:ListItem>
            <asp:ListItem Value="Inventory Manager">Inventory Manager</asp:ListItem>
        </asp:DropDownList> </td></tr>
      
        </table> 
   
           
<asp:Button ID="Button1" runat="server" Text="Submit" OnClientClick="return ValidationForUpdate();" />




</asp:Content>
