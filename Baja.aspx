<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja.aspx.cs" Inherits="Proyecto.Baja" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Baja de producto</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagina formulario">
            <h2>Baja de producto</h2>

            <label>Código de producto a eliminar:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn-accion" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="mensaje"></asp:Label>

            <asp:Label ID="Label2" runat="server" CssClass="mensaje"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="Eliminar producto" CssClass="btn-accion btn-peligro"
                OnClick="Button2_Click" OnClientClick="return confirm('¿Está seguro que desea eliminar este producto?');" />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx" CssClass="menu-link">Retornar al inicio</asp:HyperLink>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>"
                SelectCommand="SELECT ar.descripcion as NombreArticulo, ar.precio, ru.descripcion as Rubro FROM articulos ar JOIN rubros ru ON ru.id = ar.idrubros WHERE ar.id = @id"
                DeleteCommand="DELETE FROM articulos WHERE id = @id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
