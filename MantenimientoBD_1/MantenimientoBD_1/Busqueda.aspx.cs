using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MantenimientoBD_1
{
    public partial class Busqueda : System.Web.UI.Page
    {
        string connectionString = "Data Source = desktop-9akhhn8\\sqlexpress;" +
            "Initial Catalog = VENTAS; Integrated Security = SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            string selectSQL = "SELECT * FROM clientes where codigo" + txtCodigo.Text;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL,con);
            SqlDataReader dr;

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    txtNombres.Text = dr[1].ToString();
                    txtDireccion.Text = dr["direccion"].ToString();
                    txtTelefono.Text = dr[3].ToString();
                    txtMail.Text = dr[4].ToString();
                    txtEdad.Text = dr[5].ToString();
                }
                con.Close();
                dr.Close();
            }
            catch(Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtNombres.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtMail.Text = "";
            txtEdad.Text = "";
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            string selectSQL = "SELECT *FROM clientes";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader dr;

            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }
            catch(Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }
        }

    }
}