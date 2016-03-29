<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TelecomStore.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <style type="text/css">
        .style1
        {
            width: 128px;
        }
        #TextArea1
        {
            height: 48px;
            width: 177px;
        }
        #Text1
        {
            width: 175px;
        }
        #Text2
        {
            width: 175px;
        }
        #Text3
        {
            width: 175px;
        }
        #Text4
        {
            width: 176px;
        }
        #Text5
        {
            width: 175px;
        }
        #Text6
        {
            width: 175px;
        }
        .style2
        {
        }
        .style3
        {
            width: 4px;
        }
        #Button1
        {
            width: 71px;
        }
        #Submit1
        {
            width: 67px;
        }
        #Fname
        {
            width: 185px;
        }
        #Mname
        {
            width: 186px;
        }
        #Lname
        {
            width: 185px;
        }
        #Address
        {
            width: 187px;
        }
        #Contact
        {
            width: 184px;
        }
        #Email
        {
            width: 185px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    USER REGISTRATION&nbsp; !!<br />
    <br />
    <br />
    <form id = "registration">
    <div style="height: 111px; width: 257px; margin-left: 231px">
        <table style="width: 120%; height: 237px; margin-left: 0px;">
            <tr>
                <td class="style2">
                    First Name*</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <input id="Fname" type="text" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Middle Name</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <input id="Mname" type="text" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Last Name*</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <input id="Lname" type="text" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Address*</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <textarea id="Address" name="S1" rows="3" cols = "40"></textarea></td>
            </tr>
            <tr>
                <td class="style2">
                    Contact No*</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <input id="Contact" type="text" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Email ID</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <input id="Email" type="text" /></td>
            </tr>
            <tr>
                <td class="style2">
                    Role*</td>
                <td class="style3">
                    :</td>
                <td class="style1">
                    <asp:DropDownList ID="Role" runat="server" DataTextField="Select City" 
                        Height="34px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        Width="192px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;
                    <input id="Submit1" type="submit" value="Register" 
                        onclick="return validateForm();" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
</asp:Content>
