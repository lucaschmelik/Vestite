<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BitacoraUI.aspx.cs" Inherits="Vestite.UI.BitacoraUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="BITACORA"></asp:Label>
        </div>
        <asp:GridView ID="BitacoraView" runat="server" Height="207px" style="margin-top: 8px" Width="1087px">
        </asp:GridView>
    </form>
</body>
</html>
