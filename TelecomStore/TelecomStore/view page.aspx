<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view page.aspx.cs" Inherits="TelecomStore.view_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<table>
<tr><td>
    <asp:Label ID="id" runat="server" Text="ID:"></asp:Label></td>
    <td><asp:Label ID="userid" runat="server" Text=" "></asp:Label>
    </td>
    </tr>
    <tr><td><asp:Label ID="fname" runat="server" Text="FIRST NAME"></asp:Label></td>
    <td><asp:Label ID="userfname" runat="server" Text=" " ></asp:Label></td></tr>
    <tr><td><asp:Label ID="mname" runat="server" Text="MIDDLE NAME"></asp:Label></td>
    <td><asp:Label ID="usermname" runat="server" Text=" "></asp:Label></td></tr>
    <tr><td><asp:Label ID="lname" runat="server" Text="LAST NAME"></asp:Label></td>
    <td><asp:Label ID="userlname" runat="server" Text=" "></asp:Label></td></tr>
    <tr><td><asp:Label ID="address" runat="server" Text="ADDRESS"></asp:Label></td>
    <td><asp:label ID="useradd" runat="server" Text=" "></asp:label></td></tr>
    <tr><td><asp:Label ID="phone" runat="server" Text="Phone No."></asp:Label></td>
    <td><asp:Label ID="userph" runat="server" Text=" "></asp:Label></td></tr>
    <tr><td><asp:Label ID="emailid" runat="server" Text="Email id"></asp:Label></td>
    <td><asp:Label ID="useremail" runat="server" Text=" "></asp:Label></td></tr>

    </table>
    
</asp:Content>
