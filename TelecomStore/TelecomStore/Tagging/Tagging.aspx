<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Tagging.aspx.cs" Inherits="tagging._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="text-align: right">
    </div>
       
    USER ID:<asp:Label ID="displayID" runat="server" ForeColor="Red"></asp:Label><br/>
    NAME:<asp:Label ID="Name" runat="server" ForeColor="Red"></asp:Label><br/>
    ROLE:<asp:Label ID="Role" runat="server" ForeColor="Red"></asp:Label><br/>
    <table><tr><td>Retailer ID</td><td>
        <asp:DropDownList ID="DRBretailerID" runat="server" AutoPostBack="True" 
           >
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DRBretailerID" ErrorMessage="Select RetailerID*"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td>Model Name </td>
    <td>
        <asp:DropDownList ID="DRBmodelname" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DRBmodelname_SelectedIndexChanged" >
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DRBmodelname" ErrorMessage="Select Model Name*"></asp:RequiredFieldValidator>
        </td>
        </tr></table>
    <asp:GridView ID="GridViewTagProducts" runat="server" AutoGenerateColumns="False" 
        Height="140px" Width="306px" CellPadding="4" 
        GridLines="None" ForeColor="#333333"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
        
        <asp:TemplateField HeaderText="Tag"><Itemtemplate> <asp:CheckBox ID="tag" runat ="server" />  </Itemtemplate></asp:TemplateField>
      

            <asp:BoundField HeaderText="Product ID" DataField="ProductId" />
            <asp:BoundField HeaderText="Product Name" DataField="ProductName" />
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
    <asp:Button ID="btntag" runat="server"  Text="Tag" onclick="btntag_Click" 
        Width="54px" />
    &nbsp;&nbsp;&nbsp;
    &nbsp;
    <asp:Label ID="LblTagProducts" runat="server" ForeColor="Red" Visible="False"></asp:Label>
</asp:Content>
