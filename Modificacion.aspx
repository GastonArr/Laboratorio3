<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificacion.aspx.cs" Inherits="Proyecto.Modificacion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modificación de producto</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagina formulario">
            <h2>Modificación de producto</h2>

            <label>Código de producto:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" CssClass="btn-accion" />
            <asp:Label ID="Label1" runat="server" CssClass="mensaje"></asp:Label>

            <label>Nombre del producto:</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <label>Precio del producto:</label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <label>Categoría:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar cambios" CssClass="btn-accion" />
            <asp:Label ID="Label2" runat="server" CssClass="mensaje"></asp:Label>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx" CssClass="menu-link">Retornar al inicio</asp:HyperLink>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>"
                SelectCommand="SELECT id, descripcion, precio, idrubros FROM articulos WHERE id = @id"
                UpdateCommand="UPDATE articulos SET descripcion = @descripcion, precio = @precio, idrubros = @idRubro WHERE id = @id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="idRubro" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>" SelectCommand="SELECT id, descripcion FROM rubros"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
