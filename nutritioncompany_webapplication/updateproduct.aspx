<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updateproduct.aspx.cs" Inherits="nutritioncompany_webapplication.updateproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
            border-bottom: 1px solid #ddd;
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

        .button-container {
            padding: 10px;
            text-align: center;
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
        }

        .gridview th {
            background-color: #007bff;
            color: white;
            text-align: center;
        }

        .gridview td {
            text-align: center;
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

        /* Responsive Styles */
        @media (max-width: 768px) {
            .form-container {
                padding: 10px;
                margin: 10px;
            }

            .form-table .label,
            .form-table .input {
                width: 100%;
                display: block;
                text-align: left;
            }

            .form-table .label {
                text-align: left;
                padding-bottom: 10px;
            }

            .submit-button {
                font-size: 14px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <table class="form-table">
            <tr>
                <td class="label">Product Number:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">Product:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter the product" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Price:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please enter the price" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">Date of Sale:</td>
                <td class="input">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Please enter the date of sale" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <asp:Button ID="Button1" runat="server" CssClass="submit-button" OnClick="Button1_Click" Text="Update" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" OnSelectedIndexChanging="GridView1_SelectedIndexChanging1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

