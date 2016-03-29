<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="TelecomStore.Users.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: right">
    </div>
    USER ID: <asp:Label ID="displayID" runat="server" Text="Label" ForeColor="Red"></asp:Label><br/>
    NAME:<asp:Label ID="Name" runat="server" ForeColor="Red"></asp:Label><br/>
    ROLE:<asp:Label ID="Role" runat="server" ForeColor="Red"></asp:Label><br/>
   
    <br />
     <div id="menu1">
				<ul>
					<li id="menu-01"><asp:HyperLink ID="adduser" Text="ADD USER" runat="server" NavigateUrl="~/Users/AddingUsers.aspx" /></li>
					<%--<li id="menu-02"><asp:HyperLink ID="viewuser" Text="View/Delete/Update User" runat="server" NavigateUrl="~/Users/ViewUserAdmin.aspx" /></li>--%>
					<li id ="menu-02"><asp:HyperLink ID="viewuseradmin" Text="View/Delete/Update User" runat= "server" NavigateUrl="~/Users/AdminViewUser.aspx"/></li>
                    <li id="menu-03"><asp:HyperLink ID="tag" Text="TAG PRODUCTS" runat="server" NavigateUrl="~/Tagging/Tagging.aspx" /></li>
                    <li id="menu-04"><asp:HyperLink ID="untag" Text="UN-TAG PRODUCTS" runat="server" NavigateUrl="~/Tagging/UnTagging.aspx" /></li>
					
				</ul>
			</div>
  <%--<table style="width: 34%;">
    <tr>
        <td class="style1">
            <asp:Button ID="Button1" runat="server" Text="ADD USER" onclick="Button1_Click" 
                Width="152px" />
        </td>
        
    </tr>
    <tr>
        <td class="style1">
         <asp:Button ID="Button2" runat="server" Text="VIEW/UPDATE/DELETE USER" 
                Height="45px" onclick="Button2_Click" Width="151px" />
        </td>
       
    </tr>
    <tr>
        <td class="style1">
            <asp:Button ID="Button3" runat="server" Text="TAG PRODUCTS" 
                onclick="Button3_Click" Width="151px" />
        </td>
     
    </tr>
    <tr>
        <td class="style1">
            <asp:Button ID="Button4" runat="server" Text="UN-TAG PRODUCTS" 
                onclick="Button4_Click" Width="151px" />
        </td>
     
    </tr>
</table>--%>
</asp:Content>


