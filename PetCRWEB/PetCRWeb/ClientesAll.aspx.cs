using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PetCRWEB.BLL;

namespace PetCRWeb
{
    public partial class ClientesAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CargarGrid();
            }
        }

        protected void btnMostrar_Click1(object sender, EventArgs e)
        {
            CargarGrid();
        }

        public void CargarGrid()
        {
            Logica logic = new Logica();
            PetCRWEB.ETL.Cliente cl = new PetCRWEB.ETL.Cliente();
            cl.idCliente = -1;
            var cliente = logic.ConsultarCliente(cl);

            gridview.DataSource = cliente;
            gridview.DataBind();
        } 
    }
}

