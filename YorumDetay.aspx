<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        height: 32px;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        height: 32px;
        text-align: right;
    }
    .auto-style11 {
        font-weight: bold;
        font-size: large;
        margin-left: 47px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style6">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10"><strong>Ad Soyad:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="txtad" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="txtmail" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Yorum İçerik:</strong></td>
        <td>
            <asp:TextBox ID="txticerik" runat="server" CssClass="tb" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"><strong>Yemek:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="txtyemek" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="btnonayla" runat="server" CssClass="auto-style11" OnClick="btnonayla_Click" Text="Onayla" Width="200px" />
            </strong></td>
    </tr>
</table>
</asp:Content>

