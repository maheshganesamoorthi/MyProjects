<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminViewUser.aspx.cs" Inherits="TelecomStore.Users.AdminViewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div style="text-align: right">
    </div>
     USER ID:<asp:Label ID="displayID" runat="server" ForeColor="Red"></asp:Label><br/>
    NAME:<asp:Label ID="Name" runat="server" ForeColor="Red"></asp:Label><br/>
    ROLE:<asp:Label ID="Role" runat="server" ForeColor="Red"></asp:Label>  <br/> 

  ROLE:  
    <asp:DropDownList ID="DropDownListRole" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownListRole_SelectedIndexChanged1" >
      <%--   <asp:ListItem>--SELECT--</asp:ListItem>
             <asp:ListItem>ADMIN</asp:ListItem>
            <asp:ListItem>RETAILER</asp:ListItem>
            <asp:ListItem>INVENTORY MANAGER</asp:ListItem>--%>
           
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridViewViewUser" DataKeyNames="User_Id" runat="server" AutoGenerateColumns="False" 
         
        style="margin-left: 0px" CellPadding="4" GridLines="None" 
        AllowPaging="True" 
        onrowdeleting="GridViewViewUser_RowDeleting" 
        onrowupdating="GridViewViewUser_RowUpdating" 
        onrowcancelingedit="GridViewViewUser_RowCancelingEdit" 
        onrowediting="GridViewViewUser_RowEditing" ForeColor="#333333" 
        onpageindexchanging="GridViewViewUser_PageIndexChanging">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField HeaderText="ID" 
                DataTextField="User_id" />
            <asp:BoundField HeaderText="FIRST NAME" DataField="FirstName" />
            <asp:BoundField HeaderText="LAST NAME" DataField="LastName" />
            <asp:BoundField HeaderText="ADDRESS" DataField="Address" />
            <asp:BoundField HeaderText="EMAIL ID" DataField="Email" />
            <asp:BoundField HeaderText="PHONE" DataField="Phone" />
            <asp:BoundField HeaderText="ROLE" DataField="Role" />
          
              
                    <asp:TemplateField HeaderText="DELETE">
                        <ItemTemplate>
                            <asp:LinkButton ID="link1" runat="server" Text="DELETE" CommandName="DELETE" OnClientClick="return confirm('Are you sure you want to delete the record?');" ></asp:LinkButton> 
                        </ItemTemplate>
</asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="User_id" 
                DataNavigateUrlFormatString="~/Users/UpdateUser.aspx?ID={0}" 
                HeaderText="UPDATE" NavigateUrl="~/Users/UpdateUser.aspx" Target="_blank" 
                Text="EDIT" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LblMessage" runat="server" Text="Label" ForeColor="Red" 
        Visible="False"></asp:Label>
</asp:Content>
