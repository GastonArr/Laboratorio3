<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Proyecto.Consulta" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consulta de producto</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagina formulario">
            <h2>Consulta de producto</h2>

            <label>Ingrese el código del producto:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" CssClass="btn-accion" />
            <asp:Label ID="Label1" runat="server" CssClass="mensaje"></asp:Label>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx" CssClass="menu-link">Retornar al inicio</asp:HyperLink>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>"
                SelectCommand="SELECT ar.descripcion as NombreArticulo, ar.precio, ru.descripcion as Rubro FROM articulos as ar JOIN rubros as ru ON ru.id = ar.idrubros WHERE ar.id = @id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
