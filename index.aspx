<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proyecto.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Tienda Online</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagina">
            <h1>Tienda Online</h1>
            <p class="subtitulo">Panel principal de gestión de productos</p>

            <div class="menu-principal">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Alta.aspx" CssClass="menu-link">Alta de producto</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Baja.aspx" CssClass="menu-link">Baja de producto</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Modificacion.aspx" CssClass="menu-link">Modificación de producto</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Consulta.aspx" CssClass="menu-link">Consulta de producto</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
