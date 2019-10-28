﻿using FinancialTime.Model;
using FinancialTime.Utils;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace FinancialTimes.DAL
{
    public class BancosDAL : PersBase
    {
        public List<ft_bancoModel> GETBancos(ft_bancoModel _Entidad)
        {
            List<ft_bancoModel> _list = new List<ft_bancoModel>();
            SqlParameter[] parametros =
               {
                    new SqlParameter("@usu_id", SqlDbType.Int){ Value = _Entidad.usu_id},
                    new SqlParameter("@ban_id", SqlDbType.Int){ Value = _Entidad.ban_id},
                    new SqlParameter("@ban_nombre", SqlDbType.VarChar,4000){ Value = _Entidad.ban_nombre},
                    new SqlParameter("@SortColumn", SqlDbType.VarChar,100){ Value = _Entidad.notSortColumn},
                    new SqlParameter("@SortDir", SqlDbType.VarChar,5){ Value = _Entidad.notSortDir}
               };
            try
            {
                using (var reader = base.ExecuteReader(CommandType.StoredProcedure, "ObtBancos", parametros))
                {
                    var dataTable = new DataTable();
                    dataTable.Load(reader);
                    _list = dataTable.ToList<ft_bancoModel>();
                }
                return _list;
            }
            catch
            { throw; }
            finally { parametros = null; }
        }
    }
}