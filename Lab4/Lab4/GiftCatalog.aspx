<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GiftCatalog.aspx.cs" Inherits="GiftCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            background-color:lightsteelblue;
        }
        .auto-style21 {
            height: 23px;
        }
        .auto-style30 {
            height: 40px;
        }
        .auto-style56 {
            color: #FFFFFF;
            font-family: cursive;
            font-size: large;
        }
        .auto-style60 {
            color: #FFFFFF;
            font-family: cursive;
            text-align: left;
            font-size: large;
        }
        .auto-style63 {
            color: #FFFFFF;
        }
        .auto-style64 {
            font-family: cursive;
            color: #FFFFFF;
        }
    .auto-style79 {
        font-size: large;
    }
    .auto-style82 {
        height: 20px;
    }
        .auto-style83 {
            height: 20px;
            text-align: center;
            width: 1126px;
        }
        .auto-style84 {
            font-size: x-large;
            font-weight: 700;
        }
        .auto-style85 {
            height: 20px;
            width: 1126px;
        }
        .auto-style86 {
            height: 40px;
            width: 1126px;
        }
        .auto-style87 {
            height: 23px;
            width: 1126px;
        }
        .auto-style89 {
            width: 1126px;
        }
        .auto-style90 {
            width: 42px;
            color: #FFFFFF;
            font-family: cursive;
            font-size: large;
            height: 20px;
        }
        .auto-style91 {
            height: 56px;
            width: 42px;
            color: #CC00CC;
        }
        .auto-style92 {
            height: 40px;
            width: 42px;
        }
        .auto-style93 {
            height: 23px;
            width: 42px;
        }
        .auto-style94 {
            height: 23px;
            width: 42px;
            text-align: center;
            font-family: cursive;
            color: #FFFFFF;
        }
        .auto-style95 {
            width: 42px;
            height: 1px;
            text-align: center;
        }
        .auto-style97 {
            width: 42px;
            text-align: center;
        }
        .auto-style98 {
            width: 327px;
            color: #FFFFFF;
            font-family: cursive;
            font-size: large;
            height: 20px;
        }
        .auto-style99 {
            height: 56px;
            width: 327px;
            color: #CC00CC;
        }
        .auto-style100 {
            height: 40px;
            width: 327px;
        }
        .auto-style101 {
            height: 23px;
            width: 327px;
        }
        .auto-style102 {
            height: 23px;
            width: 327px;
            text-align: center;
            font-family: cursive;
            color: #FFFFFF;
        }
        .auto-style103 {
            width: 327px;
            height: 1px;
            text-align: center;
        }
        .auto-style105 {
            width: 327px;
            text-align: center;
        }
        .auto-style114 {
            text-align: center;
        }
        .auto-style115 {
            height: 62px;
            width: 42px;
        }
        .auto-style116 {
            height: 62px;
            width: 327px;
        }
        .auto-style118 {
            height: 62px;
            width: 1126px;
        }
        .auto-style119 {
            height: 62px;
        }
        .auto-style125 {
            height: 6px;
            width: 42px;
        }
        .auto-style126 {
            height: 6px;
            width: 327px;
        }
        .auto-style137 {
            width: 330px;
        }
        .auto-style138 {
            width: 330px;
            height: 20px;
        }
        .auto-style139 {
            height: 14px;
            width: 42px;
            text-align: center;
            font-family: cursive;
            color: #FFFFFF;
        }
        .auto-style140 {
            height: 14px;
            width: 327px;
            text-align: center;
            font-family: cursive;
            color: #FFFFFF;
        }
        .auto-style141 {
            height: 14px;
            width: 1126px;
        }
        .auto-style142 {
            height: 14px;
        }
        .auto-style143 {
            height: 1px;
        }
        .auto-style144 {
            height: 6px;
            width: 1126px;
        }
        .auto-style145 {
            height: 6px;
        }
        .auto-style146 {
            height: 21px;
            width: 42px;
        }
        .auto-style147 {
            height: 21px;
            width: 327px;
        }
        .auto-style148 {
            height: 21px;
            width: 1126px;
        }
        .auto-style149 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style90">
                &nbsp;</td>
            <td class="auto-style98">
                &nbsp;</td>
            <td class="auto-style85">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString12 %>" SelectCommand="SELECT [GiftName], [GiftQuantity], [GiftDescription], CAST([GiftCost] AS decimal (18,2)) AS Price, [GiftID] FROM [Gift]"></asp:SqlDataSource>
            </td>
            <td class="auto-style82">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style90">
                &nbsp;</td>
            <td class="auto-style98">
                &nbsp;</td>
            <td class="auto-style83" style="background-color: #B9E9FF">
                <asp:Label ID="Label11" runat="server" CssClass="auto-style84" Font-Names="Albany AMT" Text="Gifts" ForeColor="#000099"></asp:Label>
            </td>
            <td class="auto-style82" style="background-color: #303C6C">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style91">
                &nbsp;</td>
            <td class="auto-style99">
                <table class="auto-style1" style="background-color: #2E8B57">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style114">
                            <asp:Label ID="lblFirstName" runat="server" CssClass="auto-style60" Font-Names="Albany AMT" ForeColor="White"></asp:Label>
                            <asp:Label ID="lblLastName" runat="server" CssClass="auto-style56" Font-Names="Albany AMT" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style114" style="background-color: #303C6C">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style114">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style114">
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style79" Font-Names="Albany AMT" Text="CURRENT BALANCE" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style114">
                            <asp:Label ID="lblCurrentBalance" runat="server" CssClass="auto-style60" Font-Names="Albany AMT" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style86" style="background-color: #B9E9FF">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="GiftID" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" Width="850px" CssClass="auto-style63" ForeColor="#000099" HorizontalAlign="Center">
                    <ItemTemplate>
                        ID:
                        <asp:Label ID="GiftIDLabel" runat="server" Text='<%# Eval("GiftID") %>' />
                        <br />
                        Name:
                        <asp:Label ID="GiftNameLabel" runat="server" Text='<%# Eval("GiftName") %>' />
                        <br />
                        Description:
                        <asp:Label ID="GiftDescriptionLabel" runat="server" Text='<%# Eval("GiftDescription") %>' />
                        <br />
                        Quantity In-Stock:
                        <asp:Label ID="GiftQuantityLabel" runat="server" Text='<%# Eval("GiftQuantity") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                </td>
            <td class="auto-style30" style="background-color: #303C6C">
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="auto-style92">&nbsp;</td>
            
            <td class="auto-style100">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style115">
                </td>
            <td class="auto-style116">
                &nbsp;</td>
            <td class="auto-style118" style="background-color: #2E8B57">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Text="Gift ID:" ForeColor="White" Font-Size="Large"></asp:Label>
