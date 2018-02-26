<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style67 {
            color: #FFFFFF;
        }
        .auto-style45 {
            width: 357px;
            color: #FFFFFF;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style72 {
            width: 357px;
            color: #FFFFFF;
            font-size: medium;
        }
        .auto-style73 {
            width: 458px;
        }
        .auto-style74 {
            width: 458px;
            height: 44px;
            text-align: right;
        }
        .auto-style75 {
            height: 44px;
        }
        .auto-style76 {
            height: 179px;
        }
        .auto-style77 {
            width: 459px;
        }
        .auto-style78 {
            width: 351px;
        }
        .auto-style79 {
            width: 459px;
            text-align: right;
        }
        .auto-style80 {
            height: 200px;
        }
        .auto-style81 {
            height: 23px;
        }
        .auto-style82 {
            width: 459px;
            height: 30px;
        }
        .auto-style83 {
            height: 30px;
        }
        .auto-style84 {
            width: 460px;
        }
        .auto-style85 {
            width: 254px;
        }
        .auto-style86 {
            width: 220px;
        }
        .auto-style87 {
            width: 460px;
            text-align: right;
        }
        .auto-style88 {
            width: 460px;
            height: 45px;
            text-align: right;
        }
        .auto-style89 {
            width: 254px;
            height: 45px;
        }
        .auto-style90 {
            width: 220px;
            height: 45px;
            text-align: right;
        }
        .auto-style91 {
            height: 45px;
        }
        .auto-style92 {
            width: 220px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style76">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style73">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style73">
                            <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="White" Text="Employee Account"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style74">
                            <asp:Label ID="Label3" runat="server" Font-Size="Medium" ForeColor="White" Text="Employee ID: "></asp:Label>
                        </td>
                        <td class="auto-style75"><strong style="color: #FFFFFF"><asp:DropDownList ID="EmployeeIDList" runat="server" DataSourceID="SqlDataSource1" DataTextField="EmployeeID" DataValueField="EmployeeID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString13 %>" SelectCommand="SELECT [EmployeeID] FROM [Employee]"></asp:SqlDataSource>
                </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style73">&nbsp;</td>
                        <td>
                <asp:Button ID="btnCreateEmployee" runat="server" OnClick="btnCreateEmployee_Click" Text="Create Employee Account" Width="169px" ValidationGroup ="asdf"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style73">&nbsp;</td>
                        <td><strong style="color: #FFFFFF">
                <asp:Label ID="errorMsgTxt2" runat="server" style="color: #FFFFFF" Font-Bold="False"></asp:Label>
                </strong></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style76"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style80">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style77">
                            <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="White" Text="Login Credentials"></asp:Label>
                        </td>
                        <td class="auto-style78">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style79">
                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="White" Text="Employee ID: "></asp:Label>
                        </td>
                        <td class="auto-style78">
                            <asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style78">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style79">
                            <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="White" Text="Username:"></asp:Label>
                        </td>
                        <td class="auto-style78">&nbsp;<asp:TextBox ID="txtUsername" runat="server" Width="169px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Font-Size="Medium" ForeColor="White" Text="Password:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Width="169px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style78">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style78">&nbsp;</td>
                        <td>
                <asp:Button ID="btnAddEmployee" runat="server" OnClick="btnAddEmployee_Click" Text="Create Login Credentials" Width="169px" ValidationGroup ="asdf"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style78">&nbsp;</td>
                        <td>
                <asp:Label ID="errorMsgTxt" runat="server" style="color: #FFFFFF"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style80"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style81">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style77">
                            <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="White" Text="Organizational Value"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style79">
                            <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="White" Text="Value Name:"></asp:Label>
                        </td>
                        <td>
                <strong>
                <asp:TextBox ID="txtValueName" runat="server" CssClass="auto-style67" ForeColor="Black"></asp:TextBox>
                </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style79">
                            <asp:Label ID="Label11" runat="server" Font-Size="Medium" ForeColor="White" Text="Value Description:"></asp:Label>
                        </td>
                        <td><strong>
                <asp:TextBox ID="txtValueDescription" runat="server" CssClass="auto-style67"></asp:TextBox>
                </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style82"></td>
                        <td class="auto-style83">
                <asp:Button ID="btnAddOrgValue" runat="server" OnClick="btnAddOrgValue_Click" Text="Add Organizational Value" Width="169px" ValidationGroup ="asdf"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td>
                <asp:Label ID="errorMsgTxt1" runat="server" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style81"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style84">
                            <asp:Label ID="Label9" runat="server" Font-Size="Large" ForeColor="White" Text="Gift Provider (GP)"></asp:Label>
&nbsp;</td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style86">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style87">
                            <asp:Label ID="Label12" runat="server" Font-Size="Medium" ForeColor="White" Text="Provider Name:"></asp:Label>
                        </td>
                        <td class="auto-style85">
                            <asp:TextBox ID="providerNameTxt" runat="server" Width="170px"></asp:TextBox>
                                <asp:RequiredFieldValidator
                             id="RequiredFieldValidator1"
                             ControlToValidate="providerNameTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style45" Font-Bold="False"/>
                        </td>
                        <td class="auto-style92">
                            <asp:Label ID="Label13" runat="server" Font-Size="Medium" ForeColor="White" Text="Provider Description:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="descriptionTxt" runat="server" Width="170px"></asp:TextBox>
                             <asp:RequiredFieldValidator
                             id="RequiredFieldValidator8"
                             ControlToValidate="descriptionTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style45" Font-Bold="False"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style88">
                            <asp:Label ID="Label14" runat="server" ForeColor="White" Text="Phone Number:"></asp:Label>
                        </td>
                        <td class="auto-style89">
                            <asp:TextBox ID="phoneNumbertxt" runat="server" Width="170px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="phoneNumbertxt" ErrorMessage="*Required" Font-Size="Medium" ForeColor="White">*Required</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style90">
                            <asp:Label ID="Label15" runat="server" Font-Size="Medium" ForeColor="White" Text="Email Address:"></asp:Label>
                        </td>
                        <td class="auto-style91">
                            <asp:TextBox ID="emailTxt" runat="server" Width="170px"></asp:TextBox>
                             <asp:RequiredFieldValidator
                             id="RequiredFieldValidator6"
                             ControlToValidate="emailTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style45" Font-Bold="False" Font-Size="Medium"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style87">
                            <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Building Number:"></asp:Label>
                        </td>
                        <td class="auto-style85">
                            <asp:TextBox ID="buildingNumberTxt" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="buildingNumberTxt" ErrorMessage="*Required" Font-Size="Medium" ForeColor="White">*Required</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style92">
                            <asp:Label ID="Label17" runat="server" ForeColor="White" Text="Street Address:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="streetTxt" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator
                             id="RequiredFieldValidator3"
                             ControlToValidate="streetTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style45" Font-Bold="False" Font-Size="Medium"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style87">
                            <asp:Label ID="Label18" runat="server" ForeColor="White" Text="City/County:"></asp:Label>
                        </td>
                        <td class="auto-style85">
                            <asp:TextBox ID="cityCountyTxt" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator
                             id="RequiredFieldValidator4"
                             ControlToValidate="cityCountyTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style45" Font-Bold="False"/>
                        </td>
                        <td class="auto-style92">
                            <asp:Label ID="Label19" runat="server" ForeColor="White" Text="State:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="stateTxt" runat="server" MaxLength="2"></asp:TextBox>
                             <asp:RequiredFieldValidator
                             id="RequiredFieldValidator10"
                             ControlToValidate="stateTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style72"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style87">
                            <asp:Label ID="Label20" runat="server" ForeColor="White" Text="Zip Code:"></asp:Label>
                        </td>
                        <td class="auto-style85">
                            <asp:TextBox ID="zipTxt" runat="server" MaxLength="5"></asp:TextBox>
                             <asp:RequiredFieldValidator
                             id="RequiredFieldValidator5"
                             ControlToValidate="zipTxt"
                             ErrorMessage="*Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="White" CssClass="auto-style45" Font-Bold="False"/>
                        </td>
                        <td class="auto-style86">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style84">&nbsp;</td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style86">&nbsp;</td>
                        <td>
                <asp:Button ID="addGiftProviderbtn" runat="server" OnClick="addGiftProviderbtn_Click" Text="Add Gift Provider" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style84">&nbsp;</td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style86">&nbsp;</td>
                        <td>
                <asp:Label ID="providerlbl" runat="server" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style81"></td>
            <td class="auto-style81"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

