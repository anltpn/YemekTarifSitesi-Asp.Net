<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style8 {
        height: 32px;
    }
    .auto-style11 {
        font-weight: bold;
        font-size: large;
        margin-left: 47px;
    }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            height: 32px;
            text-align: right;
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
            <td class="auto-style13"><strong>Tarif Ad:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txttarifad" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txttarifmalzeme" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="txttarifyapilis" runat="server" CssClass="tb" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Resim:</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="302px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="txttarifoneren" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Öneren Mail:</strong></td>
            <td>
                <asp:TextBox ID="txttarifonerenmail" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Kategori</strong>:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb" Height="30px" Width="303px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="btnonayla" runat="server" CssClass="auto-style11" Text="Onayla" Width="200px" OnClick="btnonayla_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

