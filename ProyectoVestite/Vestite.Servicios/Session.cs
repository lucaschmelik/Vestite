using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.BE;

namespace Vestite.Servicios
{
    public class Session
    {
        private Usuario _oUsuario;

        public Usuario Usuario
        {
            get { return _oUsuario; }
        }

        public void Login(Usuario oUsuario)
        {
            _oUsuario = oUsuario;
        }

        public void Logout()
        {
            _oUsuario = null;
        }

        public bool IsLogged()
        {
            return _oUsuario != null;
        }

        public void AgregarPermiso(AbstractComponent oComponente)
        {
            _oUsuario.lstPermisos.Add(oComponente);
        }
    }
}
