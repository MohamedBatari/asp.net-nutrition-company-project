<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="updatestock.aspx.cs" Inherits="nutritioncompany_webapplication.updatestock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Container */
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 12px;
            vertical-align: middle;
        }

        td.label {
            text-align: right;
            font-weight: bold;
            color: #333;
            width: 30%;
        }

        td.input {
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
    <div class="container">
        <table>
            <tr>
                <td class="label">STOCK NUMBER</td>
                <td class="input">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">ARTICLE</td>
                <td class="input">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Saisie l'article" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">QUANTITY</td>
                <td class="input">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Saisie la quantité" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="label">DATE OF COMING</td>
                <td class="input">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Saisie la date d'entre" CssClass="error-message"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="submit-button" OnClick="Button1_Click" Text="UPDATE" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" CssClass="gridview" OnSelectedIndexChanging="GridView1_SelectedIndexChanging1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
