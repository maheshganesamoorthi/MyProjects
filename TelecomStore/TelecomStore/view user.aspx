<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="view user.aspx.cs" Inherits="TelecomStore.view_user" %>

<script runat="server">

    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  ROLE: <asp:DropDownList ID="ddlRole" runat="server" 
        Width="100px" AutoPostBack="True" 
        onselectedindexchanged="ddlRole_SelectedIndexChanged">
</asp:DropDownList> 
    <br />
    <br />
    <br />
    <asp:GridView ID="GrViewTelecom" runat="server" AutoGenerateColumns="False" 
        onselectedindexchanged="GrViewTelecom_SelectedIndexChanged" 
        style="margin-left: 0px" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
        AllowPaging="True" AllowSorting="True" EnableSortingAndPagingCallbacks="True" 
        onpageindexchanging="GrViewTelecom_pageindexchanging">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:HyperLinkField HeaderText="ID" DataNavigateUrlFields="User_id" 
                DataTextField="User_id" />
            <asp:BoundField HeaderText="FIRST NAME" DataField="FirstName" />
            <asp:BoundField HeaderText="MIDDLE NAME" DataField="MiddleName" />
            <asp:BoundField HeaderText="LAST NAME" DataField="LastName" />
            <asp:BoundField HeaderText="ADDRESS" DataField="Address" />
            <asp:BoundField HeaderText="EMAIL ID" DataField="Emailid" />
            <asp:BoundField HeaderText="PHONE" DataField="Phone" />
            <asp:BoundField HeaderText="ROLE" DataField="Role" />
          
              
                    <asp:TemplateField HeaderText="DELETE">
                        <ItemTemplate>
                            <asp:LinkButton ID="link1" runat="server" Text="DELETE" CommandName="DELETE"></asp:LinkButton> 
                        </ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="UPDATE">
                        <ItemTemplate>
                            <asp:LinkButton ID="link2" runat="server" Text="UPDATE" CommandName="UPDATE"></asp:LinkButton> 
                        </ItemTemplate>
</asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>
