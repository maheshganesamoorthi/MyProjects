<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 391px; position: absolute;
        top: 408px" Text="theater name" Width="116px"></asp:Label>
    <asp:Label ID="Label2" runat="server" Style="z-index: 101; left: 392px; position: absolute;
        top: 450px" Text="show id" Width="119px"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 102; left: 393px; position: absolute;
        top: 535px" Text="no.of.tickets" Width="118px"></asp:Label>
    <asp:Label ID="Label4" runat="server" Style="z-index: 103; left: 387px; position: absolute;
        top: 489px" Text="movie name" Width="118px"></asp:Label>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="tname" DataValueField="tname" Height="27px" Style="z-index: 104;
        left: 535px; position: absolute; top: 412px" Width="120px">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:maherainConnectionString %>"
        SelectCommand="SELECT [tname] FROM [theater]"></asp:SqlDataSource>
    &nbsp; &nbsp;&nbsp;<br />
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2"
        DataTextField="show_id" DataValueField="show_id" Height="23px" Style="z-index: 105;
        left: 534px; position: absolute; top: 449px" Width="117px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:maherainConnectionString2 %>"
        SelectCommand="SELECT [show_id], [movie_name] FROM [movie]"></asp:SqlDataSource>
    &nbsp;<br />
    <asp:TextBox ID="TextBox1" runat="server" Height="13px" OnTextChanged="TextBox1_TextChanged"
        Style="z-index: 106; left: 537px; position: absolute; top: 536px" Width="126px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Style="z-index: 107; left: 567px; position: absolute;
        top: 575px" Text="enter" />
    &nbsp;<br />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList5" runat="server" Style="z-index: 108; left: 736px;
        position: absolute; top: 490px" Width="73px">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Style="z-index: 110;
        left: 538px; position: absolute; top: 487px" Width="113px">
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

