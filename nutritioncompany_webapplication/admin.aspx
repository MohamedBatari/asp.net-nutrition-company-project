<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="nutritioncompany_webapplication.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
    #auto-style1 {
        width: 60%;
        height: 60px;
        border: 0px;
        text-align: center;
    }
    #mydiv
      {
          border: 5px outset red;
          background-color: lightblue;    
          text-align: center;
          width: 60%;
          height: 60px;
      }
    .auto-style2 {
        height: 64px;
    }
    .auto-style3 {
        height: 80px;
    }
            .auto-style4 {
                height: 146px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="mydiv">
                       <table class="auto-style1">
    <tr>
        <td class="auto-style3">username</td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" Width="454px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">password</td>
        <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" type ="password" Width="456px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style4">
            <asp:Button ID="Button1" runat="server" Text="LOGIN" Height="67px" Width="514px" OnClick="Button1_Click1" />
        </td>
        <td class="auto-style4"></td>
    </tr>
</table>
        </div>
</asp:Content>
