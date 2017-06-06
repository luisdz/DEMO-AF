using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CAPA_NEGOCIO;
using CAPA_DATOS;
using Telerik.Web.UI;

namespace INTERFAZ
{
    public partial class Cargo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int a = 0;
        }         

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
             string cargo = txt_cargo.Text;
             string descripcion = txt_descripcion.Text;
             BL_CARGO bl_cargo = new BL_CARGO();
             cargo tabla = new cargo();
             tabla.nombre_cargo = txt_cargo.Text;
             tabla.descripcion = descripcion;
             bl_cargo.cargo_insert(tabla);
             grd_cargos.Rebind();
             
        }

        protected void grd_cargos_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            BL_CARGO bl_cargo = new BL_CARGO();
            grd_cargos.DataSource = bl_cargo.cargo_GetAll();
        }

        protected void grd_cargos_DeleteCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            BL_CARGO bl_cargo = new BL_CARGO();

            GridEditableItem editedItem = e.Item as GridEditableItem;   
            int idobj = Convert.ToInt32(editedItem.OwnerTableView.DataKeyValues[editedItem.ItemIndex]["id_cargo"]);
            bl_cargo.cargo_delete(idobj);



        }
    }
}