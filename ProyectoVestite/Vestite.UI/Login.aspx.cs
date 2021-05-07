using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vestite.BLL;

namespace Vestite.UI
{
    public partial class Login : System.Web.UI.Page
    {

        private UsuarioBLL oUsuarioBLL;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                oUsuarioBLL = new UsuarioBLL(txtUsuario.Text, txtContraseña.Text);

                oUsuarioBLL.Login();

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('SALIO BIEN');", true);

                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message + "');", true);
            }
        }
    }
}