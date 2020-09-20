<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center; background-color: #FFFF99"><a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                        <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large; text-align: center; color: #003300" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler: </strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Image ID="Image2" runat="server" Height="171px" ImageUrl='<%# Eval("YemekResim") %>' Width="399px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Ekleme Tarihi:</strong>
                        <asp:Label ID="Label7" runat="server" style="font-style: italic; color: #000000" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

