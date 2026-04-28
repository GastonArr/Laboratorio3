using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            SqlDataReader datos;

            datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                this.Label1.Text = "Nombre: " + datos["NombreArticulo"] + "<br>Precio: " + datos["precio"] + "<br>Rubro: "
                    + datos["Rubro"];
            }
            else this.Label1.Text = "No existe un articulo con ese codigo";
        }
    }
}