<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addstock.aspx.cs" Inherits="nutritioncompany_webapplication.addstock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Form Container */
        .form-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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

        .form-table .label {
            text-align: right;
            font-weight: bold;
            color: #333;
            width: 30%;
        }

        .form-table .input {
            width: 70%;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .error-message {
            color: #d9534f;
            font-size: 0.875em;
            margin-top: 5px;
        }

        .submit-button {
            width: 100%;
            padding: 12px;
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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <!-- Note: Remove the form tag if you don't need it -->
        <table class="form-table">
            <tr>
                <td class="label">
                    <asp:Label ID="Label1" runat="server" Text="Num_stock"></asp:Label>
                </td>
                <td class="input">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">
                    <asp:Label ID="Label2" runat="server" Text="Article :"></asp:Label>
                </td>
                <td class="input">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Saisie l'article" CssClass="error-message"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="L'article n'accèpte que des caractères" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="label">
                    <asp:Label ID="Label3" runat="server" Text="Quantité :"></asp:Label>
                </td>
                <td class="input">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Saisie la quantitè" CssClass="error-message"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Saisir une quantité" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" CssClass="submit-button" OnClick="Button2_Click" Text="ADD" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
