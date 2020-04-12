using PetCRWEB.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetCRWeb.Forms
{
    public partial class MascotasAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrid();
            }
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            CargarGrid();
            
        }
        public void CargarGrid()
        {
            Logica logic = new Logica();
            PetCRWEB.ETL.Mascota mascota = new PetCRWEB.ETL.Mascota();
            mascota.idCliente = -1;
            var masco = logic.ConsultarMascota(mascota);

            gridview.DataSource = mascota;
            gridview.DataBind();
        }
    }
}