using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Vestite.BE;


namespace Vestite.DAL
{
    public class BitacoraDAL : AbstractDAL
    {
        private static BitacoraDAL instancia;
        public static BitacoraDAL Instancia => instancia ?? new BitacoraDAL();

        public List<Bitacora> CargarBitacora()
        {
            var oDt = new DataTable();

            oDt.Columns.Add("Nombre", typeof(string));
            oDt.Columns.Add("Fecha", typeof(DateTime));
            oDt.Columns.Add("Mensaje", typeof(string));
            oDt.Columns.Add("TipoEvento", typeof(int));


            return MapeadorDtABitacora(EjecutaStp("stpObtenerBitacora", new Dictionary<string, object>(), oDt));



        }
        public void Guardar(Bitacora oBT)
        {
            var oDicParametros = new Dictionary<string, object>
            {
                {"Nombre", oBT.Nombre},
                {"Mensaje", oBT.Mensaje},
                {"TipoEvento", oBT.TipoEvento}
            };

            EjecutaStp("stpInsertarBitacora", oDicParametros, new DataTable());
        }


        public static List<Bitacora> MapeadorDtABitacora(DataTable dt)
        {
            List<Bitacora> bitacoras = new List<Bitacora>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Bitacora bitacora = new Bitacora();
                DataRow dr = dt.Rows[i];
                bitacora.Fecha = (DateTime)dr[1];
                bitacora.Mensaje = (string)dr[2];
                bitacora.Nombre = (string)dr[0];

                if (TipoEvento.MENSAJE.ToString() == (dr[3]).ToString())
                {
                    bitacora.TipoEvento = TipoEvento.MENSAJE;
                }
                if (TipoEvento.ERROR.ToString() == (dr[3]).ToString())
                {
                    bitacora.TipoEvento = TipoEvento.ERROR;
                }
                if (TipoEvento.ADVERTENCIA.ToString() == (dr[3]).ToString())
                {
                    bitacora.TipoEvento = TipoEvento.ADVERTENCIA;
                }
                bitacoras.Add(bitacora);
            }
            return bitacoras;
        }
    }
}
