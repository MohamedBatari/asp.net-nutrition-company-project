<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ADDPRODUCT.aspx.cs" Inherits="nutritioncompany_webapplication.ADDPRODUCT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

.form-container {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-table {
    width: 100%;
    border-collapse: collapse;
}

.label {
    padding: 10px;
    text-align: right;
    font-weight: bold;
    color: #333;
    vertical-align: middle;
}

.input {
    padding: 10px;
    vertical-align: middle;
}

.textbox {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
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

.button-container {
    padding: 10px;
    text-align: center;
}

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <table class="form-table">
            <tr>
                <td class="label">Number</td>
                <td class="input">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Enabled="False" EnableViewState="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">Product</td>
                <td class="input">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">Price</td>
                <td class="input">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <asp:Button ID="Button1" runat="server" CssClass="submit-button" OnClick="Button1_Click" Text="Add" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