&nbsp;
                <asp:TextBox ID="txtGiftID" runat="server" Width="43px" CssClass="auto-style64" ForeColor="Black" Height="16px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Text="Quantity:" ForeColor="White" Font-Size="Large"></asp:Label>
&nbsp; <asp:DropDownList ID="listGiftQuantity" runat="server" CssClass="auto-style64" Height="28px" ForeColor="#000099">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPurchaseItem" runat="server" OnClick="btnPurchaseItem_Click" Text="Purchase Item" Width="110px" ForeColor="#000099" Font-Bold="True" Height="28px" />
            </td>
            <td class="auto-style119">
                </td>
        </tr>
        <tr>
            <td class="auto-style93">
                </td>
            <td class="auto-style101">
                </td>
            <td class="auto-style87">
                <asp:Label ID="errorMsg" runat="server" style="font-weight: 700" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style21">
                </td>
        </tr>
        <tr>
            <td class="auto-style93">&nbsp;</td>
            <td class="auto-style101">&nbsp;</td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style94"></td>
            <td class="auto-style102"></td>
            <td class="auto-style87">&nbsp;</td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style87">
                <table class="auto-style1" id="tableAddGift">
                    <tr>
                        <td class="auto-style137">
                            <asp:Label ID="Label18" runat="server" Font-Size="Medium" ForeColor="White" style="font-size: large" Text="Add A Gift"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style137">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label14" runat="server" Font-Size="Medium" ForeColor="White" Text="Gift Name:"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="txtEnterGiftName" runat="server" CssClass="auto-style63"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEnterGiftName" ErrorMessage="Must Enter Gift Name" CssClass="auto-style63"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style138">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label15" runat="server" Font-Size="Medium" ForeColor="White" Text="Gift Provider:"></asp:Label>
                        </td>
                        <td class="auto-style82">
                <asp:DropDownList ID="listGiftProviderID" runat="server" DataSourceID="SqlDataSource1" DataTextField="GiftProviderID" DataValueField="GiftProviderID" CssClass="auto-style63" ForeColor="#000099">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString19 %>" SelectCommand="SELECT [GiftProviderID] FROM [Gift_Provider]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style137">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label16" runat="server" Font-Size="Medium" ForeColor="White" Text="Gift Description:"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="auto-style63" Width="444px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="Must Enter Description" CssClass="auto-style63"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style137">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label17" runat="server" Font-Size="Medium" ForeColor="White" Text="Gift Quantity:"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="auto-style63"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Value Must Be a Number" Operator="DataTypeCheck" Type="Integer" CssClass="auto-style63"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Must Enter Quantity" CssClass="auto-style63"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style137">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label19" runat="server" Font-Size="Medium" ForeColor="White" Text="Gift Price:"></asp:Label>
                        </td>
                        <td>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style63"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Value Must Be a Number" Operator="DataTypeCheck" Type="Double" CssClass="auto-style63"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="Must Enter Price" CssClass="auto-style63"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style137">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnAddGift" runat="server" OnClick="btnAddGift_Click1" Text="Add Gift" Font-Size="Medium" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style139"></td>
            <td class="auto-style140"></td>
            <td class="auto-style141" #2E8B57>
            </td>
            <td class="auto-style142"></td>
        </tr>
        <tr>
            <td class="auto-style95">
                </td>
            <td class="auto-style103">
                </td>
            <td class="auto-style143">
            </td>
            <td class="auto-style143"></td>
        </tr>
        <tr>
            <td class="auto-style125"></td>
            <td class="auto-style126"></td>
            <td class="auto-style144">
            </td>
            <td class="auto-style145"></td>
        </tr>
        <tr>
            <td class="auto-style146"></td>
            <td class="auto-style147"></td>
            <td class="auto-style148"><span class="auto-style63">&nbsp;</span></td>
            <td class="auto-style149"></td>
        </tr>
        <tr>
            <td class="auto-style97">
                &nbsp;</td>
            <td class="auto-style105">
                &nbsp;</td>
            <td class="auto-style89">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">
                &nbsp;</td>
            <td class="auto-style105">
                &nbsp;</td>
            <td class="auto-style89">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

