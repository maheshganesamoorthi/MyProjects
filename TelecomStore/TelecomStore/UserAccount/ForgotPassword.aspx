<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="TelecomStore.UserAccount.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: right">
    </div>
       
<center>
<table>
<tr>
<td class="style1">
 <asp:Label ID="UserID" runat="server" Text="UserID"></asp:Label>
 </td>
 <td>
    <asp:TextBox ID="TxtUserID" runat="server"  
         Width="156px" style="margin-left: 0px"></asp:TextBox>
</td>
</tr>
 <tr>
<td class="style1">  
    <asp:Label ID="SecurityQuestion" runat="server" Text="SecurityQuestion"></asp:Label>
    </td>
 <td>
     <asp:DropDownList ID="DropDownSecurityQuestion" runat="server" 
        
         Width="196px" Height="16px" style="margin-left: 31px">
     </asp:DropDownList>
     <%--<asp:DropDownList ID="DropDownSecurityQuestion" " runat="server" 
         onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="306px" />
    </asp:DropDownList>--%>
  </td>
  </tr>
  <tr>
  <td class="style1">
    <asp:Label ID="Answer" runat="server" Text="Answer"></asp:Label>
</td>
 <td>
    <asp:TextBox ID="Answerbyuser" runat="server" style="margin-left: 0px" 
          Width="159px" Height="25px"></asp:TextBox>
    </td>
    </tr>
    <tr><td></td>
    <td>
    <asp:Button ID="Submit" runat="server" onclick="Submit_Click" Text="Submit" />    
    <asp:Button ID="Cancel" runat="server"  Text="Cancel" onclick="Cancel_Click" 
            style="margin-left: 22px" /></td>
        
</tr>
<tr>
<td class="style1">
    <asp:Label ID="Password" runat="server" Text="Label"></asp:Label>
    </td><td>
    <asp:Button ID="Close"
        runat="server" Text="Close" onclick="Close_Click" />
        </td>
        </tr>
 </table>      
</center>

</asp:Content>
