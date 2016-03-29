<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="TelecomStore.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >
    <h1>UPDATE USER</h1>
        <div style="text-align: right">
    </div>
       
    USER ID:<asp:Label ID="displayID" runat="server" ForeColor="Red"></asp:Label><br/>
    NAME:<asp:Label ID="Name" runat="server" ForeColor="Red"></asp:Label><br/>
    ROLE:<asp:Label ID="Role" runat="server" ForeColor="Red"></asp:Label><br/>
<table cellpadding="10">
 
 <tr>
    <td>User ID:</td><td>
        <%--    <input id="txtemail" runat="server" type="text" onblur="ValidateField(this,'Email');"/>--%>
        <asp:TextBox ID="TxtUserid" runat="server" 
            ReadOnly="True" Width="169px"></asp:TextBox>
        </td></tr>
   
    <tr>
    <td>First Name:</td><td>
        <%--<asp:Button ID="Button1" runat="server" Text="Submit" 
        OnClientClick="ValidateField();" style="height: 26px" />--%>
        <asp:TextBox ID="TxtFname" runat="server" Width="169px"></asp:TextBox>
        </td></tr>
        <tr>
   
    <td>Last Name:</td><td>
            <%--    <input id="txtemail" runat="server" type="text" onblur="ValidateField(this,'Email');"/>--%>

        <asp:TextBox ID="TxtLname" runat="server" Width="169px"></asp:TextBox> </td></tr>
        <tr>
    <td>Address:</td><td>
         <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>  </td></tr>
        <tr>
    <td>Phone:</td><td>
            <%--<asp:Button ID="Button1" runat="server" Text="Submit" 
        OnClientClick="ValidateField();" style="height: 26px" />--%>
  
         <asp:TextBox ID="TxtPhone" runat="server" Width="171px"></asp:TextBox> </td></tr>
        <tr>
    <td>E-Mail:</td><td>
    <%--    <input id="txtemail" runat="server" type="text" onblur="ValidateField(this,'Email');"/>--%>

         <asp:TextBox ID="TxtEmail" runat="server" Width="171px"></asp:TextBox> </td></tr>
        <tr>
    <td>
        <asp:Button ID="Submit" runat="server" Text="Submit" 
         style="height: 26px" onclick="Submit_Click" />
      
            </td><td>
      
    


    <asp:Label ID="LblUpdate" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>

    


            </td></tr>
      
        </table> 
           
<%--<asp:Button ID="Button1" runat="server" Text="Submit" 
        OnClientClick="ValidateField();" style="height: 26px" />--%>

    


    </asp:Content>
