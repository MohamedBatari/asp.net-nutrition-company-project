<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="deletestock.aspx.cs" Inherits="nutritioncompany_webapplication.deletestock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        /* Container for GridView */
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
        }

        .gridview th, .gridview td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .gridview th {
            background-color: #A55129;
            color: white;
            font-weight: bold;
        }

        .gridview td {
            background-color: #FFF7E7;
            color: #8C4510;
        }

        .gridview .footer {
            background-color: #F7DFB5;
            color: #8C4510;
        }

        .gridview .selected {
            background-color: #738A9C;
            color: white;
        }

        .gridview .sorted-ascending {
            background-color: #FFF1D4;
        }

        .gridview .sorted-descending {
            background-color: #F1E5CE;
        }

        .gridview .pager {
            text-align: center;
            padding: 10px;
        }

        .gridview .delete-button {
            background-color: #d9534f;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .gridview .delete-button:hover {
            background-color: #c9302c;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gridview-container">
        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
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
    </div>
</asp:Content>
