//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CAPA_DATOS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Inventario
    {
        public int id_inventario { get; set; }
        public string codigo_inventario { get; set; }
        public int id_categoria { get; set; }
        public Nullable<int> id_persona { get; set; }
    
        public virtual Categoria Categoria { get; set; }
        public virtual Persona Persona { get; set; }
    }
}
