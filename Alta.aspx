<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta.aspx.cs" Inherits="Proyecto.Alta" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Alta de producto</title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="pagina formulario">
            <h2>Alta de producto</h2>

            <label>Nombre del producto:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <label>Precio del producto:</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <label>Categoría:</label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" CssClass="btn-accion" />
            <asp:Label ID="Label1" runat="server" CssClass="mensaje"></asp:Label>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx" CssClass="menu-link">Retornar al inicio</asp:HyperLink>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>" InsertCommand="INSERT INTO articulos(descripcion, precio, idrubros) VALUES (@descripcion, @precio, @idrubros)" SelectCommand="SELECT id, descripcion FROM [rubros]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="precio" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="idrubros" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
