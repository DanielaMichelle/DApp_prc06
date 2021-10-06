using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MantenimientoBD_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source = desktop-9akhhn8\\sqlexpress;" + 
            "Initial Catalog = VENTAS; Integrated Security = SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            // Aborda si los valores ingresados no son válidos
            if (!this.IsValid) return;
            // instruccion SQL
            string insertSQL = "INSERT INTO clientes VALUES(" + 
                txtCodigo.Text + ", '" + txtNombres.Text + "', '" + 
                txtDireccion.Text + "', '" + txtTelefono + "', '" +
                txtMail.Text + "', " + txtEdad.Text + ")";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            try
            {
                con.Open(); // abre conección con la BD con los valores de propiedad especificados
                cmd.ExecuteNonQuery(); // ejecuta la instrucción y devuelve número de filas afectadas
                lblResult.Text = "Cliente registrado con éxito";
                con.Close(); // cierra conección con la BD

                txtCodigo.Text = "";
                txtNombres.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtMail.Text = "";
                txtEdad.Text = "";
            }
            catch(Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }
        }
    }
}