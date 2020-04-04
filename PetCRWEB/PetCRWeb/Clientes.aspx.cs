
using PetCRWEB.BLL;
using PetCRWEB.ETL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetCRWeb
{
    public partial class Clientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            Cliente cliente = new Cliente();
            Logica logica = new Logica();

            cliente.idCliente = int.Parse(txtid.Text);
            cliente.nombre = txtNombre.Text;
            cliente.primerApellido = txtApellido1.Text;
            cliente.segundoApellido = txtapellido2.Text;
            cliente.correo = txtcorreo.Text;
            cliente.telefono = int.Parse(txttelefono.Text);
            cliente.domicilio = txtdireccion.Text;

            logica.InsertarCliente(cliente, 2);

        }
    }
}