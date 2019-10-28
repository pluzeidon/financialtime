using FinancialTime.Model;
using FinancialTime.Utils;
using FinancialTimes.DAL;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinancialTime.Web
{
    public partial class frmMovtos : System.Web.UI.Page
    {
        private const string SortDirectionAsc = "Asc";
        private const string SortDirectionDesc = "Asc";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SessionCls.SetFieldSort("mov_fecha");
                ObtenDireccion("mov_fecha");
                bindData();
            }
        }

        private void bindData(string notSortColumn = null, string notSortDir = null, bool GotoFirst = false)
        {
            try
            {
                System.Threading.Thread.Sleep(10);
                ft_movimientoModel _ft_movimientoModel = new ft_movimientoModel();
                _ft_movimientoModel.notSortColumn = notSortColumn;
                _ft_movimientoModel.notSortDir = notSortDir;
                List<ft_movimientoModel> lista = null;
                MovimientosDAL _DAL = new MovimientosDAL();
                lista = _DAL.GETMovimientos(_ft_movimientoModel);               
                if (GotoFirst) gvMovimientos.PageIndex = 0;
                gvMovimientos.DataSource = lista;
                gvMovimientos.DataBind();
                
                dfRegistros.InnerText =  "Total de Registros de la busqueda: " + String.Format("{0:#,0}", lista.Count) + "  | Total de Registros desplegados: " + gvMovimientos.PageCount;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Error", "msgErrorMinimo('" + ex.Message + "');", true);
            }

        }


        protected void gvMovimientos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMovimientos.PageIndex = e.NewPageIndex;
            bindData();
        }

        protected void gvMovimientos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Sort")
            {
                string sCampo = e.CommandArgument.ToString();
                SessionCls.SetFieldSort(sCampo);
                ObtenDireccion(sCampo);
                bindData(sCampo, SessionCls.GetFieldSortDirection(), true);
            }
        }

        private void ObtenDireccion(string psFieldSort)
        {
            string sFieldSortDirection = SessionCls.GetFieldSortDirection();
            string sFieldSort = SessionCls.GetFieldSort();
            SessionCls.SetFieldSortDirection((sFieldSort == psFieldSort & sFieldSortDirection == SortDirectionAsc) ? SortDirectionDesc : SortDirectionAsc);
        }


        protected void gvMovimientos_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void gvMovimientos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Sort
            string sArrow = "";
            if (SessionCls.GetFieldSortDirection() == "Asc")
            {
                sArrow = " ↓";
            }
            else
            {
                sArrow = " ↑";
            }            

            if (e.Row.RowType == DataControlRowType.Header)
            {
                ((Label)e.Row.FindControl("hdrmov_fecha")).Text = "Fecha";
                ((Label)e.Row.FindControl("hdrcat_descripcion")).Text = "Categoría";
                ((Label)e.Row.FindControl("hdrmov_descripcion")).Text = "Descripción";
                ((Label)e.Row.FindControl("hdrmov_importe")).Text = "Importe";

                switch (SessionCls.GetFieldSort())
                {
                    case "mov_fecha":
                        ((Label)e.Row.FindControl("hdrmov_fecha")).Text = "Fecha" + sArrow; //ok 
                        break;
                    case "cat_descripcion":
                        ((Label)e.Row.FindControl("hdrcat_descripcion")).Text = "Categoría" + sArrow; //ok
                        break;
                    case "mov_descripcion":
                        ((Label)e.Row.FindControl("hdrmov_descripcion")).Text = "Descripción" + sArrow;
                        break;
                    case "mov_importe":
                        ((Label)e.Row.FindControl("hdrmov_importe")).Text = "Importe" + sArrow;
                        break;                    
                    default:
                        //do a different thing
                        break;
                }

            }
        }

        public string FormateaError(string msg)
        {
            string sMensaje = string.Empty;
            if (msg.Length >= 200)
            {
                sMensaje = msg.Substring(0, 200);
            }
            else
            {
                sMensaje = msg;
            }
            string mesError = sMensaje.Replace('"', ' ').Trim();
            mesError = mesError.Replace("'", " ");
            return mesError;
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                //dfcad_descripcion_cap.Text = "";
                //cmbcad_activo.SelectedValue = "1";
                //hdnAltaRegistro.Value = "1";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "MyModal", "$('#ModalEditarRegistro').modal('show');", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "Error", "msgErrorMinimoDocumentos('" + FormateaError(ex.Message) + "');", true);
            }
        }
    }
}