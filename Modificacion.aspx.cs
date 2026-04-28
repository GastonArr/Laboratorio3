using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Modificacion : Page
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
                    string descripcion = datos["descripcion"].ToString();
                    string precio = datos["precio"].ToString();
                    string idRubro = datos["idrubros"].ToString();

                    TextBox2.Text = descripcion;
                    TextBox3.Text = precio;
                    DropDownList1.DataBind();
                    DropDownList1.SelectedValue = idRubro;

                    ViewState["descripcionOriginal"] = descripcion;
                    ViewState["precioOriginal"] = precio;
                    ViewState["idRubroOriginal"] = idRubro;
                }
                else
                {
                    Label1.Text = "No existe un producto con ese código.";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;
            Label2.Text = string.Empty;

            string descripcionOriginal = ViewState["descripcionOriginal"] as string;
            string precioOriginal = ViewState["precioOriginal"] as string;
            string idRubroOriginal = ViewState["idRubroOriginal"] as string;

            if (string.IsNullOrEmpty(descripcionOriginal))
            {
                Label2.Text = "Primero debe buscar un producto para poder modificarlo.";
                return;
            }

            bool sinCambios = descripcionOriginal == TextBox2.Text.Trim()
                              && precioOriginal == TextBox3.Text.Trim()
                              && idRubroOriginal == DropDownList1.SelectedValue;

            if (sinCambios)
            {
                Label2.Text = "Debe modificar al menos un campo antes de guardar.";
                return;
            }

            int cant = SqlDataSource1.Update();
            Label2.Text = cant == 1
                ? "Se modificó el producto correctamente."
                : "No se pudo modificar el producto.";
        }
    }
}
