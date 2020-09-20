<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        text-align: right;
        width: 88px;
    }
    .auto-style10 {
        width: 248px;
    }
    .auto-style11 {
        font-size: large;
    }
        .auto-style12 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style13 {
            width: 31px;
            text-align: center;
        }
        .auto-style14 {
            width: 27px;
            text-align: center;
        }
        .auto-style16 {
            height: 32px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            margin-left: 46px;
        }
        .auto-style19 {
        width: 31px;
        text-align: center;
        height: 34px;
    }
    .auto-style20 {
        width: 27px;
        text-align: center;
        height: 34px;
    }
    .auto-style21 {
        height: 34px;
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
                        <td class="auto-style9">
                           <a href="Yemekler.aspx?YemekID=<%#Eval("YemekID")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style8">
                            <a href ="YemekDuzenle.aspx?YemekID=<%#Eval("YemekID") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update2.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" style="background-color: #ffd800">
        <table class="auto-style6">
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td><strong>YEMEK EKLEME </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style6">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Yemek Ad:</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Malzeme:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek</strong> <strong>Tarifi</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>Kategori</strong></td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnekle" runat="server" CssClass="auto-style18" Height="35px" OnClick="btnekle_Click" Text="EKLE" Width="200px" />
                    </strong></td>
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
    </asp:Panel>

    </asp:Content>



