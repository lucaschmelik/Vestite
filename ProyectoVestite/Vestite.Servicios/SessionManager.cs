using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.BE;
using Vestite.DAL;

namespace Vestite.Servicios
{
    public class SessionManager
    {
        private static Session _oInstancia;

        public static Session Session
        {
            get
            {
                if (_oInstancia == null) _oInstancia = new Session();

                return _oInstancia;
            }
        }

        public static void CargarPermisos(Usuario oUsuario)
        {
            var oFamilia = new Familia()
            {
                Permiso = (PermisoEnum)Enum.GetValues(typeof(PermisoEnum)).GetValue((int)PermisoDAL.Instancia.ObtenerPermisoUsuario(Session.Usuario.Nombre)["Id"] - 1)
            };

            Session.AgregarPermiso(oFamilia);

            ListarPermisos(oFamilia);
        }

        private static void ListarPermisos(AbstractComponent oComponente)
        {
            var oDt = PermisoDAL.Instancia.ObtenerHijos((int)oComponente.Permiso);

            foreach (var oDrHijo in oDt.AsEnumerable())
            {
                if ((bool)oDrHijo["EsRol"])
                {
                    var oComponenteHijo = new Familia() { Permiso = (PermisoEnum)Enum.GetValues(typeof(PermisoEnum)).GetValue(int.Parse(oDrHijo["Id"].ToString()) - 1) };
                    oComponente.AgregarHijo(oComponenteHijo);
                    ListarPermisos(oComponenteHijo);
                }
                else
                {
                    var oComponenteHijo = new Patente() { Permiso = (PermisoEnum)Enum.GetValues(typeof(PermisoEnum)).GetValue(int.Parse(oDrHijo["Id"].ToString()) - 1) };
                    oComponente.AgregarHijo(oComponenteHijo);
                }
            }
        }

        public static bool TienePermiso(PermisoEnum oPermiso, IList<AbstractComponent> lstPermisos)
        {
            foreach (var oComponente in lstPermisos)
            {
                if (oComponente.Permiso == oPermiso) return true;

                if (oComponente.lstHijos == null) continue;

                if (TienePermiso(oPermiso, oComponente.lstHijos))
                    return true;
            }

            return false;
        }
    }
}
