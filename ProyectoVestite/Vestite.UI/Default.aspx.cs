using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vestite.BE;
using Vestite.Servicios;

namespace Vestite.UI
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionManager.Session.IsLogged())
            {
                hpIniciarSesion.Visible = false;
                hpCerrarSesion.Visible = true;
            }
            if(SessionManager.Session.Usuario != null)
            {

            if (SessionManager.TienePermiso(PermisoEnum.Bitacora, SessionManager.Session.Usuario.lstPermisos)) hpBitacora.Visible = true;
            }

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
