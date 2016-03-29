<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Untagging.aspx.cs" Inherits="TelecomStore.Untagging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 93px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<center><h1>UNTAGGING PRODUCTS</h1></center>
    <p>
        <br />
    </p>
   <center> <table width="250px"> <tr> <td class="style1"> 
        <asp:Label ID="RetailerID_lu" runat="server" Text="Retailer ID"></asp:Label>
       </td><td><asp:DropDownList ID="RetailerID_ddu" 
            runat="server">
        </asp:DropDownList>
    </td></tr>
    <tr><td class="style1">
        <asp:Label ID="ModelName_lu" runat="server" Text="Model Name"></asp:Label>
        &nbsp;</td><td>
        <asp:DropDownList ID="ModelName_ddu" runat="server">
        </asp:DropDownList>
&nbsp;
    </td></tr></table><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Height="133px" Width="118px">
        <Columns>
            <asp:CheckBoxField HeaderText="Tag/Untag" DataField="Tag/Untag" />
            <asp:BoundField HeaderText="Product ID" DataField="Product_ID" />
            <asp:BoundField HeaderText="Product name" DataField="Product_name" />
            <asp:BoundField HeaderText="Status" DataField="Status" />
        </Columns>
    </asp:GridView><br />
    <p>
        <asp:Button ID="UntagButton" runat="server" Text="Untag" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="CancelButton_u" runat="server" Text="Cancel" />
    </p></center>
</asp:Content>
