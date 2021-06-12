using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.BE;
using Vestite.DAL;

namespace Vestite.Servicios
{
    public class BitacoraService
    {
        public static void Escribir(TipoEvento tipo, string mensaje)
        {
            Bitacora bitacora = new Bitacora(DateTime.Now, tipo, mensaje, SessionManager.Session.Usuario.Nombre);
            BitacoraDAL.Instancia.Guardar(bitacora);
        }
        public static List<Bitacora> ListarBitacoras()
        {
            List<Bitacora> bitacoras = BitacoraDAL.Instancia.CargarBitacora();

            return bitacoras;
        }

        public static List<Bitacora> ListarBitacoraXUsuario(string mail)
        {
            List<Bitacora> bitacoras = BitacoraDAL.Instancia.CargarBitacora();
            List<Bitacora> bitacorasUsuarios = bitacoras.FindAll(x => x.Nombre == mail);
            return bitacorasUsuarios;
        }
    }
}
