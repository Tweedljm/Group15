<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body{
            background-color:lightsteelblue;
        }
        .auto-style22 {
            width: 488px;
        }
    .auto-style23 {
        width: 429px;
    }
    .auto-style24 {
        width: 429px;
        height: 23px;
    }
    
        body {
            background-color: #AA7DBF;
        }
        .auto-style45 {
            font-family: cursive;
        }
        .auto-style51 {
            width: 488px;
            text-align: center;
        }
        .auto-style55 {
        width: 449px;
        color: #CC00CC;
        height: 56px;
        text-align: center;
    }
    .auto-style65 {
        margin-left: 0px;
    }
    .auto-style68 {
        font-size: x-large;
    }
    .auto-style73 {
        width: 152%;
        table-layout: fixed;
        background-color: #BBDDFF;
    }
    .auto-style74 {
        text-align: left;
    }
    .auto-style76 {
        text-align: left;
        width: 85px;
    }
    .auto-style77 {
        width: 85px;
    }
    .auto-style78 {
        width: 465px;
    }
    .auto-style79 {
        width: 465px;
        text-align: left;
    }
    .auto-style80 {
        text-align: left;
        width: 85px;
        height: 23px;
    }
    .auto-style81 {
        width: 465px;
        text-align: left;
        height: 23px;
    }
    .auto-style82 {
        text-align: left;
        height: 23px;
    }
    .auto-style83 {
        width: 465px;
        text-align: right;
            height: 34px;
        }
    .auto-style84 {
        width: 12px;
    }
    .auto-style85 {
        text-align: left;
        width: 12px;
    }
    .auto-style86 {
        text-align: left;
        height: 23px;
        width: 12px;
    }
    .auto-style87 {
        width: 465px;
        text-align: center;
            height: 23px;
        }
        .auto-style88 {
            text-align: left;
            width: 85px;
            height: 29px;
        }
        .auto-style89 {
            width: 465px;
            text-align: right;
            height: 29px;
        }
        .auto-style90 {
            text-align: left;
            width: 12px;
            height: 29px;
        }
        .auto-style91 {
            text-align: left;
            height: 29px;
        }
        .auto-style97 {
            width: 225px;
            color: #CC00CC;
            height: 56px;
            text-align: center;
        }
        .auto-style108 {
            width: 18px;
            color: #CC00CC;
            height: 56px;
            text-align: center;
        }
        .auto-style123 {
            width: 225px;
            color: #CC00CC;
            height: 35px;
            text-align: center;
        }
        .auto-style124 {
            width: 18px;
            color: #CC00CC;
            height: 35px;
            text-align: center;
        }
        .auto-style125 {
            width: 449px;
            color: #CC00CC;
            height: 35px;
            text-align: center;
        }
        .auto-style126 {
            width: 488px;
            font-size: x-large;
            height: 35px;
            text-align: center;
        }
        .auto-style127 {
            height: 35px;
        }
        .auto-style128 {
            width: 85px;
            height: 24px;
        }
        .auto-style129 {
            width: 465px;
            text-align: center;
            height: 24px;
        }
        .auto-style130 {
            width: 12px;
            height: 24px;
        }
        .auto-style132 {
            text-align: left;
            width: 85px;
            height: 30px;
        }
        .auto-style133 {
            width: 465px;
            text-align: left;
            height: 30px;
        }
        .auto-style134 {
            text-align: left;
            width: 12px;
            height: 30px;
        }
        .auto-style135 {
            text-align: left;
            table-layout: inherit;
            height: 30px;
        }
        .auto-style141 {
            width: 225px;
            color: #CC00CC;
            height: 56px;
            text-align: left;
        }
    .auto-style143 {
            width: 21px;
            font-size: x-large;
            height: 35px;
        }
    .auto-style145 {
        width: 21px;
        text-align: center;
    }
    .auto-style146 {
            width: 21px;
        }
        .auto-style147 {
            width: 85px;
            height: 23px;
        }
        .auto-style148 {
            width: 12px;
            height: 23px;
        }
        .auto-style149 {
            table-layout: inherit;
            height: 23px;
        }
        .auto-style150 {
            width: 225px;
            color: #CC00CC;
            text-align: center;
        }
        .auto-style151 {
            width: 18px;
            color: #CC00CC;
            text-align: center;
        }
        .auto-style152 {
            width: 449px;
            color: #CC00CC;
            text-align: center;
        }
        .auto-style153 {
            width: 21px;
            font-size: x-large;
        }
        .auto-style154 {
            width: 488px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style155 {
            width: 449px;
            color: #CC00CC;
            height: 55px;
        }
        .auto-style156 {
            width: 225px;
            color: #CC00CC;
            height: 5px;
            text-align: center;
        }
        .auto-style157 {
            width: 18px;
            color: #CC00CC;
            height: 5px;
            text-align: center;
        }
        .auto-style158 {
            width: 449px;
            color: #CC00CC;
            height: 5px;
            text-align: center;
        }
        .auto-style159 {
            width: 21px;
            font-size: x-large;
            height: 5px;
        }
        .auto-style160 {
            width: 488px;
            font-size: x-large;
            height: 5px;
            text-align: center;
        }
        .auto-style161 {
            height: 5px;
        }
        .auto-style162 {
            width: 225px;
            color: #CC00CC;
            height: 55px;
            text-align: center;
        }
        .auto-style163 {
            width: 18px;
            color: #CC00CC;
            height: 55px;
            text-align: center;
        }
        .auto-style164 {
            width: 21px;
            font-size: x-large;
            height: 55px;
        }
        .auto-style165 {
            width: 488px;
            font-size: x-large;
            height: 55px;
            text-align: center;
        }
        .auto-style166 {
            height: 55px;
        }
        .auto-style167 {
            width: 465px;
            text-align: right;
            height: 23px;
        }
        .auto-style168 {
            text-align: left;
            table-layout: inherit;
            height: 23px;
        }
        .auto-style169 {
            height: 24px;
        }
        .auto-style170 {
            text-align: left;
            width: 85px;
            height: 34px;
        }
        .auto-style171 {
            text-align: left;
            width: 12px;
            height: 34px;
        }
        .auto-style172 {
            text-align: left;
            table-layout: inherit;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style123">
                &nbsp;</td>
            <td class="auto-style124"></td>
            <td class="auto-style125">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style143"></td>
            <td class="auto-style126">&nbsp;</td>
            <td class="auto-style127"></td>
        </tr>
        <tr>
            <td class="auto-style150">
                <asp:Label ID="Label15" runat="server" Font-Size="Large" ForeColor="White" Text="Leaderboard" style="font-weight: 700"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataSourceID="SqlDataSource4" ForeColor="White" GridLines="Horizontal" Height="386px" Width="239px" BackColor="SeaGreen" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Employee" HeaderText="Employee" ReadOnly="True" SortExpression="Employee" />
                        <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString18 %>" SelectCommand="SELECT FirstName + ' ' + LastName As Employee, CAST(TotalRewardsReceived AS decimal(18 , 2)) As Total From [dbo].[Employee] E inner join [dbo].[Account] A on E.EmployeeID = A.EmployeeID where E.EmployeeID &gt; 1 order by [TotalRewardsReceived] desc"></asp:SqlDataSource>
                <br />
            </td>
            <td class="auto-style151"></td>
            <td class="auto-style152">
                <table class="auto-style73" style="background-color: #B9E9FF">
                    <tr>
                        <td class="auto-style147"></td>
                        <td class="auto-style87"></td>
                        <td class="auto-style148"></td>
                        <td class="auto-style149"></td>
                    </tr>
                    <tr>
                        <td class="auto-style128"></td>
                        <td class="auto-style129">
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style68" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Who do you want to reward?"></asp:Label>
                        </td>
                        <td class="auto-style130"></td>
                        <td class="auto-style169"></td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style79">&nbsp;</td>
                        <td class="auto-style84">&nbsp;</td>
                        <td style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style79">
                            <asp:Label ID="Label11" runat="server" ForeColor="#000099" Text="Select an employee:"></asp:Label>
                        </td>
                        <td class="auto-style84">&nbsp;</td>
                        <td style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style78">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="FullName" DataValueField="FullName" CssClass="auto-style65" Width="460px">
                </asp:DropDownList>
                        </td>
                        <td class="auto-style84">&nbsp;</td>
                        <td style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style77">&nbsp;</td>
                        <td class="auto-style78">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString4 %>" SelectCommand="SELECT FirstName + ' ' + LastName As FullName From [dbo].[Employee] E inner join [dbo].[Account] A on E.EmployeeID = A.EmployeeID where E.EmployeeID &gt; 1"></asp:SqlDataSource>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style79">
                            <asp:Label ID="Label9" runat="server" Font-Size="Medium" ForeColor="#000099" Text="Select a category:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Font-Size="Medium" ForeColor="#000099" Text="Select a value:"></asp:Label>
                        </td>
                        <td class="auto-style85">&nbsp;</td>
                        <td style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style132"></td>
                        <td class="auto-style133">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                    <asp:ListItem>Creative</asp:ListItem>
                    <asp:ListItem>Distinguished</asp:ListItem>
                    <asp:ListItem>Exceptional</asp:ListItem>
                    <asp:ListItem>Fresh Approach</asp:ListItem>
                    <asp:ListItem>Superior</asp:ListItem>
                    <asp:ListItem>Ingenious</asp:ListItem>
                    <asp:ListItem>Incomparable</asp:ListItem>
                    <asp:ListItem>Outstanding</asp:ListItem>
                    <asp:ListItem>Surprising</asp:ListItem>
                    <asp:ListItem>Symbolic</asp:ListItem>
                    <asp:ListItem>Unexpected</asp:ListItem>
                </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:DropDownList ID="ddAddValue" runat="server" DataTextField="ValueName" DataValueField="ValueName" DataSourceID="SqlDataSource3" Width="150px">
                </asp:DropDownList>
                
                        </td>
                        <td class="auto-style134"></td>
                        <td class="auto-style135"></td>
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style79">
                
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString11 %>" SelectCommand="SELECT [ValueName] FROM [Organization_Values]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style74" style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style79">
                            <asp:Label ID="Label12" runat="server" ForeColor="#000099" Text="Provide a description:"></asp:Label>
                        </td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style74" style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style79">
                            <asp:TextBox 
                       ID="txtWritePost" 
                       runat="server" Width="455px" MaxLength="150" />
                        </td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style74" style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style80"></td>
                        <td class="auto-style81">
                    <asp:RequiredFieldValidator
                             id="RequiredFieldValidator1"
                             ControlToValidate="txtWritePost"
                             ErrorMessage="Name is Required"
                             Display="Static"
                             InitialValue="" 
                             Width="100%" 
                             Text="*Required"
                             runat="server" ForeColor="#000099" CssClass="auto-style45"/>
                        </td>
                        <td class="auto-style86">&nbsp;</td>
                        <td class="auto-style82" style="table-layout: inherit"></td>
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style79">
                            <asp:Label ID="Label13" runat="server" ForeColor="#000099" Text="Choose reward amount:"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style74" style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style76">&nbsp;</td>
                        <td class="auto-style79">
                
                <asp:DropDownList ID="ddAddAmount" runat="server" Width="100px">
                    <asp:ListItem Value="10">$10</asp:ListItem>
                    <asp:ListItem Value="15">$15</asp:ListItem>
                    <asp:ListItem Value="25">$25</asp:ListItem>
                </asp:DropDownList>
               
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style85">&nbsp;</td>
                        <td class="auto-style74" style="table-layout: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style88"></td>
                        <td class="auto-style89">
                            <asp:Button ID="btnCancel" runat="server" BackColor="#B9E9FF" BorderColor="#BBDDFF" BorderStyle="None" BorderWidth="0px" Font-Size="Medium" ForeColor="#000099" Text="Cancel" />
                        </td>
                        <td class="auto-style90">
                <asp:Button ID="btnReward" runat="server" OnClick="btnReward_Click" Text="Reward" BackColor="SeaGreen" BorderColor="White" BorderStyle="None" ForeColor="White" BorderWidth="0px" Font-Bold="True" Font-Size="Medium" Height="31px" Width="94px" />
                        </td>
                        <td class="auto-style91" style="table-layout: inherit">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style80"></td>
                        <td class="auto-style167">
                        <asp:Label ID="messageTxt" runat="server" ForeColor="#000099" style="font-weight: 700; text-align: left"></asp:Label>
                        </td>
                        <td class="auto-style86"></td>
                        <td class="auto-style168"></td>
                    </tr>
                    <tr>
                        <td class="auto-style170"></td>
                        <td class="auto-style83">
                <asp:Button ID="yesButton" runat="server" OnClick="yesButton_Click" Text="Yes" Visible="False" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" BorderColor="White" Height="30px" Width="50px" Font-Bold="True" />
                <asp:Button ID="noButton" runat="server" OnClick="noButton_Click" Text="No" Visible="False" BackColor="#B9E9FF" BorderStyle="None" ForeColor="#000099" BorderColor="White" Height="30px" Width="50px" />
                        </td>
                        <td class="auto-style171"></td>
                        <td class="auto-style172"></td>
                    </tr>
                </table>
            </td>
            <td class="auto-style153"></td>
            <td class="auto-style154">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString22 %>" SelectCommand="SELECT SUM(Reward_Transactions.ValueID) AS Expr1, Organization_Values.ValueName FROM Organization_Values INNER JOIN Reward_Transactions ON Organization_Values.ValueID = Reward_Transactions.ValueID GROUP BY Organization_Values.ValueName "></asp:SqlDataSource>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource5" style="text-align: right" BorderlineColor="Transparent" Height="383px" Palette="SeaGreen" Width="414px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="ValueName" YValueMembers="Expr1">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style156"></td>
            <td class="auto-style157"></td>
            <td class="auto-style158"></td>
            <td class="auto-style159"></td>
            <td class="auto-style160"></td>
            <td class="auto-style161"></td>
        </tr>
        <tr>
            <td class="auto-style162" style="background-color: #303C6C; color: #FFFFFF;"></td>
            <td class="auto-style163" style="background-color: #303C6C"></td>
            <td class="auto-style155" style="background-color: #2E8B57">&nbsp;&nbsp;
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Total Amount Rewarded"></asp:Label>
                        &nbsp;
                            <asp:Label ID="lblTotalRewards" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        </td>
            <td class="auto-style164" style="background-color: #303C6C"></td>
            <td class="auto-style165" style="background-color: #303C6C"></td>
            <td class="auto-style166"></td>
        </tr>
        <tr>
            <td class="auto-style123"></td>
            <td class="auto-style124"></td>
            <td class="auto-style125"></td>
            <td class="auto-style143"></td>
            <td class="auto-style126"></td>
            <td class="auto-style127"></td>
        </tr>
        <tr>
            <td class="auto-style141">
                &nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style55">
                <asp:DataList ID="DataList1" runat="server" BorderStyle="None" DataSourceID="SqlDataSource1" Font-Size="Medium" ForeColor="White" GridLines="Horizontal" HorizontalAlign="Center" Width="680px" Height="16px">
                    <ItemStyle HorizontalAlign="Left" Font-Size="Medium" />
                    <ItemTemplate>
                        <asp:Label ID="Column1Label" runat="server" Text='<%# Eval("Column1") %>' />
                        <br />
                        <asp:Label ID="RewarderLabel" runat="server" Text='<%# Eval("Rewarder") %>' />
                        rewarded
                        <asp:Label ID="RewardeeLabel" runat="server" Text='<%# Eval("Rewardee") %>' />
                        for
                        <asp:Label ID="Reward_CategoryLabel" runat="server" Text='<%# Eval("[Reward Category]") %>' />
                        <asp:Label ID="ValueLabel" runat="server" Text='<%# Eval("Value") %>' />
                        <br />
                        &nbsp;<br /> Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
<br />
                        Reward Amount: $ <asp:Label ID="Reward_AmountLabel" runat="server" Text='<%# Eval("[Reward Amount]") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString13 %>" SelectCommand="SELECT CONVERT(CHAR(10), RT.RewardDate, 101), E.FirstName + ' ' + E.LastName AS Rewardee, S.FirstName + ' ' + S.LastName AS Rewarder,  RT.RewardType AS [Reward Category], V.ValueName AS Value, RT.RewardDescription AS Description,  CAST(RT.RewardAmount AS decimal(18 , 2)) AS [Reward Amount] FROM Reward_Transactions AS RT INNER JOIN Employee AS E ON RT.ReceiverID = E.EmployeeID INNER JOIN Employee AS S ON RT.SenderID = S.EmployeeID INNER JOIN Organization_Values AS V ON RT.ValueID = V.ValueID ORDER BY RT.RewardID DESC

"></asp:SqlDataSource>
            </td>
            <td class="auto-style145">
                &nbsp;</td>
            <td class="auto-style51">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style146">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style146">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style146">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style97">&nbsp;</td>
            <td class="auto-style108">&nbsp;</td>
            <td class="auto-style55">&nbsp;</td>
            <td class="auto-style146">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

