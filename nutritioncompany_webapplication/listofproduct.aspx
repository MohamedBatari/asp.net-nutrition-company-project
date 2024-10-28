<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="listofproduct.aspx.cs" Inherits="nutritioncompany_webapplication.listofproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* GridView Container */
        .grid-view-container {
            width: 100%;
            max-width: 900px;
            margin: 0 auto;
            border-collapse: collapse;
        }

        /* Header Style */
        .grid-view-header {
            background-color: #5D7B9D;
            color: white;
            font-weight: bold;
            text-align: left;
            padding: 8px;
        }

        /* Footer Style */
        .grid-view-footer {
            background-color: #5D7B9D;
            color: white;
            font-weight: bold;
            text-align: left;
            padding: 8px;
        }

        /* Alternating Row Style */
        .grid-view-alternating-row {
            background-color: white;
            color: #284775;
        }

        /* Edit Row Style */
        .grid-view-edit-row {
            background-color: #999999;
            color: white;
        }

        /* Row Style */
        .grid-view-row {
            background-color: #F7F6F3;
            color: #333333;
            padding: 8px;
        }

        /* Selected Row Style */
        .grid-view-selected-row {
            background-color: #E2DED6;
            color: #333333;
            font-weight: bold;
        }

        /* Pager Style */
        .grid-view-pager {
            background-color: #284775;
            color: white;
            text-align: center;
            padding: 8px;
        }

        /* Sorted Ascending Header */
        .grid-view-sorted-ascending-header {
            background-color: #506C8C;
        }

        /* Sorted Descending Header */
        .grid-view-sorted-descending-header {
            background-color: #6F8DAE;
        }

        /* Sorted Ascending Cell */
        .grid-view-sorted-ascending-cell {
            background-color: #E9E7E2;
        }

        /* Sorted Descending Cell */
        .grid-view-sorted-descending-cell {
            background-color: #FFFDF8;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="grid-view-container" CellPadding="4" ForeColor="#333333" GridLines="None">
        
        <AlternatingRowStyle CssClass="grid-view-alternating-row" />
        <EditRowStyle CssClass="grid-view-edit-row" />
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

