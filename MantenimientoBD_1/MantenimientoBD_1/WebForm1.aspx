<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MantenimientoBD_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
    body {
        background-color: lightgoldenrodyellow;
        margin: 0;
    }
    h1 {
        color: yellow;
        margin: 0;
    }    
    #cabecera {
        background-color: black; 
        text-align:center; 
        margin-left:20vw;
        margin-bottom: 20px
    }
    #btnGrabar {
        margin-left: 55%;
    }
</style>
</head>
<body>
    <div id="cabecera">
        <h1>Mantenimiento de</h1>
        <h1>CLIENTES</h1>
    </div>
    <form id="form1" runat="server">
        <div>
            Código&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" Display="None" ErrorMessage="Debe ingresar el código del cliente"></asp:RequiredFieldValidator>
            <br />
            <br />
            Nombres&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombres" runat="server" Width="524px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombres" Display="None" ErrorMessage="Debe ingresar el nombre del cliente"></asp:RequiredFieldValidator>
            <br />
            Dirección&nbsp;&nbsp;
            <asp:TextBox ID="txtDireccion" runat="server" Width="524px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" Display="None" ErrorMessage="Debe ingresar la dirección del cliente"></asp:RequiredFieldValidator>
            <br />
            <br />
            Teléfono&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <br />
            E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" Width="521px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" Display="None" ErrorMessage="El correo electrónico no es válido" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <br />
            Edad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" Display="None" ErrorMessage="La edad ingresada debe estar en el rango de 18 a 100." MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="btnGrabar" runat="server" OnClick="btnGrabar_Click" Text="Grabar" />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="1249px" ForeColor="Red" />

        </div>
    </form>
</body>
</html>
