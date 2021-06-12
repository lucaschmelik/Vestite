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
            BitacoraView.DataSource = null;
            BitacoraView.DataSource = BitacoraService.ListarBitacoras();
            BitacoraView.DataBind();
        }

    }
}