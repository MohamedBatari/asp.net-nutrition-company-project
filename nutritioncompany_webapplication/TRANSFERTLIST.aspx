<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TRANSFERTLIST.aspx.cs" Inherits="nutritioncompany_webapplication.TRANSFERTLIST" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General Reset */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
        }

        /* GridView Styling */
        #GridView1 {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            border-radius: 8px; /* Rounded corners */
            overflow: hidden; /* Ensure rounded corners are respected */
        }

        /* Header Styling */
        #GridView1 thead {
            background-color: #2c3e50; /* Dark blue-gray */
            color: white;
        }

        #GridView1 th {
            padding: 12px;
            text-align: left;
            font-weight: bold;
            border-bottom: 2px solid #34495e; /* Slightly darker blue-gray */
        }

        /* Body Row Styling */
        #GridView1 tbody tr:nth-child(even) {
            background-color: #ecf0f1; /* Light gray */
        }

        #GridView1 tbody tr:nth-child(odd) {
            background-color: #ffffff; /* White */
        }

        #GridView1 tbody tr:hover {
            background-color: #bdc3c7; /* Medium gray on hover */
        }

        /* Footer Styling */
        #GridView1 tfoot {
            background-color: #f2f2f2; /* Very light gray */
            color: #333333;
        }

        #GridView1 tfoot td {
            padding: 12px;
            font-weight: bold;
            text-align: center;
        }

        /* Pager Style */
        #GridView1 .pager {
            font-size: 14px;
            text-align: center;
            padding: 10px;
        }

        /* Styling for Different Sort States */
        #GridView1 .sorted-ascending {
            background-color: #e0f7fa; /* Light cyan */
        }

        #GridView1 .sorted-descending {
            background-color: #b2ebf2; /* Slightly darker cyan */
        }

        /* Selected Row Style */
        #GridView1 .selected-row {
            background-color: #7f8c8d; /* Gray */
            color: white;
            font-weight: bold;
        }

        /* Button Styling within GridView (if needed) */
        .gridview-button {
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            color: white;
            background-color: #3498db; /* Blue */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .gridview-button:hover {
            background-color: #2980b9; /* Darker blue */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="gridview">
        <FooterStyle BackColor="#f2f2f2" ForeColor="#333333" />
        <HeaderStyle BackColor="#2c3e50" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#ffffff" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#7f8c8d" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#e0f7fa" />
        <SortedAscendingHeaderStyle BackColor="#2c3e50" />
        <SortedDescendingCellStyle BackColor="#b2ebf2" />
        <SortedDescendingHeaderStyle BackColor="#34495e" />
    </asp:GridView>
</asp:Content>


