<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TelecomStore.Users.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<center>      REGISTER !!</center>
        <table>
        <tr><td class="style1"><asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label></td>
        <td> 
            <asp:TextBox ID="FirstName" runat="server" 
                style="margin-left: 34px" Width="142px"></asp:TextBox></td></tr>
    
        <tr><td class="style1"><asp:Label ID="Label3" runat="server" Text="LastName"></asp:Label></td>
        <td><asp:TextBox ID="LastName" runat="server" 
            style="margin-left: 34px; margin-bottom: 0px" Width="144px"></asp:TextBox></td></tr>
      
        <tr><td class="style1"><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
        <td><asp:TextBox ID="Address" runat="server" style="margin-left: 33px" 
                Width="144px"></asp:TextBox></td></tr>
        
        <tr><td class="style1"><asp:Label ID="Label5" runat="server" Text="PhoneNo"></asp:Label></td>
        <td><asp:TextBox ID="PhoneNo" runat="server" style="margin-left: 33px" 
                Width="144px"></asp:TextBox></td></tr>
       
        <tr><td class="style1"><asp:Label ID="Label6" runat="server" Text="EmailID"></asp:Label></td>
        <td><asp:TextBox ID="EmailID" runat="server" style="margin-left: 33px" 
            Width="144px"></asp:TextBox></td></tr>
      
        <tr><td class="style1"><asp:Label ID="Label7" runat="server" Text="Role"></asp:Label></td>
       
        <td><asp:DropDownList ID="UserRoles" runat="server" Height="18px" 
                style="margin-left: 34px" Width="153px">
        <asp:ListItem>ADMIN</asp:ListItem>
        <asp:ListItem>RETAILER</asp:ListItem>
        <asp:ListItem>INVENTORY MANAGER</asp:ListItem>
        </asp:DropDownList></td></tr>
     
        <tr><td class="style1"><asp:Label ID="Label8" runat="server" Text="SecurityQuestion"></asp:Label></td>

        <td><asp:DropDownList ID="secureDropDownList1" runat="server" Height="20px" 
            Width="191px" style="margin-left: 34px">
             <asp:ListItem>Spouse's Birth place?</asp:ListItem>
            <asp:ListItem>Who was your Childhood Hero?</asp:ListItem>
            <asp:ListItem>Favorite place to visit as a child?</asp:ListItem>
            <asp:ListItem>childhood nickname? </asp:ListItem>
            <asp:ListItem>Your sixth grade's School?</asp:ListItem>
          
        </asp:DropDownList></td></tr>
        

        <tr><td class="style1"><asp:Label ID="Label9" runat="server" Text="Answer"></asp:Label></td>

        <td><asp:TextBox ID="secureAnswer" runat="server" style="margin-left: 34px" 
                Width="172px" ></asp:TextBox></td></tr>

     <tr><td class="style1"><asp:Label ID="pwd" runat="server" Visible="False"></asp:Label></td>
      
         <td><asp:Button ID="Button1" runat="server" 
            Text="REGISTER" onclick="Button1_Click1" />&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" />
         </td>

  
       
       <td> <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label></td></tr>

  </table>
       
</asp:Content>
