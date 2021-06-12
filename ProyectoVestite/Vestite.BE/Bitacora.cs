using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Vestite.BE
{
    public class Bitacora
    {
        public Bitacora() { }
        public Bitacora(DateTime fecha, TipoEvento tipoEvento, string mensaje, string nombre)
        {
            Fecha = fecha;
            TipoEvento = tipoEvento;
            Mensaje = mensaje;
            Nombre = nombre;
        }

        public DateTime Fecha { get; set; }
        public TipoEvento TipoEvento { get; set; }
        public string Mensaje { get; set; }
        public string Nombre { get; set; }

    }
    public enum TipoEvento
    {
        MENSAJE = 1,
        ADVERTENCIA = 2,
        ERROR= 3
    }

}

