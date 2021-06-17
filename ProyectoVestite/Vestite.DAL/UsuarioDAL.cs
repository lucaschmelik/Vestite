using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.BE;

namespace Vestite.DAL
{
    public class UsuarioDAL : AbstractDAL
    {
        public Usuario _oUsuario;

        public UsuarioDAL(Usuario oUsuario)
        {
            _oUsuario = oUsuario;
        }

        public Usuario ObtenerUsuarioPorNombreContraseña()
        {
            var oDrUsuario = EjecutaStp("stpObtenerPorNombreContraseñaUsuario", new Dictionary<string, object>() { { "Nombre", _oUsuario.Nombre }, { "Contraseña", _oUsuario.Contraseña } }, RetornaTabla()).AsEnumerable().FirstOrDefault();

            return oDrUsuario == null ? null : new Usuario { Nombre = oDrUsuario["Nombre"].ToString(), Contraseña = oDrUsuario["Contraseña"].ToString() };
        }

        public DataTable RetornaTabla()
        {
            var oDt = new DataTable();

            oDt.Columns.Add("Id", typeof(int));
            oDt.Columns.Add("Nombre", typeof(string));
            oDt.Columns.Add("Contraseña", typeof(string));

            return oDt;
        }

        public Usuario ObtenerUsuarioPorNombre()
        {
            var oDrUsuario = EjecutaStp("stpObtenerPorNombreUsuario", new Dictionary<string, object>() { { "Nombre", _oUsuario.Nombre } }, RetornaTabla()).AsEnumerable().FirstOrDefault();

            return oDrUsuario == null ? null : new Usuario { Nombre = oDrUsuario["Nombre"].ToString() };
        }
    }
}
