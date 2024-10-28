<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="deleteproduct.aspx.cs" Inherits="nutritioncompany_webapplication.deleteproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* GridView Container */
        .gridview-container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* GridView Styles */
        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }

        .gridview th, .gridview td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .gridview th {
            background-color: #007bff;
            color: white;
            text-align: center;
        }

        .gridview td {
            background-color: #fff;
        }

        .gridview .footer {
            background-color: #f7f7f7;
            color: #333;
        }

        .gridview .selected {
            background-color: #cce5ff;
        }

        .gridview .sorted-ascending {
            background-color: #e2e3e5;
        }

        .gridview .sorted-descending {
            background-color: #d6d6d6;
        }

        .gridview .pager {
            text-align: center;
            padding: 10px;
        }

        /* Delete Button Styles */
        .gridview .delete-button {
            color: #d9534f;
            cursor: pointer;
            font-weight: bold;
            border: none;
            background: none;
            text-decoration: underline;
        }

        .gridview .delete-button:hover {
            color: #c9302c;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gridview-container">
        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

