using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.BE;

namespace Vestite.DAL
{
    public class UsuarioDAL
    {
        public Usuario _oUsuario;

        public UsuarioDAL()
        {
            //HARCODEADA
            _oUsuario = new Usuario("Lucas", "123");
        }

        public Usuario GetOne()
        {
            return _oUsuario;
        }
    }
}
