<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stocklist.aspx.cs" Inherits="nutritioncompany_webapplication.stocklist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* GridView container */
        .grid-view-container {
            width: 100%;
            max-width: 620px;
            margin: 0 auto;
            border-collapse: separate; /* Ensures proper spacing between cells */
            border-spacing: 2px; /* Adds space between cells */
        }

        /* Header style */
        .grid-view-header {
            background-color: #A55129;
            color: white;
            font-weight: bold;
            text-align: left;
            padding: 8px;
        }

        /* Footer style */
        .grid-view-footer {
            background-color: #F7DFB5;
            color: #8C4510;
            text-align: left;
            padding: 8px;
        }

        /* Row styles */
        .grid-view-row {
            background-color: #FFF7E7;
            color: #8C4510;
            padding: 8px;
        }

        /* Alternating row style */
        .grid-view-alternating-row {
            background-color: #FFF7E7;
            color: #8C4510;
        }

        /* Edit row style */
        .grid-view-edit-row {
            background-color: #DEBA84;
            color: #8C4510;
        }

        /* Selected row style */
        .grid-view-selected-row {
            background-color: #738A9C;
            color: white;
            font-weight: bold;
        }

        /* Pager style */
        .grid-view-pager {
            background-color: #F7DFB5;
            color: #8C4510;
            text-align: center;
            padding: 8px;
        }

        /* Sorted styles */
        .grid-view-sorted-ascending-cell {
            background-color: #FFF1D4;
        }

        .grid-view-sorted-ascending-header {
            background-color: #B95C30;
        }

        .grid-view-sorted-descending-cell {
            background-color: #F1E5CE;
        }

        .grid-view-sorted-descending-header {
            background-color: #93451F;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="grid-view-container" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <FooterStyle CssClass="grid-view-footer" />
        <HeaderStyle CssClass="grid-view-header" />
        <PagerStyle CssClass="grid-view-pager" />
        <RowStyle CssClass="grid-view-row" />
        <SelectedRowStyle CssClass="grid-view-selected-row" />
        <SortedAscendingCellStyle CssClass="grid-view-sorted-ascending-cell" />
        <SortedAscendingHeaderStyle CssClass="grid-view-sorted-ascending-header" />
        <SortedDescendingCellStyle CssClass="grid-view-sorted-descending-cell" />
        <SortedDescendingHeaderStyle CssClass="grid-view-sorted-descending-header" />
    </asp:GridView>
</asp:Content>

