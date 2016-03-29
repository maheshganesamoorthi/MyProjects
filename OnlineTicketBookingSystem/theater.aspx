<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="theater.aspx.cs" Inherits="theater" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dd2ConnectionString2 %>"
        SelectCommand="SELECT * FROM [theater] ORDER BY [tid]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    &nbsp;
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        Style="z-index: 100; left: 495px; position: absolute; top: 321px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="253px">
        <Columns>
            <asp:BoundField DataField="tid" HeaderText="Theater Id" SortExpression="tid" />
            <asp:BoundField DataField="tname" HeaderText="Theater Name" SortExpression="tname" />
            <asp:BoundField DataField="loc" HeaderText="Location" SortExpression="loc" />
            <asp:BoundField DataField="no_of_halls" HeaderText="No.of halls" SortExpression="no_of_halls" />
        </Columns>
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro" />
    </asp:GridView>
</asp:Content>

