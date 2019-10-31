using FinancialTime.Model;
using FinancialTimes.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace FinancialTime.Web.Servicios
{
    /// <summary>
    /// Summary description for Servicios
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Servicios : System.Web.Services.WebService
    {

        [WebMethod]
        public List<ft_bancoModel> GetBancos(int nusu_id)
        {
            try
            {
                BancosDAL _DAL = new BancosDAL();
                ft_bancoModel ft_BancoModel = new ft_bancoModel();
                ft_BancoModel.usu_id = nusu_id;
                return _DAL.GETBancos(ft_BancoModel);
            }
            catch
            { throw; }
        }

        [WebMethod]
        public List<ft_categoriaModel> GetCategorias(int nusu_id)
        {
            try
            {
                CategoriasDAL _DAL = new CategoriasDAL();
                ft_categoriaModel ft_CategoriaModel = new ft_categoriaModel();
                ft_CategoriaModel.usu_id = nusu_id;
                return _DAL.GETCategorias(ft_CategoriaModel);
            }
            catch
            { throw; }
        }

        [WebMethod]
        public List<ft_movimientoModel> GetMovimientos(int nusu_id, DateTime dmov_fechaDesde, DateTime dmov_fechaHasta, int nban_id)
        {
            try
            {
                MovimientosDAL _DAL = new MovimientosDAL();
                ft_movimientoModel entity = new ft_movimientoModel();
                entity.usu_id = nusu_id;
                entity.mov_fecha = dmov_fechaDesde;
                entity.notmov_fecha_hasta = dmov_fechaHasta;
                if (nban_id > 0)
                {
                    entity.ban_id = nban_id;
                }
                return _DAL.GETMovimientos(entity);
            }
            catch
            { throw; }
        }

        [WebMethod]
        public List<ft_movimientoModel> GetMovimiento(int nusu_id, int nmov_id)
        {
            try
            {
                MovimientosDAL _DAL = new MovimientosDAL();
                ft_movimientoModel entity = new ft_movimientoModel();
                entity.usu_id = nusu_id;
                entity.mov_id = nmov_id;
                return _DAL.GETMovimientos(entity);
            }
            catch
            { throw; }
        }

        [WebMethod]
        public List<ft_movimientoModel> InsMovimiento(int nusu_id, int nban_id, int ncat_id, string smov_descripcion, DateTime dmov_fecha, decimal nmov_importe)
        {
            try
            {
                ft_movimientoModel ft_MovimientoModel = new ft_movimientoModel();
                ft_MovimientoModel.usu_id = nusu_id;
                ft_MovimientoModel.ban_id = nban_id;
                ft_MovimientoModel.cat_id = ncat_id;
                ft_MovimientoModel.mov_descripcion = smov_descripcion;
                ft_MovimientoModel.mov_fecha = dmov_fecha;
                ft_MovimientoModel.mov_importe = nmov_importe;
                MovimientosDAL movimientosDAL = new MovimientosDAL();
                return movimientosDAL.insMovimiento(ft_MovimientoModel);
            }
            catch
            { throw; }
        }

        [WebMethod]
        public List<ft_movimientoModel> UpdMovimiento(int nmov_id, int nusu_id, int nban_id, int ncat_id, string smov_descripcion, DateTime dmov_fecha, decimal nmov_importe)
        {
            try
            {
                ft_movimientoModel ft_MovimientoModel = new ft_movimientoModel();
                ft_MovimientoModel.usu_id = nusu_id;
                ft_MovimientoModel.mov_id = nmov_id;
                ft_MovimientoModel.ban_id = nban_id;
                ft_MovimientoModel.cat_id = ncat_id;
                ft_MovimientoModel.mov_descripcion = smov_descripcion;
                ft_MovimientoModel.mov_fecha = dmov_fecha;
                ft_MovimientoModel.mov_importe = nmov_importe;
                MovimientosDAL movimientosDAL = new MovimientosDAL();
                return movimientosDAL.UpdMovimiento(ft_MovimientoModel);
            }
            catch
            { throw; }
        }
    }
}
