<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="TelecomStore.UserAccount.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
       

    <div>
    
        <asp:Label ID="LabelPassword" runat="server" 
            style="text-align: center; z-index: 1; left: 349px; top: 244px; position: absolute; width: 127px" 
            Text="Label"></asp:Label>
    
    </div>

<table>
       <tr><td>New Password:</td><td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox></td></tr>
  
     <tr><td>Confirm New Password:</td><td><asp:TextBox ID="txtConfirm" runat="server" 
            TextMode="Password" ></asp:TextBox></td></tr>
   
   
    
   <tr> <td></td><td><asp:Button ID="Submit" runat="server" onclick="Submit_Click" 
           Text="Submit" Width="64px"  />
    <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click"  Text="Cancel" 
           style="margin-left: 30px" /></td></tr>
  </table>
  
</asp:Content>
