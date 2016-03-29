<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UnTagging.aspx.cs" Inherits="TelecomStore.Tagging.UnTagging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: right">
    </div>
    USER ID:<asp:Label ID="displayID" runat="server" Text=""></asp:Label><br/>
    NAME:<asp:Label ID="Name" runat="server"></asp:Label><br/>
    ROLE:<asp:Label ID="Role" runat="server"></asp:Label><br/>
    <asp:Label ID="RetailerId" runat="server" Text="Retailer ID"></asp:Label>
&nbsp;<asp:DropDownList ID="DRDRetailerId" runat="server" AutoPostBack="True" onselectedindexchanged="DRDRetailerId_SelectedIndexChanged" 
        >
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridViewUntagProducts" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
           <asp:TemplateField HeaderText="Un-Tag"><Itemtemplate> <asp:CheckBox ID="untag" runat ="server" />  </Itemtemplate></asp:TemplateField>
            <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
&nbsp;
    <asp:Button ID="BtnUntag" runat="server" Text="UnTag" 
        onclick="BtnUntag_Click" />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LblUntagProducts" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>
