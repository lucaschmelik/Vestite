using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.DAL;
using Vestite.BE;
using Vestite.Servicios;

namespace Vestite.BLL
{
    public class UsuarioBLL
    {
        private Usuario _oUsuario;
        private UsuarioDAL _oUsuarioDAL;

        public UsuarioBLL(string sNombre, string sContraseña)
        {
            _oUsuario = new Usuario(sNombre, sContraseña);
        }

        public void Login()
        {
            _oUsuarioDAL = new UsuarioDAL();

            if (SessionManager.Session.IsLogged()) throw new Exception("Existe una sesión iniciada");

            if (_oUsuarioDAL.GetOne().Nombre != _oUsuario.Nombre) throw new Exception("Ingreso un usuario incorrecto");

            if (_oUsuarioDAL.GetOne().Contraseña != _oUsuario.Contraseña) throw new Exception("Ingreso la contraseña incorrecta");

            SessionManager.Session.Login(_oUsuario);

            SessionManager.CargarPermisos(_oUsuario);
        }
    }
}
