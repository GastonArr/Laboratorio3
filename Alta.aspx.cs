using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.Insert();
            this.Label1.Text = "Se cargo el articulo correctamente";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
        }
    }
}