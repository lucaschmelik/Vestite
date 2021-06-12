using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vestite.BE
{
    public abstract class AbstractComponent
    {
        public PermisoEnum Permiso { get; set; }
        public abstract IList<AbstractComponent> lstHijos { get; }
        public abstract void AgregarHijo(AbstractComponent oComponente);
        public abstract void VaciarHijos();
    }
}
