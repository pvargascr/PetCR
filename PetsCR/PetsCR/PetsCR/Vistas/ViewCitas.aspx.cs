using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetsCR.Vistas
{
    public partial class ViewCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                obtenerCitas();
            }
        }

        private void obtenerCitas()
        {
            var datos = new DatosPetStoreDataContext();
            GridCitas.DataSource = datos.ctsCargarCitas();
            GridCitas.DataBind();
        }

        protected void GridCitas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridCitas.PageIndex = e.NewPageIndex;
            obtenerCitas();
        }

        protected void GridCitas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridCitas.EditIndex = e.NewEditIndex;
            obtenerCitas();
        }

        protected void GridCitas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string fecha;
            int hora, id_cliente;
            TextBox txt = new TextBox();

            //txt = (TextBox)GridCitas.Rows[]
        }
    }
}