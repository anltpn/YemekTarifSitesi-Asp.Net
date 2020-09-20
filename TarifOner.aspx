<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        height: 23px;
        margin-left: 40px;
    }
    .auto-style8 {
        height: 23px;
        text-align: right;
        font-weight: bold;
        margin-left: 40px;
    }
    .auto-style9 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server" Width="246px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Malzemeler: </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Yapılışı:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Resim:</td>
        <td class="auto-style7">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Tarif Öneren:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtTarifOner" runat="server" Width="248px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mail Adresi:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="248px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="btnTarifOner" runat="server" BackColor="#FFFFCC" Height="40px" OnClick="btnTarifOner_Click1" style="margin-left: 25px; font-weight: 700; font-size: x-large;" Text="Tarif Öner" Width="200px" CssClass="button" />
        </td>
    </tr>
</table>
</asp:Content>

