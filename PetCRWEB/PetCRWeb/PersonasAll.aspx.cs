using PetCRWEB.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetCRWeb.Forms
{
    public partial class PersonasAll : System.Web.UI.Page
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
            PetCRWEB.ETL.Empleado emple = new PetCRWEB.ETL.Empleado();
            emple.idEmpleado = -1;
            var empleado = logic.ConsultarEmpleado(emple);

            gridview.DataSource = empleado;
            gridview.DataBind();
        }
    }
}