<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product_management.aspx.cs" Inherits="nutritioncompany_webapplication.product_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #grid {
            display: grid;
            grid-template-areas:
                "header header"
                "main menu"
                "footer footer";
            gap: 20px;
            padding: 20px;
            height: 100vh;
            box-sizing: border-box;
        }

        #grid > .grid-item {
            background-color: #f0f8ff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
            transition: all 0.3s ease;
        }

        #grid > .grid-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        #header { grid-area: header; }
        #menu { grid-area: menu; }
        #main { grid-area: main; }
        #footer { grid-area: footer; }

        .grid-button {
            width: 100%;
            height: 100%;
            border: none;
            background: none;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .grid-button:hover {
            background-color: #e0f0ff;
        }

        @media (max-width: 768px) {
            #grid {
                grid-template-areas:
                    "header"
                    "main"
                    "menu"
                    "footer";
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="grid">
        <div id="header" class="grid-item">
            <asp:Button ID="header" runat="server" Text="LIST OF SOLD PRODUCTS" CssClass="grid-button" OnClick="header_Click" />
        </div>
        <div id="menu" class="grid-item">
            <asp:Button ID="menu" runat="server" Text="ADD PRODUCT" CssClass="grid-button" OnClick="menu_Click" />
        </div>
        <div id="main" class="grid-item">
            <asp:Button ID="main" runat="server" Text="UPDATE A PRODUCT" CssClass="grid-button" OnClick="main_Click" />
        </div>
        <div id="footer" class="grid-item">
            <asp:Button ID="foot" runat="server" Text="DELETE A PRODUCT" CssClass="grid-button" OnClick="foot_Click" />
        </div>
    </div>
</asp:Content>
