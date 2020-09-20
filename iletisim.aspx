<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
            margin-left: 40px;
        }
        .auto-style8 {
            height: 23px;
            font-weight: bold;
            text-align: right;
            margin-left: 40px;
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td id="t" class="auto-style8">Ad Soyad:</td>
            <td id="t" class="auto-style7">
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="t" class="auto-style8">Mail Adresiniz:</td>
            <td id="t" class="auto-style7">
                <asp:TextBox ID="txtmail" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="t" class="auto-style8">Konu:</td>
            <td id="t" class="auto-style7">
                <asp:TextBox ID="txtkonu" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="t" class="auto-style8">Mesaj:</td>
            <td id="t" class="auto-style7">
                <asp:TextBox ID="txtmesaj" runat="server" CssClass="tb" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td id="t" class="auto-style7">&nbsp;</td>
            <td id="t" class="auto-style7">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700; font-size: large" Text="Gönder" Width="230px" CssClass="button" Height="40px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

