using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Baja : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
            Label2.Text = string.Empty;

            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            using (SqlDataReader datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty))
            {
                if (datos.Read())
                {
                    Label1.Text = "Producto seleccionado: " + datos["NombreArticulo"]
                                  + " | Precio: " + datos["precio"]
                                  + " | Categoría: " + datos["Rubro"];
                }
                else
                {
                    Label1.Text = "No existe un producto con ese código.";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = string.Empty;

            int cant = SqlDataSource1.Delete();
            if (cant == 1)
            {
                Label2.Text = "Producto eliminado correctamente.";
                Label1.Text = string.Empty;
                TextBox1.Text = string.Empty;
            }
            else
            {
                Label2.Text = "No se pudo eliminar. Verifique el código ingresado.";
            }
        }
    }
}
