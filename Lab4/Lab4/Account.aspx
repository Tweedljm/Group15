<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            background-color:lightsteelblue;
        }
    .auto-style16 {
        height: 23px;
    }
    .auto-style17 {
        height: 30px;
        text-align: center;
    }
    .auto-style19 {
        width: 390px;
        height: 23px;
        text-align: center;
    }
        .auto-style22 {
            height: 23px;
            text-align: center;
            width: 280px;
        }
        .auto-style24 {
            height: 30px;
            width: 280px;
            text-align: center;
        }
        .auto-style25 {
            height: 67px;
        }
        .auto-style30 {
            height: 30px;
            text-align: center;
            width: 583px;
        }
        .auto-style32 {
            height: 23px;
            text-align: center;
            width: 583px;
        }
        .auto-style33 {
            width: 583px;
        }
        .auto-style34 {
            height: 23px;
            text-align: center;
            width: 583px;
            font-size: xx-large;
        }
        .auto-style54 {
            height: 30px;
            text-align: center;
            width: 178px;
        }
        .auto-style56 {
            height: 67px;
            width: 178px;
        }
        .auto-style57 {
            width: 178px;
        }
        .auto-style59 {
            font-size: large;
        }
        .auto-style60 {
            font-size: medium;
        }
        .auto-style65 {
            width: 119%;
        }
        .auto-style66 {
            height: 23px;
            text-align: center;
            width: 178px;
        }
        .auto-style67 {
            height: 30px;
        }
        .auto-style68 {
            height: 24px;
        }
        .auto-style69 {
            text-align: left;
            width: 175px;
        }
        .auto-style71 {
            width: 175px;
            text-align: right;
        }
        .auto-style72 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style54">&nbsp;</td>
        <td class="auto-style30">
            &nbsp;</td>
        <td class="auto-style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style54">&nbsp;</td>
        <td class="auto-style30">
            <table class="auto-style65" style="background-color: #2E8B57">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lblFirstName" runat="server" CssClass="auto-style59" ForeColor="White"></asp:Label>
                        <asp:Label ID="lblLastName" runat="server" CssClass="auto-style59" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
            <asp:Label ID="lblEmail" runat="server" CssClass="auto-style60" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style68">
            <asp:Label ID="lblRewardBalance" runat="server" CssClass="auto-style59" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <asp:Image ID="Image1" runat="server" Height="149px" Width="179px" />
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="btnSubmitPic" runat="server" OnClick="btnSubmitPic_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style67">
                        <asp:Button ID="btnChangePassword" runat="server" OnClick="btnChangePassword_Click" Text="Change Password" Width="132px" />
&nbsp;<asp:Button ID="btnSignOut" runat="server" OnClick="btnSignOut_Click" Text="Sign Out" Width="125px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAdminArea" runat="server" Text="Admin Area" Font-Size="Medium" OnClick="btnAdminArea_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td class="auto-style17">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style69">
                        <asp:Label ID="lblTitleChangePswd" runat="server" Font-Size="Large" ForeColor="White" Text="Change Your Password"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">
                        <asp:Label ID="lblCurrentPswd" runat="server" Font-Size="Medium" ForeColor="White" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCurrentPswd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">
                        <asp:Label ID="lblNewPassword" runat="server" Font-Size="Medium" ForeColor="White" Text="New Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">
                        <asp:Label ID="lblConfirmNew" runat="server" Font-Size="Medium" ForeColor="White" Text="Confirm New Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmNew" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style71">
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Button ID="btnChangePswd" runat="server" OnClick="btnChangePswd_Click" Text="Change Password" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>
            <asp:Label ID="lblChangePswdError" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style72">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style54">
            &nbsp;</td>
        <td class="auto-style30">
                <asp:DataList ID="DataList1" runat="server" BackColor="#303C6C" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Font-Bold="False" Font-Italic="False" Font-Names="cursive" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Width="711px" OnItemCreated="DataList1_ItemDataBound" ValidateRequestMode="Enabled" ViewStateMode="Enabled">
                    <AlternatingItemStyle BackColor="#303C6C" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Width="500px" />
                    <EditItemStyle HorizontalAlign="Left" BackColor="#303C6C" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                    <ItemStyle BackColor="#303C6C" ForeColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />

                    <ItemTemplate>
         <div style="padding:15,15,15,15;font-size:10pt;
            font-family:Verdana">
            <b></b><%# DataBinder.Eval(Container.DataItem,"Date") %><br>
            
            <%# DataBinder.Eval(Container.DataItem, "Rewarder") %>
            rewarded
            <%# DataBinder.Eval(Container.DataItem, "Rewardee") %>
            for
            <%# DataBinder.Eval(Container.DataItem, "Reward Category") %>
            
            <%# DataBinder.Eval(Container.DataItem, "Value") %>
             <br /><br>
            Description:
            <%# DataBinder.Eval(Container.DataItem, "Description") %><br>
            
            Reward Amount:
            <%# DataBinder.Eval(Container.DataItem,"Reward Amount", "{0:c}") %>
            <p>
         </div>
      </ItemTemplate>

                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" />
                </asp:DataList>
        </td>
        <td class="auto-style24">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style66">
        </td>
        <td class="auto-style32">
            </td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style66">
            &nbsp;</td>
        <td class="auto-style32">
            &nbsp;</td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style66">
            &nbsp;</td>
        <td class="auto-style32">
            &nbsp;</td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style66">
            &nbsp;</td>
        <td class="auto-style34">&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style56">&nbsp;</td>
        <td class="auto-style32">
                &nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style57">&nbsp;</td>
        <td class="auto-style33">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

