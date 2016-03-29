<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tagging.aspx.cs" Inherits="TelecomStore.Tagging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<center><h1>TAGGING PRODUCTS</h1></center>

    <p dir="ltr">
        <br />
    </p>
    <center><table width="250px"><tr>
       <td class="style1"> <asp:Label ID="RetailerID_lt" runat="server" Text="Retailer ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><asp:DropDownList ID="RetailerID_ddt" 
            runat="server">
        </asp:DropDownList></td>
    </tr>
    <tr><td class="style1">
        <asp:Label ID="ModelName_lt" runat="server" Text="Model Name"></asp:Label>
&nbsp;&nbsp;&nbsp;</td>
        <td><asp:DropDownList ID="ModelName_ddt" runat="server">
        </asp:DropDownList>
&nbsp;</td></tr>
    </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Height="133px" Width="118px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CheckBoxField HeaderText="Tag/Untag" DataField="Tag/Untag" />
                <asp:BoundField HeaderText="Product ID" DataField="Product_ID" />
                <asp:BoundField HeaderText="Product name" DataField="Product_name" />
                <asp:BoundField HeaderText="Status" DataField="Status" />
            </Columns>
        </asp:GridView>
    <p>  <br />
        <asp:Button ID="TagButton" runat="server" Text="Tag" onclick="Button1_Click" 
            Width="57px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cancelButton_t" runat="server" Text="cancel" Width="67px" />
    </p></center>
</asp:Content>
