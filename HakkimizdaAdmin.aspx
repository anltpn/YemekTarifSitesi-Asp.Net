<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style13 {
            width: 31px;
            text-align: center;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style14 {
            width: 27px;
            text-align: center;
        }
        .auto-style15 {
        border: 2px solid #456879;
        border-radius: 10px;
    }
    .auto-style16 {
        font-weight: bold;
        font-size: large;
        margin-left: 91px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #ffd800">
        <table class="auto-style6">
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>HAKKIMIZDA GÜNCELLE</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style6">
            <tr>
                <td>
                    <asp:TextBox ID="txtmetin" runat="server" CssClass="auto-style15" Height="250px" TextMode="MultiLine" Width="436px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Button ID="btnguncelle" runat="server" CssClass="auto-style16" Height="30px" Text="GÜNCELLE" Width="250px" OnClick="btnguncelle_Click" />
                    </strong></td>
            </tr>
        </table>
        
    </asp:Panel>   
</asp:Content>

