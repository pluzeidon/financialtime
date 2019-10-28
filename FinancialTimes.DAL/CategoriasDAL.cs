using FinancialTime.Model;
using FinancialTime.Utils;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace FinancialTimes.DAL
{
    public class CategoriasDAL : PersBase
    {
        public List<ft_categoriaModel> GETCategorias(ft_categoriaModel _Entidad)
        {
            List<ft_categoriaModel> _list = new List<ft_categoriaModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@usu_id", SqlDbType.Int){ Value = _Entidad.usu_id},
                    new SqlParameter("@cat_id", SqlDbType.Int){ Value = _Entidad.cat_id},
                    new SqlParameter("@cat_cargo_abono", SqlDbType.Int){ Value = _Entidad.cat_cargo_abono},
                    new SqlParameter("@cat_signo", SqlDbType.Int){ Value = _Entidad.cat_signo},
                    new SqlParameter("@cat_descripcion", SqlDbType.VarChar,4000){ Value = _Entidad.cat_descripcion},
                    new SqlParameter("@SortColumn", SqlDbType.VarChar,100){ Value = _Entidad.notSortColumn},
                    new SqlParameter("@SortDir", SqlDbType.VarChar,5){ Value = _Entidad.notSortDir}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "ObtCategorias", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_categoriaModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }
    }
}