<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UPSATETRANSFERT.aspx.cs" Inherits="nutritioncompany_webapplication.UPSATETRANSFERT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* General Page Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Table Container */
        .form-container {
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Table Styles */
        .form-table {
            width: 100%;
            border-collapse: collapse;
        }

        .form-table td {
            padding: 12px;
            vertical-align: middle;
        }

        .form-table td label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-table input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .form-table input[type="text"]:disabled {
            background-color: #e9ecef;
            color: #6c757d;
        }

        .form-table input[type="text"]:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Button Styles */
        .form-button {
            background-color: #dc3545; /* Bootstrap Danger Color */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-button:hover {
            background-color: #c82333; /* Darker shade on hover */
        }

        /* GridView Styles */
        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .gridview th,
        .gridview td {
            padding: 12px;
            text-align: left;
        }

        .gridview thead {
            background-color: #343a40; /* Darker gray */
            color: white;
        }

        .gridview tbody tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray */
        }

        .gridview tbody tr:nth-child(odd) {
            background-color: #ffffff; /* White */
        }

        .gridview tbody tr:hover {
            background-color: #e9ecef; /* Light gray on hover */
        }

        .gridview tfoot {
            background-color: #e9ecef; /* Light gray */
            color: #333;
            font-weight: bold;
            text-align: center;
        }

        .gridview .footer,
        .gridview .pager {
            font-size: 14px;
            text-align: center;
        }

        .gridview .sorted-ascending {
            background-color: #e9f5ff; /* Light blue */
        }

        .gridview .sorted-descending {
            background-color: #b3e0ff; /* Slightly darker blue */
        }

        .gridview .selected-row {
            background-color: #007bff; /* Blue */
            color: white;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <table class="form-table">
            <tr>
                <td><label for="TextBox1">Num_transfert</label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label for="TextBox2">Quantité</label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label for="TextBox3">Article</label></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label for="TextBox4">Num_stock</label></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="form-button" OnClick="Button1_Click" Text="DELETE" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#e9ecef" ForeColor="#333333" />
                        <HeaderStyle BackColor="#343a40" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#ffffff" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#007bff" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#e9f5ff" />
                        <SortedAscendingHeaderStyle BackColor="#343a40" />
                        <SortedDescendingCellStyle BackColor="#b3e0ff" />
                        <SortedDescendingHeaderStyle BackColor="#007bff" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
