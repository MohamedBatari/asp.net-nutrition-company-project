<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reception_page.aspx.cs" Inherits="nutritioncompany_webapplication.reception_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid-container {
            display: grid;
            grid-template-areas: 
                "main main header"
                "main main menu";
            gap: 20px;
            padding: 20px;
            height: 100vh;
            box-sizing: border-box;
        }

        .grid-item {
            background-color: #f0f8ff;
            border: none;
            border-radius: 8px;
            padding: 20px;
            font-size: 18px;
            text-align: center;
            transition: background-color 0.3s, transform 0.3s;
            cursor: pointer;
        }

        .grid-item:hover {
            background-color: #e6f3ff;
            transform: scale(1.02);
        }

        #header { grid-area: header; }
        #menu { grid-area: menu; }
        #main { grid-area: main; }

        #header { background-color: #4caf50; color: white; }
        #menu { background-color: #2196f3; color: white; }
        #main { background-color: #ff9800; color: white; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-container">
        <asp:Button ID="header" runat="server" Text="Product Sales" CssClass="grid-item" OnClick="header_Click" />
        <asp:Button ID="menu" runat="server" Text="Generate the Stock" CssClass="grid-item" OnClick="menu_Click" />
        <asp:Button ID="main" runat="server" Text="Transfer from the Stock" CssClass="grid-item" OnClick="main_Click" />
    </div>
</asp:Content>
