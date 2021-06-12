using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vestite.BE
{
    public class Usuario
    {
        public Usuario(string sNombre, string sContraseña)
        {
            Nombre = sNombre;
            Contraseña = sContraseña;
            lstPermisos = new List<AbstractComponent>();
        }

        public string Nombre { get; set; }

        public string Contraseña { get; set; }

        public List<AbstractComponent> lstPermisos { get; }
    }
}
