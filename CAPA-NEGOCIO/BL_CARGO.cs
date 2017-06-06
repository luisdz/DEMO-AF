using CAPA_DATOS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Core.Objects;

namespace CAPA_NEGOCIO
{
   public  class BL_CARGO
    {
        CAPACITACIONEntities db;

        public void cargo_insert(cargo tabla)
        {
            db = new CAPACITACIONEntities();
            db.SP_TB_CARGO_INSERT(tabla.nombre_cargo, tabla.descripcion);
            db.SaveChanges();
            db.Dispose();            
        }

       public List<cargo> cargo_GetAll()
        {
            db = new CAPACITACIONEntities();
            List<cargo> lista_cargos = new List<cargo>();
            lista_cargos = db.SP_CARGO_GetAll().ToList();
            db.Dispose();

            return lista_cargos;
        }

       public void cargo_delete(int id)
       {
           db = new CAPACITACIONEntities();
            
           db.SaveChanges();
           db.Dispose();

       }
    }
}
