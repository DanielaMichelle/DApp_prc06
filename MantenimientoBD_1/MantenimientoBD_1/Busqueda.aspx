<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="MantenimientoBD_1.Busqueda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    body {
        background-color: #ccff9a;
        margin: 0;
    }
    h1 {
        color: #bec22d;
        margin: 0;
    }    
    #cabecera {
        background-color: black; 
        text-align:center; 
        margin-right:20vw;
        margin-bottom: 20px
    }
    #form1{
        margin-left: 30px;
    }
    </style>
</head>
<body>
    <div id="cabecera">
        <h1>Búsqueda de</h1>
        <h1>CLIENTES</h1>
    </div>
    <form id="form1" runat="server">
        <div>
            Código&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
            <br />
            <br />
            Nombres&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" ReadOnly="True" Width="422px"></asp:TextBox>
            <br />
            Dirección
            <asp:TextBox ID="txtDireccion" runat="server" ReadOnly="True" Width="423px"></asp:TextBox>
            <br />
            <br />
            Teléfono&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="True" Width="423px"></asp:TextBox>
            <br />
            E-Mail&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" ReadOnly="True" Width="423px"></asp:TextBox>
            <br />
            Edad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Todos los Clientes" OnClick="btnMostrar_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
