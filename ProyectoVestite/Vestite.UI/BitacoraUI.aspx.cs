using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vestite.Servicios;
using Vestite.BE;

namespace Vestite.UI
{
    public partial class BitacoraUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!SessionManager.Session.IsLogged())
            {
                hpBitacora.Visible = false;
                hpCerrarSesion.Visible = false;
            }
            else
            {
                hpIniciarSesion.Visible = false;
                hpCerrarSesion.Visible = true;
            }

            BitacoraView.DataSource = null;
            BitacoraView.DataSource = BitacoraService.ListarBitacoras();
            BitacoraView.DataBind();
        }

        protected void hpCerrarSesion_OnClick(object sender, EventArgs e)
        {
            hpIniciarSesion.Visible = true;
            hpCerrarSesion.Visible = false;
            hpBitacora.Visible = false;
            BitacoraService.Escribir(TipoEvento.MENSAJE, "Se deslogeo del sistema");
            SessionManager.Session.Logout();
        }
    }
}