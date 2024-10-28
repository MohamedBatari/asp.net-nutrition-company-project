<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ADDTRANSFERT.aspx.cs" Inherits="nutritioncompany_webapplication.ADDTRANSFERT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        /* Form Table Styles */
        .form-table {
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 8px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-table td {
            padding: 12px;
        }

        .form-table label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .form-table input[type="text"],
        .form-table select {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .form-table input[type="text"]:focus,
        .form-table select:focus {
            border-color: #3498db; /* Blue border on focus */
            outline: none;
        }

        .form-table .error-message {
            color: #e74c3c; /* Red for error messages */
            font-size: 14px;
            margin-top: 5px;
        }

        .form-table button {
            background-color: #3498db; /* Blue */
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .form-table button:hover {
            background-color: #2980b9; /* Darker blue on hover */
        }

        .submit-button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.submit-button:hover {
    background-color: #0056b3;
}

        /* GridView Styles */
        .gridview {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
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
            background-color: #2c3e50; /* Dark blue-gray */
            color: white;
        }

        .gridview tbody tr:nth-child(even) {
            background-color: #ecf0f1; /* Light gray */
        }

        .gridview tbody tr:nth-child(odd) {
            background-color: #ffffff; /* White */
        }

        .gridview tbody tr:hover {
            background-color: #bdc3c7; /* Medium gray on hover */
        }

        .gridview tfoot {
            background-color: #f2f2f2; /* Very light gray */
            color: #333333;
            font-weight: bold;
            text-align: center;
        }

        .gridview .footer,
        .gridview .pager {
            font-size: 14px;
            text-align: center;
        }

        .gridview .sorted-ascending {
            background-color: #e0f7fa; /* Light cyan */
        }

        .gridview .sorted-descending {
            background-color: #b2ebf2; /* Slightly darker cyan */
        }

        .gridview .selected-row {
            background-color: #7f8c8d; /* Gray */
            color: white;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="form-table">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Num_transfert"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Article"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Saisie l'article" CssClass="error-message"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Quantité"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Saisie la quantité" CssClass="error-message"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Num_stock"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Choisir un numéro" CssClass="error-message"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="submit-button" OnClick="Button1_Click" Text="ADD" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
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
            </td>
        </tr>
    </table>
</asp:Content>
