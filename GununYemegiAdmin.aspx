<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style19 {
            width: 31px;
            text-align: center;
            height: 34px;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style20 {
            width: 27px;
            text-align: center;
            height: 34px;
        }
        .auto-style21 {
            height: 34px;
        }
    .auto-style10 {
        width: 248px;
    }
    .auto-style11 {
        font-size: large;
    }
        .auto-style9 {
        text-align: right;
        width: 88px;
    }
    .auto-style8 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #ffd800">
        <table class="auto-style6">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style21"><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="448px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8"><a href ="YemekDuzenle.aspx?YemekID=<%#Eval("YemekID") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/onayla.jpg" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    
</asp:Content>

