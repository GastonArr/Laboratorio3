using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Modificacion : System.Web.UI.Page
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
                TextBox2.Text=datos["descripcion"].ToString ();
                TextBox3.Text = datos["precio"].ToString ();
                DropDownList1.DataBind();
            }
            else this.Label1.Text = "No existe un articulo con ese codigo";
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int cant;
            cant = this.SqlDataSource1.Update();
            if (cant == 1)
                this.Label1.Text = "Se modifico el artículo";
            else
                this.Label1.Text = "No existe el codigo";
        }

    }
}