<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchBar.aspx.cs" Inherits="SearchBar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style25 {
        height: 23px;
    }
    .auto-style26 {
        height: 26px;
    }
    .auto-style27 {
            width: 450px;
        }
    .auto-style28 {
            height: 23px;
            width: 66px;
        }
        .auto-style68 {
            width: 446px;
        }
        .auto-style69 {
            height: 26px;
            width: 446px;
            font-size: x-large;
        }
        .auto-style70 {
            height: 26px;
            width: 446px;
        }
        .auto-style72 {
            width: 99%;
            height: 158px;
            background-color: #2E8B57;
        }
        .auto-style73 {
            text-align: center;
        }
        .auto-style75 {
            text-align: center;
            height: 24px;
        }
        .auto-style76 {
            width: 66px;
            color: #CC00CC;
            height: 28px;
        }
        .auto-style77 {
            height: 26px;
            width: 66px;
        }
        .auto-style83 {
            height: 46px;
        }
        .auto-style84 {
            height: 46px;
            width: 446px;
        }
        .auto-style85 {
            width: 66px;
            color: #CC00CC;
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style76">
            &nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style85">
        </td>
        <td class="auto-style84"></td>
        <td class="auto-style83">
            <asp:TextBox ID="searchBarTxt" runat="server" Width="364px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Button ID="searchButton" runat="server" OnClick="searchButton_Click" Text="Search" />
        </td>
        <td class="auto-style83"></td>
    </tr>
    <tr>
        <td class="auto-style76">
            &nbsp;</td>
        <td class="auto-style68">
            <table class="auto-style72">
                <tr>
                    <td class="auto-style75"></td>
                </tr>
                <tr>
                    <td class="auto-style73">
                        <asp:Label ID="lblFirstName" runat="server" ForeColor="White" Font-Size="X-Large"></asp:Label>
                        <asp:Label ID="lblLastName" runat="server" ForeColor="White" Font-Size="X-Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style73">
                        <asp:Label ID="lblPageLoad" runat="server" Font-Bold="True" Font-Names="Centaur" Font-Size="XX-Large" ForeColor="White"></asp:Label>
                        <asp:Label ID="lblEmail" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style73">
                        <asp:Image ID="Image1" runat="server" Height="97px" Width="129px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style73">&nbsp;</td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString25 %>" SelectCommand="SELECT Account.EmployeeID, Employee.FirstName, Employee.MI, Employee.LastName FROM Employee INNER JOIN Account ON Employee.EmployeeID = Account.EmployeeID WHERE (Employee.FirstName LIKE @FirstName + '%') OR (Employee.LastName LIKE @LastName + '%') ORDER BY Account.EmployeeID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="searchBarTxt" Name="FirstName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="searchBarTxt" Name="LastName" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="436px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="MI" HeaderText="MI" SortExpression="MI" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style28"></td>
        <td class="auto-style69">
            &nbsp;</td>
        <td class="auto-style25">
            &nbsp;</td>
        <td class="auto-style25">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style77">
            &nbsp;</td>
        <td class="auto-style70"></td>
        <td class="auto-style26">&nbsp;</td>
        <td class="auto-style26">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">
            <asp:DataList ID="DataList1" runat="server" BackColor="#303C6C" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Font-Bold="False" Font-Italic="False" Font-Names="cursive" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Width="711px" OnItemCreated="DataList1_ItemDataBound" ValidateRequestMode="Enabled" ViewStateMode="Enabled" Font-Size="Medium">
                    <AlternatingItemStyle BackColor="#303C6C" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Width="500px" />
                    <EditItemStyle HorizontalAlign="Left" BackColor="#303C6C" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="White" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                    <ItemStyle BackColor="#303C6C" ForeColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" Font-Size="Medium" />

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
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style28"></td>
        <td class="auto-style69"></td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">
            &nbsp;</td>
        <td class="auto-style68">
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style76">&nbsp;&nbsp;</td>
        <td class="auto-style68">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

