using FinancialTime.Model;
using FinancialTime.Utils;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace FinancialTimes.DAL
{
    public class MovimientosDAL : PersBase
    {
        public List<ft_movimientoModel> GETMovimientos(ft_movimientoModel _Entidad)
        {
            List<ft_movimientoModel> _list = new List<ft_movimientoModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@usu_id", SqlDbType.Int){ Value = _Entidad.usu_id},
                    new SqlParameter("@mov_id", SqlDbType.Int){ Value = _Entidad.mov_id},
                    new SqlParameter("@ban_id", SqlDbType.Int){ Value = _Entidad.ban_id},
                    new SqlParameter("@cat_id", SqlDbType.Int){ Value = _Entidad.cat_id},
                    new SqlParameter("@mov_descripcion", SqlDbType.VarChar,4000){ Value = _Entidad.mov_descripcion},
                    new SqlParameter("@mov_fecha", SqlDbType.DateTime){ Value = _Entidad.mov_fecha},
                    new SqlParameter("@mov_fecha_hasta", SqlDbType.DateTime){ Value = _Entidad.notmov_fecha_hasta},
                    new SqlParameter("@SortColumn", SqlDbType.VarChar,100){ Value = _Entidad.notSortColumn},
                    new SqlParameter("@SortDir", SqlDbType.VarChar,5){ Value = _Entidad.notSortDir}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "ObtMovimientos", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_movimientoModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }

        public List<ft_movimientoModel> insMovimiento(ft_movimientoModel _Entidad)
        {
            List<ft_movimientoModel> _list = new List<ft_movimientoModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@mov_descripcion", SqlDbType.VarChar,4000){ Value = _Entidad.mov_descripcion},
                    new SqlParameter("@mov_importe", SqlDbType.Decimal){ Value = _Entidad.mov_importe},
                    new SqlParameter("@usu_id", SqlDbType.Int){ Value = _Entidad.usu_id},
                    new SqlParameter("@cat_id", SqlDbType.Int){ Value = _Entidad.cat_id},
                    new SqlParameter("@ban_id", SqlDbType.Int){ Value = _Entidad.ban_id},
                    new SqlParameter("@mov_fecha", SqlDbType.DateTime){ Value = _Entidad.mov_fecha}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "InsMovimiento", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_movimientoModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }

        public List<ft_movimientoModel> UpdMovimiento(ft_movimientoModel _Entidad)
        {
            List<ft_movimientoModel> _list = new List<ft_movimientoModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@mov_descripcion", SqlDbType.VarChar,4000){ Value = _Entidad.mov_descripcion},
                    new SqlParameter("@mov_importe", SqlDbType.Decimal){ Value = _Entidad.mov_importe},
                    new SqlParameter("@usu_id", SqlDbType.Int){ Value = _Entidad.usu_id},
                    new SqlParameter("@mov_id", SqlDbType.Int){ Value = _Entidad.mov_id},
                    new SqlParameter("@cat_id", SqlDbType.Int){ Value = _Entidad.cat_id},
                    new SqlParameter("@ban_id", SqlDbType.Int){ Value = _Entidad.ban_id},
                    new SqlParameter("@mov_fecha", SqlDbType.DateTime){ Value = _Entidad.mov_fecha}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "UpdMovimiento", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_movimientoModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }

        public List<ft_movimientoModel> delMovimiento(ft_movimientoModel _Entidad)
        {
            List<ft_movimientoModel> _list = new List<ft_movimientoModel>();
            SqlParameter[] parametros =
               {    new SqlParameter("@mov_id", SqlDbType.Int){ Value = _Entidad.mov_id}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "delMovimiento", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_movimientoModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }


    }
}