using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // agregado para trabajar con BD
using System.Data;

namespace BaseDeDatos1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source = desktop-9akhhn8\\sqlexpress;" + "Initial Catalog = VENTAS; Integrated Security = True";
            string selectSQL = "SELECT * FROM Clientes";
            // CONECTION OBJECT establece una conexión física con una Base de Datos determinada.
            SqlConnection conexion = new SqlConnection(connectionString);
            // COMMAND OBJECT, representa una determinada sentencia SQL
            SqlCommand comando = new SqlCommand(selectSQL, conexion);
            // ADAPTER OBJECT, intermediario cuando se establece una comunicación entre una fuente de datos y un DataSet.
            SqlDataAdapter adapter = new SqlDataAdapter(comando);

            // llenando el dataset
            // DataSet, almacén de datos en ADO.NET, representa una base de datos desconectada del proveedor de datos.
            DataSet ventas = new DataSet();
            adapter.Fill(ventas, "clientes");
                         // BD, tabla

            // enlazar el gridview
            GridView1.DataSource = ventas;
            GridView1.DataBind();
        }
    }
}