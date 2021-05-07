<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vestite.UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="fmLogin" runat="server">
        <p>
            USUARIO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        </p>
        <p>
            CONTRASEÑA:
            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p style="margin-left: 80px">
            <asp:Button ID="Button1" runat="server" OnClick="btnIngresar_Click" Text="INGRESAR" />
        </p>
    </form>
</body>
</html>
