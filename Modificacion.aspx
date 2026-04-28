<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificacion.aspx.cs" Inherits="Proyecto.Modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Modificacion de articulo<br />
            <br />
            Codigo de articulo:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>" SelectCommand="SELECT * FROM [articulos] WHERE id = @id" UpdateCommand="UPDATE articulos set descripcion =@descripcion, precio = @precio, idrubro = @idRubro WHERE id = @id">
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
            <br />
            Nombre del producto:&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Precio del producto:&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Rubro:&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LP3ConnectionString %>" SelectCommand="SELECT * FROM [rubros]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Modificar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
