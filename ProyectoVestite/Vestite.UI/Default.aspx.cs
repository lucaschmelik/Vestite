using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vestite.Servicios;

namespace Vestite.UI
{
    public partial class _Default : Page
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
        }

        protected void hpCerrarSesion_OnClick(object sender, EventArgs e)
        {
            hpIniciarSesion.Visible = true;
            hpCerrarSesion.Visible = false;
            hpBitacora.Visible = false;
            SessionManager.Session.Logout();
        }
    }
}