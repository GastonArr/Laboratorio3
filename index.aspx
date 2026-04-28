<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proyecto.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>  Tienda Online</h1>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Alta.aspx">Carga de producto</asp:HyperLink>
            <br />
            <br />
            <br />
        </div>
        <asp:HyperLink ID="HyperLink2" runat="server">Baja de producto</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server">Modificacion de producto</asp:HyperLink>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server">Consulta de producto</asp:HyperLink>
        <br />
        <br />
    </form>
</body>
</html>
