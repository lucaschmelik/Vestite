using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vestite.BE
{
    public class Patente : AbstractComponent
    {
        public override IList<AbstractComponent> lstHijos { get; }

        public override void AgregarHijo(AbstractComponent oComponente)
        {
            throw new System.NotImplementedException();
        }

        public override void VaciarHijos()
        {
            throw new System.NotImplementedException();
        }
    }
}
