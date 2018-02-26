<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminGiftCatalog.aspx.cs" Inherits="AdminGiftCatalog" %>

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
        .auto-style40 {
            height: 30px;
        }
        .auto-style56 {
            color: #FFFFFF;
            font-family: cursive;
            font-size: large;
        }
        .auto-style60 {
            color: #FFFFFF;
            font-family: cursive;
            text-align: center;
            font-size: large;
        }
        .auto-style63 {
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
             color: #000099;
         }
        .auto-style85 {
            height: 20px;
            width: 1126px;
        }
        .auto-style86 {
            height: 40px;
            width: 1126px;
        }
        .auto-style89 {
            width: 1126px;
        }
        .auto-style90 {
             color: #FFFFFF;
             font-family: cursive;
             font-size: large;
             height: 20px;
             width: 27px;
         }
        .auto-style91 {
            height: 56px;
            color: #CC00CC;
             width: 27px;
         }
        .auto-style94 {
            height: 23px;
            text-align: center;
            font-family: cursive;
            color: #FFFFFF;
             width: 27px;
         }
        .auto-style95 {
            height: 30px;
            text-align: center;
             width: 27px;
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
            height: 30px;
            text-align: center;
        }
        .auto-style104 {
            width: 327px;
        }
        .auto-style105 {
            width: 327px;
            text-align: center;
        }
        .auto-style114 {
            text-align: center;
        }
        .auto-style121 {
        height: 32px;
        width: 327px;
    }
    .auto-style124 {
        height: 32px;
    }
    .auto-style125 {
        text-align: center;
        font-family: cursive;
        color: #FFFFFF;
             height: 30px;
             width: 27px;
         }
    .auto-style126 {
        width: 327px;
        text-align: center;
        font-family: cursive;
        color: #FFFFFF;
             height: 30px;
         }
    .auto-style127 {
        height: 20px;
        text-align: left;
        width: 1126px;
    }
         .auto-style128 {
             text-align: center;
             height: 23px;
         }
         .auto-style129 {
             height: 40px;
             width: 27px;
         }
         .auto-style130 {
             height: 23px;
             width: 27px;
         }
         .auto-style131 {
             height: 32px;
             width: 27px;
         }
         .auto-style132 {
             width: 27px;
         }
         .auto-style133 {
             text-align: center;
             width: 27px;
         }
         .auto-style134 {
             color: #000099;
             font-weight: bold;
         }
         .auto-style135 {
             height: 25px;
             text-align: center;
         }
            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1">
        <tr>
            <td class="auto-style90">
                </td>
            <td class="auto-style98">
                </td>
            <td class="auto-style127">
                <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" Width="108px" ValidationGroup="asdf" CssClass="auto-style134" Font-Bold="False" Font-Size="Medium" />
                <asp:Button ID="btnStats" runat="server" OnClick="btnStats_Click" Text="Analytics" Width="108px" ValidationGroup="asdf" CssClass="auto-style134" Font-Bold="False" Font-Size="Medium"/>
                <asp:Button ID="btnAdmin" runat="server" OnClick="btnAdmin_Click" Text="Administration" ValidationGroup="asdf" CssClass="auto-style134" Width="124px" Font-Bold="False" Font-Size="Medium"/>
                <asp:Button ID="btnSignOut" runat="server" CssClass="auto-style134" OnClick="Button1_Click" Text="Sign Out" ValidationGroup="Validator" Font-Bold="False" Font-Size="Medium" Width="108px" />
            </td>
            <td class="auto-style82"></td>
        </tr>
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
            <td class="auto-style83" style="background-color: #AEE4FF">
                <asp:Label ID="Label11" runat="server" CssClass="auto-style84" Font-Names="Albany AMT" Text="Gifts"></asp:Label>
            </td>
            <td class="auto-style82" >&nbsp;</td>
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
                        <td class="auto-style128"style="background-color: #303C6C">
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style114">
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style79" Font-Names="Albany AMT" Text="CURRENT BALANCE" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style135">
                            <asp:Label ID="lblCurrentBalance" runat="server" CssClass="auto-style60" Font-Names="Albany AMT" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21"></td>
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
                        <td class="auto-style21"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style86" style="background-color: #AEE4FF">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="GiftID" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" Width="850px" CssClass="auto-style63" ForeColor="#303C6C" HorizontalAlign="Center">
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
            <td class="auto-style30" >
                &nbsp;</td>
        </tr>
        <tr>
            
            <td class="auto-style129">&nbsp;</td>
            
            <td class="auto-style100">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style130">
                &nbsp;</td>
            <td class="auto-style101">
                &nbsp;</td>
            <td class="auto-style118" #2E8B57>
                <span class="auto-style63">Gift Name:
                </span>
                <asp:TextBox ID="txtEnterGiftName" runat="server" CssClass="auto-style63"></asp:TextBox>
                <span class="auto-style63">&nbsp;
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEnterGiftName" ErrorMessage="Must Enter Gift Name" CssClass="auto-style63"></asp:RequiredFieldValidator>
                <span class="auto-style63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gift Provider ID:
                </span>
                <asp:DropDownList ID="listGiftProviderID" runat="server" DataSourceID="SqlDataSource1" DataTextField="GiftProviderID" DataValueField="GiftProviderID" CssClass="auto-style63" ForeColor="#000099">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString19 %>" SelectCommand="SELECT [GiftProviderID] FROM [Gift_Provider]"></asp:SqlDataSource>
            </td>
            <td class="auto-style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style131"></td>
            <td class="auto-style121"></td>
            <td class="auto-style124"><span class="auto-style63">Description:
                </span>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="auto-style63"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="Must Enter Description" CssClass="auto-style63"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style124"></td>
        </tr>
        <tr>
            <td class="auto-style125"></td>
            <td class="auto-style126"></td>
            <td class="auto-style118"><span class="auto-style63">Quantity:
                </span>
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="auto-style63"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Value Must Be a Number" Operator="DataTypeCheck" Type="Integer" CssClass="auto-style63"></asp:CompareValidator>
                <span class="auto-style63">&nbsp;&nbsp;&nbsp;
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Must Enter Quantity" CssClass="auto-style63"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style40"></td>
        </tr>
        <tr>
            <td class="auto-style94">&nbsp;</td>
            <td class="auto-style102">&nbsp;</td>
            <td class="auto-style118"><span class="auto-style63">Enter Price:
                </span>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style63"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Value Must Be a Number" Operator="DataTypeCheck" Type="Double" CssClass="auto-style63"></asp:CompareValidator>
                <span class="auto-style63">&nbsp;&nbsp;
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="Must Enter Price" CssClass="auto-style63"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style95">
                &nbsp;</td>
            <td class="auto-style103">
                &nbsp;</td>
            <td class="auto-style118">
                <strong>
                <asp:Button ID="btnAddGift" runat="server" OnClick="btnAddGift_Click" Text="Add Gift" Width="131px" CssClass="auto-style134" />
                </strong>
            </td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style130"></td>
            <td class="auto-style101"></td>
            <td class="auto-style21"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style132">&nbsp;</td>
            <td class="auto-style104">&nbsp;</td>
            <td class="auto-style89">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style133">
                &nbsp;</td>
            <td class="auto-style105">
                &nbsp;</td>
            <td class="auto-style89">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style133">
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

