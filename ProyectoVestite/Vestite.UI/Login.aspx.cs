using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vestite.BE;
using Vestite.BLL;
using Vestite.Servicios;

namespace Vestite.UI
{
    public partial class Login : System.Web.UI.Page
    {

        private UsuarioBLL oUsuarioBLL;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (SessionManager.Session.IsLogged()) return;
            hpBitacora.Visible = false;
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                oUsuarioBLL = new UsuarioBLL(txtUsuario.Text, txtContraseña.Text);

                oUsuarioBLL.Login();

                BitacoraService.Escribir(TipoEvento.MENSAJE, "Se logeo en el sistema");

                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
            }
        }
    }
}