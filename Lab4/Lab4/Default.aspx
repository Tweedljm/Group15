<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style10 {
            width: 395px;
        }
        .auto-style11 {
            width: 167px;
        }
    .auto-style12 {
        width: 333px;
    }
    .auto-style13 {
        width: 395px;
        text-align: center;
            font-size: x-large;
            height: 30px;
        }
    .auto-style15 {
        width: 395px;
        height: 26px;
    }
    .auto-style16 {
        width: 333px;
        height: 26px;
    }
        .auto-style21 {
            width: 280px;
            height: 26px;
            text-align: center;
        }
        .auto-style23 {
            width: 333px;
            height: 30px;
        }
        .auto-style26 {
            width: 485px;
            height: 26px;
            text-align: center;
        }
        .auto-style27 {
            width: 485px;
            height: 23px;
            text-align: center;
        }
        .auto-style28 {
            width: 485px;
            text-align: left;
            font-size: x-large;
            height: 30px;
        }
        .auto-style29 {
            width: 299px;
            height: 23px;
            text-align: center;
        }
        .auto-style30 {
            width: 333px;
            height: 23px;
        }
        .auto-style31 {
            width: 485px;
            height: 23px;
            text-align: left;
        }

        body {
             
    
        }
   

        .auto-style32 {
            font-size: xx-large;
            color: #FFFFFF;
        }
   

    </style>
    

    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
    <link rel="Stylesheet" type="text/css" href="StyleSheet.css"/>
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">
                &nbsp;</td>
            <td class="auto-style28">
                &nbsp;&nbsp;&nbsp; <em>
                <asp:Label ID="Label1" runat="server" Text="Welcome to Varma!" CssClass="auto-style32" Font-Size="40pt"></asp:Label>
                </em>
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                </td>
            <td class="auto-style27">
                </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate1" Width="440px" TitleText="Please Log In!" BorderPadding="15" style="color: #000000">
                </asp:Login>
            </td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style30">
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
    </table>
        
</asp:Content>

